class Parm < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '○' }
  ]
  
  include ActiveHash::Associations
  has_many :records
end