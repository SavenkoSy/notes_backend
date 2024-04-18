# frozen_string_literal: true

describe Notes::Fetcher do
  describe '.call' do
    subject(:fetcher) { -> { described_class.call } }

    after { fetcher.call }

    specify { expect(Notes::Create).to receive(:call).exactly(10).times }
  end
end
