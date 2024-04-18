describe BaseEvent do
  subject(:event) { -> { described_class.call } }

  specify { expect { event.call }.to raise_error(NotImplementedError) }
end
