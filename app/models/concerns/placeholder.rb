module Placeholder
  extend ActiveSupport::Concern

  def self.image_generator(heigh:, width:)
    "http://placehold.it/#{heigh}x#{width}"
  end
end