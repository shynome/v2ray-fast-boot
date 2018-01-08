# v2ray官方安装脚本
wget -q -O https://toutyrater.github.io/install-release.sh | bash 

# 生成强密码
pass=$(wget -q -O - http://shynome.com/lightservices/passgen)

# wget -O v2ray.tpl.json 
tpl=$(wget -q -O - http://shynome.com/lightservices/passgen)
v2ray_config=${tpl/__pass__/$pass}

echo $v2ray_config > config.json