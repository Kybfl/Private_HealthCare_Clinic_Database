INSERT INTO Sigorta (SigortaID, SirketAdi, PoliceNo, SigortaBaslangic, SigortaBitis, SigortaTuru) VALUES
('S0001', 'Anadolu Sigorta', 'P123456', '2024-01-01', '2025-01-01', 'Tam Kapsaml�'),
('S0002', 'Allianz', 'P654321', '2024-02-01', '2025-02-01', 'Kapsaml�'),
('S0003', 'Axa Sigorta', 'P789012', '2024-03-01', '2025-03-01', 'S�n�rl�'),
('S0004', 'Mapfre', 'P345678', '2024-04-01', '2025-04-01', 'Tam Kapsaml�'),
('S0005', 'Sompo Sigorta', 'P456789', '2024-05-01', '2025-05-01', 'Kapsaml�'),
('S0006', 'Allianz', 'P234567', '2024-06-01', '2025-06-01', 'S�n�rl�'),
('S0007', 'Anadolu Sigorta', 'P567890', '2024-07-01', '2025-07-01', 'Tam Kapsaml�'),
('S0008', 'Axa Sigorta', 'P890123', '2024-08-01', '2025-08-01', 'Kapsaml�'),
('S0009', 'Mapfre', 'P012345', '2024-09-01', '2025-09-01', 'S�n�rl�'),
('S0010', 'Sompo Sigorta', 'P678901', '2024-10-01', '2025-10-01', 'Tam Kapsaml�'),
('S0011', 'Allianz', 'P123123', '2024-11-01', '2025-11-01', 'Kapsaml�'),
('S0012', 'Anadolu Sigorta', 'P321321', '2024-12-01', '2025-12-01', 'S�n�rl�'),
('S0013', 'Allianz', 'P111222', '2024-11-15', '2025-11-15', 'Tam Kapsaml�'),
('S0014', 'Mapfre', 'P333444', '2024-12-10', '2025-12-10', 'Kapsaml�'),
('S0015', 'Sompo Sigorta', 'P555666', '2024-12-20', '2025-12-20', 'Tam Kapsaml�');



INSERT INTO Hasta (HastaID, SigortaID, AcilD, Ad, Soyad, TcKimlikNo, DogumTarihi, Cinsiyet, Telefon, Eposta, Adres) VALUES
('H0001', 'S0001', 'A001', 'Ali', 'Y�lmaz', '12345678901', '1990-05-12', 'Erkek', '5051234567', 'ali@mail.com', 'Konya, T�rkiye'),
('H0002', 'S0002', 'A002', 'Ay�e', 'Demir', '10987654321', '1985-08-23', 'Kad�n', '5329876543', 'ayse@mail.com', '�stanbul, T�rkiye'),
('H0003', 'S0003', 'A003', 'Mehmet', 'Kara', '23456789012', '1975-03-15', 'Erkek', '5413332211', 'mehmet.kara@mail.com', 'Ankara, T�rkiye'),
('H0004', 'S0004', 'A004', 'Fatma', '�elik', '34567890123', '1992-09-08', 'Kad�n', '5438887744', 'fatma.celik@mail.com', '�zmir, T�rkiye'),
('H0005', 'S0005', 'A005', 'Ahmet', '�zt�rk', '45678901234', '1980-12-22', 'Erkek', '5324445566', 'ahmet.ozturk@mail.com', 'Bursa, T�rkiye'),
('H0006', 'S0006', 'A006', 'Zeynep', 'Arslan', '56789012345', '1995-06-30', 'Kad�n', '5345556677', 'zeynep.arslan@mail.com', 'Antalya, T�rkiye'),
('H0007', 'S0007', 'A007', 'Emre', 'Y�ld�z', '67890123456', '1988-10-05', 'Erkek', '5301112233', 'emre.yildiz@mail.com', 'Eski�ehir, T�rkiye'),
('H0008', 'S0008', 'A008', 'Elif', 'Ko�', '78901234567', '2000-01-20', 'Kad�n', '5367778899', 'elif.koc@mail.com', 'Gaziantep, T�rkiye'),
('H0009', 'S0009', 'A009', 'Burak', '�ahin', '89012345678', '1978-11-11', 'Erkek', '5379990001', 'burak.sahin@mail.com', 'Kayseri, T�rkiye'),
('H0010', 'S0010', 'A010', 'Merve', 'Ayd�n', '90123456789', '1993-04-17', 'Kad�n', '5381112233', 'merve.aydin@mail.com', 'Trabzon, T�rkiye'),
('H0011', 'S0011', 'A011', 'Kerem', 'Balc�', '11223344556', '1982-07-25', 'Erkek', '5394445566', 'kerem.balci@mail.com', 'Malatya, T�rkiye'),
('H0012', 'S0012', 'A012', 'Seda', 'K�l��', '66778899001', '1996-02-14', 'Kad�n', '5318889990', 'seda.kilic@mail.com', 'Adana, T�rkiye'),
('H0013', 'S0013', 'A013', 'Deniz', 'Kaya', '22334455667', '1987-09-19', 'Kad�n', '5351234567', 'deniz.kaya@mail.com', 'Konya, T�rkiye'),
('H0014', 'S0014', 'A014', 'Can', '�etin', '33445566778', '1991-12-03', 'Erkek', '5362345678', 'can.cetin@mail.com', '�stanbul, T�rkiye'),
('H0015', 'S0015', 'A015', 'Esra', 'G�ne�', '44556677889', '1984-07-27', 'Kad�n', '5373456789', 'esra.gunes@mail.com', 'Ankara, T�rkiye');




INSERT INTO AcilDurumKisileri (AcilID, HastaID, Telefon, AcilAd, AcilSoyad, AcilEposta) VALUES
('A001', 'H0001', '5320000001', 'Mehmet', 'Y�lmaz', 'mehmet@mail.com'),
('A002', 'H0002', '5301111111', 'Zeynep', 'Demir', 'zeynep@mail.com'),
('A003', 'H0003', '5332223333', 'Ahmet', 'Kara', 'ahmet.kara@mail.com'),
('A004', 'H0004', '5304445555', 'Fatma', 'Y�ld�z', 'fatma.yildiz@mail.com'),
('A005', 'H0005', '5336667777', '�smail', 'Polat', 'ismail.polat@mail.com'),
('A006', 'H0006', '5308889999', 'Ay�e', '�zt�rk', 'ayse.ozturk@mail.com'),
('A007', 'H0007', '5330001111', 'Deniz', 'K�l��', 'deniz.kilic@mail.com'),
('A008', 'H0008', '5302223333', 'Emine', 'Toprak', 'emine.toprak@mail.com'),
('A009', 'H0009', '5334445555', 'Selim', 'Demirta�', 'selim.demirtas@mail.com'),
('A010', 'H0010', '5306667777', 'G�khan', '�elik', 'gokhan.celik@mail.com'),
('A011', 'H0011', '5338889999', 'Zeynep', 'Balkan', 'zeynep.balkan@mail.com'),
('A012', 'H0012', '5300001111', 'Hasan', 'Sava�', 'hasan.savas@mail.com'),
('A013', 'H0013', '5321234567', 'Ay�e', 'Kaya', 'ayse.kaya@mail.com'),
('A014', 'H0014', '5332345678', 'Ali', '�etin', 'ali.cetin@mail.com'),
('A015', 'H0015', '5343456789', 'Fatma', 'G�ne�', 'fatma.gunes@mail.com');



INSERT INTO KronikHastaliklar (HastalikID, HastalikAdi) VALUES
('KH001', 'Hipertansiyon'),
('KH002', 'Diyabet'),
('KH003', 'Ast�m'),
('KH004', 'Kolesterol Y�ksekli�i'),
('KH005', 'Depresyon'),
('KH006', 'Obezite'),
('KH007', 'Kanser'),
('KH008', 'Epilepsi'),
('KH009', 'Romatizma'),
('KH010', 'B�brek Yetmezli�i'),
('KH011', 'Alzheimer'),
('KH012', 'Karaci�er Hastal�klar�'),
('KH013', 'Migren'),
('KH014', 'Tansiyon D���kl���'),
('KH015', 'Multipl Skleroz');



INSERT INTO HastaninKronikHastaliklar (HastaID, HastalikID) VALUES
('H0001', 'KH001'), 
('H0002', 'KH002'),  
('H0003', 'KH003'),  
('H0004', 'KH004'),  
('H0005', 'KH005'), 
('H0006', 'KH006'), 
('H0007', 'KH007'),  
('H0008', 'KH008'), 
('H0009', 'KH009'), 
('H0010', 'KH010'),  
('H0011', 'KH011'),  
('H0012', 'KH012'),  
('H0001', 'KH003'),  
('H0004', 'KH006'),  
('H0002', 'KH007'), 
('H0008', 'KH005'),
('H0013', 'KH001'),  
('H0013', 'KH015'), 
('H0014', 'KH002'), 
('H0014', 'KH013'),  
('H0015', 'KH005'),  
('H0015', 'KH009'),  
('H0015', 'KH014'),  
('H0013', 'KH004'),  
('H0014', 'KH010'),  
('H0015', 'KH011');


INSERT INTO Doktor (DoktorID, Ad, Soyad, TcKimlikNo, UzmanlikAlani, Telefon, Eposta) VALUES
('D0001', 'Murat', 'Ko�', '11111111111', 'Kardiyoloji', '5051112222', 'murat.koc@mail.com'),
('D0002', 'Elif', 'Ayd�n', '22222222222', 'N�roloji', '5062223333', 'elif.aydin@mail.com'),
('D0003', 'Ahmet', 'Y�ld�z', '33333333333', 'Ortopedi', '5073334444', 'ahmet.yildiz@mail.com'),
('D0004', 'Zeynep', 'Kara', '44444444444', 'Pediatri', '5084445555', 'zeynep.kara@mail.com'),
('D0005', 'Mehmet', '�zt�rk', '55555555555', 'Onkoloji', '5095556666', 'mehmet.ozturk@mail.com'),
('D0006', 'Ay�e', 'Demir', '66666666666', 'Genel Cerrahi', '5106667777', 'ayse.demir@mail.com'),
('D0007', 'Cem', 'Aksoy', '77777777777', 'KBB', '5117778888', 'cem.aksoy@mail.com'),
('D0008', 'Selin', 'Erdo�an', '88888888888', 'Dermatoloji', '5128889999', 'selin.erdogan@mail.com'),
('D0009', 'Hakan', '�en', '99999999999', 'N�roloji', '5139990001', 'hakan.sen@mail.com'),
('D0010', 'Burcu', 'Arslan', '10101010101', 'KBB', '5140001111', 'burcu.arslan@mail.com'),
('D0011', 'Tuncay', 'I��k', '12121212121', 'Kardiyoloji', '5151112222', 'tuncay.isik@mail.com'),
('D0012', 'Melis', '�elik', '13131313131', 'Ortopedi', '5162223333', 'melis.celik@mail.com'),
('D0013', 'Serdar', 'G�l', '14141414141', 'Kardiyoloji', '5173334444', 'serdar.gul@mail.com'),
('D0014', 'Nazan', 'Y�lmaz', '15151515151', 'Ortopedi', '5184445555', 'nazan.yilmaz@mail.com'),
('D0015', '�zg�r', 'Ta�', '16161616161', 'N�roloji', '5195556666', 'ozgur.tas@mail.com');



INSERT INTO DoktorCalismaProgrami (DoktorID, Gun, BaslangicSaati, BitisSaati) VALUES 
('D0001', 'Pazartesi', '09:00', '17:00'),   
('D0002', 'Sal�', '10:00', '18:00'),        
('D0003', '�ar�amba', '08:30', '16:30'),      
('D0004', 'Per�embe', '09:30', '17:30'),     
('D0005', 'Cuma', '08:00', '14:00'),         
('D0006', 'Cumartesi', '10:00', '16:00'),     
('D0007', 'Pazar', '11:00', '15:00'),        
('D0008', 'Pazartesi', '12:00', '18:00'),      
('D0009', 'Sal�', '09:00', '17:00'),           
('D0010', '�ar�amba', '08:00', '16:00'),      
('D0011', 'Per�embe', '10:30', '18:30'),       
('D0012', 'Cuma', '09:00', '15:00'),
('D0013', 'Pazartesi', '08:00', '16:00'),
('D0014', '�ar�amba', '10:00', '18:00'),
('D0015', 'Cuma', '09:30', '17:30');



INSERT INTO Randevular (HastaID, DoktorID, RandevuTarihi, RandevuSaati, RandevuTuru, RandevuDurumu) VALUES
('H0001', 'D0001', '2025-05-12', '10:00', 'Kontrol', 'Ger�ekle�ti'),
('H0002', 'D0002', '2025-05-13', '11:30', 'Muayene', 'Planland�'),
('H0003', 'D0003', '2025-05-14', '14:00', 'Kontrol', 'Planland�'),
('H0004', 'D0004', '2025-05-15', '09:30', 'Muayene', 'Ger�ekle�ti'),
('H0005', 'D0005', '2025-05-16', '08:00', 'Kontrol', '�ptal Edildi'),
('H0006', 'D0006', '2025-05-17', '13:30', 'Muayene', 'Planland�'),
('H0007', 'D0007', '2025-05-18', '16:00', 'Kontrol', 'Ger�ekle�ti'),
('H0008', 'D0008', '2025-05-19', '10:30', 'Muayene', '�ptal Edildi'),
('H0009', 'D0009', '2025-05-20', '11:00', 'Kontrol', 'Planland�'),
('H0010', 'D0010', '2025-05-21', '09:00', 'Muayene', 'Ger�ekle�ti'),
('H0011', 'D0011', '2025-05-22', '15:00', 'Kontrol', 'Planland�'),
('H0012', 'D0012', '2025-05-23', '12:30', 'Muayene', 'Ger�ekle�ti'),
('H0013', 'D0013', '2025-05-24', '10:00', 'Muayene', 'Planland�'),
('H0014', 'D0014', '2025-05-25', '11:30', 'Kontrol', 'Planland�'),
('H0015', 'D0015', '2025-05-26', '14:00', 'Muayene', 'Planland�');


INSERT INTO MuayeneKayitlari(MuayeneID, HastaID, DoktorID, MuayeneTarihi, Tani, Tedavi)VALUES
('M0001', 'H0001', 'D0001', '2025-05-12', 'Hipertansiyon kontrol�', '�la� d�zenlemesi'),
('M0002', 'H0002', 'D0002', '2025-05-12', 'Ba� a�r�s�', 'A�r� kesici re�etesi'),
('M0003', 'H0003', 'D0003', '2025-05-13', 'Efor testi sonucu olumlu', 'Beta blok�r tedavisi'),
('M0004', 'H0004', 'D0004', '2025-05-14', 'Omuz a�r�s�', 'Fiziksel terapi ve a�r� kesici'),
('M0005', 'H0005', 'D0005', '2025-05-15', 'Depresyon semptomlar�', 'Antidepresan tedavisi'),
('M0006', 'H0006', 'D0006', '2025-05-16', 'B12 vitamini eksikli�i', 'B12 takviyesi'),
('M0007', 'H0007', 'D0007', '2025-05-17', 'Sin�s enfeksiyonu', 'Antibiyotik tedavisi'),
('M0008', 'H0008', 'D0008', '2025-05-18', 'Cilt d�k�nt�leri', 'Topikal tedavi ve krem kullan�m�'),
('M0009', 'H0009', 'D0009', '2025-05-19', 'Gastrit semptomlar�', 'Mide koruyucu ila� tedavisi'),
('M0010', 'H0010', 'D0010', '2025-05-20', 'Kanser taramas�', 'Kemoterapi dan��manl���'),
('M0011', 'H0011', 'D0011', '2025-05-21', '�rritabl ba��rsak sendromu', 'Diyet d�zenlemesi ve ila� tedavisi'),
('M0012', 'H0012', 'D0012', '2025-05-22', 'Alerjik reaksiyon', 'Antihistamin tedavisi'),
('M0013', 'H0001', 'D0013', '2025-05-24', 'Tiroid fonksiyon bozuklu�u', 'Hormonal dengeleme tedavisi'),
('M0014', 'H0002', 'D0014', '2025-05-25', 'Kronik bron�it', 'Bronkodilat�r ve solunum terapisi'),
('M0015', 'H0003', 'D0015', '2025-05-26', 'Gastro�zofageal refl�', 'Asit bast�r�c� ila� tedavisi');



INSERT INTO Receteler (MuayeneID, HastaID, DoktorID, ReceteTarihi, IlacAd, Dozaj) VALUES
('M0001', 'H0001', 'D0001', '2025-05-12', 'Lipitor', '10mg/g�n'),
('M0002', 'H0002', 'D0002', '2025-05-12', 'Neurontin', '300mg/g�n'),
('M0003', 'H0003', 'D0003', '2025-05-13', 'Calcimax', '500mg/g�n'),
('M0004', 'H0004', 'D0004', '2025-05-14', 'Augmentin', '5ml x 2/g�n'),
('M0005', 'H0005', 'D0005', '2025-05-15', 'Herceptin', '150mg/hafta'),
('M0006', 'H0006', 'D0006', '2025-05-16', 'Clexane', '40mg/g�n'),
('M0007', 'H0007', 'D0007', '2025-05-17', 'Rhinocort', '1 sprey/g�n'),
('M0008', 'H0008', 'D0008', '2025-05-18', 'Fucidin', 'G�nde 2 kez'),
('M0009', 'H0009', 'D0009', '2025-05-19', 'Plavix', '75mg/g�n'),
('M0010', 'H0010', 'D0010', '2025-05-20', 'Lustral', '50mg/g�n'),
('M0011', 'H0011', 'D0011', '2025-05-21', 'Naproxen', '250mg x 2/g�n'),
('M0012', 'H0012', 'D0012', '2025-05-22', 'Ventolin �urup', '2.5ml x 3/g�n'),
('M0013', 'H0001', 'D0013', '2025-05-24', 'Norvasc', '5mg/g�n'),          
('M0014', 'H0002', 'D0014', '2025-05-25', 'Parol �urup', '5ml x 3/g�n'),   
('M0015', 'H0003', 'D0015', '2025-05-26', 'Pantil', '40mg/g�n');




INSERT INTO Odemeler (OdemeYontem, OdemeDurum) VALUES
('Kredi Kart�', 'Tamamland�'),
('Nakit', 'Tamamland�'),
('Sigorta', 'Tamamland�'),
('Sigorta', 'Tamamland�'),
('Kredi Kart�', 'Beklemede'),
('Nakit', '�ptal Edildi'),
('Sigorta', '�ptal Edildi'),
('Sigorta', 'Beklemede'),
('Kredi Kart�', 'Tamamland�'),
('Nakit', 'Beklemede'),
('Sigorta', 'Tamamland�'),
('Sigorta', '�ptal Edildi'),
('Kredi Kart�', 'Tamamland�'), 
('Nakit', 'Tamamland�'),       
('Sigorta', 'Beklemede');
 





INSERT INTO Faturalar (HastaID, DoktorID, OdemeID, Ucret, HizmetTuru, FaturaTarihi) VALUES
('H0001', 'D0001', 1, 250.00, 'Muayene', '2025-05-12'),
('H0002', 'D0002', 2, 300.00, 'Tetkik', '2025-05-12'),
('H0003', 'D0003', 3, 180.00, 'Kontrol', '2025-05-13'),
('H0004', 'D0004', 4, 220.00, 'Muayene', '2025-05-13'),
('H0005', 'D0005', 5, 350.00, 'Tetkik', '2025-05-14'),
('H0006', 'D0006', 6, 270.00, 'Muayene', '2025-05-14'),
('H0007', 'D0007', 7, 150.00, 'Kontrol', '2025-05-15'),
('H0008', 'D0008', 8, 200.00, 'Tetkik', '2025-05-15'),
('H0009', 'D0009', 9, 280.00, 'Muayene', '2025-05-16'),
('H0010', 'D0010', 10, 320.00, 'Kontrol', '2025-05-16'),
('H0011', 'D0011', 11, 230.00, 'Muayene', '2025-05-17'),
('H0012', 'D0012', 12, 250.00, 'Tetkik', '2025-05-17'),
('H0001', 'D0013', 13, 300.00, 'Muayene', '2025-05-24'),
('H0002', 'D0014', 14, 280.00, 'Tetkik', '2025-05-25'),
('H0003', 'D0015', 15, 260.00, 'Kontrol', '2025-05-26');


INSERT INTO LaboratuvarTestleri (TestID, HastaID, DoktorID, NumuneAlimTarihi, SonucTeslimTarihi) 
VALUES
('T0001', 'H0001', 'D0001', '2025-05-12', '2025-05-15'),
('T0002', 'H0002', 'D0002', '2025-05-13', '2025-05-16'),
('T0003', 'H0003', 'D0003', '2025-05-14', '2025-05-17'),
('T0004', 'H0004', 'D0004', '2025-05-15', '2025-05-18'),
('T0005', 'H0005', 'D0005', '2025-05-16', '2025-05-19'),
('T0006', 'H0006', 'D0006', '2025-05-17', '2025-05-20'),
('T0007', 'H0007', 'D0007', '2025-05-18', '2025-05-21'),
('T0008', 'H0008', 'D0008', '2025-05-19', '2025-05-22'),
('T0009', 'H0009', 'D0009', '2025-05-20', '2025-05-23'),
('T0010', 'H0010', 'D0010', '2025-05-21', '2025-05-24'),
('T0011', 'H0011', 'D0011', '2025-05-22', '2025-05-25'),
('T0012', 'H0012', 'D0012', '2025-05-23', '2025-05-26'),
('T0013', 'H0013', 'D0013', '2025-05-24', '2025-05-27'),
('T0014', 'H0014', 'D0014', '2025-05-25', '2025-05-28'),
('T0015', 'H0015', 'D0015', '2025-05-26', '2025-05-29');


INSERT INTO TestTuru (TestTuruID, TestAd) VALUES
('TT001', 'EKG'),
('TT002', 'EEG'),
('TT003', 'Efor'),
('TT004', 'Kemik Dansitometri'),
('TT005', 'Romatoid Fakt�r'),
('TT006', 'B12 Vitamin Seviyesi'),
('TT007', 'Beyin MR'),
('TT008', 'Hemogram'),
('TT009', 'D Vitamini Seviyesi'),
('TT010', 'T�m�r Belirte�leri'),
('TT011', 'PET-CT G�r�nt�leme'),
('TT012', 'Kanama Zaman� ve P�ht�la�ma'),
('TT013', 'Ameliyat �ncesi Panel'),
('TT014', 'Karaci�er Fonksiyon'),
('TT015', 'Bo�az S�r�nt�s�'),
('TT016', 'Odyometri'),
('TT017', 'Cilt Prick'),
('TT018', 'Biyopsi'),
('TT019', 'Mantar K�lt�r�');




INSERT INTO TestDetay (TestDetayID, TestTuruID, TestSonucu) VALUES
('TD001', 'TT001', 'Pozitif'),   -- EKG
('TD002', 'TT002', 'Negatif'),   -- EEG
('TD003', 'TT003', 'Negatif'),   -- Efor
('TD004', 'TT004', 'Pozitif'),   -- Kemik Dansitometri
('TD005', 'TT005', 'Negatif'),   -- Romatoid Fakt�r
('TD006', 'TT006', 'Pozitif'),   -- B12 Vitamin
('TD007', 'TT007', 'Pozitif'),   -- Beyin MR
('TD008', 'TT008', 'Negatif'),   -- Hemogram
('TD009', 'TT009', 'Pozitif'),   -- D Vitamini
('TD010', 'TT010', 'Pozitif'),   -- T�m�r Belirte�leri
('TD011', 'TT011', 'Pozitif'),   -- PET-CT
('TD012', 'TT012', 'Negatif'),   -- Kanama Zaman�
('TD013', 'TT013', 'Normal'),            -- Ameliyat �ncesi Panel
('TD014', 'TT014', 'Hafif Y�ksek'),     -- Karaci�er Fonksiyon
('TD015', 'TT015', 'Pozitif'),           -- Bo�az S�r�nt�s�
('TD016', 'TT016', 'Normal'),            -- Odyometri
('TD017', 'TT017', 'Negatif'),           -- Cilt Prick
('TD018', 'TT018', 'Malign H�cre Yok'), -- Biyopsi
('TD019', 'TT019', 'Mantar Pozitif');   -- Mantar K�lt�r�


SELECT * FROM Sigorta

SELECT * FROM Hasta

SELECT * FROM AcilDurumKisileri

SELECT * FROM KronikHastaliklar

SELECT * FROM HastaninKronikHastaliklar

SELECT * FROM Doktor

SELECT * FROM DoktorCalismaProgrami

SELECT * FROM Randevular

SELECT * FROM MuayeneKayitlari

SELECT * FROM Receteler

SELECT * FROM Odemeler

SELECT * FROM Faturalar

SELECT * FROM LaboratuvarTestleri

SELECT * FROM TestTuru

SELECT * FROM TestDetay