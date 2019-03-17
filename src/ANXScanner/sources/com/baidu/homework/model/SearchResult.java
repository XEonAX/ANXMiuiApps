package com.baidu.homework.model;

public class SearchResult extends NetworkResult {
    public String[] htmls;
    public String pid;
    public String sid;

    public SearchResult(int i) {
        super(i);
    }

    public SearchResult(int i, String[] strArr, String str, String str2) {
        this(i);
        this.htmls = strArr;
        this.sid = str;
        this.pid = str2;
    }
}
