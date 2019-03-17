package mtopsdk.network;

import java.util.concurrent.ExecutorService;
import mtopsdk.network.Call.Factory;
import mtopsdk.network.domain.Request;

public class DefaultCallFactory implements Factory {
    ExecutorService executorService;

    public DefaultCallFactory(ExecutorService executorService) {
        this.executorService = executorService;
    }

    public Call newCall(Request request) {
        return new DefaultCallImpl(request, this.executorService);
    }
}
