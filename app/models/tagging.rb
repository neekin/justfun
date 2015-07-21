class Tagging < ActiveRecord::Base
  belongs_to :article
  belongs_to :tag
  validates_uniqueness_of :article_id, :scope => :tag_id
end
