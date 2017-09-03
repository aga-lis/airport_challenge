require 'airport'
describe Airport do
  subject(:airport) { described_class.new }
  it 'tells the plane to land' do
    expect(airport).to respond_to(:land).with(1).argument
  end
  it 'tells the plane to take off' do
    expect(airport).to respond_to(:take_off).with(1).argument
  end
end
