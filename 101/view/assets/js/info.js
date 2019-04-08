$(function () {
    // 获取地址栏判断tab页面
    var type = location.href.split('=')[1];

    function loadTab(selector) {
        $(selector).addClass('active').siblings().removeClass('active');
        $('.userInfo-nav li').eq($(selector).index()).addClass('active').siblings().removeClass('active');
    }

    switch (type) {
        case 'info':
            loadTab('.userInfo-list');
            break;
        case 'goods':
            loadTab('.goodsInfo-list');
            break;
        case 'news':
            loadTab('.userNews-list');
            break;
    }

    // tab切换
    $('.userInfo-nav li').click(function () {
        $(this).addClass('active').siblings().removeClass('active');
        $('.pubInfo').eq($(this).index()).addClass('active').siblings().removeClass('active');
    });

    // 发送请求，接受数据
    $.ajax({
        url: '/getInfo',
        type: 'get',
        dataType: 'json',
        success: function (msg) {
            template.defaults.rules[1].test = /{#([@#]?)[ \t]*(\/?)([\w\W]*?)[ \t]*#}/;

            function addInfo(selector, data) {
                var htmlStr = template(selector, data);
                $('.' + selector + ' tbody').html(htmlStr);
            }

            addInfo('userInfo-list', msg.userinfo[0]);
            addInfo('userInfo-form', msg.userinfo[0]);
            addInfo('goodsInfo-list', {goods: msg.goods});
            addInfo('userNews-list', {news: msg.news});
        }
    });

    // 退出登录
    $('.userInfo-list').on('click', '#loginOut', function () {
        layer.confirm('您确定要登出吗？', {icon: 3, title: '', btn: ['确定', '我再想想']}, function () {
            $.ajax({
                url: '/userLogout',
                type: 'get',
                dataType: 'json',
                success: function (msg) {
                    if (msg.code == 200) {
                        location.href = '/index';
                    }
                }
            });
        });


    });

    // 提交文件时，预览图片
    $('.userInfo-form').on('change', '#uicon', function () {
        var fileObj = $(this)[0].files[0];
        var fd = new FormData();
        var thisObj = $(this);
        fd.append('avatar', fileObj);

        $.ajax({
            url: '/userUploads',
            type: 'post',
            data: fd,
            dataType: 'json',
            contentType: false,
            processData: false,
            success: function (msg) {
                if (msg.code == 200) {
                    var url = URL.createObjectURL(fileObj);
                    thisObj.prev().attr('src', url);
                    thisObj.next().val(msg.filename);
                }
            }
        });
    });

    // 检测用户信息表单
    $('#editUser').validate( {
        rules: {
            nickname: {
                required: true,
                rangelength: [2, 8],
                stringCheck: true
            },
            uphone: {
                required: true,
                isMobile: true
            },
            uqq: {
                required: true,
                isQq: true
            },
            uemail: {
                required: true,
                email: true
            },
            uhome: {
                required: true,
            }
        },
        messages: {
            nickname: {
                required: '昵称不能为空',
                rangelength: '昵称的长度为2-8'
            },
            uphone: {
                required: '手机不能为空'
            },
            uqq: {
                required: 'QQ不能为空'
            },
            uemail: {
                required: '邮箱不能为空',
                email: '邮箱格式不正确'
            },
            uhome: {
                required: '地址不能为空',
            }
        },
        submitHandler: function () {
            $.ajax({
                url: '/editUserInfo',
                type: 'post',
                data: $('#editUser').serialize(),
                dataType: 'json',
                success: function (msg) {
                    if (msg.code == 201) {
                        layer.msg(msg.message, {icon: 2, title: ''});
                    } else if (msg.code == 200) {
                        layer.msg(msg.message, {icon: 1, title: ''});

                        var html = template('userInfo-list', msg.info);
                        $('.userInfo-list tbody').html(html);

                        $('.pubInfo.active').removeClass('active').prev().addClass('active');
                        $('.userInfo-nav li.active').removeClass('active').prev().addClass('active');
                    }
                }
            });
        }
    });

    // 删除商品
    $('.goodsInfo-list').on('click', '.delGoodBtn', function () {
        var goodId = $(this).attr('goodId');
        var thisObj = $(this);

        layer.confirm('您确定要删除这件商品吗？', {icon: 3, title: '', btn: ['确定', '我再想想']}, function () {
            $.ajax({
                url: '/delgood',
                type: 'get',
                data: {gid: goodId},
                dataType: 'json',
                success: function (msg) {
                    if (msg.code == 200) {
                        layer.msg(msg.message, {icon: 1, title: '', time: 1000});
                        thisObj.parents('tr').nextAll().each(function (index, item) {
                            var tdObj = $(item).children().eq(0);
                            tdObj.text(tdObj.text() - 1);
                        });
                        thisObj.parents('tr').remove()
                    } else {
                        layer.msg(msg.message, {icon: 2, title: '', time: 1000});
                    }
                }
            });
        });


    });

    // 编辑商品

    // 删除信息
    $('.userNews-list').on('click', '.delNewsBtn', function () {
        var newsId = $(this).attr('newsId');
        var thisObj = $(this);

        layer.confirm('您确定要删除这条信息吗？', {icon: 3, title: '', btn: ['确定', '我再想想']}, function () {
            $.ajax({
                url: '/delnews',
                type: 'get',
                data: {nid: newsId},
                dataType: 'json',
                success: function (msg) {
                    if (msg.code == 200) {
                        layer.msg(msg.message, {icon: 1, title: '', time: 1000});
                        thisObj.parents('tr').nextAll().each(function (index, item) {
                            var tdObj = $(item).children().eq(0);
                            tdObj.text(tdObj.text() - 1);
                        });
                        thisObj.parents('tr').remove()
                    } else {
                        layer.msg(msg.message, {icon: 2, title: '', time: 1000});
                    }
                }
            });
        });
    });

    // 查看信息
});