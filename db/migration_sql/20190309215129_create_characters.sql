--
-- CreateCharacters : 20190309215129
--

CREATE TABLE "characters" ("id" integer PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar, "type" integer, "birth" date, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);

INSERT INTO schema_migrations (version) VALUES ('20190309215129');
