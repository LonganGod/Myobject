window.onload = function () {
    // 上传图片

    document.getElementById("add_img1").addEventListener("change", function () {
        onFileChange(this, "good_imgs_1", "img_1", "goodsPhoto1")
    });

    document.getElementById("add_img2").addEventListener("change", function () {
        onFileChange(this, "good_imgs_2", "img_2", "goodsPhoto2")
    });

    document.getElementById("add_img3").addEventListener("change", function () {
        onFileChange(this, "good_imgs_3", "img_3", "goodsPhoto3")
    });

    document.getElementById("add_img4").addEventListener("change", function () {
        onFileChange(this, "good_imgs_4", "img_4", "goodsPhoto4")
    });

    document.getElementById("add_img5").addEventListener("change", function () {
        onFileChange(this, "good_imgs_5", "img_5", "goodsPhoto5")
    });

    // 检测

    document.getElementById("title").addEventListener("blur", function () {
        onInputBlur(this)
    });

    document.getElementById("money1").addEventListener("blur", function () {
        onInputBlur(this)
    });

    document.getElementById("money2").addEventListener("blur", function () {
        onInputBlur(this)
    });

    document.getElementById("describe").addEventListener("blur", function () {
        onInputBlur(this)
    });

    document.getElementById("name").addEventListener("blur", function () {
        onInputBlur(this)
    });

    document.getElementById("phone_num").addEventListener("blur", function () {
        onInputBlur(this)
    });

    document.getElementById("place").addEventListener("blur", function () {
        onInputBlur(this)
    });
};

/**
 * 选中图片时的处理
 * @param {*} fileObj input file元素
 * @param {*} el //选中后用于显示图片的元素ID
 * @param {*} btnel //未选中图片时显示的按钮区域ID
 * 信息检测处理
 * @param {*} info_id //检测区域ID
 */

function onFileChange (fileObj, el, btnel, goodsPhoto) {
    var windowURL = window.URL || window.webkitURL;
    var dataURL;
    var imgObj = document.getElementById(el);

    document.getElementById(btnel).style.display = 'none';
    var close = imgObj.parentNode.parentNode.querySelector('.close');
    
    if (fileObj && fileObj.files && fileObj.files[0]) {
        imgObj.src =  windowURL.createObjectURL(fileObj.files[0]);
        dataURL = './images/goods/' + fileObj.files[0].name;
        imgObj.className = 'active';
        document.getElementById(goodsPhoto).value = dataURL;
        close.className = 'close active';
    }
}

// 取消图片
var close = document.querySelectorAll('.good_imgs .close');

for (var i = 0; i < close.length; i++) {
    close[i].index = i;

    close[i].onclick = function () {
        var img = this.parentNode.querySelector('img');
        var add = this.parentNode.querySelector('i');
        var num = this.index + 1;
        var str = 'goodsPhoto'+ num;
        var goodsPhoto = document.getElementById(str);
    
        img.src = '';
        add.style.display = 'block';
        goodsPhoto.value = '';
        this.className = 'close none';
    }
}

// 检测

function onInputBlur (info) {
    var prompt = info.parentNode.parentNode.querySelector('td:last-child');
    var value = info.value;

    if (info.id != 'money2' && value == '') {
        prompt.className = 'wrong';
        prompt.innerText = '该区域内容不能为空';
    } else if (info.id == 'phone_num' && !/^1[34578]\d{9}$/.test(value)) {
        prompt.className = 'wrong';
        prompt.innerText = '手机号不正确';
    } else if (info.id == 'money1' && !/^[0-9]+.?[0-9]*$/.test(value)) {
        prompt.className = 'wrong';
        prompt.innerText = '价格为0或格式不正确';
    } else if (info.id == 'money2' && value != '' && !/^[0-9]+.?[0-9]*$/.test(value)) {
        prompt.className = 'wrong';
        prompt.innerText = '价格为0或格式不正确';
    } else {
        prompt.className = '';
        prompt.innerText = '';
    }
}

var btn = document.querySelector(".btn");
var legion = document.querySelectorAll('.legion');

btn.onclick = function () {
    var num = 0;

    for (var i = 0; i < legion.length; i++) {
        var wrong = legion[i].parentNode.parentNode.querySelector("td:last-child").className;
        var value = legion[i].value;

        if (wrong == 'wrong' || value == '') {
            num++;
        }
    }

    if (num != 0) {
        alert('保存失败');
        return false;
    }
}