var goods_list_ul = document.querySelector('.goods_list ul');
var goods_list = document.querySelectorAll('.goods_list ul li');
var no_goods = document.querySelector('.goods_list .no_goods');

if (goods_list.length == 0) {
    goods_list_ul.className = 'none'
    no_goods.className = 'no_goods active';
} else {
    goods_list_ul.className = 'active'
    no_goods.className = 'no_goods none'
}

