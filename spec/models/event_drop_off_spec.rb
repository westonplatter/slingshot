require 'spec_helper'

describe 'Event DropOff' do
  before(:each) do
    @person = create(:person)

    cell    = {name: 'cell'   } and @person.devices.build(cell)
    laptop  = {name: 'laptop' } and @person.devices.build(laptop)
    ipod    = {name: 'ipod'   } and @person.devices.build(ipod)
    
    @person.save!
    @person.devices.count.should be(3)

    @latop = @person.devices.where(name: 'laptop')
  end
  describe 'laptop' do
    
    it 'create dropoff' do
      @laptop.events.create_dropoff( time )
      @laptop.save!
    end
    it 'create pickup' do
      @latop.events.create_pickup( time )
      @laptop.save!
    end
  end
end