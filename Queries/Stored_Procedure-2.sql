CREATE PROCEDURE sp_HastaTelefonIleToplamUcret 
    @Telefon NVARCHAR(10)
AS
BEGIN
    SELECT
        h.Ad + ' ' + h.Soyad AS HastaAdi,
        h.Telefon AS HastaTelefon,
        SUM(f.Ucret) AS ToplamUcret
    FROM
        Faturalar f
    JOIN Hasta h ON f.HastaID = h.HastaID
    WHERE
        h.Telefon = @Telefon
    GROUP BY
        h.Ad, h.Soyad, h.Telefon;
END;

EXEC sp_HastaTelefonIleToplamUcret @Telefon = '5413332211';