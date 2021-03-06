class Article < ApplicationRecord
  belongs_to :user
  alias_attribute :urlToImage, :image_url
  alias_attribute :publishedAt, :published_at

  def self.newsfeed
    self.all.where('public=true')
  end

  def username
    self.user.username
  end
end
