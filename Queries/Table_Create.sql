
CREATE TABLE Sigorta (
    SigortaID CHAR(10) PRIMARY KEY,
    SirketAdi NVARCHAR(100) NOT NULL,
    PoliceNo NVARCHAR(50) UNIQUE NOT NULL,
    SigortaBaslangic DATE NOT NULL,
    SigortaBitis DATE NOT NULL,
    SigortaTuru NVARCHAR(50) NOT NULL
);


CREATE TABLE Hasta (
    HastaID CHAR(10) PRIMARY KEY,
    SigortaID CHAR(10) NOT NULL FOREIGN KEY (SigortaID) REFERENCES Sigorta(SigortaID),
    AcilD CHAR(10) NOT NULL,
    Ad NVARCHAR(50) NOT NULL,
    Soyad NVARCHAR(50) NOT NULL,
    TcKimlikNo CHAR(11) UNIQUE NOT NULL,
    DogumTarihi DATE NOT NULL,
    Cinsiyet NVARCHAR(5) NOT NULL DEFAULT '-', CHECK (Cinsiyet IN ('Erkek' , 'Kadýn')),
    Telefon NVARCHAR(10) NOT NULL,
    Eposta NVARCHAR(50) NOT NULL,
    Adres NVARCHAR(255) NOT NULL,
    
);


CREATE TABLE AcilDurumKisileri (
    AcilID CHAR(10) PRIMARY KEY,
    HastaID CHAR(10) NOT NULL FOREIGN KEY (HastaID) REFERENCES Hasta(HastaID),
    Telefon NVARCHAR(10) NOT NULL,
    AcilAd NVARCHAR(50) NOT NULL,
    AcilSoyad NVARCHAR(50) NOT NULL,
    AcilEposta NVARCHAR(50) NOT NULL,
    
);


CREATE TABLE KronikHastaliklar (
    HastalikID CHAR(10) PRIMARY KEY,
    HastalikAdi NVARCHAR(30) NOT NULL
);


CREATE TABLE HastaninKronikHastaliklar (
    HastaID CHAR(10) NOT NULL FOREIGN KEY (HastaID) REFERENCES Hasta(HastaID),
    HastalikID CHAR(10) NOT NULL FOREIGN KEY (HastalikID) REFERENCES KronikHastaliklar(HastalikID),
    PRIMARY KEY (HastaID, HastalikID)
    
);


CREATE TABLE Doktor (
    DoktorID CHAR(10) PRIMARY KEY,
    Ad NVARCHAR(50) NOT NULL,
    Soyad NVARCHAR(50) NOT NULL,
    TcKimlikNo CHAR(11) UNIQUE NOT NULL,
    UzmanlikAlani NVARCHAR(100) NOT NULL,
    Telefon NVARCHAR(10) NOT NULL,
    Eposta NVARCHAR(50) NOT NULL,
	CHECK(UzmanlikAlani IN('Kardiyoloji','Ortopedi','Nöroloji','Pediatri','Onkoloji','Genel Cerrahi','KBB', 'Dermatoloji'))
);


CREATE TABLE DoktorCalismaProgrami (
    ProgramID INT IDENTITY(1,1) PRIMARY KEY,
    DoktorID CHAR(10) NOT NULL FOREIGN KEY (DoktorID) REFERENCES Doktor(DoktorID),
    Gun NVARCHAR(10) NOT NULL,
    BaslangicSaati TIME NOT NULL,
    BitisSaati TIME NOT NULL,
    CHECK(Gun IN('Pazartesi','Salý','Çarþamba','Perþembe','Cuma','Cumartesi','Pazar'))
);


CREATE TABLE Randevular (
    RandevuID INT IDENTITY(1,1) PRIMARY KEY,
    HastaID CHAR(10) NOT NULL FOREIGN KEY (HastaID) REFERENCES Hasta(HastaID),
    DoktorID CHAR(10) NOT NULL FOREIGN KEY (DoktorID) REFERENCES Doktor(DoktorID),
    RandevuTarihi DATE NOT NULL,
    RandevuSaati TIME NOT NULL,
    RandevuTuru NVARCHAR(50) NOT NULL,
    RandevuDurumu NVARCHAR(50) NOT NULL DEFAULT 'Planlandý'
    CHECK ( RandevuDurumu IN ('Planlandý','Gerçekleþti','Ýptal Edildi'))
    
);


CREATE TABLE MuayeneKayitlari (
    MuayeneID CHAR(10) PRIMARY KEY,
    HastaID CHAR(10) NOT NULL FOREIGN KEY (HastaID) REFERENCES Hasta(HastaID),
    DoktorID CHAR(10) NOT NULL FOREIGN KEY (DoktorID) REFERENCES Doktor(DoktorID),
    MuayeneTarihi DATE NOT NULL,
    Tani NVARCHAR(255) NOT NULL,
    Tedavi NVARCHAR(255) NOT NULL
   
);


CREATE TABLE Receteler (
    ReceteID INT IDENTITY(1,1) PRIMARY KEY,
    MuayeneID CHAR(10) NOT NULL FOREIGN KEY (MuayeneID) REFERENCES MuayeneKayitlari(MuayeneID),
    HastaID CHAR(10) NOT NULL  FOREIGN KEY (HastaID) REFERENCES Hasta(HastaID),
    DoktorID CHAR(10) NOT NULL FOREIGN KEY (DoktorID) REFERENCES Doktor(DoktorID),
    ReceteTarihi DATE NOT NULL,
    IlacAd NVARCHAR(45) NOT NULL,
    Dozaj NVARCHAR(50) NOT NULL,
    CHECK (IlacAd IN (
    -- Kardiyoloji
    'Beloc',
    'Plavix',
    'Norvasc',
    'Lipitor',
    -- Ortopedi
    'Voltaren',
    'Naproxen',
    'Calcimax',
    'Dvit3',
    -- Nöroloji
    'Tegretol',
    'Lustral',
    'Aricept',
    'Neurontin',
    -- Pediatri
    'Parol Þurup',
    'Augmentin',
    'Ventolin Þurup',
    'Zinco',
	-- Onkoloji
    'Zoladex',
    'Herceptin',
    'Xeloda',
    'Neupogen',
	-- Genel Cerrahi
    'Clexane',
    'Flagyl',
    'Pantil',
    'Parol',
    -- KBB
    'Aerius',
    'Rhinocort',
    'Bactroban',
    'Otrivine',
    -- Dermatoloji
    'Madecassol',
    'Fucidin',
    'Acnelyse',
    'Sebamed'
))

);


CREATE TABLE Odemeler (
    OdemeID INT IDENTITY(1,1) PRIMARY KEY,
    OdemeYontem NVARCHAR(50) NOT NULL ,
    OdemeDurum NVARCHAR(50) NOT NULL CHECK (OdemeDurum IN('Tamamlandý','Ýptal Edildi','Beklemede')) 
										
);


CREATE TABLE Faturalar (
    FaturaID INT IDENTITY(1,1) PRIMARY KEY,
    HastaID CHAR(10) NOT NULL FOREIGN KEY (HastaID) REFERENCES Hasta(HastaID),
    DoktorID CHAR(10) NOT NULL FOREIGN KEY (DoktorID) REFERENCES Doktor(DoktorID),
    OdemeID INT NOT NULL FOREIGN KEY (OdemeID) REFERENCES Odemeler(OdemeID),
    Ucret DECIMAL(10, 2) NOT NULL,
    HizmetTuru NVARCHAR(100) NOT NULL,
    FaturaTarihi DATE NOT NULL
    
);


CREATE TABLE LaboratuvarTestleri (
    TestID CHAR(10) PRIMARY KEY,
    HastaID CHAR(10) NOT NULL FOREIGN KEY (HastaID) REFERENCES Hasta(HastaID),
    DoktorID CHAR(10) NOT NULL FOREIGN KEY (DoktorID) REFERENCES Doktor(DoktorID),
    NumuneAlimTarihi DATE NOT NULL,
    SonucTeslimTarihi DATE NOT NULL,
    
);


CREATE TABLE TestTuru (
    TestTuruID CHAR(10) PRIMARY KEY,
    TestAd NVARCHAR(70) NOT NULL,
	 CHECK (TestAd IN (
	 -- Kardiyoloji
        'EKG', 
		'Efor',
	 --Ortopedi
		'Kemik Dansitometri',
		'Romatoid Faktör',
	 --Nöroloji
		'EEG',
		'B12 Vitamin Seviyesi',
		'Beyin MR',
	 --Pediatri
        'Hemogram',
		'D Vitamini Seviyesi',
	 --Onkoloji
        'Tümör Belirteçleri',
		'PET-CT Görüntüleme',
	 --Genel Cerrahi
		'Kanama Zamaný ve Pýhtýlaþma',
		'Ameliyat Öncesi Panel',
		'Karaciðer Fonksiyon',
	 --KBB
        'Boðaz Sürüntüsü',
		'Odyometri',
	 --Dermatoloji
        'Cilt Prick',
		'Biyopsi',
		'Mantar Kültürü'
     
    ))
);


CREATE TABLE TestDetay (
    TestDetayID CHAR(10) PRIMARY KEY,
    TestTuruID CHAR(10) NOT NULL FOREIGN KEY (TestTuruID) REFERENCES TestTuru(TestTuruID),
    TestSonucu NVARCHAR(100) NOT NULL CHECK(TestSonucu IN('Negatif','Pozitif')) DEFAULT 'Beklemede'
);

-- Trigger için log tablosu

CREATE TABLE FaturaGuncellemeLog (
    LogID INT IDENTITY(1,1) PRIMARY KEY,
    HastaID CHAR(10),
    OdemeID INT,
    EskiUcret DECIMAL(10,2),
    YeniUcret DECIMAL(10,2),
    ZamYuzde DECIMAL(4,2),
    GuncellemeTarihi DATETIME DEFAULT GETDATE()
);

--Trigger için örnekler
UPDATE Faturalar SET Ucret = 300.00 WHERE FaturaID = 1;

UPDATE Faturalar SET Ucret = 280.00 WHERE FaturaID = 7;