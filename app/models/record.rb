class Record < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  
  validates :neme, :day, :manager, :cut_id, :color_id, :parm_id, :treatment_id, :description, presence: true
end
