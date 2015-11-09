class Song < ActiveRecord::Base
  belongs_to :artist

  validates: :title, :artist_id, presence: true
  validates: :title, length {minimum: 2}, uniqueness: true

end

# == Schema Information
#
# Table name: songs
#
#  id         :integer          not null, primary key
#  title      :string
#  artist_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_songs_on_artist_id  (artist_id)
#
