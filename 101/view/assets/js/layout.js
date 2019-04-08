$(function () {
    $(document)
        .ajaxStart(function () {
            NProgress.start()
        })
        .ajaxStop(function () {
            NProgress.done()
        });

    $('.neadLogin').click(function () {
        var requestHTMLType = $(this).attr('type');
        var width = '90%';
        var height = '50%';

        if ($(window).width() >= 922) {
            width = '800px';
            height = '500px';
        }

        $.ajax({
            url: '/neadLogin',
            type: 'get',
            cache: false,
            data: {type: requestHTMLType},
            dataType: 'json',
            success: function (msg) {
                if (msg.code == 201) {
                    layer.ready(function () {
                        layer.open({
                            type: 2,
                            title: '登录页',
                            maxmin: false,
                            area: [width, height],
                            content: '/login?type=' + requestHTMLType,
                            success: function () {
                                layer.msg('您还未登录，请先进行登录', {icon: 0, title: '', time: 1000});
                            }
                        });
                    });
                } else {
                    if (requestHTMLType == 'addgoods') {
                        return location.href = '/addgoods';
                    }
                    location.href = '/info?type=' + requestHTMLType;
                }
            }
        });
    });

    $('.main-header .search-btn').click(function () {
        var gkind = $('#search select').val();
        var gname = $('#search input').val();
        location.href = '/search?gkind=' + gkind + '&gname=' + gname;
    });
});