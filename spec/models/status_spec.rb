require 'spec_helper'

describe Status do
  it { should have_many :devices }
end
