class Category < ApplicationRecord
  
  has_many :discussions, dependent: :nullify

  scope :sorted, -> { order(name: :asc) }

  after_create_commint -> { broadcast_prepend_to 'categories' }
  after_update_commint -> { broadcast_replace_to 'categories' }
  after_destroy_commint -> { broadcast_remove_to 'categories' }
end
