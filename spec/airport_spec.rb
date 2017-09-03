require 'airport'
describe Airport do
  it 'tells the plane to land' do
    expect(subject).to respond_to(:land).with(1).argument
  end
end
