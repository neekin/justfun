class Tagging < ActiveRecord::Base
  belongs_to :article
  belongs_to :tag
  validates :article_id , :presence  => true , :uniqueness => {:scope => :tag_id}
end
