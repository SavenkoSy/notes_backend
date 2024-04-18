describe Notes::UpdateContract do
  describe '#call' do
    subject { described_class.new(note: note).call(params).success? }

    let(:params) { attributes_for(:note) }
    let(:note) { create(:note) }

    it { is_expected.to eq true }

    context 'when passed only title' do
      before { params.delete(:content) }

      it { is_expected.to eq true }
    end

    context 'when passed only content' do
      before { params.delete(:title) }

      it { is_expected.to eq true }
    end

    context 'validations' do
      context 'when title is already exist' do
        before { Note.create(params) }

        it { is_expected.to eq false }

        context 'and contains correct error message' do
          subject { described_class.new(note: note).call(params).errors.messages.map(&:text) }

          let(:error_message) { I18n.t('dry_validation.errors.note.rules.title.already_exists') }

          it { is_expected.to include(error_message) }
        end
      end
    end
  end
end
