require 'spec_helper'

describe 'Event DropOff' do
  before(:each) do
    @person = create(:person)

    cell    = {name: 'cell'   } and @person.devices.build(cell)
    laptop  = {name: 'laptop' } and @person.devices.build(laptop)
    ipod    = {name: 'ipod'   } and @person.devices.build(ipod)
    
    @person.save!

    @laptop = @person.devices.where(:name => 'laptop').first
  end
  describe 'laptop' do
    it 'create dropoff' do
      @laptop = @person.devices.where(:name => 'laptop').first
      @laptop.create_dropoff(Time.now)
      
      @laptop.get_dropoff.class.should == Event.new.class
    end
    it 'create pickup' do
      @laptop = @person.devices.where(:name => 'laptop').first
      @laptop.create_pickup(Time.now)

      @laptop.get_pickup.class.should == Event.new.class
    end 
  end
end