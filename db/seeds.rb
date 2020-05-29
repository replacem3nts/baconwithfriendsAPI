# Users

userA = User.create(username: "user1", password: "123")
userB = User.create(username: "user2", password: "password")
userC = User.create(username: "user3", password: "pass")

room1 = Room.create(slug: Sysrandom.hex(7), name: "Room A")

# GameRecords
GameRecord.create(user: userA, rank: 3, total_players: 3, room: room1)
GameRecord.create(user: userB, rank: 5, total_players: 3, room: room1)
GameRecord.create(user: userC, rank: 8, total_players: 3, room: room1)
