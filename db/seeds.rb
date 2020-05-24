# Users

user1 = User.create(username: "user1", password: "123")
user2 = User.create(username: "user2", password: "password")
user3 = User.create(username: "user3", password: "pass")

# GameRecords
slug = rand(1..100000)
GameRecord.create(user: user1, rank: 3, slug: slug)
GameRecord.create(user: user2, rank: 5, slug: slug)
GameRecord.create(user: user3, rank: 8, slug: slug)

