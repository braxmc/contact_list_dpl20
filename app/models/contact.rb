class Contact < ApplicationRecord
  has_many :notes, dependent: :destroy
  has_one :address, dependent: :destroy
  validates :first_name, :last_name, :email, presence: true
  # Associations - relationships betweens the tables
    # belongs_to - childs
    # has_many - parent
    # has_one - parent
    # has_many :through
    # has_one :through
    # dependent, has_one, has_many
  # Validations - checks the data before it goes to the db
    # confirmation
    #   check two fields and make sure they are the exact same
    #   password and password confirmation
    # inclusion
    #   make sure its in a given set
    #   class Coffee < ActiveRecord::Base
    #     validates :size, inclusion: {
    #       in: %w(small medium large),
    #         message: "%{value} is not a valid size"
    #     }
    #   end
    # length
    #   make sure the size of the value is correct
    #   class Person < ActiveRecord::Base
    #     validates :name, length: { minimum: 2 }
    #     validates :bio, length: { maximum: 500 }
    #     validates :password, length: { in: 6..20 }
    #     validates :registration_number, length: { is: 6 }
    #   end
    # numericality
    #   make sures that the value are numbers
    #   class Player < ActiveRecord::Base
    #     validates :points, numericality: true
    #     validates :games_played, numericality: { only_integer: true }
    #     validates :golf_handicap, numericality: {
    #       less_than_or_equal_to: 40.4,
    #       greater_than_or_equal_to: 2
    #     }
    #   end
    # presence
    #   not a empty value
    #   class Person < ActiveRecord::Base
    #     validates :name, :login, :email, presence: true
    #   end
    # uniqueness
    #   one one unique value in db
    #   class Account < ActiveRecord::Base
    #     validates :email, uniqueness: true
    #   end
    # allow_nil
    #  nil
    #   class Coffee < ActiveRecord::Base
    #     validates :size, inclusion: { in: %w(small medium large),
    #     message: "%{value} is not a valid size" }, allow_nil: true
    #   end
    # allow_blank
    #  ''
    #  class Topic < ActiveRecord::Base
    #     validates :title, length: { is: 5 }, allow_blank: true
    #   end
    # message
    # on - on which action
    # class Person < ActiveRecord::Base
    #   validates :email, uniqueness: true, on: :create
    #   validates :age, numericality: true, on: :update
    #   validates :name, presence: true, on: :save
    # end
  # Callbacks
    # trigger logic at certain times, actions
    # before_validations
    # after_validations
    # before_save
    # after_save
    # around_save
    # before_create
    # after_create
    # around_create
    # class CreditCard < ActiveRecord::Base
    #   before_save :encrypt_card_number
    #   private
    #     def encrypt_card_number
    #       self.card_number = bcrypt(self.card_number)
    #     end
    # end
  # Attr Serialization
    # class CreatePeople < ActiveRecord::Migration
    #   def change
    #     create_table :people do |t|
    #       t.belongs_to :account
    #       t.text :hobbies
    #     end
    #   end
    # end
    # class Person < ActiveRecord::Base
    #   belongs_to :account
    #   serialize :hobbies, Array
    # end
  # Methods
    # Class Methods logic with whole table
      # class Person < ActiveRecord::Base
      #   # called on a class Person.by_first_name
      #   def self.by_first_name
      #     order(:first_name)
      #   end
      # end
    # Instance Methods logic for a single record
      # class Person < ActiveRecord::Base
      #   # called on an instance @person.full_name
      #   def full_name
      #    "#{self.first_name} {self.last_name}"
      #   end
      # end
    # fat models skinny controller
end
