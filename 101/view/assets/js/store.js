$(function () {
    let str = decodeURIComponent(location.href.split('=')[1]);
    $.ajax({
        url: '/getStormData',
        type: 'get',
        data: {kid: str},
        dataType: 'json',
        success: function (msg) {
            console.log(msg)
            template.defaults.rules[1].test = /{#([@#]?)[ \t]*(\/?)([\w\W]*?)[ \t]*#}/;
            var html = template('storeData', {list: msg});
            $('.products-content').html(html);

            $('.mainBox-nav li').eq(parseInt(str) + 1).addClass('active').siblings().removeClass('active');
        }
    })
});