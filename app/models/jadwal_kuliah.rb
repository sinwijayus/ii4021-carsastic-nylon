class JadwalKuliah < ApplicationRecord
  validates :kode_waktu, format: { with: /([1-5])(1[0-1]|[1-9])/ }
  def hari
    %w(Minggu Senin Selasa Rabu Kamis Jumat Sabtu).fetch(kode_waktu[0].to_i,'NULL')
  end
  def jam
    6 + kode_waktu[1..-1].to_i
  end
end
