DROP TABLE IF EXISTS public.Playlist;
DROP TABLE IF EXISTS public.GroupMember;
DROP TABLE IF EXISTS public.UserProfile;
DROP TABLE IF EXISTS public.party;
DROP TABLE IF EXISTS public.PartyType; 
DROP TABLE IF EXISTS public.MyGroup;

CREATE TABLE PartyType (
       PartyTypeCode char(1) NOT NULL,
       Name CHAR(30) NOT NULL,
       
       CONSTRAINT PartyType_PK PRIMARY KEY (PartyTypeCode),
       CONSTRAINT PartyType_AK UNIQUE  	   (Name)
);

CREATE TABLE Party (
       PartyId INT NOT NULL,
       PartyTypeCode CHAR(1) NOT NULL,
       CreatedDateTime TIMESTAMP NOT NULL,
       
       CONSTRAINT Party_PK PRIMARY KEY(PartyId),
       CONSTRAINT PartyToPartyType_FK FOREIGN KEY(PartyTypeCode)
       		  REFERENCES PartyType(PartyTypeCode)
);

CREATE  Table UserProfile (
	UserId INT NOT NULL,
	UserName CHAR(30) NOT NULL,
	FirstName CHAR(30) NOT NULL,
	LastName CHAR(30) NOT NULL,
	GenderCode Char(30) NOT NULL,
	BirthDate DATE	    NOT NULL,

	CONSTRAINT UserProfile_PK  PRIMARY KEY (UserId),
	CONSTRAINT UserProfile_AK1 UNIQUE ( -- Multi-column ALTERNATE KEY.
        FirstName,
        LastName,
        GenderCode,
        BirthDate
    ),
         CONSTRAINT UserProfile_AK2       UNIQUE (UserName), -- Single-column ALTERNATE KEY.
    	 CONSTRAINT UserProfileToParty_FK FOREIGN KEY (UserId)
	         REFERENCES Party (PartyId)
);
       
CREATE TABLE MyGroup(
       GroupId INT NOT NULL,
       Title CHAR(30) NOT NULL,
       
       CONSTRAINT Group_PK        PRIMARY KEY (GroupId),
    CONSTRAINT Group_AK        UNIQUE      (Title), -- ALTERNATE KEY.
    CONSTRAINT GroupToParty_FK FOREIGN KEY (GroupId)
        REFERENCES Party (PartyId)
);

CREATE TABLE Playlist(
       PlaylistId INT NOT NULL,
       OwnerId    INT NOT NULL,
       Title      CHAR(30) NOT NULL,
       CreatedDateTime TIMESTAMP NOT NULL,
       
       CONSTRAINT Playlist_PK     PRIMARY KEY (PlaylistId),
    CONSTRAINT Playlist_AK     UNIQUE      (Title),  -- ALTERNATE KEY.
    CONSTRAINT PartyToParty_FK FOREIGN KEY (OwnerId) -- Establishes the relationship with (a) the supertype and (b) through the subtype with (c) the subtypes.
        REFERENCES Party (PartyId)
);

CREATE TABLE GroupMember( -- Denotes an associative entity type
       MemberId INT NOT NULL,
       GroupId INT NOT NULL,
       IsOwner BOOLEAN NOT NULL,
       JoinedDateTime TIMESTAMP NOT NULL,

       CONSTRAINT GroupMember_PK PRIMARY KEY(MemberId, GroupId),
       CONSTRAINT GroupMemberToUserProfile_FK FOREIGN KEY(MemberId)
       		  REFERENCES UserProfile(UserId),
       CONSTRAINT GroupMemberToMyGroup_FK FOREIGN KEY(GroupId)
       		  REFERENCES MyGroup(GroupId)
);
