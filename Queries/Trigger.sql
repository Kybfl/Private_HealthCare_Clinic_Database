CREATE TRIGGER trg_FaturaUcretGuncelleme
ON Faturalar
AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    IF EXISTS (
        SELECT 1
        FROM inserted i
        JOIN deleted d ON i.FaturaID = d.FaturaID
        WHERE i.Ucret <> d.Ucret
    )
    BEGIN
        INSERT INTO FaturaGuncellemeLog ( HastaID, OdemeID, EskiUcret, YeniUcret, ZamYuzde, GuncellemeTarihi)
        SELECT
            i.HastaID,
            i.OdemeID,
            d.Ucret AS EskiUcret,
            i.Ucret AS YeniUcret,
            CASE WHEN 
				d.Ucret = 0 THEN 0
                ELSE ROUND(((i.Ucret - d.Ucret) / d.Ucret) * 100.0, 2)
            END AS ZamYuzde,
            GETDATE()
        FROM inserted i
        JOIN deleted d ON i.FaturaID = d.FaturaID
        WHERE i.Ucret <> d.Ucret;
    END
END;
