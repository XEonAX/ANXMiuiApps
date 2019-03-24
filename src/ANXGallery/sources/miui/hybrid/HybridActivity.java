package miui.hybrid;

import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import com.miui.internal.R;
import com.miui.internal.hybrid.HybridManager;
import java.util.HashSet;
import java.util.Set;
import miui.app.Activity;

public class HybridActivity extends Activity {
    public static final String EXTRA_URL = "com.miui.sdk.hybrid.extra.URL";
    private Set<HybridView> ys = new HashSet();

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(getContentView());
        View findViewById = findViewById(R.id.hybrid_view);
        if (findViewById != null && (findViewById instanceof HybridView)) {
            String str = null;
            if (bundle != null) {
                str = bundle.getString(EXTRA_URL);
            }
            if (str == null) {
                Intent intent = getIntent();
                if (intent != null) {
                    str = intent.getStringExtra(EXTRA_URL);
                }
            }
            registerHybridView((HybridView) findViewById, getConfigResId(), str);
        }
    }

    protected View getContentView() {
        return getLayoutInflater().inflate(R.layout.hybrid_main, null);
    }

    protected int getConfigResId() {
        return 0;
    }

    protected final void registerHybridView(View view) {
        registerHybridView(view, getConfigResId());
    }

    protected final void registerHybridView(View view, int i) {
        registerHybridView(view, i, null);
    }

    protected final void registerHybridView(View view, int i, String str) {
        if (view instanceof HybridView) {
            HybridView hybridView = (HybridView) view;
            HybridManager hybridManager = new HybridManager(this, hybridView);
            hybridView.setHybridManager(hybridManager);
            this.ys.add(hybridView);
            hybridManager.init(i, str);
            return;
        }
        throw new IllegalArgumentException("view being registered is not a hybrid view");
    }

    protected final void unregisterHybridView(View view) {
        if (view instanceof HybridView) {
            this.ys.remove(view);
            return;
        }
        throw new IllegalArgumentException("view being unregistered is not a hybrid view");
    }

    private void cn() {
        for (HybridView hybridView : this.ys) {
            if (hybridView != null) {
                if (hybridView.getParent() != null) {
                    ((ViewGroup) hybridView.getParent()).removeView(hybridView);
                }
                hybridView.destroy();
            }
        }
        this.ys.clear();
    }

    protected void onStart() {
        super.onStart();
        for (HybridView co : this.ys) {
            co.co().onStart();
        }
    }

    protected void onResume() {
        super.onResume();
        for (HybridView co : this.ys) {
            co.co().onResume();
        }
    }

    protected void onPause() {
        super.onPause();
        for (HybridView co : this.ys) {
            co.co().onPause();
        }
    }

    protected void onStop() {
        super.onStop();
        for (HybridView co : this.ys) {
            co.co().onStop();
        }
    }

    protected void onDestroy() {
        super.onDestroy();
        for (HybridView co : this.ys) {
            co.co().onDestroy();
        }
        cn();
    }

    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        for (HybridView co : this.ys) {
            co.co().onActivityResult(i, i2, intent);
        }
    }

    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4) {
            for (HybridView hybridView : this.ys) {
                if (hybridView.canGoBack() && !hybridView.co().isDetached()) {
                    hybridView.goBack();
                    return true;
                }
            }
        }
        return super.onKeyDown(i, keyEvent);
    }
}
