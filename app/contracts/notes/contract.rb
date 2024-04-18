module Notes
  class Contract < ApplicationContract
    params do
      required(:title).filled(:string)
      required(:content).filled(:string)
    end

    rule(:title) do
      key.failure(I18n.t('dry_validation.errors.note.rules.title.already_exists')) if already_exists?(values[:title])
    end

    private

    def already_exists?(value)
      Note.exists?(title: value)
    end
  end
end
