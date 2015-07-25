class Article < ActiveRecord::Base

  validates :title ,presence: true
  validates :articletype_id ,presence: true
  validates :content ,presence: true


  has_many :taggings
  has_many :tags, :through => :taggings
  belongs_to :user
  belongs_to :articletype

  mount_uploader :cover, CoverUploader

  def self.tagged_with(name)
    Tag.find_by_name!(name).articles
  end
  def self.tag_counts
    Tag.select("tags.*,count(taggings.tag_id) as count").
     joins(:taggings).group("taggings.tag_id")
  end
  def tag_list
    tags.map(&:name).join(", ")
  end

  def tag_list=(names)
    self.tags = names.split(",").uniq.map do |n|
    Tag.where(name: n.strip).first_or_create!
    end
  end
  def articletype=(name)
    self.articletype_id = Articletype.where(name:name).first_or_create!.id
  end
end
