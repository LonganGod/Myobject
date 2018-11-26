var login = document.getElementById('login');
var login_box = document.querySelector('.login_box');

login.onclick = function () {
    login_box.className = 'login_box active';
    return false;
}

login_box.onmouseover = function () {
    this.className = 'login_box active';
}

login_box.onmouseout = function () {
    this.className = 'login_box none';
}