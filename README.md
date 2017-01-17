#流媒体

##AndroidPublisher  Android推送端
    功能：将摄像头采集的数据进行h264编码，并通过rtmp发送到流媒体服务器

    使用：
    1、安装一个Adobe Media Server 和一个Wifi共享大师，然后用手机连接wifi大师。
    2、运行项目，将视频推送到本地服务器上（配置项目中的url 为自己机器上的ip地址以及端口，端口默认安装设置的是1935）。
    3、观看的打开Adobe Media Server 目录下的一个samle运行输入我们推送的地址，就可以观看了 。
    例如：我的Adobe Media Server 安装在D盘 Program File文件夹下。那我就打开D:\Program Files\Adobe\Adobe Media Server 5\samples\videoPlayer\videoplayer.html

    截图:
    ![Image text](https://github.com/blueberryCoder/LiveStream/blob/master/AndroidPublisher/doc/screenshot/publisher.jpg)
