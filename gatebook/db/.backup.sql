PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE "schema_migrations" ("version" varchar NOT NULL);
INSERT INTO "schema_migrations" VALUES('20160801000010');
INSERT INTO "schema_migrations" VALUES('20160801000020');
INSERT INTO "schema_migrations" VALUES('20160801000030');
INSERT INTO "schema_migrations" VALUES('20160801000040');
INSERT INTO "schema_migrations" VALUES('20160801000050');
INSERT INTO "schema_migrations" VALUES('20170223072457');
CREATE TABLE "notes" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "title" varchar, "content" text, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "user_id" integer);
INSERT INTO "notes" VALUES(1,'あsdふぁsdふぁ','ファsdふぁsdふぁs','2017-02-23 07:47:35.378914','2017-02-23 07:47:35.378914',1);
CREATE TABLE "users" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar, "email" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "image" varchar, "encrypted_password" varchar DEFAULT '' NOT NULL);
INSERT INTO "users" VALUES(1,'kkk','red-hedgehog.5178@ezweb.ne.jp','2017-02-23 07:47:23.645999','2017-02-23 07:47:23.645999',NULL,'$2a$10$IzjiId80WyPZTHUsoRjk2ua89xwkBo/EXXrEYVupPbSoW1pWGtwfO');
CREATE TABLE "likes" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "user_id" integer, "note_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
DELETE FROM sqlite_sequence;
INSERT INTO "sqlite_sequence" VALUES('users',1);
INSERT INTO "sqlite_sequence" VALUES('notes',1);
INSERT INTO "sqlite_sequence" VALUES('likes',9);
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
COMMIT;
