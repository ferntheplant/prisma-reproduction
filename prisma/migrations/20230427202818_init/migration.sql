-- CreateTable
CREATE TABLE "User" (
    "id" TEXT NOT NULL DEFAULT (concat('usr_', gen_random_uuid()::TEXT))::TEXT,
    "email" TEXT NOT NULL,

    CONSTRAINT "User_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "User_email_key" ON "User"("email");
