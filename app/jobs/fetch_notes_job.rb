class FetchNotesJob < ApplicationJob
  def perform
    Notes::Fetcher.call
  end
end
