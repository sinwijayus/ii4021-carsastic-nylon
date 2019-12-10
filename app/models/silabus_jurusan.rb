class SilabusJurusan < ApplicationRecord
  belongs_to :jurusan
  belongs_to :mata_kuliah
  validates :model, numericality: { only_integer: true, greater_than: 0 }
  validates :desc, presence: true, allow_blank: true, allow_nil: false
  validates :sifat, inclusion: { in: 0..2 }
  def wajib?
    sifat == 1
  end
  def pilihan?
    !wajib?
  end
  def pilihan_dalam?
    sifat == 2
  end
  def pilihan_bebas?
    sifat == 0
  end
end
