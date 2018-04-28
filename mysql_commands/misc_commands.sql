-- SELECT * FROM accounts;
-- INSERT INTO accounts VALUES("6362364517", "luohugu", "1998-05-11");

-- SELECT * FROM games;
-- INSERT INTO games (sport, description, gameDate, startTime, endTime, minAge, maxAge, minSkillLevel, capacity, creator)
-- VALUES("Basketball", "test", "2018-05-11", "14:30", "15:30", 15, 30, 2, 2, "6366750378");
-- UPDATE games SET attendees = attendees + 1 WHERE gid IN (1, 2, 4);

-- SELECT * FROM joins;
-- INSERT INTO joins VALUES("6362364517", 6);
-- SELECT phone FROM joins WHERE gid = 1;
-- SELECT attendees FROM games WHERE gid = 1;

-- SELECT * FROM games WHERE EXISTS (SELECT * FROM joins WHERE games.gid = joins.gid AND phone = "6366750378");
-- SELECT gid FROM joins WHERE phone = "6366750378";
-- UPDATE games SET attendees = 3 WHERE gid = 6;

-- SELECT * FROM courts;
-- INSERT INTO courts (address, public, outside, openTime, closeTime)
-- Values("2040 Vichy Rd. Rolla, MO 65401", 0, 0, "6:00", "20:00");

-- SELECT * FROM holds;
-- INSERT INTO holds VALUES (4, 2);

-- SELECT * FROM pools;
-- INSERT INTO pools VALUES (1, 5);

-- SELECT * FROM tennisCourts;
-- INSERT INTO tennisCourts VALUES (2, 8);

-- SELECT * FROM basketballCourts;
-- INSERT INTO basketballCourts VALUES (3, 2);

-- SELECT * FROM soccerFields;
-- INSERT INTO soccerFields VALUES (4, 1);

-- SELECT courts.cid, courts.address, courts.public, courts.outside, courts.openTime, courts.closeTime, tennisCourts.numNets
-- FROM courts, tennisCourts WHERE EXISTS (SELECT * FROM tennisCourts WHERE courts.cid = tennisCourts.cid);
-- 
-- SELECT games.gid, games.sport, games.description, games.gameDate, games.startTime, games.endTime, games.attendees, games.filled, courts.address
-- FROM games, courts WHERE EXISTS (SELECT * FROM holds WHERE games.gid = holds.gid AND holds.cid = courts.cid AND gid = 2)
