// Replication
// - master-slave
// - replication_factor = 3
//
// Sharding
// key based by user_id/owner_id

CREATE TABLE "relations" (
  "user_id" string,
  "friends" string[],
  "relationships" string[],
  "subscribers" string[]
);

CREATE TABLE "chats" (
  "id" string,
  "title" integer,
  "description" integer,
  "owner_id" string,
  "members" string[]
);