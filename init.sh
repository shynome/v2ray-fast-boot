if [ -f "/etc/v2ray/pass.lock" ]; then 
pass=$(cat /etc/v2ray/pass.lock)
echo "V2ray Shadowsocks 已配置完成. 密码是: $pass"
exit
fi

# v2ray官方安装脚本
wget -q -O - https://toutyrater.github.io/install-release.sh | bash 

# 生成强密码
pass=$(wget -q -O - http://shynome.com/lightservices/passgen)

# wget -O v2ray.tpl.json 
tpl=$(wget -q -O - https://raw.githubusercontent.com/shynome/v2ray-fast-boot/master/v2ray.tpl.json)

v2ray_config=${tpl/\_\_pass\_\_/$pass}

# 输出配置到v2ray配置文件
sudo echo $v2ray_config > /etc/v2ray/config.json
sudo echo $pass > /etc/v2ray/pass.lock


# 启动服务
sudo systemctl start v2ray

# 输出生成的密码
echo "V2ray Shadowsocks 初始化完成. 密码是: $pass" 
