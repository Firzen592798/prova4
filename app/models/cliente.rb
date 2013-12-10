class Cliente < ActiveRecord::Base
validates :Nome, presence: true
validates :CPF, presence: true
end
