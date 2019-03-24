package miui.hybrid;

public abstract class HybridBackForwardList {
    public HybridHistoryItem getCurrentItem() {
        return null;
    }

    public int getCurrentIndex() {
        return -1;
    }

    public HybridHistoryItem getItemAtIndex(int i) {
        return null;
    }

    public int getSize() {
        return 0;
    }
}
