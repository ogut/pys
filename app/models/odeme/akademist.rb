class Odeme::Akademist < ActiveRecord::Base
  belongs_to :lecture
  attr_accessible :ad, :soyad, :unvan
end