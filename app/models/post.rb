class Post < ActiveRecord::Base
  include ActiveModel::Validations
  validates_with MyValidator
  validates :title, presence: true
  validates :content, length: {minimum:250}
  validates :summary, length: {maximum:250}
  validates :category, inclusion: { in: %w(Fiction Non-Fiction)
end
class MyValidator < ActiveModel::Validator
  def validate(post)
    validates :title, inclusion:  { in: %w(Fiction Non-Fiction)

  end
end
