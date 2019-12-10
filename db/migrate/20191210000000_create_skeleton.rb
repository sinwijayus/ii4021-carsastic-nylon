class CreateSkeleton < ActiveRecord::Migration[5.1]
  def change
    create_table :jurusan do |t|
      t.string :nama
      t.string :kode, limit: 2
    end
    create_table :mata_kuliah do |t|
      t.references :jurusan, foreign_key: true
      t.string :nama
      t.text :desc
      t.integer :kode, limit: 4
      t.integer :credit
      t.decimal :pass_rate
      t.decimal :trend_rate
    end
    create_table :silabus_jurusan do |t|
      t.references :jurusan, foreign_key: true
      t.integer :model, limit: 4
      t.references :mata_kuliah, foreign_key: true
      t.text :desc
      t.integer :sifat
    end
    create_table :kelas_kuliah do |t|
      t.references :mata_kuliah, foreign_key: true
      t.references :tahun_ajaran, foreign_key: true
      t.integer :kelas_id
    end
    create_table :jadwal_kuliah do |t|
      t.references :kelas_kuliah, foreign_key: true
      t.string :kode_waktu
      t.integer :ruangan_id
    end
    create_table :tahun_ajaran do |t|
      t.integer :tahun
      t.integer :semester
    end
  end
end
