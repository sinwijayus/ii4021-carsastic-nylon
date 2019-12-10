class Jurusan < ApplicationRecord
  has_many :mata_kuliah
  has_many :silabus_jurusan
  validates :nama, presence: true
  validates :kode, numericality: { only_integer: true }, length: { is: 2 }
end
