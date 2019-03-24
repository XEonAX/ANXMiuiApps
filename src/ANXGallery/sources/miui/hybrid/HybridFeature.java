package miui.hybrid;

import java.util.Map;

public interface HybridFeature {

    public enum Mode {
        SYNC,
        ASYNC,
        CALLBACK
    }

    Mode getInvocationMode(Request request);

    Response invoke(Request request);

    void setParams(Map<String, String> map);
}
