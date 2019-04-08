const express = require('express');
const router_news = express.Router();

const path = require('path');
const conn = require('../tools/db');
const moment = require('moment');

router_news
// 用户删除消息
    .get('/delnews', (req, res) => {
        let sql = 'delete from news where nid = ?';
        conn.query(sql, req.query.nid, (err, result) => {
            if (err || result.affectedRows != 1) {
                return res.send({code: 201, message: '对不起，删除操作执行失败'});
            }
            res.send({code: 200, message: '删除成功'});
        });
    })
// 用户查看消息

module.exports = router_news;