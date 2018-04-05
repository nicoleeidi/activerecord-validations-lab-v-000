class Post < ActiveRecord::Base
  include ActiveModel::Validations
  validates_with MyValidator
  validates :title, presence: true
  validates :content, length: {minimum:250}
  validates :summary, length: {maximum:250}
  validates :category, inclusion: { in: %w(Fiction Non-Fiction)



  def is_claickbait?
    validates :title, inclusion:  { in: %w( "Won't Believe", "Secret", "Top [0-9]", or "Guess")

  end
end
