package com.miui.gallery.search.core.suggestion;

import android.database.Cursor;
import android.database.CursorWrapper;
import android.os.Bundle;
import android.util.SparseArray;
import com.miui.gallery.search.core.QueryInfo;
import com.miui.gallery.search.core.result.ErrorInfo;
import com.miui.gallery.search.core.source.Source;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

public class CursorBackedSuggestionCursor<C extends Cursor> extends CursorWrapper implements SuggestionCursor {
    private static final SuggestionExtras EMPTY_EXTRA = new SuggestionExtras() {
        public Collection<String> getExtraColumnNames() {
            return null;
        }

        public String getExtra(String columnName) {
            return null;
        }
    };
    protected int mActionURIIdx;
    private Bundle mExtras;
    protected int mIconIdx;
    protected final QueryInfo mQueryInfo;
    protected int mSubTitleIdx;
    private SparseArray<SuggestionExtras> mSuggestionExtrasArray;
    protected final Source mSuggestionSource;
    protected int mTitleIdx;

    public CursorBackedSuggestionCursor(QueryInfo queryInfo, C cursor) {
        this(queryInfo, cursor, null);
    }

    public CursorBackedSuggestionCursor(QueryInfo queryInfo, C cursor, Source suggestionSource) {
        this(queryInfo, cursor, suggestionSource, null);
    }

    public CursorBackedSuggestionCursor(QueryInfo queryInfo, C cursor, Source suggestionSource, ErrorInfo errorInfo) {
        super(cursor);
        this.mExtras = Bundle.EMPTY;
        this.mQueryInfo = queryInfo;
        this.mSuggestionSource = suggestionSource;
        updateIndexes();
    }

    public QueryInfo getQueryInfo() {
        return this.mQueryInfo;
    }

    public Suggestion getCurrent() {
        return this;
    }

    public Source getSuggestionSource() {
        return this.mSuggestionSource;
    }

    public String getIntentActionURI() {
        return getStringOrNull(this.mActionURIIdx);
    }

    public String getSuggestionIcon() {
        return getStringOrNull(this.mIconIdx);
    }

    public String getSuggestionTitle() {
        return getStringOrNull(this.mTitleIdx);
    }

    public String getSuggestionSubTitle() {
        return getStringOrNull(this.mSubTitleIdx);
    }

    public SuggestionExtras getSuggestionExtras() {
        if (getWrappedCursor() == null) {
            return null;
        }
        if (this.mSuggestionExtrasArray == null) {
            this.mSuggestionExtrasArray = new SparseArray(getCount());
        }
        SuggestionExtras extras = (SuggestionExtras) this.mSuggestionExtrasArray.get(getWrappedCursor().getPosition());
        if (extras == EMPTY_EXTRA) {
            return EMPTY_EXTRA;
        }
        if (extras == null) {
            Map<String, String> extraMap = null;
            String[] columns = getWrappedCursor().getColumnNames();
            int i = 0;
            while (i < columns.length) {
                if (isExtraIndex(i) && columns[i] != null) {
                    String value = getStringOrNull(i);
                    if (value != null) {
                        if (extraMap == null) {
                            extraMap = new HashMap();
                        }
                        extraMap.put(columns[i], value);
                    }
                }
                i++;
            }
            if (extraMap != null) {
                this.mSuggestionExtrasArray.put(getPosition(), new MapBackedSuggestionExtras(extraMap));
            } else {
                this.mSuggestionExtrasArray.put(getPosition(), EMPTY_EXTRA);
            }
        }
        return (SuggestionExtras) this.mSuggestionExtrasArray.get(getPosition());
    }

    private boolean isExtraIndex(int index) {
        return (index == this.mIconIdx || index == this.mActionURIIdx || index == this.mTitleIdx || index == this.mSubTitleIdx) ? false : true;
    }

    protected void updateIndexes() {
        this.mTitleIdx = getColumnIndex("title");
        this.mSubTitleIdx = getColumnIndex("subTitle");
        this.mIconIdx = getColumnIndex("icon");
        this.mActionURIIdx = getColumnIndex("actionUri");
    }

    protected String getStringOrNull(int col) {
        if (col == -1) {
            return null;
        }
        return getWrappedCursor().getString(col);
    }

    public Bundle getExtras() {
        return getWrappedCursor().getExtras() == null ? this.mExtras : getWrappedCursor().getExtras();
    }

    public void setExtras(Bundle extras) {
        if (extras == null) {
            extras = Bundle.EMPTY;
        }
        this.mExtras = extras;
    }
}
