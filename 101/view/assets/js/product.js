$(function () {
    template.defaults.rules[1].test = /{#([@#]?)[ \t]*(\/?)([\w\W]*?)[ \t]*#}/;
    // 获取商品id 和 类型
    var id = location.search.split('=')[1];
    // 通过id去向后台请求数据
    $.ajax({
        url: '/getProData',
        type: 'get',
        data: 'id=' + id,
        dataType: 'json',
        success: function (msg) {
            var str = template('ProData', msg[0]);
            $('.product-main-box').html(str);
            var titleStr = template('sameKindProTitle', msg[0]);
            $('.products-title').html(titleStr);

            // 放大镜
            $('#ex').zoom({on: 'grab'});

            // 点击小图切换大图
            $('.product-img-list').on('click', 'li', function () {
                $(this).addClass('active').siblings().removeClass('active');
                $('.zoom img').attr('src', $(this).find('img').attr('src'));
                $('#ex').zoom({on: 'grab'});
            });

            // 同类商品
            $.ajax({
                url: '/sameKindProData',
                type: 'get',
                data: {type: msg[0].kid, id: id},
                dataType: 'json',
                success: function (datas) {
                    console.log(datas)
                    var html = template('sameKindProData', {list: datas});
                    $('.products-content').html(html).children().last().addClass('hidden-xs hidden-sm').prev().addClass('hidden-xs hidden-sm');
                }
            });
        }
    });
});