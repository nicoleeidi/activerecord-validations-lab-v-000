class Post < ActiveRecord::Base
  validates :post, presence: title
end
