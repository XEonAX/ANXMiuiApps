package mtopsdk.mtop.a;

/* compiled from: ApiLockHelper */
final class b {
    public long a;
    public long b;
    private String c;

    public b(String str, long j, long j2) {
        this.c = str;
        this.a = j;
        this.b = j2;
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("LockedEntity [");
        stringBuilder.append("key=").append(this.c);
        stringBuilder.append(", lockStartTime=").append(this.a);
        stringBuilder.append(", lockInterval=").append(this.b);
        stringBuilder.append("]");
        return stringBuilder.toString();
    }
}
