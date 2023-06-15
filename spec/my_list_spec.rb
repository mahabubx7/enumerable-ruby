require_relative '../my_list'

describe 'Unit tests for MyList class' do
  it 'should return all by given logic' do
    list = MyList.new(1, 2, 3, 4)
    expect(list.all? { |e| e < 5 }).to eq(true)
    expect(list.all? { |e| e == 5 }).to eq(false) # as e > 5
  end

  it 'should return any by given logic' do
    list = MyList.new(1, 2, 3, 4)
    expect(list.any? { |e| e == 2 }).to eq(true)
    expect(list.any? { |e| e == 5 }).to eq(false)
  end
end
