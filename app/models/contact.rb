class Contact < ApplicationRecord
  has_many :notes, dependent: :destroy
  has_one :address, dependent: :destroy

  # Associations
    # belongs_to - child tables
    # has_many - parent
    # has_one - parent
    # has_many :through
    # has_one :through
    # dependent, has_one, has_many

  # Validations
  # Methods
end
