var m_info = document.querySelector('.m_info');
var info_list = document.querySelector('.info_list');
var info_img = document.querySelector('.info_img');
var info_img_list = document.querySelectorAll('.info_img_list li');

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
