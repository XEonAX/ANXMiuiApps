package mtopsdk.mtop.common;

import mtopsdk.mtop.domain.MtopResponse;

public class MtopCacheEvent extends MtopFinishEvent {
    public MtopCacheEvent(MtopResponse mtopResponse) {
        super(mtopResponse);
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder("MtopCacheEvent [");
        stringBuilder.append("mtopResponse=").append(this.mtopResponse).append("]");
        return stringBuilder.toString();
    }
}
