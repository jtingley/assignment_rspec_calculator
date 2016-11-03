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

  describe '#divide' do
    it 'divides integers' do
      expect(Calculator.new.divide(6,2.0)).to eq(3)
    end
    it 'raises an error when trying to divide by 0' do
      expect do
        Calculator.new.divide(5,0)
      end.to raise_error(ArgumentError)
    end
    it 'divides integers' do
      expect(Calculator.new.divide(5,2)).to eq(2.5)
    end
  end

  describe "#pow" do
    it 'raises a number to a positive power' do
      expect(Calculator.new.pow(2,3)).to eq(8)
    end
    it 'raises a number to a negative power' do
      expect(Calculator.new.pow(2,-3)).to eq(0.125)
    end
    it 'raises a number to a decimal power' do
      expect(Calculator.new.pow(4,0.5)).to eq(2)
    end
  end

  describe "#sqrt" do
    it 'returns square root for positive numbers' do
      expect(Calculator.new.sqrt(4)).to eq(2)
    end
    it 'raises an error when finding the root of a negative number' do
      expect do
        Calculator.new.sqrt(-5)
      end.to raise_error(ArgumentError)
    end
    it 'returns 2-digit decimal for non-round roots' do
      expect(Calculator.new.sqrt(2)).to eq(1.41)
    end
  end
end
