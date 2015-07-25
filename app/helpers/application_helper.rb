module ApplicationHelper
  def full_title(page_title = '')
    base_title = "Just Fun , Let Code"
    if page_title.empty?
      base_title
    else
      "#{page_title} | #{base_title}"
    end
  end

  def tag_cloud(tags, classes)
    max = tags.sort_by(&:count).last
    tags.each do |tag|
      index = tag.count.to_f / max.count * (classes.size - 1)
      yield(tag, classes[index.round])
    end
  end
end
