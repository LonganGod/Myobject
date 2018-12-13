window.onload = function () {
    // var imgObj = document.getElementById(head_photo);
    // var hiddenInput = document.getElementById('hiddenInput');
    // hiddenInput.value = imgObj.src;
    // 上传图片
    document.getElementById('add_img').addEventListener('change', function () {
        onFileChange(this, "head_photo")
    });

    // 检测
    document.getElementById('userName').addEventListener('blur', function () {
        onInputBlur(this)
    });

    document.getElementById('place').addEventListener('blur', function () {
        onInputBlur(this)
    });

};

function onFileChange (fileObj, el) {
    var windowURL = window.URL || window.webkitURL;
    var dataURL;
    var imgObj = document.getElementById(el);
    var hiddenInput = document.getElementById('hiddenInput');
   
    if (fileObj && fileObj.files && fileObj.files[0]) {
        imgObj.src = windowURL.createObjectURL(fileObj.files[0]);
        dataURL = './images/userphoto/' + fileObj.files[0].name;
        hiddenInput.value = dataURL;
        console.log(hiddenInput);
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

    if (num != 0) {
        alert('保存失败');
        return false;
    }

}