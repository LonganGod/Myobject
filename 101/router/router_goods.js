const express = require('express');
const router_goods = express.Router();

const path = require('path');
const conn = require('../tools/db');
const moment = require('moment');
const multer = require('multer');

let storage = multer.diskStorage({
    destination: function (req, file, cb) {
        cb(null, 'view/uploads/goods')
    },
    filename: function (req, file, cb) {
        cb(null, file.fieldname + '-' + Date.now() + path.extname(file.originalname));
    }
});
let upload = multer({storage: storage});

router_goods
// 用户删除商品
    .get('/delgood', (req, res) => {
        // console.log(req.query.gid)
        let sql = 'delete from goods where gid = ?';
        conn.query(sql, req.query.gid, (err, result) => {
            if (err || result.affectedRows != 1) {
                return res.send({code: 201, message: '对不起，删除操作执行失败'});
            }
            res.send({code: 200, message: '删除成功'});
        });
    })
    // 加载添加商品页面
    .get('/addgoods', (req, res) => {
        let sql = 'select * from kind';
        conn.query(sql, (err, result) => {
            if (err) {
                return console.log(err);
            }
            res.render(path.join(routerPath, 'view/page', 'addgoods.html'), {list: result});
        });
    })
    //商品图片上传
    .post('/goodsUploads', upload.single('avatar'), (req, res) => {
        res.send({code: 200, message: "上传成功", filename: '\\' + req.file.filename});
    })
    // 用户添加商品
    .post('/postGoods', (req, res) => {
        let obj = {
            gname: req.body.gname,
            gdes: req.body.gdes,
            kid: parseInt(req.body.gkind),
            gprice: parseFloat(req.body.gprice),
            goriginal: parseFloat(req.body.goriginal),
            gicon1: req.body.gicon1,
            gicon2: req.body.gicon2,
            gicon3: req.body.gicon3,
            gdate: moment().format('YYYY-MM-DD'),
            uid: req.session.uid
        };
        let sql = 'insert into goods set ?';
        conn.query(sql, obj, (err, result) => {
            if (err || result.affectedRows != 1) {
                return console.log(err);
            }
            res.send({code: 200, message: '操作成功'});
        })
    })
    // 编辑商品页面跳转
    .get('/editGoods', (req, res) => {
        let sql = 'select * from goods where gid = ?';
        conn.query(sql, req.query.id, (err, result) => {
            if (err || result.length != 1) {
                return console.log(err);
            }
            sql = 'select * from kind';
            conn.query(sql, (err, result_kind) => {
                if (err) {
                    return console.log(err);
                }
                result[0].list = result_kind;
                res.render(path.join(routerPath, 'view/page', 'editgoods.html'), result[0]);
            });
        });
    })
    // 编辑商品
    .post('/editGoodsData', (req, res) => {
        console.log(req.body);
        let obj = {
            gname: req.body.gname,
            gdes: req.body.gdes,
            kid: parseInt(req.body.gkind),
            gprice: parseFloat(req.body.gprice),
            goriginal: parseFloat(req.body.goriginal),
            gicon1: req.body.gicon1,
            gicon2: req.body.gicon2,
            gicon3: req.body.gicon3
        };
        let sql = 'update goods set ? where gid = ?';
        conn.query(sql, [obj, req.body.gid], (err, result) => {
            if (err || result.affectedRows != 1) {
                return console.log(err);
            }
            res.send({code: 200, message: '修改成功'});
        });
    });

module.exports = router_goods;