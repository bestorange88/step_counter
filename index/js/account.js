document.addEventListener("DOMContentLoaded", function() {
    // 获取账户余额
  //  fetch('/wallet/getBalance')
   //     .then(response => response.json())
   //     .then(data => {
   //         if (data.code === 200) {
    //            document.getElementById('balance').innerText = '￥' + data.data.balance.toFixed(2);
    //        } else {
    //            document.getElementById('balance').innerText = '获取余额失败';
    //        }
    //    })
    //    .catch(error => {
     //       document.getElementById('balance').innerText = '获取余额失败';
     //       console.error('Error fetching balance:', error);
    //    });

    // 获取可提现金额
  //  fetch('/wallet/getWithdrawableBalance')
     //   .then(response => response.json())
    //    .then(data => {
    //        if (data.code === 200) {
    //            document.getElementById('withdrawable-balance').innerText = '￥' + data.data.withdrawable_balance.toFixed(2);
    //        } else {
     //           document.getElementById('withdrawable-balance').innerText = '获取可提现金额失败';
     //       }
     //   })
     //   .catch(error => {
     //       document.getElementById('withdrawable-balance').innerText = '获取可提现金额失败';
     //       console.error('Error fetching withdrawable balance:', error);
     //   });

    // 头像上传逻辑
    const avatarUpload = document.getElementById('avatar-upload');
    const avatarPreview = document.getElementById('avatar-preview');

    if (avatarUpload) {
        avatarUpload.addEventListener('change', function (event) {
            const file = event.target.files[0];
            if (file) {
                const formData = new FormData();
                formData.append('avatar', file);

                fetch('/account/avatar', {
                    method: 'POST',
                    body: formData
                })
                    .then(response => response.json())
                    .then(data => {
                        if (data.code === 200) {
                            const reader = new FileReader();
                            reader.onload = function (e) {
                                avatarPreview.src = e.target.result;
                            };
                            reader.readAsDataURL(file);
                            toastr.success('头像修改成功！');
                        } else {
                            alert(data.message || '头像上传失败，请重试！');
                        }
                    })
                    .catch(error => {
                        alert('上传过程中出错，请稍后再试！');
                        console.error(error);
                    });
            }
        });
    }

    // 二维码弹窗逻辑
    const toggleQRCode = function () {
        const modal = document.getElementById('invite-modal');
        if (!modal) return;

        modal.classList.toggle('hidden');

        const username = document.body.dataset.username; // 替换为动态用户数据
        const link = `${window.location.origin}/qrcode/${username}.png`;

        navigator.clipboard.writeText(link)
            .then(() => console.log('二维码链接已复制到剪贴板:', link))
            .catch(err => console.error('复制二维码链接失败:', err));

        // 鼠标移开时隐藏弹窗
        modal.addEventListener('mouseleave', () => {
            modal.classList.add('hidden');
        });
    };

    const qrCodeButton = document.querySelector('.invite-friend');
    if (qrCodeButton) {
        qrCodeButton.addEventListener('click', toggleQRCode);
    }

    // 签到按钮逻辑
    const signInButtons = document.querySelectorAll('.sign-in-button');
    signInButtons.forEach(button => {
        button.addEventListener('click', function () {
            const day = this.dataset.day;
            fetch('/mark', {
                method: 'POST',
                headers: { 'Content-Type': 'application/json' },
                body: JSON.stringify({ day })
            })
                .then(response => response.json())
                .then(data => {
                    if (data.code === 200) {
                        toastr.success('签到成功！');
                        document.getElementById('continuous-sign-in-message').textContent = `已连续签到${data.continuousDays}天，继续保持！`;
                    } else {
                        alert('签到失败：' + data.message);
                    }
                })
                .catch(error => {
                    console.error('网络错误或后端问题：', error);
                    alert('网络错误或后端问题，请稍后再试。');
                });
        });
    });

    // 退出登录按钮逻辑
    document.getElementById('logout-button').addEventListener('click', function () {
        // 提示确认
        if (confirm('确定要退出登录吗？')) {
            // 发送退出请求
            fetch('/signout.html', {
                method: 'POST', // 使用 POST 请求，避免意外触发
                headers: {
                    'Content-Type': 'application/json',
                },
                body: JSON.stringify({ action: 'logout' }), // 可选参数
            })
            .then(response => {
                if (response.ok) {
                    // 重定向到登录页面或首页
                    window.location.href = '/login.html';
                } else {
                    alert('退出失败，请稍后重试。');
                }
            })
            .catch(error => {
                console.error('Logout Error:', error);
                alert('网络异常，请稍后重试。');
            });
        }
    });
});