# Users

user1 = User.create(username: "user1", password: "123")
user2 = User.create(username: "user2", password: "password")
user3 = User.create(username: "user3", password: "pass")

# Rooms
slug1 = Sysrandom.hex(32)
room1 = Room.create(slug: slug1, name: "Room A")

# GameRecords
GameRecord.create(user: user1, rank: 3, total_players: 3, room: room1)
GameRecord.create(user: user2, rank: 5, total_players: 3, room: room1)
GameRecord.create(user: user3, rank: 8, total_players: 3, room: room1)
