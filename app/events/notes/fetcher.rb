module Notes
  class Fetcher < BaseEvent
    def call
      notes.each { |note_attrs| Notes::Create.call(note_attrs) }
    end

    private

    def notes
      ExternalPlatform::Notes::List.call
    end
  end
end
