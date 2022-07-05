require "spec_helper"

RSpec.describe TruthyTool do

  describe ".is_truthy??" do
    it { expect(described_class.is_truthy?(false)).to eq(false) } # false
    it { expect(described_class.is_truthy?(nil)).to eq(false) } # false
    it { expect(described_class.is_truthy?(0)).to eq(false) } # false
    it { expect(described_class.is_truthy?("")).to eq(false) } # false
    it { expect(described_class.is_truthy?("")).to eq(false) } # false
    it { expect(described_class.is_truthy?("\n")).to eq(false) } # false
    it { expect(described_class.is_truthy?("abc")).to eq(true)}  # true
    it { expect(described_class.is_truthy?(42)).to eq(true)}  # true
    it { expect(described_class.is_truthy?([])).to eq(false) } # false
    it { expect(described_class.is_truthy?([1])).to eq(true)}  # true
    it { expect(described_class.is_truthy?([1, 5])).to eq(true)}  # true
    it { expect(described_class.is_truthy?({})).to eq(false) } # false
    it { expect(described_class.is_truthy?({a: :b})).to eq(true)}  # true
    end
end


