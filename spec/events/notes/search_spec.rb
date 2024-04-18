# frozen_string_literal: true

describe Notes::Search do
  describe '.call' do
    subject(:searcher) { described_class.call(params) }

    let(:params) { { query: query } }

    let(:note1) { create(:note, title: '12345', content: 'qwerty') }
    let(:note2) { create(:note, title: 'title', content: 'Note') }

    context 'when found object by title' do
      let(:query) { '234' }

      it { is_expected.to include(note1) }
      it { is_expected.not_to include(note2) }
    end

    context 'when found object by content' do
      let(:query) { 'ert' }

      it { is_expected.to include(note1) }
      it { is_expected.not_to include(note2) }
    end

    context 'when query is not provided' do
      let(:params) { {} }

      it { is_expected.to include(note1) }
      it { is_expected.to include(note2) }
    end
  end
end
