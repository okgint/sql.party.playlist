INSERT INTO PartyType values('1', 'Individual');
INSERT INTO PartyType values('2', 'Organization');

INSERT INTO Party values(1, '1', now());
INSERT INTO Party values(2, '2', now());
INSERT INTO Party values(3, '1', now());
INSERT INTO Party values(4, '1', now());
INSERT INTO Party values(5, '1', now());
INSERT INTO Party values(6, '2', now());

INSERT INTO UserProfile values(1, 'okta', 'Oktavianus', 'Ginting', 'M', '1981-10-29');
INSERT INTO MyGroup values(2,'Ginting Corporation');
INSERT INTO UserProfile values(3, 'benny', 'Benny', 'Ginting', 'M', '1978-1-5');       

INSERT INTO UserProfile(4, 'windoa', 'Winda', 'Purnomo', 'F', '1986-1-1');
INSERT INTO UserProfile(5, 'Joko', 'Joko', 'Purnomo', 'M', '1974-1-1');
INSERT INTO MyGroup values(6, 'Tetangga');

INSERT INTO GroupMember values(1, 2, true, now()); --Okta ada di group Ginting Corporation
INSERT INTO GroupMember values(3, 2, true, now());
       
INSERT INTO Playlist values(1, 1, 'Dewa19-Angin', now());

