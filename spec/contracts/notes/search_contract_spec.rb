describe Notes::SearchContract do
  describe '#call' do
    subject { described_class.new.call(params).success? }

    let(:params) { {} }

    it { is_expected.to eq true }

    context 'when query is passed ' do
      let(:params) { { query: query } }
      let(:query) { Faker::Lorem.word }

      it { is_expected.to eq true }
    end

    context 'when query is passed but nil' do
      let(:params) { { query: query } }
      let(:query) { nil }

      it { is_expected.to eq false }
    end

    context 'when query is passed but empty string' do
      let(:params) { { query: query } }
      let(:query) { '' }

      it { is_expected.to eq false }
    end

    context 'when query is passed but integer' do
      let(:params) { { query: query } }
      let(:query) { 123 }

      it { is_expected.to eq false }
    end
  end
end
