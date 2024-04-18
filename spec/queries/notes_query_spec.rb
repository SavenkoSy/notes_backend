describe NotesQuery do
  describe '#by_title_or_content' do
    subject { described_class.new.by_title_or_content(query) }

    let(:query) { '' }
    let(:note1) { create(:note, title: '12345', content: 'qwerty') }
    let(:note2) { create(:note, title: '0123456789', content: 'Content') }
    let(:note3) { create(:note, title: 'title', content: 'Note') }

    it { is_expected.to be_a(ActiveRecord::Relation) }

    context 'when query is blank' do
      it { is_expected.to include(note1) }
      it { is_expected.to include(note2) }
      it { is_expected.to include(note3) }
    end

    context 'when found object by title' do
      let(:query) { '234' }

      it { is_expected.to include(note1) }
      it { is_expected.to include(note2) }
      it { is_expected.not_to include(note3) }
    end

    context 'when found object by content' do
      let(:query) { 'ert' }

      it { is_expected.to include(note1) }
      it { is_expected.not_to include(note2) }
      it { is_expected.not_to include(note3) }
    end

    context 'when results not found' do
      let(:query) { '73e4tyyut4fa2sd' }

      it { is_expected.not_to include(note1) }
      it { is_expected.not_to include(note2) }
      it { is_expected.not_to include(note3) }
    end
  end
end
