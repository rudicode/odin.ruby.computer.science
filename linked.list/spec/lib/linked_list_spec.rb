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

  describe '#prepend' do
    it'adds new node containing value to the beginning of list' do
      @list.prepend("Prepend")
      expect(@list.head.value).to eq('Prepend')
    end
    it'size increases by 1' do
      expect{@list.prepend("A")}.to change { @list.size }.by(1)
    end
  end

  describe '#count_nodes' do
    it'traverses the list counting each node.' do
      @list.append("A")
      @list.append("B")
      @list.append("C")
      @list.append("D")
      expect(@list.count_nodes).to eq(4)
    end

  end

  describe'#head' do
    it'returns nil if nothing was added yet.'do
      expect(@list.head).to be_nil
    end
    xit'returns the last node on the list.'
  end

  describe'#tail' do
    it 'returns nil if nothing was added yet.' do
      expect(@list.tail).to be_nil
    end
    it 'returns the last node on the list.' do
      last_node_added = @list.append(123)
      expect(@list.tail).to eq(last_node_added)
    end
  end

  describe '#at' do
    it 'returns value at index location' do
      node55 = @list.append(55)
      @list.append(40)
      @list.append(22)
      expect(@list.at(0)).to eq(node55)
      expect(@list.at(0).value).to eq(55)
      expect(@list.at(1).value).to eq(40)
      expect(@list.at(2).value).to eq(22)
      expect(@list.at(3)).to be_nil
      expect(@list.at(-1)).to be_nil
    end
  end

  describe '#contains?' do
    it 'returns true if a value is in the list' do
    @list.append(55)
    @list.append(40)
    @list.append(22)
    @list.append([[1,2],3,4,5])
    expect(@list.contains?(55)).to be_truthy
    expect(@list.contains?(40)).to be_truthy
    expect(@list.contains?(22)).to be_truthy
    expect(@list.contains?([[1,2],3,4,5])).to be_truthy
    end

    it 'returns false if a value is not in the list' do
    @list.append(55)
    @list.append(40)
    @list.append(22)
    @list.append([[1,2],3,4,5])
    expect(@list.contains?(100)).to be_falsy
    expect(@list.contains?(0)).to   be_falsy
    expect(@list.contains?(1)).to   be_falsy
    expect(@list.contains?([[1,2],3,4,6])).to   be_falsy
    end
  end

  describe'#find'do
    it 'returns index of value or nil' do
    @list.append(55)
    @list.append(40)
    @list.append(22)
    @list.append([[1,2],3,4,5])
    expect(@list.find(55)).to eq(0)
    expect(@list.find(40)).to eq(1)
    expect(@list.find(22)).to eq(2)
    expect(@list.find([[1,2],3,4,5])).to eq(3)
    expect(@list.find('not found')).to be_nil
    end
  end

  describe '#to_s' do
    it 'returns a string with all nodes, formated' do
      expect(@list.to_s).to eq("nil")

      @list.append(55)
      expect(@list.to_s).to eq("( 55 ) -> nil")

      @list.append(40)
      expect(@list.to_s).to eq("( 55 ) -> ( 40 ) -> nil")

      @list.append(22)
      expect(@list.to_s).to eq("( 55 ) -> ( 40 ) -> ( 22 ) -> nil")

      @list.append([1,2,3,4])
      expect(@list.to_s).to eq("( 55 ) -> ( 40 ) -> ( 22 ) -> ( [1, 2, 3, 4] ) -> nil")

      @list.append("test string")
      expect(@list.to_s).to eq("( 55 ) -> ( 40 ) -> ( 22 ) -> ( [1, 2, 3, 4] ) -> ( test string ) -> nil")
    end
  end
  describe '#pop' do
    it 'removes the last node from the list' do
      first_node   = @list.append(55)
      second_node  = @list.append(40)
      third_node   = @list.append(22)

      removed_node = @list.pop
      expect(@list.tail).to eq(second_node)

      removed_node = @list.pop
      expect(@list.tail).to eq(first_node)

      removed_node = @list.pop
      expect(@list.tail).to be_nil
      expect(@list.head).to be_nil

      another_node = @list.append(44)
      removed_node = @list.pop
      expect(@list.tail).to be_nil
      expect(@list.head).to be_nil
    end
    it 'decreases @size by 1' do
      @list.append(55)
      @list.append(40)
      @list.append(22)
      expect{@list.pop()}.to change { @list.size }.by(-1)
    end
  end

end
