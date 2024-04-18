module Notes
  class UpdateContract < Notes::Contract
    option :note

    params do
      optional(:title).value(:string)
      optional(:content).value(:string)
    end

    rule(:title) do
      if values[:title] && title_changed?(values[:title]) && already_exists?(values[:title])
        key.failure(I18n.t('dry_validation.errors.note.rules.title.already_exists'))
      end
    end

    def title_changed?(value)
      note.title != value
    end
  end
end
