const express = require('express');
const router_admin = express.Router();

const path = require('path');
const conn = require('../tools/db');
const moment = require('moment');

router_admin
// 加载管理员登录页
    .get('/admin/login', (req, res) => {
        res.render(path.join(routerPath, 'view/admin', 'login.html'));
    })
    // 管理员登录检测
    .post('/admin/checklogin', (req, res) => {
        let sql = 'select * from admin where aname = ? and apsw = ?';
        conn.query(sql, [req.body.aname, req.body.apsw], (err, result) => {
            if (err || result.length != 1) {
                console.log(err);
                return res.send({code: 201, message: '用户名或密码错误'});
            }
            req.session.isAdmin = true;
            res.send({code: 200, message: '登录成功'});
        });
    })
    // 加载管理用户界面 --index
    .get('/admin/index', (req, res) => {
        res.render(path.join(routerPath, 'view/admin', 'index.html'));
    })
    // 加载用户界面数据
    .get('/admin/getusers', (req, res) => {
        let sql = 'select a.*, b.* from user a join userinfo b on a.uid = b.uid and a.uid > ? limit 0, 6';
        conn.query(sql, req.query.last, (err, result) => {
            if (err) {
                console.log(err);
                return res.send({code: 201, message: '操作失败'});
            }
            res.send({code: 200, message: '操作成功', datas: result});
        });
    })
    // 删除用户数据
    .get('/admin/deluser', (req, res) => {
        let sql = 'delete from user where uid = ?';
        conn.query(sql, req.query.id, (err, result) => {
            if (err || result.affectedRows != 1) {
                console.log(err);
                return res.send({code: 201, message: '数据删除失败'});
            }
            sql = 'delete from userinfo where uid = ?';
            conn.query(sql, req.query.id, (err, result_info) => {
                if (err || result_info.affectedRows != 1) {
                    console.log(err);
                    return res.send({code: 201, message: '数据删除失败'});
                }
                res.send({code: 200, message: '数据删除成功'});
            });
        });
    })
    // 查看用户详情
    .get('/admin/detail', (req, res) => {
        let userId = req.query.id;
        let sql = 'select * from userinfo where uid = ?';
        conn.query(sql, parseInt(userId), (err, result) => {
            if (err || result.length != 1) {
                return console.log(err);
            }
            res.render(path.join(routerPath, 'view/admin', 'detail.html'), result[0]);
        });
    })
    // 查看用户发布商品
    .get('/admin/getgoodsofuser', (req, res) => {
        let sql = 'select a.*, b.* from goods a join kind b on a.kid = b.kid and a.uid = ? and a.gid > ? limit 0, 6';
        conn.query(sql, [req.query.userId, req.query.last], (err, result) => {
            if (err) {
                console.log(err);
                return res.send({code: 201, message: '操作失败'});
            }
            res.send({code: 200, message: '操作成功', datas: result});
        });
    })
    // 删除商品
    .get('/admin/delgoods', (req, res) => {
        let sql = 'delete from goods where gid = ?';
        conn.query(sql, req.query.id, (err, result) => {
            if (err || result.affectedRows != 1) {
                console.log(err);
                return res.send({code: 201, message: '数据删除失败'});
            }
            res.send({code: 200, message: '数据删除成功'});
        });
    })
    // 警告用户
    .get('/admin/warnuser', (req, res) => {
        let obj = {
            ntitle: '来自管理员的警告',
            ndes: '您最近有不正当或违规操作，特此警告，如有下次，必将严惩',
            ndate: moment().format('YYYY-MM-DD'),
            uid: parseInt(req.query.id)
        };
        let sql = 'insert into news set ?';
        conn.query(sql, obj, (err, result) => {
            if (err || result.affectedRows != 1) {
                console.log(err);
                return res.send({code: 201, message: '操作失败'});
            }
            return res.send({code: 200, message: '操作成功'});
        });
    });

module.exports = router_admin;