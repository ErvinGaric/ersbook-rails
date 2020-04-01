class Post < ApplicationRecord
  belongs_to :user

  validates_presence_of :ime, :opis
  validates :ime, length: { maximum: 25 }
  validates :opis, length: { minimum: 15, message: 'Prosim vnesite daljši opis' }

  acts_as_commontable dependent: :destroy
end
