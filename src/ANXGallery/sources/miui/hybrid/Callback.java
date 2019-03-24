package miui.hybrid;

import com.miui.internal.hybrid.HybridManager;

public class Callback {
    private PageContext fd;
    private String fk;
    private HybridManager fy;

    public Callback(HybridManager hybridManager, PageContext pageContext, String str) {
        this.fy = hybridManager;
        this.fd = pageContext;
        this.fk = str;
    }

    public void callback(Response response) {
        this.fy.callback(response, this.fd, this.fk);
    }
}
