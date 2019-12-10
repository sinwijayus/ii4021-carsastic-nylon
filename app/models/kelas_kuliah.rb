class KelasKuliah < ApplicationRecord
  belongs_to :mata_kuliah
  belongs_to :tahun_ajaran
  has_many :jadwal_kuliah
  validates :kelas_id, numericality: { only_integer: true, greater_than: 0 }
end
