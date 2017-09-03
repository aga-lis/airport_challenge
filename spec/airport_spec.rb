require 'airport'
describe Airport do
  subject(:airport) { described_class.new(100) }
  it 'tells the plane to land' do
    expect(airport).to respond_to(:land).with(1).argument
  end
  it 'tells the plane to take off' do
    expect(airport).to respond_to(:take_off).with(1).argument
  end
  it 'does not allow planes to land when full' do
    expect(airport).to respond_to(:full?)
    airport = Airport.new(100)
    100.times do
      airport.land(:plane)
    end
    expect { airport.land(:plane) }.to raise_error "Airport full, can't land"
  end
end
