# Umami with Supabase support

Umami does not use `directUrl` when configuring Prisma.

This image, is built (and will always built) from the latest umami postgres docker image, with a small modification to the `schema.prisma` file, were it adds
`directUrl` to it, this way you can use Supabase as usal.

## Usage

After pulling the docker image, you need to specifiy two environment variables:
- `DATABASE_URL`
- `DIRECT_URL`

Both values can be found in your Supabase database information.
