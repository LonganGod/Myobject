$(function () {
    template.defaults.rules[1].test = /{#([@#]?)[ \t]*(\/?)([\w\W]*?)[ \t]*#}/;
    // ajax请求
    // 请求最新商品数据
    $.ajax({
        url: '/indexProData',
        type: 'get',
        data: 'type=0',
        dataType: 'json',
        success: function (msg) {
            var html = template('newProData', {list: msg});
            $('#newPro .products-content').html(html).children().last().addClass('hidden-xs hidden-sm').prev().addClass('hidden-xs hidden-sm');
        }
    });
    // 请求电子产品数据
    $.ajax({
        url: '/indexProData',
        type: 'get',
        data: 'type=1',
        dataType: 'json',
        success: function (msg) {
            var html = template('newProData', {list: msg});
            $('#dianzi .products-content').html(html).children().last().addClass('hidden-xs hidden-sm').prev().addClass('hidden-xs hidden-sm');
        }
    });
    // 请求书籍数据
    $.ajax({
        url: '/indexProData',
        type: 'get',
        data: 'type=2',
        dataType: 'json',
        success: function (msg) {
            var html = template('otherProData', {list: msg});
            $('#shuji .item-list').html(html);
        }
    });
    // 请求服装数据
    $.ajax({
        url: '/indexProData',
        type: 'get',
        data: 'type=3',
        dataType: 'json',
        success: function (msg) {
            var html = template('otherProData', {list: msg});
            $('#fuzhuang .item-list').html(html);
        }
    });
    // 请求生活用品数据
    $.ajax({
        url: '/indexProData',
        type: 'get',
        data: 'type=4',
        dataType: 'json',
        success: function (msg) {
            var html = template('otherProData', {list: msg});
            $('#shenghuo .item-list').html(html);
        }
    });
});