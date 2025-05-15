
--Muayene 1 e ait reçete bilgilerini getiriri
SELECT 
    m.MuayeneID, 
    h.Ad AS HastaAdi, 
    h.Soyad AS HastaSoyadi, 
    d.Ad AS DoktorAdi, 
    d.Soyad AS DoktorSoyadi, 
    r.ReceteTarihi, 
    r.IlacAd, 
    r.Dozaj
FROM Receteler r
JOIN MuayeneKayitlari m ON r.MuayeneID = m.MuayeneID
JOIN Hasta h ON r.HastaID = h.HastaID
JOIN Doktor d ON r.DoktorID = d.DoktorID
WHERE r.MuayeneID = 'M0001';
  

-- Kronik hastalýðý olan hastalarýn isimlerini ve hastalýklarýný listeler
SELECT 
	h.Ad AS HastaAdi,
	h.Soyad AS HastaSoyadi,
	kh.HastalikAdi 

FROM HastaninKronikHastaliklar hk
JOIN Hasta h ON hk.HastaID = h.HastaID
JOIN KronikHastaliklar kh ON hk.HastalikID = kh.HastalikID;


--Belirli bir hastanýn acil ve sigorta bilgileri dahil btün bilgilerini getirir
DECLARE @istenen_hasta CHAR(10);
PRINT 'Hasta ID giriniz (örnek: H0001): ';
SET @istenen_hasta = 'H0009'; 
SELECT
	h.HastaID,	
	h.Ad,
	h.Soyad,
	h.TcKimlikNo, 
	h.DogumTarihi, 
	h.Cinsiyet, 
	h.Telefon, 
	h.Eposta, 
    s.SirketAdi, 
	s.PoliceNo, 
	s.SigortaTuru,
    a.AcilAd, 
	a.AcilSoyad, 
	a.Telefon AS AcilTelefon
FROM Hasta h
JOIN Sigorta s ON h.SigortaID = s.SigortaID
JOIN AcilDurumKisileri a ON h.AcilD = a.AcilID
WHERE h.HastaID = @istenen_hasta;



-- Her test türü için kaç adet Pozitif ve Negatif sonuç olduðunu göster
SELECT
	tt.TestAd,
    SUM(CASE WHEN td.TestSonucu = 'Pozitif' THEN 1 ELSE 0 END) AS PozitifSayisi,
    SUM(CASE WHEN td.TestSonucu = 'Negatif' THEN 1 ELSE 0 END) AS NegatifSayisi
FROM TestDetay td
JOIN TestTuru tt ON td.TestTuruID = tt.TestTuruID
GROUP BY tt.TestAd
ORDER BY tt.TestAd;




-- sýnýrlý ve geçerli tarhli sigortaya sahip hasta adý
SELECT 
    s.SirketAdi AS SigortaSirketi,
    s.SigortaTuru,
    s.SigortaBitis,
    h.Ad + ' ' + h.Soyad AS HastaAdi
FROM Sigorta s
JOIN Hasta h ON s.SigortaID = h.SigortaID
WHERE 
    s.SigortaTuru = 'Sýnýrlý'
    AND s.SigortaBitis > GETDATE();


SELECT HastaID, SUM(Ucret) AS ToplamUcret FROM  Faturalar
GROUP BY 
    HastaID
HAVING 
    SUM(Ucret) > 20;
