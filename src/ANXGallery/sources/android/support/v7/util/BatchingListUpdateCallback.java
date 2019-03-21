package android.support.v7.util;

public class BatchingListUpdateCallback implements ListUpdateCallback {
    int mLastEventCount = -1;
    Object mLastEventPayload = null;
    int mLastEventPosition = -1;
    int mLastEventType = 0;
    final ListUpdateCallback mWrapped;

    public BatchingListUpdateCallback(ListUpdateCallback callback) {
        this.mWrapped = callback;
    }

    public void dispatchLastEvent() {
        if (this.mLastEventType != 0) {
            switch (this.mLastEventType) {
                case 1:
                    this.mWrapped.onInserted(this.mLastEventPosition, this.mLastEventCount);
                    break;
                case 2:
                    this.mWrapped.onRemoved(this.mLastEventPosition, this.mLastEventCount);
                    break;
                case 3:
                    this.mWrapped.onChanged(this.mLastEventPosition, this.mLastEventCount, this.mLastEventPayload);
                    break;
            }
            this.mLastEventPayload = null;
            this.mLastEventType = 0;
        }
    }

    public void onInserted(int position, int count) {
        if (this.mLastEventType != 1 || position < this.mLastEventPosition || position > this.mLastEventPosition + this.mLastEventCount) {
            dispatchLastEvent();
            this.mLastEventPosition = position;
            this.mLastEventCount = count;
            this.mLastEventType = 1;
            return;
        }
        this.mLastEventCount += count;
        this.mLastEventPosition = Math.min(position, this.mLastEventPosition);
    }

    public void onRemoved(int position, int count) {
        if (this.mLastEventType != 2 || this.mLastEventPosition < position || this.mLastEventPosition > position + count) {
            dispatchLastEvent();
            this.mLastEventPosition = position;
            this.mLastEventCount = count;
            this.mLastEventType = 2;
            return;
        }
        this.mLastEventCount += count;
        this.mLastEventPosition = position;
    }

    public void onMoved(int fromPosition, int toPosition) {
        dispatchLastEvent();
        this.mWrapped.onMoved(fromPosition, toPosition);
    }

    public void onChanged(int position, int count, Object payload) {
        if (this.mLastEventType != 3 || position > this.mLastEventPosition + this.mLastEventCount || position + count < this.mLastEventPosition || this.mLastEventPayload != payload) {
            dispatchLastEvent();
            this.mLastEventPosition = position;
            this.mLastEventCount = count;
            this.mLastEventPayload = payload;
            this.mLastEventType = 3;
            return;
        }
        int previousEnd = this.mLastEventPosition + this.mLastEventCount;
        this.mLastEventPosition = Math.min(position, this.mLastEventPosition);
        this.mLastEventCount = Math.max(previousEnd, position + count) - this.mLastEventPosition;
    }
}
