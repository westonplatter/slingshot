require 'spec_helper'

describe City do
  it { should have_many :locations }
  it { should belong_to :region }
  it { should have_many :users }
end
