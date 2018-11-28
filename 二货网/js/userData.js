window.onload = function () {
    // 上传图片
    document.getElementById("add_img").addEventListener("change", function () {
        onFileChange(this, "head_photo")
    });

    // 检测
    document.getElementById("userName").addEventListener("blur", function () {
        onInputBlur(this)
    });

    document.getElementById("place").addEventListener("blur", function () {
        onInputBlur(this)
    });

};

function onFileChange (fileObj, el) {
    var windowURL = window.URL || window.webkitURL;
    var dataURL;
    var imgObj = document.getElementById(el);
    
    if (fileObj && fileObj.files && fileObj.files[0]) {
        dataURL = windowURL.createObjectURL(fileObj.files[0]);
        imgObj.src = dataURL;
    } else {
        dataURL = fileObj.value;
        imgObj.style.filter = 'progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale)';
        imgObj.filters.item('DXImageTransform.Microsoft.AlphaImageLoader').src = dataURL;
    }
}

function onInputBlur (info) {
    var prompt = info.parentNode.parentNode.querySelector('td:last-child');
    var value = info.value;

    if (info.id != 'money2' && value == '') {
        prompt.className = 'wrong';
        prompt.innerText = '该区域内容不能为空';
    } else {
        prompt.className = '';
        prompt.innerText = '';
    }
}

var btn = document.querySelector(".btn");

btn.onclick = function () {
    var num = 0;

    for (var i = 0; i < 2; i++) {
        var userName = document.getElementById("userName").value;
        var place = document.getElementById("place").value;

        if (userName == '' || place == '') {
            num++;
        }
    }

    if (num == 0) {
        alert('保存成功');
    } else {
        alert('保存失败');
        return false;
    }

}