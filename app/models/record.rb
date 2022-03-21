class Record < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  validates :neme, :day, :manager, :cut_id, :color_id, :parm_id, :treatment_id, :description, presence: true

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :cut
  belongs_to :color
  belongs_to :parm
  belongs_to :treatment
end
