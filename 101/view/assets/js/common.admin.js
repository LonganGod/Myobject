var lastId = 0;
var flag = true;

function loadData(url, moduleId, parentEle) {
    flag = false;
    $.ajax({
        url: url,
        type: 'get',
        data: {last: lastId},
        dataType: 'json',
        success: function (msg) {
            // console.log(msg)
            if (msg.code == 200) {
                template.defaults.rules[1].test = /{#([@#]?)[ \t]*(\/?)([\w\W]*?)[ \t]*#}/;
                var result = msg.datas;
                var html = template(moduleId, {list: result});
                parentEle.append(html);
                flag = true;
                lastId = result[result.length - 1].uid;
            }
        }
    });
};

function scrollWin(url, moduleId, parentEle) {
    $(window).scroll(function () {
        if (!flag) return;
        // 获取文档的高度
        var docH = $(document).height();
        // 获取屏幕高度
        var winH = $(window).height();
        // 获取滚动距离
        var scT = $('html, body').scrollTop();

        if (docH - winH - scT <= 100) {
            loadData(url, moduleId, parentEle);
        }
    });
}

function delItem(message, url, delId, done) {
    layer.confirm(message, {icon: 3, title: '', btn: ['确定', '我再想想']}, function () {
        $.get(url, {id: delId}, function (result) {
            if (result.code == 200) {
                done();
            }
        })
    });
}