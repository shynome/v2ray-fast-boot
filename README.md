# 介绍 V2ray 不同平台的不同翻墙姿势

---------------------

## Windows & Android & Mac

推荐用 [Shadowsocks](https://github.com/shadowsocks/) 进行翻墙, 
因为大部分的翻墙工具都会支持 Shadowsocks 协议的, 所以以后换了其他软件
也可以继续使用的

ps: 下载时注意往下滚动选择带绿色边框的`Latest release`的稳定版本, 避免出现不必要的问题

- Windows
  - __下载地址__ <https://github.com/shadowsocks/shadowsocks-windows/releases>
  - __安装教程__ <https://github.com/shadowsocks/shadowsocks-windows/wiki/Shadowsocks-Windows-%E4%BD%BF%E7%94%A8%E8%AF%B4%E6%98%8E>
- Android
  - __下载地址__ <https://github.com/shadowsocks/shadowsocks-android/releases>
  - __安装教程__ 参考 `Windows` 版本的吧, 毕竟只是配置一下服务器就好了
- Mac
  - __下载地址__ <https://github.com/shadowsocks/ShadowsocksX-NG/releases>
  - __安装教程__ 同上,  参考 `Windows` 版本的配置教程

---------------------

## Google Chrome (谷歌浏览器)

- 谷歌浏览器官方下载地址 - <https://www.google.cn/chrome/browser/desktop/index.html?standalone=1>
- 谷歌浏览器百度下载地址 - <http://rj.baidu.com/soft/detail/14744.html?ald>

使用 [ `SwitchyOmega` 软件](https://github.com/FelisCatus/SwitchyOmega)
和网友提供的翻墙规则 `https://raw.githubusercontent.com/gfwlist/gfwlist/master/gfwlist.txt` 
可以轻松访问 [谷歌](https://www.google.com) , [youtube](https://www.youtube.com/) 网站

点击这里查看百度提供的`SwitchyOmega`安装教程 <https://jingyan.baidu.com/article/11c17a2c121c0ff446e39d16.html>

-----------------------

## ios 

有三个V2ray官方推荐的客户端, 从其中选择一个支持`Shadowsocks`的吧

| 名字         | 支持协议                                    | 下载地址
| ------------ | ------------------------------------------- | -------
| Kitsunebi    | VMess & Shadowsocks                         | [ITunes](https://www.v2ray.com/itunes/us/kitsunebi/id1275446921/)
| Shadowrocket | 支持众多协议如: Shadowsocks & VMess & SSR | [iTunes](https://www.v2ray.com/itunes/us/shadowrocket/id932747118/)
| ShadowRay    | 只支持 VMess , 不建议选择                   | [iTunes](https://www.v2ray.com/itunes/us/shadowray/id1283082051/)

如果需要更详细的信息, 这里有个v2ray官方ios客户端介绍链接 <https://www.v2ray.com/ui_client/ios.html>

-----------------------

## V2ray自建服务器

自建服务是件很麻烦的事, 需要自己去对比那个服务器在自己的网络情况下是可以流畅使用的,
一个人使用的话往往要比购买现有的要贵, 而且速度不一定理想, 所以几个人合租一个vps是
比较合适的选择. 

首先你得有个能访问谷歌的服务器, 国内的服务器是不行的, 得香港美国之类的
服务器才行, 推荐 aws 的服务器, 首年免费 , [链接点这](https://aws.amazon.com/cn/free/).
aws 服务器安全组端口默认只开放 22 端口进行 ssh 连接, 需要自己打开要使用的端口

这里提供一个v2ray配置的脚本, 在v2ray官方的基础增加了几步操作, 下面是操作示意
- 官方安装脚本
- 执行密码配置脚本
- 启动v2ray服务
- 退出

使用方式

```bash
wget -q -O - https://raw.githubusercontent.com/shynome/v2ray-fast-boot/master/init.sh | bash
```

`ss` 默认协议端口是 `3003` , 也可以自己更换

