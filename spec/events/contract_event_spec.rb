describe ContractEvent do
  subject(:event) { -> { described_class.call(params) } }

  let(:params) { {} }

  describe '#contract' do
    specify { expect { event.call }.to raise_error(NotImplementedError) }
  end

  describe '#run' do
    let(:contract) { OpenStruct.new(failure?: false) }
    let(:service) { described_class.new(params) }

    before { allow(service).to receive(:contract).and_return(contract) }

    it { expect { service.call }.to raise_error(NotImplementedError) }
  end
end
