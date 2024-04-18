module Notes
  class Destroy < BaseEvent
    def initialize(note)
      @note = note
    end

    def call
      note.destroy
    end

    private

    attr_reader :note
  end
end
