require 'rails_helper'

describe FizzBuzz do
  describe '.print' do
    it 'returns Fizz when is divisible by 3' do
      expect(described_class.print 3).to eq 'Fizz'
    end

    it 'returs Buzz when is divisible by 5' do
      expect(described_class.print 5).to eq 'Buzz'
    end

    it 'returns FizzBuzz when is divisible by both, 3 and 5' do
      expect(described_class.print 15).to eq 'FizzBuzz'
    end

    it 'returns the number when is not divisible by 3 neither by 5' do
      expect(described_class.print 1).to eq 1
    end
  end

  describe '.sequence' do
    it 'returns a full list of converted numbers' do
      expect(described_class.sequence(1, 5)).to eq [1, 2, 'Fizz', 4, 'Buzz']
    end
  end
end
