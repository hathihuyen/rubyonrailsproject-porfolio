class Blog < ApplicationRecord
  enum status1: {draft: 0, published: 1}

  extend FriendlyId
  friendly_id :title, use: :slugged
end
