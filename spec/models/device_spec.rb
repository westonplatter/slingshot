require 'spec_helper'

describe Device do
  it { should belong_to :user }
  it { should validate_presence_of :user_id }
end
