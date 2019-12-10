class TahunAjaran < ApplicationRecord
  has_many :kelas_kuliah
  before_save do
    if self.tahun.nil? || self.semester.nil? then
      fail "Invalid composite data!"
    end
    self.id = Integer("%04d%02d" % [self.tahun, self.semester],10)
  end
  validates :tahun, numericality: { only_integer: true }, length: { is: 4 }
  validates :semester, numericality: { only_integer: true }, length: { in: 1..2 }
end
