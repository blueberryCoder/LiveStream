#   流媒体

##  AndroidPublisher —— Android推送端

####    功能：
将摄像头和麦克风采集的数据进行h264、AAC编码然后通过rtmp发送到流媒体服务器

#####   使用：
1. 安装一个Adobe Media Server(或者 red服务器) 和一个Wifi共享大师(或者其他的软件都行，目的是为了让手机访问到本机的服务器)，然后用手机连接wifi大师。

2. 运行项目，将视频推送到本地服务器上（配置项目中的url 为自己电脑上的ip地址以及端口，Adobe Media Server和 red5 在安装时端口默认都是1935）。

3. 如果安装的Adobe Media Server 观看则打开Adobe Media Server 安装目录下的一个sample输入我们推送的地址，就可以观看了 。
   
     例如：
     我的Adobe Media Server 安装在D盘 Program File文件夹下。那我打开D:\Program Files\Adobe\Adobe Media Server 5\samples\videoPlayer\videoplayer.html
    
4. 如果使用red5服务器，他里面有一个oflaDemo项目，将里面的rtmp地址修改成自己的地址也可以播放。例如修改oflaDemo中的index.html播放器部分
```java

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
这个对应于我们的播放地址为：`rtmp://192.168.155.1:1935/live/test`,修改完之后打开该网页点击播放按钮就可以播放了。

5. 也可是使用其他的服务器比如nginx。

##  AndroidPlayer —— Android播放端
#### 功能
播放流媒体
#### 实现
使用的开源的流媒体框架ijplayer进行播放。

ijplayer地址：https://github.com/Bilibili/ijkplayer

####  上图
![Player](https://github.com/blueberryCoder/LiveStream/blob/master/screenshot/player.png)


#### API使用说明

创建 MediaPublisher,其中需要参数Config,用来配置一些基本信息，比如rtmp的地址。
```java
mMediaPublisher = MediaPublisher
                .newInstance(new Config.Builder()
                        .setFps(30) // fps
                        .setMaxWidth(720) //视频的最大宽度
                        .setMinWidth(320) //视频的最小宽度
                        .setUrl("rtmp://192.168.155.1:1935/live/test")//推送的url
                        .build());
```
调用mMediaPublisher.init()方法进行初始化
```java
mMediaPublisher.init();
```
初始化采集视频器、采集音频器
```java
mMediaPublisher.initVideoGatherer(this, mSurfaceHolder);
mMediaPublisher.initAudioGatherer();
```
初始化编码器（该方法包含初始化音频编码器和视频编码器）
```java
//初始化编码器
mMediaPublisher.initEncoders();
```
开始采集
```java
//开始采集
mMediaPublisher.startGather();
```
开始编码
```java
mMediaPublisher.startEncoder();
```
开始推送
```java
mMediaPublisher.starPublish();
```

#### 更新

##### 4/28/2017 
AndroidPublish推动端已经打包并上传jcenter
大家可以在项目中使用如下方式引用：

使用AndroidStudio:

`compile 'com.blueberry:rtmplive:0.1.0'`

使用eclipse的话，可在rtmplive-sdk目录中找到sdk
