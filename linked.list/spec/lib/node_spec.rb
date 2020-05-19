require "node"

RSpec.describe Node do
  before(:example) do
    @node = Node.new()
  end

  describe '#initialize' do
    it 'sets @value to nil' do
      expect(@node.value).to be_nil
    end
    it 'sets @next_node to nil' do
      expect(@node.next_node).to be_nil
    end
  end
end
