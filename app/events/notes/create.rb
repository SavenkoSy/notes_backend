module Notes
  class Create < ContractEvent
    private

    def run
      Note.create(contract.to_h)
    end

    def contract
      @contract ||= Notes::Contract.new.call(params)
    end
  end
end
