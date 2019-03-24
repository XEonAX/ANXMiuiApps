package miui.hybrid;

import android.view.View;

public class Request {
    private View view;
    private String yS;
    private String yT;
    private Callback yU;
    private PageContext yV;
    private NativeInterface yW;

    public String getAction() {
        return this.yS;
    }

    public void setAction(String str) {
        this.yS = str;
    }

    public String getRawParams() {
        return this.yT;
    }

    public void setRawParams(String str) {
        this.yT = str;
    }

    public Callback getCallback() {
        return this.yU;
    }

    public void setCallback(Callback callback) {
        this.yU = callback;
    }

    public PageContext getPageContext() {
        return this.yV;
    }

    public void setPageContext(PageContext pageContext) {
        this.yV = pageContext;
    }

    public NativeInterface getNativeInterface() {
        return this.yW;
    }

    public void setNativeInterface(NativeInterface nativeInterface) {
        this.yW = nativeInterface;
    }

    public View getView() {
        return this.view;
    }

    public void setView(View view) {
        this.view = view;
    }
}
