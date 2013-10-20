class Note < ActiveRecord::Base
  validates :title, :description, presence: true

  # Remember to create a migration!
end
