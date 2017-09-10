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

INSERT INTO UserProfile values(4, 'winda', 'Winda', 'Purnomo', 'F', '1986-1-1');
INSERT INTO UserProfile values(5, 'joko', 'Joko', 'Purnomo', 'M', '1974-1-1');
INSERT INTO MyGroup values(6, 'Tetangga');

INSERT INTO GroupMember values(1, 2, true, now()); --Okta ada di group Ginting Corporation
INSERT INTO GroupMember values(3, 2, false, now());

INSERT INTO GroupMember values(4, 6, true, now());
INSERT INTO GroupMember values(5, 6, false, now());
       
INSERT INTO Playlist values(1, 1, 'Dewa19-Angin', now());

