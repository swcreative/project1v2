class Topic < ApplicationRecord
  has_many :note_topics
  belongs_to :user
end
