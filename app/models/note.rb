class Note < ApplicationRecord
  belongs_to :user
  has_many :note_topics
end
