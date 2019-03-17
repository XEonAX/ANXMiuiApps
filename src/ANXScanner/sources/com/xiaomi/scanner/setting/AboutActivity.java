package com.xiaomi.scanner.setting;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.widget.TextView;
import com.xiaomi.scanner.R;
import miui.app.Activity;

public class AboutActivity extends Activity {
    public static void showAbout(Context context) {
        context.startActivity(new Intent(context, AboutActivity.class));
    }

    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_about);
        ((TextView) findViewById(R.id.version)).setText("V 10.6");
    }
}
