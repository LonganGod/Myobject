$(function () {
    $('.btn').click(function () {
        $.ajax({
            url: '/admin/checklogin',
            type: 'post',
            data: $('#adminLogin').serialize(),
            dataType: 'json',
            success: function (msg) {
                if (msg.code == 201) {
                    alert(msg.message);
                    return  $('#adminLogin')[0].reset();
                }
                location.href = '/admin/index';
            }
        });
    });
});