package com.blueberry.media.utils;

import android.app.Application;

/**
 * Created by muyonggang on 2023/1/1
 */
public class ApplicationHolder {

    private Application app ;

    private static ApplicationHolder sInstance;
    public static ApplicationHolder getInstance() {
        if(sInstance  == null) {
            sInstance =
            new ApplicationHolder();
        }
        return sInstance;
    }

    public void setApp(Application app) {
        this.app = app;
    }

    public Application getApp() {
        return app;
    }
}
