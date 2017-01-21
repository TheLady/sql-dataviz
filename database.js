const pg = require('pg');
const path = require('path');
const connectionString = process.env.DATABASE_URL || 'postgres://localhost:5432/sqldv';

const client = new pg.Client(connectionString)
client.connect()

module.exports = client
