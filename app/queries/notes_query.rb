class NotesQuery
  def by_title_or_content(query)
    Note.where(
      %w[title content]
        .map { |field| "#{field} LIKE '%#{ApplicationRecord.sanitize_sql_like(query)}%'" }
        .join(' OR ')
    )
  end
end
