$(function () {
    var userId = $('#goods').attr('userId');
    var lastId = 0;
    var flag = true;

    function loadGoodsData() {
        flag = false;
        $.ajax({
            url: '/admin/getgoodsofuser',
            type: 'get',
            data: {last: lastId, userId: userId},
            dataType: 'json',
            success: function (msg) {
                // console.log(msg)
                if (msg.code == 200) {
                    console.log(msg)
                    template.defaults.rules[1].test = /{#([@#]?)[ \t]*(\/?)([\w\W]*?)[ \t]*#}/;
                    var result = msg.datas;
                    var html = template('goodsList', {list: result});
                    $('#goods').append(html);
                    flag = true;
                    lastId = result[result.length - 1].gid;
                    console.log(lastId)
                }
            }
        });
    }
    loadGoodsData();

    $(window).scroll(function () {
        if (!flag) return;
        // 获取文档的高度
        var docH = $(document).height();
        // 获取屏幕高度
        var winH = $(window).height();
        // 获取滚动距离
        var scT = $('html, body').scrollTop();

        if (docH - winH - scT <= 100) {
            loadGoodsData();
        }
    });

    $('#goods').on('click', '.del', function () {
        var delId = $(this).attr('delID');
        var that = $(this);

        delItem('您确定要删除该商品吗？', '/admin/delgoods', delId, function () {
            that.parents('.item').remove();
            layer.msg('删除成功', {icon: 1, title: '', time: 1000});
        });
    });
    
    $('#delBtn').click(function () {
        var userId = $(this).attr('userId');

        layer.confirm('您确定要删除该用户吗', {icon: 3, title: '', btn: ['确定', '我再想想']}, function () {
            $.ajax({
                url: '/admin/deluser',
                type: 'get',
                data: {id: userId},
                dataType: 'json',
                success: function (msg) {
                    if (msg.code == 200) {
                        location.href = '/admin/index';
                    }
                }
            });
        });

    });

    $('#warnBtn').click(function () {
        var userId = $(this).attr('userId');

        layer.confirm('您确定要警告该用户吗', {icon: 3, title: '', btn: ['确定', '我再想想']}, function () {
            $.ajax({
                url: '/admin/warnuser',
                type: 'get',
                data: {id: userId},
                dataType: 'json',
                success: function (msg) {
                    if (msg.code == 200) {
                        layer.msg('警告成功', {icon: 1, title: '', time: 1000});
                    }
                }
            });
        });
    })
});