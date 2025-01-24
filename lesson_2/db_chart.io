// Use DBML to define your database structure
// Docs: https://dbml.dbdiagram.io/docs

// S3
Table media {
  url string
  size integer
  post_id string
  published_by string
}

// Column ScyllaDB/Cassandra
Table messages {
  id string
  content string
  title string
  created_at string
  updated_at string
  chat_id string
}

Table posts {
  id string
  content text [note: 'Content of the post']
  title string
  created_at string
  updated_at string
  user_id integer
}

// Graph/PostgreSQL
Table relations {
  friends string[]
  relationships string[]
  subscribers string[]
  user_id string,
}

// RDMS PostgreSQL
Table chats {
  id string
  title integer
  description integer
  owner_id string
  members string[]
}

// MongoDB User profiles/blanks Doc-based DB
Table profile {
  id string
  name string
  nickname string
  age integer
  city string
  country string
  bio string
  interests string[]
  education string
}

Ref: profile.id > relations.friends
Ref: profile.id > posts.user_id
Ref: profile.id > chats.owner_id

Ref: messages.id > chats.id

Ref: media.post_id > posts.id
Ref: media.published_by > posts.user_id


