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
