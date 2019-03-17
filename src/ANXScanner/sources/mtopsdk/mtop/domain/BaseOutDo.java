package mtopsdk.mtop.domain;

import java.util.Arrays;

public abstract class BaseOutDo implements IMTOPDataObject {
    private String api;
    private String[] ret;
    private String v;

    public abstract Object getData();

    public String getApi() {
        return this.api;
    }

    public void setApi(String str) {
        this.api = str;
    }

    public String getV() {
        return this.v;
    }

    public void setV(String str) {
        this.v = str;
    }

    public String[] getRet() {
        return this.ret;
    }

    public void setRet(String[] strArr) {
        this.ret = strArr;
    }

    public String toString() {
        return "BaseOutDo [api=" + this.api + ", v=" + this.v + ", ret=" + Arrays.toString(this.ret) + "]";
    }
}
