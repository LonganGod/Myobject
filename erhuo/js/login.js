var btn = document.querySelector(".other button");
var public = document.querySelectorAll('div.public');

console.log('Administratorlogin.html');

btn.onclick = function () {
    var num = 0;

    for (var i = 0; i < public.length; i++) {
        var wrong = public[i].querySelector("input").value.length;

        if (wrong == 0) {
            num++;
        }
    }

    if (num != 0) {
        alert('登录失败');
        return false;
    }
}

