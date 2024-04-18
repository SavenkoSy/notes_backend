module Notes
  class Search < ContractEvent
    def run
      if params[:query]
        NotesQuery.new.by_title_or_content(params[:query])
      else
        Note.all
      end
    end

    def contract
      @contract ||= Notes::SearchContract.new.call(params)
    end

    private

    attr_reader :params
  end
end
