package com.alibaba.imagesearch.ui;

import android.app.Activity;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.alibaba.imagesearch.Pailitao;

public class PailitaoRouterActivity extends Activity {
    private void a() {
        String stringExtra = getIntent().getStringExtra("itemId");
        if (!TextUtils.isEmpty(stringExtra)) {
            Pailitao.viewAuctionDetails((Activity) this, stringExtra);
        }
    }

    protected void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (getActionBar() != null) {
            getActionBar().hide();
        }
        a();
        finish();
    }
}
