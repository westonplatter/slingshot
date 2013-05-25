require 'spec_helper'

describe Device do
  it { should belong_to :user }
  it { should belong_to :status }
end
