CREATE TABLE "relations" (
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

COMMENT ON COLUMN "posts"."content" IS 'Content of the post';

ALTER TABLE "profile" ADD FOREIGN KEY ("id") REFERENCES "relations" ("friends");

ALTER TABLE "profile" ADD FOREIGN KEY ("id") REFERENCES "posts" ("user_id");

ALTER TABLE "profile" ADD FOREIGN KEY ("id") REFERENCES "chats" ("owner_id");

ALTER TABLE "messages" ADD FOREIGN KEY ("id") REFERENCES "chats" ("id");

ALTER TABLE "media" ADD FOREIGN KEY ("post_id") REFERENCES "posts" ("id");

ALTER TABLE "media" ADD FOREIGN KEY ("published_by") REFERENCES "posts" ("user_id");
