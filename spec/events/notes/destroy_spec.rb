# frozen_string_literal: true

describe Notes::Destroy do
  describe '.call' do
    subject(:destroyer) { -> { described_class.call(note) } }

    let!(:note) { create(:note) }

    specify { expect { destroyer.call }.to change(Note, :count).from(1).to(0) }
  end
end
