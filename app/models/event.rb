class Event < ApplicationRecord
  belongs_to :user
  has_many :media

  # Validations

  # Active Record Callback
  before_create :set_user

  def set_user
    #self.user_id = Current.user_id
  end
end
