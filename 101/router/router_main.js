const express = require('express');
const router_main = express.Router();

const path = require('path');
const conn = require('../tools/db');
const moment = require('moment');

router_main
// 加载主页
    .get('/index', (req, res) => {
        res.render(path.join(routerPath, 'view/page', 'index.html'));
    })
    // 加载主页数据
    .get('/indexProData', (req, res) => {
        let str = req.query.type == 0 ? '%' : req.query.type;
        let sql = 'select a.*, b.* from goods a join kind b on a.kid = b.kid and a.kid like ? order by a.gdate desc limit 0, 4';
        conn.query(sql, str, (err, result) => {
            if (err) {
                return console.log(err);
            }
            res.send(result);
        })
    })

    // 加载商店页面
    .get('/store', (req, res) => {
        res.render(path.join(routerPath, 'view/page', 'store.html'));
    })
    // 加载商店数据
    .get('/getStormData', (req, res) => {
        if (req.query.kid == 0) {
            let sql = 'select a.*, b.* from goods a join kind b on a.kid = b.kid order by a.gid desc limit 0, 16';
            conn.query(sql, (err, result) => {
                if (err) {
                    return console.log(err);
                }
                res.send(result);
            });
        } else {
            let sql = 'select a.*, b.* from goods a join kind b on a.kid = b.kid and a.kid = ?';
            conn.query(sql, req.query.kid, (err, result) => {
                if (err) {
                    return console.log(err);
                }
                res.send(result);
            });
        }
    })
    // 搜索商品
    .get('/search', (req, res) => {
        let sql;
        if (req.query.gkind == 0) {
            sql = `select * from goods where gname like '%${req.query.gname.trim()}%'`;
        } else {
            sql = `select * from goods where kid = ${req.query.gkind} and gname like '%${req.query.gname.trim()}%'`;
        }
        conn.query(sql, (err, result) => {
            if (err) {
                return console.log(err);
            }
            res.render(path.join(routerPath, 'view/page', 'search.html'), {list: result});
        });
    })

    // 加载详情页
    .get('/product', (req, res) => {
        res.render(path.join(routerPath, 'view/page', 'product.html'));
    })
    .get('/getProData', (req, res) => {
        let sql = 'select a.*, b.*, c.* from goods a join userinfo b on a.uid = b.uid join kind c on a.kid = c.kid and a.gid = ?';
        conn.query(sql, req.query.id, (err, result) => {
            if (err || result.length != 1) {
                console.log(err);
            }
            res.send(result);
        })
    })
    .get('/sameKindProData', (req, res) => {
        let sql = 'select a.*, b.* from goods a join kind b on a.kid = b.kid and a.kid = ? and a.gid != ? order by a.gdate desc limit 0, 4';
        conn.query(sql, [req.query.type, req.query.id], (err, result) => {
            if (err) {
                return console.log(err);
            }
            res.send(result);
        })
    })

    // 加载用户登录页
    .get('/login', (req, res) => {
        res.render(path.join(routerPath, 'view/page', 'login.html'), {type: req.query.type});
    })
    // 提交用户注册信息
    .post('/postSign', (req, res) => {
        let userObj = {
            username: req.body.username,
            password: req.body.password
        };
        let userinfoObj = {
            nickname: req.body.nickname,
            uicon: 'default.png',
            uphone: req.body.phone,
            udate: moment().format('YYYY-MM-DD')
        };

        let sql = `select * from user where username = ?`;
        conn.query(sql, userObj.username, (err, data) => {
            if (err || data.length != 0) {
                return res.send({code: 201, message: '该用户名已存在'});
            }

            sql = `insert into user set ?`;
            conn.query(sql, userObj, (err, result) => {
                if (err || result.affectedRows != 1) {
                    console.log(err);
                    return res.send({code: 201, message: '操作失败'});
                }

                sql = `insert into userinfo set ?`;
                conn.query(sql, userinfoObj, (err, result_userinfo) => {
                    if (err || result_userinfo.affectedRows != 1) {
                        console.log(err);
                        return res.send({code: 201, message: '操作失败'});
                    }
                });
                res.send({code: 200, message: '操作成功', userObj});
            });
        });
    })
    // 提交用户登录信息
    .post('/postLogin', (req, res) => {
        let sql = 'select * from user where username = ? and password = ?';
        conn.query(sql, [req.body.username, req.body.password], (err, result) => {
            if (err || result.length != 1) {
                console.log(err);
                return res.send({code: 201, message: '操作失败'});
            }
            req.session.isLogin = true;
            req.session.uid = result[0].uid;
            req.session.username = req.body.username;
            res.send({code: 200, message: '操作成功', type: req.body.type});
        });
    })

    // 用户已登录
    .get('/neadLogin', (req, res) => {
        res.send({code: 200, type: req.query.type});
    });

module.exports = router_main;