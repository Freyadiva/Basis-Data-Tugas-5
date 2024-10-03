DELIMITER $$
CREATE PROCEDURE SP_Update_Dosen (
    IN p_Nip VARCHAR(12),
    IN p_Nama_Dosen VARCHAR(50)
)
BEGIN
    UPDATE dosen 
    SET Nama_Dosen = p_Nama_Dosen 
    WHERE Nip = p_Nip;
END $$
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE SP_Update_Mahasiswa (
    IN p_Nim VARCHAR(9),
    IN p_Nama_Mhs VARCHAR(50),
    IN p_Tgl_Lahir DATE,
    IN p_Alamat VARCHAR(100),
    IN p_Jenis_Kelamin ENUM('Laki-laki', 'Perempuan'),
    IN p_IPK DECIMAL(4,2)
)
BEGIN
    UPDATE mahasiswa 
    SET Nama_Mhs = p_Nama_Mhs, Tgl_Lahir = p_Tgl_Lahir, Alamat = p_Alamat, Jenis_Kelamin = p_Jenis_Kelamin, IPK = p_IPK 
    WHERE Nim = p_Nim;
END $$
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE SP_Update_Matakuliah (
    IN p_Kode_MK VARCHAR(7),
    IN p_Nama_MK VARCHAR(50),
    IN p_Sks INT
)
BEGIN
    UPDATE matakuliah 
    SET Nama_MK = p_Nama_MK, Sks = p_Sks 
    WHERE Kode_MK = p_Kode_MK;
END $$
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE SP_Update_Perkuliahan (
    IN p_Nim VARCHAR(9),
    IN p_Kode_MK VARCHAR(7),
    IN p_Nip VARCHAR(12),
    IN p_Kehadiran DECIMAL(6,2),
    IN p_Nilai_Bobot CHAR(1),
    IN p_Nilai_Angka DECIMAL(6,2),
    IN p_Poin VARCHAR(1)
)
BEGIN
    UPDATE perkuliahan 
    SET Kode_MK = p_Kode_MK, Nip = p_Nip, Kehadiran = p_Kehadiran, Nilai_Bobot = p_Nilai_Bobot, Nilai_Angka = p_Nilai_Angka, Poin = p_Poin 
    WHERE Nim = p_Nim;
END $$
DELIMITER ;


