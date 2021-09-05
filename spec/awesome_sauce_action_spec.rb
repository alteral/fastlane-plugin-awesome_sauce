describe Fastlane do
  describe Fastlane::FastFile do
    describe 'Very limited calculator' do
      it 'minus positive number' do
        result = described_class.new.parse("lane :test do
          minus(x: 44, y: 2)
        end").runner.execute(:test)

        expect(result).to eq(42)
      end

      it 'minus negative number' do
        result = described_class.new.parse("lane :test do
          minus(x: 40, y: -2)
        end").runner.execute(:test)

        expect(result).to eq(42)
      end

      it 'minus float number' do
        result = described_class.new.parse("lane :test do
          minus(x: 44.5, y: 2.5)
        end").runner.execute(:test)
        expect(result).to eq(42)
      end

      it 'plus positive number' do
        result = described_class.new.parse("lane :test do
          plus(x: 40, y: 2)
        end").runner.execute(:test)
        expect(result).to eq(42)
      end

      it 'plus negative number' do
        result = described_class.new.parse("lane :test do
          plus(x: 44, y: -2)
        end").runner.execute(:test)
        expect(result).to eq(42)
      end

      it 'plus float number' do
        result = described_class.new.parse("lane :test do
          plus(x: 40.5, y: 1.5)
        end").runner.execute(:test)
        expect(result).to eq(42)
      end
    end
  end
end
