package com.blueberry.sample;

import android.Manifest;
import android.app.Application;
import android.content.Intent;
import android.os.Bundle;
import android.os.PersistableBundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.app.ActivityCompat;
import android.support.v4.content.PermissionChecker;
import android.support.v7.app.AppCompatActivity;
import android.view.View;

/**
 * Created by blueberry on 2018/1/19.
 */

public class StartActivity extends AppCompatActivity {

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.act_start);
        findViewById(R.id.btn_star).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {

                int cameraPer = ActivityCompat.checkSelfPermission(StartActivity.this, Manifest.permission.CAMERA);
                int audioPer =ActivityCompat.checkSelfPermission(StartActivity.this,Manifest.permission.RECORD_AUDIO);
                if (cameraPer == PermissionChecker.PERMISSION_GRANTED
                        && audioPer == PermissionChecker.PERMISSION_GRANTED
                        ) {
                    startActivity(new Intent(StartActivity.this, MainActivity.class));
                } else {
                    ActivityCompat.requestPermissions(StartActivity.this, new String[]{Manifest.permission.CAMERA
                            ,Manifest.permission.RECORD_AUDIO}, 100);
                }
            }
        });
    }

    @Override
    public void onRequestPermissionsResult(int requestCode, @NonNull String[] permissions, @NonNull int[] grantResults) {
        super.onRequestPermissionsResult(requestCode, permissions, grantResults);

        if (requestCode == 100
                && permissions.length == 2
                && permissions[0].equals(Manifest.permission.CAMERA)
                && permissions[1].equals(Manifest.permission.RECORD_AUDIO)
                && grantResults[0] == PermissionChecker.PERMISSION_GRANTED
                && grantResults[1] ==PermissionChecker.PERMISSION_GRANTED
                ) {
            startActivity(new Intent(StartActivity.this, MainActivity.class));
        }
    }
}
