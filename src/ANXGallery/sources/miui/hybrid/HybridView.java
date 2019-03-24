package miui.hybrid;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.net.Uri;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.miui.internal.R;
import com.miui.internal.hybrid.HybridManager;
import com.miui.internal.hybrid.HybridProgressView;
import com.miui.internal.hybrid.WebContainerView;
import com.miui.internal.hybrid.provider.AbsWebView;
import com.miui.internal.hybrid.provider.WebViewFactory;
import com.miui.internal.hybrid.provider.WebViewFactoryProvider;
import miui.widget.ProgressBar;

public class HybridView extends FrameLayout {
    private static final int yK = 0;
    private static final int yL = 1;
    private static final int yM = 2;
    private boolean fL;
    private HybridManager fy;
    private AbsWebView pB;
    private HybridProgressView yA;
    private ViewGroup yB;
    private Button yC;
    private TextView yD;
    private WebContainerView yE = ((WebContainerView) findViewById(R.id.webContainer));
    private WebViewFactoryProvider yF;
    private HybridSettings yG;
    private int yH;
    private boolean yI;
    private boolean yJ;
    private ProgressBar yz;

    public HybridView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, miui.R.styleable.HybridViewStyle, 0, 0);
        this.yH = obtainStyledAttributes.getInt(miui.R.styleable.HybridViewStyle_hybridProgressBar, 0);
        this.yI = obtainStyledAttributes.getBoolean(miui.R.styleable.HybridViewStyle_hybridErrorPage, true);
        this.fL = obtainStyledAttributes.getBoolean(miui.R.styleable.HybridViewStyle_hybridPullable, true);
        obtainStyledAttributes.recycle();
        ((LayoutInflater) getContext().getSystemService("layout_inflater")).inflate(R.layout.hybrid_view_layout, this, true);
        this.yF = WebViewFactory.getProvider(context);
        this.pB = this.yF.createWebView(context, this);
        this.yE.setWebView(this.pB.getBaseWebView());
        if (this.yH == 1) {
            this.yz = (ProgressBar) findViewById(R.id.progress_circular);
        } else if (this.yH == 2) {
            this.yA = (HybridProgressView) findViewById(R.id.progress_horizontal);
        }
        this.yD = (TextView) findViewById(R.id.hybrid_provider);
        if (this.fL) {
            this.yD.setVisibility(0);
        }
    }

    HybridManager co() {
        return this.fy;
    }

    void setHybridManager(HybridManager hybridManager) {
        this.fy = hybridManager;
    }

    AbsWebView cp() {
        return this.pB;
    }

    public void setHybridViewClient(HybridViewClient hybridViewClient) {
        hybridViewClient.setHybridManager(this.fy);
        this.pB.setWebViewClient(this.yF.createWebViewClient(hybridViewClient, this));
    }

    public void setHybridChromeClient(HybridChromeClient hybridChromeClient) {
        hybridChromeClient.setHybridManager(this.fy);
        this.pB.setWebChromeClient(this.yF.createWebChromeClient(hybridChromeClient, this));
    }

    public void loadUrl(String str) {
        this.pB.loadUrl(str);
    }

    public void addJavascriptInterface(Object obj, String str) {
        this.pB.addJavascriptInterface(obj, str);
    }

    public HybridSettings getSettings() {
        if (this.yG == null) {
            this.yG = this.pB.getSettings();
        }
        return this.yG;
    }

    public void destroy() {
        this.fy.clear();
        this.pB.destroy();
    }

    public void reload() {
        this.pB.reload();
    }

    public void clearCache(boolean z) {
        this.pB.clearCache(z);
    }

    public boolean canGoBack() {
        return this.pB.canGoBack();
    }

    public void goBack() {
        this.pB.goBack();
    }

    public String getUrl() {
        return this.pB.getUrl();
    }

    public String getTitle() {
        return this.pB.getTitle();
    }

    public void drawWebView(Canvas canvas) {
        this.pB.draw(canvas);
    }

    void setProgress(int i) {
        if (i > 80 && !this.yJ) {
            cr();
        }
        if (i == 100) {
            this.yE.setBackground(null);
        }
        if (this.yz != null || this.yA != null) {
            if (this.yH == 1) {
                if (this.yz != null) {
                    if (this.yz.getVisibility() == 8) {
                        this.yz.setVisibility(0);
                    }
                    this.yz.setProgress(i);
                    if (i == this.yz.getMax()) {
                        this.yz.setVisibility(8);
                    }
                }
            } else if (this.yH == 2 && this.yA != null) {
                if (this.yA.getVisibility() == 8) {
                    this.yA.setVisibility(0);
                }
                this.yA.setProgress(i);
                if (i == this.yA.getMax()) {
                    this.yA.setVisibility(8);
                }
            }
        }
    }

    void t(boolean z) {
        this.yJ = z;
    }

    void cq() {
        if (this.yI) {
            if (this.yB == null) {
                this.yB = (ViewGroup) ((ViewStub) findViewById(R.id.webview_reload_stub)).inflate();
                this.yC = (Button) this.yB.findViewById(R.id.reload);
                this.yC.setOnClickListener(new OnClickListener() {
                    public void onClick(View view) {
                        HybridView.this.reload();
                        HybridView.this.M(8);
                    }
                });
            }
            this.yB.setVisibility(0);
            M(0);
            this.pB.setVisibility(8);
        }
    }

    void cr() {
        if (this.yI) {
            if (this.yB != null) {
                this.yB.setVisibility(8);
            }
            this.pB.setVisibility(0);
        }
    }

    private void M(int i) {
        int childCount = this.yB.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            this.yB.getChildAt(i2).setVisibility(i);
        }
    }

    void z(String str) {
        if (TextUtils.isEmpty(Uri.parse(str).getHost())) {
            this.yD.setText("");
            return;
        }
        this.yD.setText(String.format(getContext().getString(R.string.hybrid_provider), new Object[]{r5}));
    }

    public int getContentHeight() {
        return this.pB.getContentHeight();
    }

    public float getScale() {
        return this.pB.getScale();
    }

    public HybridBackForwardList copyBackForwardList() {
        return this.pB.copyBackForwardList();
    }
}
