CREATE PROCEDURE sp_TCileRandevuBilgisi
    @TcKimlikNo CHAR(11)
AS
BEGIN
    SELECT 
        h.Ad AS Hasta_Ad,
        h.Soyad AS Hasta_Soyad,
        d.Ad AS Doktor_Ad,
        d.Soyad AS Doktor_Soyad,
        d.UzmanlikAlani,
        m.MuayeneTarihi
    FROM Hasta h
    JOIN MuayeneKayitlari m ON h.HastaID = m.HastaID
    JOIN Doktor d ON m.DoktorID = d.DoktorID
    WHERE h.TcKimlikNo = @TcKimlikNo
    ORDER BY m.MuayeneTarihi DESC;
END;


EXEC sp_TCileRandevuBilgisi @TcKimlikNo = '12345678901' ;


