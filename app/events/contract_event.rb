# frozen_string_literal: true

class ContractEvent < BaseEvent
  attr_reader :params

  def initialize(params)
    @params = params.dup.to_h
  end

  # 1. Validate contract
  def call
    return contract if contract.failure?

    run
  end

  private

  def run
    raise NotImplementedError
  end

  def contract
    raise NotImplementedError
  end
end
