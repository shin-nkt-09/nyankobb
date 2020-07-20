class Tweet < ApplicationRecord
  validates :text, :image, presence: true
  belongs_to :user
  has_many :comments

  def self.search(search)
    return Tweet.all unless search
    Tweet.where('text LIKE(?)', "%#{search}%")
  end
end
