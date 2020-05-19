require "linked_list"

RSpec.describe LinkedList do
  before(:example) do
    @list = LinkedList.new()
  end

  describe '#initialize' do
    it 'sets @head to nil' do
      expect(@list.head).to be_nil
    end
    it 'sets @tail to nil' do
      expect(@list.tail).to be_nil
    end
    it 'sets @size to 0' do
      expect(@list.size).to eq(0)
    end
  end

  describe '#append' do
    it'adds new node containing value to end of list' do
      @list.append("A")
      expect(@list.tail.value).to eq('A')
    end
    it'size increases by 1' do
      expect{@list.append("A")}.to change { @list.size }.by(1)
    end

  end

  describe'#head' do
    it'returns nil if nothing was added yet.'do
      expect(@list.head).to be_nil
    end
    xit'returns the last node on the list.'
  end

  describe'#tail' do
    it'returns nil if nothing was added yet.'do
      expect(@list.tail).to be_nil
    end
    xit'returns the last node on the list.'
  end
end
