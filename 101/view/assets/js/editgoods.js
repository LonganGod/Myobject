$(function () {
    // 上传数据
    layui.use('form', function () {
        var form = layui.form;
        form.render();
    });

    // 上传图片
    $('.layui-upload input[type="file"]').change(function () {
        var fileObj = this.files[0];
        var fd = new FormData();
        fd.append('avatar', fileObj);
        var thisObj = $(this);

        $.ajax({
            url: '/goodsUploads',
            type: 'post',
            data: fd,
            dataType: 'json',
            contentType: false,
            processData: false,
            success: function (msg) {
                var index = thisObj.parent().index();
                var url = URL.createObjectURL(fileObj);
                $('.imgs img').eq(index - 1).attr('src', url);
                $('.imgs').show();
                thisObj.next().val(msg.filename);
            }
        });
    })

    // 发布商品
    $('#editForm').validate({
        rules: {
            gname: {
                required: true,
                rangelength: [2, 8]
            },
            gdes: {
                required: true,
                rangelength: [10, 200]
            },
            gprice: {
                required: true,
                number: true
            },
            goriginal: {
                required: true,
                number: true
            }
        },
        messages: {
            gname: {
                required: '标题不能为空',
                rangelength: '标题长度为2-8位'
            },
            gdes: {
                required: '描述不能为空',
                rangelength: '描述信息为10-200字'
            },
            gprice: {
                required: '价格不能为空',
                number: '价钱必须是纯数字'
            },
            goriginal: {
                required: '原价不能为空',
                number: '原价必须是纯数字'
            }
        },
        submitHandler: function () {
            $.ajax({
                url: '/editGoodsData',
                type: 'post',
                data: $('#editForm').serialize(),
                dataType: 'json',
                success: function (msg) {
                    if (msg.code == 200) {
                        layer.msg('修改商品成功', {icon: 1, title: '', time: 1000});
                        location.href = '/info?type=goods';
                    }
                }
            });
        }
    });
});