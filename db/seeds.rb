# Users

user1 = User.create(username: "user1", password: "123")
user2 = User.create(username: "user2", password: "password")
user3 = User.create(username: "user3", password: "pass")

# GameRecords

GameRecord.create(user: user1, rank: 3)

