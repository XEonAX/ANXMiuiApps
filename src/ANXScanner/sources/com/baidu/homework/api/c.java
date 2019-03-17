package com.baidu.homework.api;

import android.content.Context;
import android.os.AsyncTask;
import com.baidu.homework.model.SearchResult;
import com.baidu.homework.network.NetworkCallback;
import com.baidu.homework.network.Request;
import com.baidu.homework.network.e;
import java.io.IOException;

final class c extends AsyncTask<Void, Void, SearchResult> {
    private /* synthetic */ Context a;
    private /* synthetic */ Request b;
    private /* synthetic */ String c;
    private /* synthetic */ NetworkCallback d;

    c(Context context, Request request, String str, NetworkCallback networkCallback) {
        this.a = context;
        this.b = request;
        this.c = str;
        this.d = networkCallback;
    }

    private SearchResult a() {
        try {
            SearchResult access$000 = ZybAPI.parseSearchResult(e.a(this.a, this.b));
            access$000.sid = this.c;
            return access$000;
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
            this.d.onResponse(searchResult);
        }
    }
}
