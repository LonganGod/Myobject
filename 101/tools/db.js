const mysql = require('mysql');
const conn = mysql.createConnection({
    host: '127.0.0.1',
    user: 'root',
    password: '00000000',
    database: '101°'
});
conn.connect();
module.exports = conn;