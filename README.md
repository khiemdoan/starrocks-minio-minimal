# StarRocks with Minio

Set up a simple StarRocks with MinIO inside Docker Compose.

This example is based on the [StarRocks documentation](https://docs.starrocks.io/docs/quick_start/shared-data/), and [StarRocks repository](https://github.com/StarRocks/demo/tree/master/documentation-samples)

## Running

Create a `.env` file in the follow `.env.example` file.

```bash
docker-compose up -d
```

After the containers are up, you should change password for the `root` user in StarRocks.

```bash
docker exec -it starrocks-fe bash
mysql -P9030 -h 127.0.0.1 -u root --prompt="StarRocks > " -p
# without password
```

Then run the following SQL command to change the password, for example:

```sql
SET PASSWORD = PASSWORD('$w0rdf1sh');
```

Add compute node

```sql
ALTER SYSTEM ADD COMPUTE NODE "starrocks-cn:9050";
```

## Create database

You can create a database using the following SQL command:

```sql
CREATE DATABASE IF NOT EXISTS warehouse;
```

## Accessing web interfaces

- StarRocks: [http://localhost:8030](http://localhost:8030)
- MinIO: [http://localhost:9000](http://localhost:9000)

## Disclaimer

This repository is created by [Khiem Doan](https://github.com/khiemdoan) for educational purposes only. It is not an official StarRocks or MinIO project.

This is a simple setup for development and testing purposes. It is not intended for production use.

I do not take any responsibility for any issues that may arise from using this setup in production.
