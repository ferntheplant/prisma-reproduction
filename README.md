# Reproduction

## Issue

As [posted](https://prisma.slack.com/archives/CA491RJH0/p1682375207446739) in the prisma support slack I was running into issues when trying to use prefixed uuids as primary key for a table. With no changes to my `schema.prisma` if I reran `npx prisma migrate dev` I would get new migrations to add a default value to the prefixed id column.

## Using this reproduction

This repo was created following the instructions on the [Prisma getting started](https://www.prisma.io/docs/getting-started/setup-prisma/start-from-scratch/relational-databases-typescript-postgres) page. Notice that there is an initial migration with a single users table with a prefixed id column. The "second" migration was run using `npx prisma migrate dev --name second` and adds a redundant default for the id column.

1. Clone this repo and navigate to it
1. `$ npm install`
1. `$ npx prisma migrate dev --name third`

Notice that despite there being no schema changes prisma generates a migration. You can try running `npx prisma migrate dev` again and it will make even another migration with the exact same body.
