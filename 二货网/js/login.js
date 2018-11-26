var phone = document.getElementById("phone");
var psw = document.getElementById("psw");
var btn = document.querySelector(".other button");
var public = document.querySelectorAll('div.public');

phone.onblur = function () {
    var num = this.value;
    var span = this.parentNode.querySelector("span");

    if (num.length == 0) {
        span.innerText = "手机号不能为空，请重新输入";
        span.className = "wrong";
    } else if (!/^1[34578]\d{9}$/.test(num)) {
        span.innerText = "手机号输入错误，请重新输入";
        span.className = "wrong";
    }
};

psw.onblur = function () {
    var num = this.value;
    var span = this.parentNode.querySelector("span");

    if (num.length == 0) {
        span.innerText = "密码不能为空，请重新输入";
        span.className = "wrong";
    }
};

btn.onclick = function () {
    var num = 0;

    for (var i = 0; i < public.length; i++) {
        var wrong = public[i].querySelector("span").className;

        if (wrong == 'wrong' || wrong == '') {
            num++;
        }
    }

    if (num == 0) {
        alert('登录成功');
    } else {
        alert('登录失败');
    }
}