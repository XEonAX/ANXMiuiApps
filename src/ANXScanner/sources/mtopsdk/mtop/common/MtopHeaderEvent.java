package mtopsdk.mtop.common;

import java.util.List;
import java.util.Map;

public class MtopHeaderEvent extends MtopEvent {
    private int code;
    private Map<String, List<String>> header;

    public MtopHeaderEvent(int i, Map<String, List<String>> map) {
        this.code = i;
        this.header = map;
    }

    public int getCode() {
        return this.code;
    }

    public Map<String, List<String>> getHeader() {
        return this.header;
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder("MtopHeaderEvent [");
        stringBuilder.append("code=").append(this.code);
        stringBuilder.append(", header=").append(this.header);
        stringBuilder.append("]");
        return stringBuilder.toString();
    }
}
