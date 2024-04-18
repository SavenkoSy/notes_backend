describe FetchNotesJob do
  describe '#perform' do
    subject(:job) { -> { described_class.new.perform } }

    after { job.call }

    specify { expect(Notes::Fetcher).to receive(:call).once }
  end
end
