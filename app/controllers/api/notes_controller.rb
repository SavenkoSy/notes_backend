module API
  class NotesController < ApplicationController
    def index
      notes = Notes::Search.call(params.permit!)

      api_render(notes)
    end

    def show
      api_render(note)
    end

    def create
      api_render(Notes::Create.call(params.permit!))
    end

    def update
      api_render(Notes::Update.call(note, params.permit!))
    end

    def destroy
      Notes::Destroy.call(note)

      head :no_content
    end

    private

    def note
      @note ||= Note.find(params[:id])
    end
  end
end
