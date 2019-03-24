package miui.hybrid;

import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.miui.internal.R;
import com.miui.internal.hybrid.HybridManager;
import java.util.HashSet;
import java.util.Set;
import miui.app.Fragment;

public class HybridFragment extends Fragment {
    private Set<HybridView> ys = new HashSet();

    public View onInflateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return getContentView();
    }

    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        view = view.findViewById(R.id.hybrid_view);
        if (view != null && (view instanceof HybridView)) {
            String str = null;
            if (bundle != null) {
                str = bundle.getString(HybridActivity.EXTRA_URL);
            }
            if (str == null) {
                Intent intent = getActivity().getIntent();
                if (intent != null) {
                    str = intent.getStringExtra(HybridActivity.EXTRA_URL);
                }
            }
            registerHybridView((HybridView) view, getConfigResId(), str);
        }
    }

    protected View getContentView() {
        return getActivity().getLayoutInflater().inflate(R.layout.hybrid_main, null);
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
            HybridManager hybridManager = new HybridManager(getActivity(), hybridView);
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

    public void onStart() {
        super.onStart();
        for (HybridView co : this.ys) {
            co.co().onStart();
        }
    }

    public void onResume() {
        super.onResume();
        for (HybridView co : this.ys) {
            co.co().onResume();
        }
    }

    public void onPause() {
        super.onPause();
        for (HybridView co : this.ys) {
            co.co().onPause();
        }
    }

    public void onStop() {
        super.onStop();
        for (HybridView co : this.ys) {
            co.co().onStop();
        }
    }

    public void onDestroy() {
        super.onDestroy();
        for (HybridView co : this.ys) {
            co.co().onDestroy();
        }
        cn();
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        for (HybridView co : this.ys) {
            co.co().onActivityResult(i, i2, intent);
        }
    }
}
