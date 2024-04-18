# frozen_string_literal: true

describe Notes::Create do
  describe '.call' do
    subject(:creator) { -> { described_class.call(params) } }

    let(:params) { attributes_for(:note) }

    specify { expect { creator.call }.to change(Note, :count) }

    context 'when note is invalid' do
      before { params.delete(:title) }

      specify { expect { creator.call }.not_to change(Note, :count) }
    end
  end
end
