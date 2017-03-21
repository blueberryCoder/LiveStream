package com.blueberry.player;

import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v7.app.AppCompatActivity;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

import com.blueberry.player.activities.VideoActivity;

/**
 * Created by blueberry on 3/21/2017.
 */

public class MainActivity extends AppCompatActivity {

    private static final String TAG = "MainActivity";

    private EditText etUrl;
    private Button btnStart;


    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        etUrl = (EditText) findViewById(R.id.et_url);
        btnStart = (Button) findViewById(R.id.btn_start);

        btnStart.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                String url = etUrl.getText().toString().trim();
                if(TextUtils.isEmpty(url)){
                    Toast.makeText(getApplicationContext(),"请输入url",Toast.LENGTH_SHORT).show();
                    return;
                }
                Log.i(TAG, "onClick: url:"+url);
                VideoActivity.intentTo(MainActivity.this,url,"RTMP");
            }
        });
    }
}
