-- AlterTable
ALTER TABLE "User" ALTER COLUMN "id" SET DEFAULT (concat('usr_', gen_random_uuid()::TEXT))::TEXT;
