package mtopsdk.mtop.common;

import mtopsdk.mtop.domain.MtopResponse;

public class MtopFinishEvent extends MtopEvent {
    public MtopResponse mtopResponse;

    public MtopFinishEvent(MtopResponse mtopResponse) {
        this.mtopResponse = mtopResponse;
    }

    public MtopResponse getMtopResponse() {
        return this.mtopResponse;
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder("MtopFinishEvent [");
        stringBuilder.append("mtopResponse").append(this.mtopResponse).append("]");
        return stringBuilder.toString();
    }
}
