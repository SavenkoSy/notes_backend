describe ExternalPlatform::Notes::List do
  describe '.call' do
    subject { described_class.call }

    it { is_expected.to be_a(Array) }
    it { is_expected.not_to be_empty }
    it { is_expected.to have_attributes(size: 10) }
  end
end
