require "node"

RSpec.describe Node do

  describe '#initialize' do
    before(:example) do
      @node = Node.new("value", 1)
    end
    it 'sets @value to value' do
      expect(@node.value).to eq("value")
    end
    it 'sets @next_node to next_node' do
      expect(@node.next_node).to eq(1)
    end
  end
end
