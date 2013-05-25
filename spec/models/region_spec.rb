require 'spec_helper'

describe Region do
  it { should have_many :locations }
  it { should have_many :cities }
end
