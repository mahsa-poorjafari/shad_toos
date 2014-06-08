atom_feed do |feed|
  feed.title(@title)

  feed.updated(@updated)

  @events.each do |event|
    feed.entry(event) do |entry|

      entry.title(h(event.title))
      entry.summary(truncate(strip_tags(event.description), :length => 100))

      entry.author do |author|
        author.name(event.author_name)
      end
    end
  end
end
