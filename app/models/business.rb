class Business < ApplicationRecord
  paginates_per 100

  scope :food, -> { where(category: "food/bev" )}
  scope :beauty, -> { where(category: 'beauty') }
  scope :healthcare, -> { where(category: 'healthcare') }
  scope :clothing, -> { where(category: 'clothing') }
  scope :design, -> { where(category: 'design') }
  scope :publishing, -> { where(category: 'publishing') }
  scope :misc, -> { where(category: 'misc') }
  scope :alpha, -> { order(name: :asc) }

end

# scope :ten_most_recent, -> { order(created_at: :desc).limit(10)}
# scope :misc, -> { where(category: 'misc').order('name asc') }


