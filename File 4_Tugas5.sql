DELIMITER $$
CREATE PROCEDURE SP_Delete_Dosen (
    IN p_Nip VARCHAR(12)
)
BEGIN
    DELETE FROM dosen WHERE Nip = p_Nip;
END $$
DELIMITER ;


DELIMITER $$
CREATE PROCEDURE SP_Delete_Mahasiswa (
    IN p_Nim VARCHAR(9)
)
BEGIN
    DELETE FROM mahasiswa WHERE Nim = p_Nim;
END $$
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE SP_Delete_Matakuliah (
    IN p_Kode_MK VARCHAR(7)
)
BEGIN
    DELETE FROM matakuliah WHERE Kode_MK = p_Kode_MK;
END $$
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE SP_Delete_Perkuliahan (
    IN p_Nim VARCHAR(9),
    IN p_Kode_MK VARCHAR(7)
)
BEGIN
    DELETE FROM perkuliahan WHERE Nim = p_Nim AND Kode_MK = p_Kode_MK;
END $$
DELIMITER ;

