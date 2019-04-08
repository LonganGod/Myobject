$(function () {
    // 切换表单
    $('.item li').click(function () {
        $(this).addClass('active').siblings().removeClass('active');
        $('.form-pub').eq($(this).index()).stop().slideDown(300).siblings('.form-pub').slideUp(300);
    });

    // 注册表单验证
    $('#signForm').validate({
        rules: {
            username: {
                required: true,
                rangelength: [6, 15],
                stringCheck: true
            },
            nickname: {
                required: true,
                rangelength: [2, 8],
                stringCheck: true
            },
            password: {
                required: true,
                isPwd: true
            },
            password2: {
                equalTo: "#passwd"
            },
            phone: {
                required: true,
                isMobile: true
            }
        },
        messages: {
            username: {
                required: '用户名不能为空',
                rangelength: '用户名的长度为6-15'
            },
            nickname: {
                required: '昵称不能为空',
                rangelength: '用户名的长度为2-8'
            },
            password: {
                required: '密码不能为空'
            },
            password2: {
                equalTo: '两次密码不一致'
            },
            phone: {
                required: '手机号不能为空'
            }
        },
        submitHandler: function () {
            // 注册验证成功
            $.ajax({
                url: '/postSign',
                type: 'post',
                data: $('#signForm').serialize(),
                dataType: 'json',
                success: function (msg) {
                    if (msg.code == 201) {
                        return layer.msg(msg.message, {icon: 2, title: '', time: 1000});
                    }
                    location.reload();
                }
            });
        }
    });

    // 登录表单验证
    $('#loginForm').validate({
        rules: {
            username: {
                required: true,
            },
            password: {
                required: true,
            }
        },
        messages: {
            username: {
                required: '用户名不能为空',
            },
            password: {
                required: '密码不能为空',
            }
        },
        submitHandler: function () {
            // 登录验证成功
            $.ajax({
                url: '/postLogin',
                type: 'post',
                data: $('#loginForm').serialize(),
                dataType: 'json',
                success: function (result) {
                    if (result.code == 201) {
                        layer.msg('用户名或密码错误，请重新登录', {icon: 2, title: '', time: 1000});
                        return $('#loginForm')[0].reset();
                    } else if (result.code == 200) {
                        if (result.type == 'addgoods') {
                            // return parent.location.href = '/info?type=info';
                            var index = parent.layer.getFrameIndex(window.name);
                            parent.layer.close(index);
                            return parent.location.href = '/addgoods';
                        } else {
                            return parent.location.href = '/info?type=info';
                        }
                    }
                }
            });
        }
    });
});