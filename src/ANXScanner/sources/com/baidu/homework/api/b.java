package com.baidu.homework.api;

import android.content.Context;
import android.os.AsyncTask;
import com.baidu.homework.model.SearchResult;
import com.baidu.homework.network.NetworkCallback;
import com.baidu.homework.network.Request;
import com.baidu.homework.network.e;
import java.io.IOException;

final class b extends AsyncTask<Void, Void, SearchResult> {
    private /* synthetic */ Context a;
    private /* synthetic */ Request b;
    private /* synthetic */ NetworkCallback c;

    b(Context context, Request request, NetworkCallback networkCallback) {
        this.a = context;
        this.b = request;
        this.c = networkCallback;
    }

    private SearchResult a() {
        try {
            return ZybAPI.parseSearchResult(e.a(this.a, this.b));
        } catch (IOException e) {
            return new SearchResult(1);
        }
    }

    protected final /* synthetic */ Object doInBackground(Object[] objArr) {
        return a();
    }

    protected final /* synthetic */ void onPostExecute(Object obj) {
        SearchResult searchResult = (SearchResult) obj;
        if (!this.b.isCanceled()) {
            this.c.onResponse(searchResult);
        }
    }
}
