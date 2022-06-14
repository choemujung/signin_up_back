CREATE TABLE IF NOT EXISTS "__EFMigrationsHistory" (
    "MigrationId" character varying(150) NOT NULL,
    "ProductVersion" character varying(32) NOT NULL,
    CONSTRAINT "PK___EFMigrationsHistory" PRIMARY KEY ("MigrationId")
);

START TRANSACTION;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM pg_namespace WHERE nspname = 'signIn_signUp') THEN
        CREATE SCHEMA "signIn_signUp";
    END IF;
END $EF$;

CREATE TABLE "signIn_signUp"."tb_User" (
    "Id" text NOT NULL,
    "Name" text NOT NULL,
    "Password" text NOT NULL,
    CONSTRAINT "PK_tb_User" PRIMARY KEY ("Id")
);

INSERT INTO "__EFMigrationsHistory" ("MigrationId", "ProductVersion")
VALUES ('20220524042649_InitialCreate', '6.0.5');

COMMIT;

