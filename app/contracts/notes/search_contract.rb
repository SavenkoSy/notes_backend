module Notes
  class SearchContract < ApplicationContract
    params do
      optional(:query).filled(:string)
    end
  end
end
