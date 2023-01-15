class Question < ApplicationRecord
  belongs_to :survey 
  has_many :option dependent: :destroy #Birden fazla seçenek
  accepts_nested_attributes_for :option, allow_destroy: true
  enum type: {text: 0, choice: 1} #soru numaraları

end
