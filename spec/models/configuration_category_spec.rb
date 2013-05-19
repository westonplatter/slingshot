require 'spec_helper'

describe ConfigurationCategory do
  it { should have_many :configurations }
end
