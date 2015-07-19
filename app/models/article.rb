class Article < ActiveRecord::Base
  has_many :taggings

  has_many :tags, :through => :taggings
  belongs_to :user
  belongs_to :articletype
  mount_uploader :cover, CoverUploader
  def self.tagged_with(name)
    Tag.find_by_name!(name).articles
  end

  def self.tag_counts
    Tag.select("tags.*,count(taggings.tag_id) as count").joins(:taggings).group("taggings.tag_id")
  end

  def tag_list
    tags.map(&:name).join(", ")
  end

  def tag_list=(names)
    self.tag_list.remove(tag_list)
    self.tags = names.split(",").uniq.map do |n|
      Tag.where(name: n.strip).first_or_create!
    end
  end
end
