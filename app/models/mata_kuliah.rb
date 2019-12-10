class MataKuliah < ApplicationRecord
  belongs_to :jurusan
  has_many :kelas_kuliah
  validates :nama, presence: true
  validates :desc, presence: true, allow_blank: true, allow_nil: false
  validates :kode, numericality: { only_integer: true }, length: { is: 4 }
  validates :credit, numericality: { only_integer: true, greater_than: 0 }, length: { is: 1 }
  validates :pass_rate, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 1 }
  validates :trend_rate, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 1 }
  def kode_matkul
    "%s%04d" % [jurusan.kode, self.kode]
  end
end
