class Bodega < ActiveRecord::Base
  has_many :cats, dependent: :destroy
end
