package com.miui.gallery.search.core;

import com.miui.gallery.search.SearchConstants.SearchType;
import com.miui.gallery.search.statistics.SearchStatUtils;
import java.util.HashMap;
import java.util.Map;

public class QueryInfo {
    private Map<String, String> mParams = new HashMap();
    private SearchType mSearchType;

    public static class Builder {
        private boolean mAppendSerialInfo = false;
        private Map<String, String> mParams;
        private SearchType mSearchType;

        public Builder(SearchType searchType) {
            if (searchType == null) {
                throw new IllegalArgumentException("Empty search type!");
            }
            this.mSearchType = searchType;
        }

        public Builder setSearchType(SearchType searchType) {
            this.mSearchType = searchType;
            return this;
        }

        public Builder addParams(Map<String, String> params) {
            if (this.mParams == null) {
                this.mParams = new HashMap();
            }
            this.mParams.putAll(params);
            return this;
        }

        public Builder addParam(String key, String value) {
            if (this.mParams == null) {
                this.mParams = new HashMap();
            }
            this.mParams.put(key, value);
            return this;
        }

        public String removeParam(String key) {
            if (this.mParams == null) {
                return null;
            }
            return (String) this.mParams.remove(key);
        }

        public Builder setAppendSerialInfo(boolean appendSerialInfo) {
            this.mAppendSerialInfo = appendSerialInfo;
            return this;
        }

        public QueryInfo build() {
            if (this.mSearchType != null) {
                return new QueryInfo(this);
            }
            throw new IllegalArgumentException("Empty search type!");
        }

        public Builder cloneFrom(QueryInfo queryInfo) {
            this.mSearchType = queryInfo.mSearchType;
            this.mParams = new HashMap(queryInfo.mParams);
            return this;
        }
    }

    public Map<String, String> getParams() {
        return this.mParams;
    }

    public String getParam(String key) {
        return (String) this.mParams.get(key);
    }

    public SearchType getSearchType() {
        return this.mSearchType;
    }

    public String toString() {
        return "search type = " + this.mSearchType + ", params = " + this.mParams;
    }

    public QueryInfo(Builder builder) {
        this.mSearchType = builder.mSearchType;
        if (builder.mParams != null) {
            this.mParams.putAll(builder.mParams);
        }
        if (builder.mAppendSerialInfo) {
            this.mParams.put("serialId", SearchStatUtils.getCurrentSerial());
        }
    }
}
