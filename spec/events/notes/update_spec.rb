# frozen_string_literal: true

describe Notes::Update do
  describe '.call' do
    subject(:updater) { -> { described_class.call(note, params) } }

    let(:params) { attributes_for(:note) }
    let!(:note) { create(:note) }

    specify { expect { updater.call }.to change(note, :title).from(note.title).to(params[:title]) }
    specify { expect { updater.call }.to change(note, :content).from(note.content).to(params[:content]) }

    context 'when note.title is not unique' do
      let(:note2) { create(:note) }

      let(:params) { super().merge!(title: note2.title) }

      specify { expect { updater.call }.not_to change(note, :title) }
      specify { expect { updater.call }.not_to change(note, :content) }
    end
  end
end
