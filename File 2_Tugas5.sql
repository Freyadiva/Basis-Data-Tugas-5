DELIMITER $$
CREATE PROCEDURE SP_Tambah_Dosen (
    IN p_Nip VARCHAR(12),
    IN p_Nama_Dosen VARCHAR(50)
)
BEGIN
    INSERT INTO dosen (Nip, Nama_Dosen)
    VALUES (p_Nip, p_Nama_Dosen);
END $$
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE SP_Tambah_Mahasiswa (
    IN p_Nim VARCHAR(9),
    IN p_Nama_Mhs VARCHAR(50),
    IN p_Tgl_Lahir DATE,
    IN p_Alamat VARCHAR(100),
    IN p_Jenis_Kelamin ENUM('Laki-laki', 'Perempuan'),
    IN p_IPK DECIMAL(4,2)
)
BEGIN
    INSERT INTO mahasiswa (Nim, Nama_Mhs, Tgl_Lahir, Alamat, Jenis_Kelamin, IPK)
    VALUES (p_Nim, p_Nama_Mhs, p_Tgl_Lahir, p_Alamat, p_Jenis_Kelamin, p_IPK);
END $$
DELIMITER ;


DELIMITER $$
CREATE PROCEDURE SP_Tambah_Matakuliah (
    IN p_Kode_MK VARCHAR(7),
    IN p_Nama_MK VARCHAR(50),
    IN p_Sks INT
)
BEGIN
    INSERT INTO matakuliah (Kode_MK, Nama_MK, Sks)
    VALUES (p_Kode_MK, p_Nama_MK, p_Sks);
END $$
DELIMITER ;


DELIMITER $$
CREATE PROCEDURE SP_Tambah_Perkuliahan (
    IN p_Nim VARCHAR(9),
    IN p_Kode_MK VARCHAR(7),
    IN p_Nip VARCHAR(12),
    IN p_Kehadiran DECIMAL(6,2),
    IN p_Nilai_Bobot CHAR(1),
    IN p_Nilai_Angka DECIMAL(6,2),
    IN p_Poin VARCHAR(1)
)
BEGIN
    INSERT INTO perkuliahan (Nim, Kode_MK, Nip, Kehadiran, Nilai_Bobot, Nilai_Angka, Poin)
    VALUES (p_Nim, p_Kode_MK, p_Nip, p_Kehadiran, p_Nilai_Bobot, p_Nilai_Angka, p_Poin);
END $$
DELIMITER ;


