const express = require('express');
const router_user = express.Router();

const path = require('path');
const conn = require('../tools/db');
const multer = require('multer');

let storage = multer.diskStorage({
    destination: function (req, file, cb) {
        cb(null, 'view/uploads/userphoto')
    },
    filename: function (req, file, cb) {
        cb(null, file.fieldname + '-' + Date.now() + path.extname(file.originalname));
    }
});
let upload = multer({storage: storage});

router_user
// 加载用户详细信息
    .get('/info', (req, res) => {
        res.render(path.join(routerPath, 'view/page', 'info.html'));
    })
    // 获取用户信息
    .get('/getInfo', (req, res) => {
        let obj = {};
        let database = ['userinfo', 'goods', 'news'];

        function getUserData(index) {
            if (index == database.length) {
                return res.send(obj);
            }
            let sql = `select a.* from user u
                       join ${database[index]} a on u.uid = a.uid
                       where u.username = ?`;
            conn.query(sql, req.session.username, (err, result) => {
                if (err) {
                    return console.log(err);
                }
                obj[database[index]] = result;
                if (index < database.length) {
                    getUserData(++index);
                }
            });
        }

        getUserData(0);
    })
    // 退出登录
    .get('/userLogout', (req, res) => {
        req.session.destroy();
        res.send({code: 200, message: '退出登录成功'});
    })
    //用户头像上传
    .post('/userUploads', upload.single('avatar'), (req, res) => {
        res.send({code: 200, message: "上传成功", filename: '\\' + req.file.filename});
    })
    // 更新用户信息
    .post('/editUserInfo', (req, res) => {
        let obj = {
            uicon: req.body.uicon,
            nickname: req.body.nickname,
            uphone: req.body.uphone,
            uqq: req.body.uqq,
            uemail: req.body.uemail,
            uhome: req.body.uhome
        };
        let sql = 'update userinfo set ? where uid = ?';
        conn.query(sql, [obj, req.body.uid], (err, result) => {
            if (err || result.affectedRows != 1) {
                return res.send({code: 201, message: '更新数据失败'});
            }
            return res.send({code: 200, message: '更新数据成功', info: obj});
        });
    });

module.exports = router_user;