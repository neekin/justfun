class Article < ActiveRecord::Base
  has_many :taggings
  has_many :tags,:through=>:taggings
  belongs_to :user
  belongs_to :articletype
  mount_uploader :cover, CoverUploader
end
