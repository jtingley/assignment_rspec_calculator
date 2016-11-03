load 'lib/calculator.rb'
describe 'Calculator' do
  describe '#add' do
    it 'adds positive integers' do
      expect(Calculator.new.add(1,2)).to eq(3)
    end
    it 'adds negative integers' do
      expect(Calculator.new.add(-1,-2)).to eq(-3)
    end
    it 'adds positive and negative integers' do
      expect(Calculator.new.add(1,-2)).to eq(-1)
    end
    it 'adds floats' do
      expect(Calculator.new.add(1.2,2.3)).to eq(3.5)
    end
  end
  describe '#subtract' do
    it 'subtracts positive integers' do
      expect(Calculator.new.subtract(1,2)).to eq(-1)
    end
    it 'subtracts negative integers' do
      expect(Calculator.new.subtract(-1,-2)).to eq(1)
    end
    it 'subtracts floats' do
      expect(Calculator.new.subtract(1.5,2.6)).to eq(-1.1)
    end
  end
  describe '#multiply' do
    it 'multiplies positive integers' do
      expect(Calculator.new.multiply(2,5)).to eq(10)
    end
    it 'multiplies positive and negatives' do
      expect(Calculator.new.multiply(2,-5)).to eq(-10)
    end
    it 'multiplies negatives' do
      expect(Calculator.new.multiply(-2.0,-5.1)).to eq(10.2)
    end
  end
end
