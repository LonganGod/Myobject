var left_arr = document.getElementById('left_arr');
var right_arr = document.getElementById('right_arr');
var img_list = document.querySelector('.main_body .hot .img_list');


var left = img_list.style.left;
left = '0px'
var num = parseInt(left.replace('px',''));

left_arr.onclick = function () {

    if (num - 580 < -1740) {
        num = 0;
    } else {
        num -= 580;
    }
    left = num + 'px';
    img_list.style.left = left;
}

right_arr.onclick = function () {
    if (num + 580 > 0) {
        num = 0;
    } else {
        num += 580;
    }
    left = num + 'px';
    img_list.style.left = left;
}