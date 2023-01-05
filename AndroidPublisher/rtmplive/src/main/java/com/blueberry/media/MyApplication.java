package com.blueberry.media;

import android.app.Application;

import com.blueberry.media.utils.ApplicationHolder;

/**
 * Created by muyonggang on 2023/1/1
 *
 * @author muyonggang@bytedance.com
 */
public class MyApplication extends Application {

    @Override
    public void onCreate() {
        super.onCreate();
        ApplicationHolder.getInstance().setApp(this);
    }
}
