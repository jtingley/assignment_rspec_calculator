load 'lib/calculator.rb'
describe 'Calculator' do
  let(:calc){ Calculator.new }

  describe '#add' do
    it 'adds positive integers' do
      expect(calc.add(1,2)).to eq(3)
    end
    it 'adds negative integers' do
      expect(calc.add(-1,-2)).to eq(-3)
    end
    it 'adds positive and negative integers' do
      expect(calc.add(1,-2)).to eq(-1)
    end
    it 'adds floats' do
      expect(calc.add(1.2,2.3)).to eq(3.5)
    end
  end

  describe '#subtract' do
    it 'subtracts positive integers' do
      expect(calc.subtract(1,2)).to eq(-1)
    end
    it 'subtracts negative integers' do
      expect(calc.subtract(-1,-2)).to eq(1)
    end
    it 'subtracts floats' do
      expect(calc.subtract(1.5,2.6)).to eq(-1.1)
    end
  end

  describe '#multiply' do
    it 'multiplies positive integers' do
      expect(calc.multiply(2,5)).to eq(10)
    end
    it 'multiplies positive and negatives' do
      expect(calc.multiply(2,-5)).to eq(-10)
    end
    it 'multiplies negatives' do
      expect(calc.multiply(-2.0,-5.1)).to eq(10.2)
    end
  end

  describe '#divide' do
    it 'divides integers' do
      expect(calc.divide(6,2.0)).to eq(3)
    end
    it 'raises an error when trying to divide by 0' do
      expect do
        calc.divide(5,0)
      end.to raise_error(ArgumentError)
    end
    it 'divides integers' do
      expect(calc.divide(5,2)).to eq(2.5)
    end
  end

  describe "#pow" do
    it 'raises a number to a positive power' do
      expect(calc.pow(2,3)).to eq(8)
    end
    it 'raises a number to a negative power' do
      expect(calc.pow(2,-3)).to eq(0.125)
    end
    it 'raises a number to a decimal power' do
      expect(calc.pow(4,0.5)).to eq(2)
    end
  end

  describe "#sqrt" do
    it 'returns square root for positive numbers' do
      expect(calc.sqrt(4)).to eq(2)
    end
    it 'raises an error when finding the root of a negative number' do
      expect do
        calc.sqrt(-5)
      end.to raise_error(ArgumentError)
    end
    it 'returns 2-digit decimal for non-round roots' do
      expect(calc.sqrt(2)).to eq(1.41)
    end
  end

  describe "#memory=" do
    it 'overwrites previous object from memory' do
      calc.memory= 10
      calc.memory = 5
      expect(calc.memory).to eq(5)
    end
  end

  describe '#memory' do
    it 'starts as nil when the object in memory is returned' do
      calc.memory = 42
      calc.memory
      expect(calc.memory).to eq(nil)
    end
  end

  describe '#stringify' do
    let(:string_calc){ Calculator.new(true) }

    describe '#add' do
      it 'adds positive integers' do
        expect(string_calc.add(1,2)).to eq('3')
      end
      it 'adds negative integers' do
        expect(string_calc.add(-1,-2)).to eq('-3')
      end
      it 'adds positive and negative integers' do
        expect(string_calc.add(1,-2)).to eq('-1')
      end
      it 'adds floats' do
        expect(string_calc.add(1.2,2.3)).to eq('3.5')
      end
    end

    describe '#subtract' do
    it 'subtracts positive integers' do
      expect(string_calc.subtract(1,2)).to eq('-1')
    end
    it 'subtracts negative integers' do
      expect(string_calc.subtract(-1,-2)).to eq('1')
    end
    it 'subtracts floats' do
      expect(string_calc.subtract(1.5,2.6)).to eq('-1.1')
    end
  end

  describe '#multiply' do
    it 'multiplies positive integers' do
      expect(string_calc.multiply(2,5)).to eq('10')
    end
    it 'multiplies positive and negatives' do
      expect(string_calc.multiply(2,-5)).to eq('-10')
    end
    it 'multiplies negatives' do
      expect(string_calc.multiply(-2.0,-5.1)).to eq('10.2')
    end
  end

  describe '#divide' do
    it 'divides integers' do
      expect(string_calc.divide(6,2.0)).to eq('3')
    end
    it 'raises an error when trying to divide by 0' do
      expect do
        string_calc.divide(5,0)
      end.to raise_error(ArgumentError)
    end
    it 'divides integers' do
      expect(string_calc.divide(5,2)).to eq('2.5')
    end
  end

  describe "#pow" do
    it 'raises a number to a positive power' do
      expect(string_calc.pow(2,3)).to eq('8')
    end
    it 'raises a number to a negative power' do
      expect(string_calc.pow(2,-3)).to eq('0.125')
    end
    it 'raises a number to a decimal power' do
      expect(string_calc.pow(4,0.5)).to eq('2')
    end
  end

  describe "#sqrt" do
    it 'returns square root for positive numbers' do
      expect(string_calc.sqrt(4)).to eq('2')
    end
    it 'raises an error when finding the root of a negative number' do
      expect do
        string_calc.sqrt(-5)
      end.to raise_error(ArgumentError)
    end
    it 'returns 2-digit decimal for non-round roots' do
      expect(string_calc.sqrt(2)).to eq('1.41')
    end
  end

  describe "#memory=" do
    it 'overwrites previous object from memory' do
      string_calc.memory= 10
      string_calc.memory = 5
      expect(string_calc.memory).to eq('5')
    end
  end

  describe '#memory' do
    it 'starts as nil when the object in memory is returned' do
      string_calc.memory = 42
      string_calc.memory
      expect(string_calc.memory).to eq('nil')
    end
  end
  end
end
