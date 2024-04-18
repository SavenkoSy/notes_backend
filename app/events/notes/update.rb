module Notes
  class Update < ContractEvent
    def initialize(note, params)
      super(params)

      @note = note
    end

    private

    attr_reader :note

    def run
      note.update(contract.to_h)
    end

    def contract
      @contract ||= Notes::UpdateContract.new(note: note).call(params)
    end
  end
end
