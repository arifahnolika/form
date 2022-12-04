CREATE DATABASE fakultas;

CREATE TABLE jurusan (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    kode CHAR(4) NOT NULL,
    nama VARCHAR(50) NOT NULL
);

CREATE TABLE mahasiswa (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    id_jurusan INTEGER NOT NULL,
    nim CHAR(8) NOT NULL,
    nama VARCHAR(50) NOT NULL,
    jenis_kelamin enum('laki-laki', 'perempuan') NOT NULL,
    tempat_lahir VARCHAR(50) NOT NULL,
    tanggal_lahir DATE NOT NULL,
    alamat VARCHAR(255) NOT NULL,
    FOREIGN KEY (id_jurusan) REFERENCES jurusan (id)
);

-- insert jurusan
insert into jurusan (kode, nama)
values ('3', 'Teknik Komputer');

-- insert mahasiswa
insert into mahasiswa (id_jurusan, nim, nama, jenis_kelamin, tanggal_lahir, tanggal_lahir, alamat)
values (1, '20221107', 'Buwas', 'laki-laki', 'Jember', '2001-01-31', 'Jl. Lautan 99');

-- update jurusan
update jurusan set nama="Informatika" where id=2;

-- update mahasiswa
update mahasiswa set alamat="Jl. Pesisir 56" where id=1;

-- delete jurusan
delete from jurusan where id=1;

-- delete mahasiswa
delete from mahasiswa where id=2;