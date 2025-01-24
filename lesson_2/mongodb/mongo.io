// Replication
// - master-slave
// - replication_factor = 3
//
// Sharding
// key based by id

CREATE TABLE "profile" (
  "id" string,
  "name" string,
  "nickname" string,
  "age" integer,
  "city" string,
  "country" string,
  "bio" string,
  "interests" string[],
  "education" string
);