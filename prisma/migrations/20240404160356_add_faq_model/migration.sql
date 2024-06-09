/*
  Warnings:

  - You are about to drop the column `freeCancle` on the `Room` table. All the data in the column will be lost.
  - You are about to drop the column `hadFreeParking` on the `Room` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "Room" DROP COLUMN "freeCancle",
DROP COLUMN "hadFreeParking",
ADD COLUMN     "freeCancel" BOOLEAN NOT NULL DEFAULT false,
ADD COLUMN     "hasFreeParking" BOOLEAN NOT NULL DEFAULT false;

-- CreateTable
CREATE TABLE "Faq" (
    "id" SERIAL NOT NULL,
    "title" TEXT NOT NULL,
    "desc" TEXT NOT NULL,

    CONSTRAINT "Faq_pkey" PRIMARY KEY ("id")
);
