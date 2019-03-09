--
-- DeviseCreateCustomers : 20190309165642
--

CREATE TABLE "customers" ("id" integer PRIMARY KEY AUTOINCREMENT NOT NULL, "email" varchar DEFAULT '' NOT NULL, "encrypted_password" varchar DEFAULT '' NOT NULL, "reset_password_token" varchar, "reset_password_sent_at" datetime, "remember_created_at" datetime, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);

CREATE UNIQUE INDEX "index_customers_on_email" ON "customers" ("email");

CREATE UNIQUE INDEX "index_customers_on_reset_password_token" ON "customers" ("reset_password_token");

INSERT INTO schema_migrations (version) VALUES ('20190309165642');
