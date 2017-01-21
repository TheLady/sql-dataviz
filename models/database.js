const pg = require('pg');
const connectionString = process.env.DATABASE_URL || 'postgres://localhost:5432/sqldv'
const client = new pg.Client(connectionString);
client.connect();

const query = client.query(
  'CREATE TABLE tweets (id SERIAL PRIMARY KEY, text VARCHAR(140), expanded_urls VARCHAR)');
query.on('end', () => {client.end(); });