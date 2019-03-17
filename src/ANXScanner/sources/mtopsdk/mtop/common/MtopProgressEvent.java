package mtopsdk.mtop.common;

public class MtopProgressEvent extends MtopEvent {
    String desc;
    int size;
    int total;

    public MtopProgressEvent(String str, int i, int i2) {
        this.desc = str;
        this.size = i;
        this.total = i2;
    }

    public String getDesc() {
        return this.desc;
    }

    public int getSize() {
        return this.size;
    }

    public int getTotal() {
        return this.total;
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder("MtopProgressEvent [");
        stringBuilder.append("desc=").append(this.desc);
        stringBuilder.append(", size=").append(this.size);
        stringBuilder.append(", total=").append(this.total);
        stringBuilder.append("]");
        return stringBuilder.toString();
    }
}
