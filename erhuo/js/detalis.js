var m_info = document.querySelector('.m_info');
var info_list = document.querySelector('.info_list');
var info_img = document.querySelector('.info_img');
var info_img_list = document.querySelectorAll('.info_img_list li');

var GoodsType = document.getElementById('GoodsType');
var GoodsSituation = document.getElementById('GoodsSituation');

switch (GoodsType.innerText) {
    case '': 
        GoodsType.innerText = '';
        break;
    case 'shouji': 
        GoodsType.innerText = '手机';
        break;
    case 'shuma': 
        GoodsType.innerText = '数码';
        break;
    case 'zufang': 
        GoodsType.innerText = '租房';
        break;
    case 'fuzhuang': 
        GoodsType.innerText = '服装';
        break;
    case 'jujia': 
        GoodsType.innerText = '居家';
        break;
    case 'meizhuang': 
        GoodsType.innerText = '美妆';
        break;
    case 'yundong': 
        GoodsType.innerText = '运动';
        break;
    case 'dianqi': 
        GoodsType.innerText = '电器';
        break;
    default:
        GoodsType.innerText = '玩具乐器';
}

switch (GoodsSituation.value) {
    case '': 
        GoodsSituation.innerText = '';
        break;
    case 'new': 
        GoodsSituation.innerText = '全新';
        break;
    case 'half': 
        GoodsSituation.innerText = '半成新';
        break;
    default:
        GoodsSituation.innerText = '旧货';
}

m_info.onmouseover = function () {
    info_list.className = 'info_list active';
}

m_info.onmouseout = function () {
    info_list.className = 'info_list none';
}


for (var i = 0; i < info_img_list.length; i++) {
    info_img_list[i].index = i;

    info_img_list[i].onclick = function () {
        var str = this.querySelector('img').src;

        info_img.style.backgroundImage = 'url(' + str + ')';
        for (var j = 0; j < info_img_list.length; j++) {
            info_img_list[j].className = '';
        }
        this.className = 'active';
    }
}
