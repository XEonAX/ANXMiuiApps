package mtopsdk.network;

import mtopsdk.network.domain.Response;

public interface NetworkCallback {
    void onCancel(Call call);

    void onFailure(Call call, Exception exception);

    void onResponse(Call call, Response response);
}
