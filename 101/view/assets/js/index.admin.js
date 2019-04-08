$(function () {
    loadData('/admin/getusers', 'userList', $('#members'));
    scrollWin('/admin/getusers', 'userList', $('#members'));

    $('#members').on('click', '.del', function () {
        var delId = $(this).attr('delID');
        var that = $(this);

        delItem('您确定要删除该用户吗？', '/admin/deluser', delId, function () {
            that.parents('.item').remove();
            layer.msg('删除成功', {icon: 1, title: '', time: 1000});
        });
    });
});