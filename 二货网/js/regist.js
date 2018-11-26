var phone = document.getElementById("phone");
var userName = document.getElementById("userName");
var psw = document.getElementById("psw");
var psw2 = document.getElementById("psw2");

var poor = document.getElementById("poor");
var normal = document.getElementById("normal");
var strong = document.getElementById("strong");

var checkBox = document.querySelector(".other input");
var btn = document.querySelector(".other button");

var public = document.querySelectorAll('div.public');

// 手机号检测

phone.onblur = function() {
  var num = this.value;
  var span = this.parentNode.querySelector("span");

  if (num.length == 0) {
    span.innerText = "手机号不能为空，请重新输入";
    span.className = "wrong";
  } else if (!/^1[34578]\d{9}$/.test(num)) {
    span.innerText = "手机号输入错误，请重新输入";
    span.className = "wrong";
  } else {
    span.innerText = "手机号可以使用";
    span.className = "right";
  }
};

// 密码检测

psw.onblur = function() {
  var str = this.value;
  var span = this.parentNode.querySelector("span");

  if (str.length == 0) {
    span.innerText = "密码不能为空，请重新输入";
    span.className = "wrong";

    poor.className = "";
    normal.className = "";
    strong.className = "";
  } else if (str.length < 6 || str.length > 16) {
    span.innerText = "密码应在6-16位之间，请重新输入";
    span.className = "wrong";

    poor.className = "";
    normal.className = "";
    strong.className = "";
  } else {
    var reg = /^[0-9]{6,16}$|^[a-zA-Z]{6,16}$/; //全是数字或全是字母 6-16个字符
    var reg1 = /^[A-Za-z0-9]{6,16}$/; //数字、26个英文字母 6-16个字符
    var reg2 = /^\w{6,16}$/; // 由数字、26个英文字母或者下划线组成的字符串 6-16个字符

    span.innerText = "密码输入正确";
    span.className = "right";

    if (str.match(reg)) {
      poor.className = "green";
      normal.className = "";
      strong.className = "";
    } else if (str.match(reg1)) {
      poor.className = "";
      normal.className = "orange";
      strong.className = "";
    } else if (str.match(reg2)) {
      poor.className = "";
      normal.className = "";
      strong.className = "red";
    }
  }
};

// 用户名检测

userName.onblur = function () {
    var str = this.value;
    var span = this.parentNode.querySelector("span");

    if (str.length == 0) {
        span.innerText = "用户名不能为空，请重新输入";
        span.className = "wrong";
    } else {
        span.innerText = "用户名可以使用";
        span.className = "right";
    }
}

// 密码确认检测

psw2.onblur = function () {
    var str = this.value;
    var str2 = psw.value;
    var span = this.parentNode.querySelector("span");

    if (str.length == 0) {
        span.innerText = "密码确认不能为空，请重新输入";
        span.className = "wrong";
    } else if (str != str2) {
        span.innerText = "两次密码不一致";
        span.className = "wrong";
    } else {
        span.innerText = "密码输入正确";
        span.className = "right";
    }
}

// 注册按钮禁用

checkBox.onclick = function () {

    if (this.checked == false) {
        btn.disabled = true;
        btn.style.backgroundColor = '#666';
        btn.style.cursor = 'default';
    } else {
        btn.disabled = false;
        btn.style.backgroundColor = '#ff6700';
        btn.style.cursor = 'pointer';
    }
}

// 按钮点击

btn.onclick = function () {
    var num = 0;

    for (var i = 0; i < public.length; i++) {
        var wrong = public[i].querySelector("span").className;

        if (wrong == 'wrong' || wrong == '') {
            num++;
        }
    }

    if (num == 0) {
        alert('注册成功');
    } else {
        alert('注册失败');
    }
}