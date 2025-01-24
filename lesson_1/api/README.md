# Social Network - REST API

## Features

The API includes the following key functionalities:

1. **Friend Management**
   - Add and remove friends
   - View a user's friend list

2. **User Profile**
   - Retrieve user profiles

3. **Feed Management**
   - Publish posts to the feed
   - Upload media for posts
   - View user-specific and general feeds

4. **Messaging**
   - View chats and dialogs
   - Send and read messages in dialogs and group chats

---

## API Endpoints

### Friend Management
| **Operation**      | **HTTP Method** | **Endpoint**                                   | **Description**                     |
|---------------------|-----------------|-----------------------------------------------|-------------------------------------|
| Add Friend          | POST            | `/users/{id}/addFriend/{friendId}`            | Add a friend by user ID            |
| Remove Friend       | DELETE          | `/users/{id}/removeFriend/{friendId}`         | Remove a friend by user ID         |
| View User's Friends | GET             | `/users/{id}/getUserFriends`                  | Retrieve the user's friend list     |

### User Profile
| **Operation**      | **HTTP Method** | **Endpoint**                | **Description**             |
|---------------------|-----------------|-----------------------------|-----------------------------|
| Get User Profile    | GET             | `/users/{id}/getUserProfile`| Retrieve a user's profile   |

### Feed Management
| **Operation**        | **HTTP Method** | **Endpoint**                 | **Description**                          |
|-----------------------|-----------------|------------------------------|------------------------------------------|
| Publish Post          | POST            | `/users/{id}/publishFeedPost`| Publish a post to the user's feed        |
| Upload Media to Post  | POST            | `/posts/{id}/uploadMedia`    | Upload media for a specific post         |
| View User Feed        | GET             | `/feed/{userId}/view`        | Retrieve the feed for a specific user    |

### Messaging
| **Operation**         | **HTTP Method** | **Endpoint**                       | **Description**                        |
|------------------------|-----------------|------------------------------------|----------------------------------------|
| View Chat             | GET             | `/chats/{id}/view`                 | Retrieve chat details by ID            |
| Send Chat Message     | POST            | `/chats/{id}/sendMessages`         | Send a message to a specific chat      |
| Read Chat Messages    | GET             | `/chats/{id}/readMessages`         | Retrieve messages from a specific chat |
| View Dialog           | GET             | `/dialogs/{id}/view`               | Retrieve dialog details by ID          |
| Send Dialog Message   | POST            | `/dialogs/{id}/sendMessages`       | Send a message in a dialog             |
| Read Dialog Messages  | GET             | `/dialogs/{id}/readMessages`       | Retrieve messages from a dialog        |

---

## Schemas

The API defines the following schemas to model its data:

1. **User**
   - Represents a user profile with fields like `id`, `username`, `email`, and more.

2. **Post**
   - Represents a post in the feed, with attributes like `id`, `userId`, `title`, and `content`.

3. **Feed**
   - Represents a feed containing multiple posts and pagination details.

4. **Chat**
   - Represents a group chat with members and messages.

5. **Dialog**
   - Represents a one-on-one private conversation.

6. **Message**
   - Represents a single message in a dialog or chat.

For detailed schema definitions, refer to the [OpenAPI Specification](openapi.yaml).

---