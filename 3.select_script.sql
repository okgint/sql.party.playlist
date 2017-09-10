--1. Menampilkan Semua User
SELECT concat(u.FirstName, u.lastName) FROM PartyType pt INNER JOIN Party p ON pt.PartyTypeCode=p.PartyTypeCode RIGHT JOIN UserProfile u ON p.PartyId=u.UserId;
