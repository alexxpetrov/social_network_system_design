// Replication
// - master-slave
// - replication_factor = 3
//
// Sharding
// key based by user_id

CREATE TABLE "messages" (
  "id" string,
  "content" string,
  "title" string,
  "created_at" string,
  "updated_at" string,
  "chat_id" string
);

CREATE TABLE "posts" (
  "id" string,
  "content" text,
  "title" string,
  "created_at" string,
  "updated_at" string,
  "user_id" integer
);
