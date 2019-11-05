class Note < ApplicationRecord
  belongs_to :user
  has_many :note_topics
  has_many :tags
end
