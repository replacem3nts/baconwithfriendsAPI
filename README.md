# README
Refer to [figma](https://www.figma.com/file/UJoPd2S76LspVaKZzIb5zU/Bacon-With-Friends?node-id=0%3A1) for wireframe and project layout.

## ROUTES
Run `rails server` and refer to the following API links.

### USERS
METHOD  |        API LINK                   |   HEADER MUST CONTAIN         |   RETURNS (if successful)
GET     |   http://127.0.0.1:3000/login     |   Valid username and password |   User Information
DELETE  |   http://127.0.0.1:3000/users/:id |   User ID                     |   "User Destroyed"
POST    |   http://127.0.0.1:3000/users     |   User Info                   |   User Information

| METHOD | API LINK | HEADER MUST CONTAIN | RETURNS (if successful) |
| ------- | --------------------- | -------------------- | ---------------|
| GET | http://127.0.0.1:3000/login |   Valid username and password | User Information |
| DELETE | http://127.0.0.1:3000/users/:id | User ID | "User Destroyed" |
| POST | http://127.0.0.1:3000/users | User Info | User Information |