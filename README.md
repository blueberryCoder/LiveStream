#   流媒体

##  AndroidPublisher —— Android推送端

####    功能：将摄像头采集的数据进行h264编码，并通过rtmp发送到流媒体服务器

#####   使用：
1. 安装一个Adobe Media Server 和一个Wifi共享大师，然后用手机连接wifi大师。

2. 运行项目，将视频推送到本地服务器上（配置项目中的url 为自己电脑上的ip地址以及端口，Adobe Media Server 在安装时端口默认是1935）。

3. 观看则打开Adobe Media Server 安装目录下的一个sample输入我们推送的地址，就可以观看了 。
   
     例如：
     我的Adobe Media Server 安装在D盘 Program File文件夹下。那我打开D:\Program Files\Adobe\Adobe Media Server 5\samples\videoPlayer\videoplayer.html
    
4. 或者使用red5服务器，他里面有一个oflaDemo项目，将里面的rtmp地址修改成自己的地址也可以播放。例如修改oflaDemo中的index.html播放器部分
```
    <script type='text/javascript'>
        jwplayer('mediaspace').setup({
        'flashplayer': 'player.swf',
        'file': 'test',
        'streamer': 'rtmp://192.168.155.1:1935/live',
         'controlbar': 'bottom',
        'width': '720',
        'height': '480'
    });
</script>
```
这个对应于我们的播放地址为：`rtmp://192.168.155.1:1935/live/test`
####    上图
![Image text](https://github.com/blueberryCoder/LiveStream/blob/master/AndroidPublisher/doc/screenshot/publisher.jpg)
