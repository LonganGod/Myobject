const express = require('express');
const app = express();
app.listen(3000, () => {
    console.log('101-server is running at 3000');
});

app.engine('html', require('express-art-template'));

app.use('/assets', express.static('./view/assets'));
app.use('/uploads', express.static('./view/uploads'));

app.use(require('body-parser').urlencoded({extended: false}));

app.use(require('express-session')({
    secret: 'asdwqdaswxasx',
    resave: false,
    saveUninitialized: false
}));

const loginCheck = (req, res, next) => {
    if (req.url.startsWith('/admin')) {
        if (req.url != '/admin/login' && req.url != '/admin/checklogin') {
            if (req.session.isAdmin != true) {
                return res.redirect('/admin/login');
            }
        }
        // 后台会话控制
        next();
    } else {
        let num = 0;
        const urlList = ['/index', '/indexProData', '/store', '/getStormData', '/product', '/getProData', '/sameKindProData', '/login', '/postSign', '/postLogin', '/search'];
        urlList.forEach(function (item) {
            if (!req.url.startsWith(item)) {
                num++;
            }
        });
        if (num == urlList.length) {
            if (req.session.isLogin != true) {
                return res.send({code: 201, message: '对不起，请您先进行登录'});
            }
        }
        next();
    }
};
app.use(loginCheck);

global.routerPath = __dirname;

app.use(require('./router/router_main'));
app.use(require('./router/router_user'));
app.use(require('./router/router_goods'));
app.use(require('./router/router_news'));
app.use(require('./router/router_admin'));