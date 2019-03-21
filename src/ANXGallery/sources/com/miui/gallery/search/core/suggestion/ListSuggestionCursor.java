package com.miui.gallery.search.core.suggestion;

import android.database.AbstractCursor;
import android.os.Bundle;
import com.miui.gallery.search.core.QueryInfo;
import com.miui.gallery.search.core.source.Source;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;

public class ListSuggestionCursor<S extends Suggestion> extends AbstractCursor implements SuggestionCursor {
    protected static final String[] COLUMNS = new String[]{"title", "subTitle", "actionUri", "icon"};
    private ArrayList<String> EMPTY_COLUMNS;
    private ArrayList<String> mExtraColumns;
    private Bundle mExtras;
    protected final QueryInfo mQueryInfo;
    protected final List<S> mSuggestions;

    public ListSuggestionCursor(QueryInfo queryInfo, List<S> suggestions) {
        this(queryInfo, suggestions, null);
    }

    public ListSuggestionCursor(QueryInfo queryInfo, List<S> suggestions, Bundle extras) {
        this.mSuggestions = new ArrayList();
        this.EMPTY_COLUMNS = new ArrayList(0);
        this.mExtras = Bundle.EMPTY;
        this.mQueryInfo = queryInfo;
        if (suggestions != null) {
            this.mSuggestions.addAll(suggestions);
            setExtras(extras);
        }
    }

    public QueryInfo getQueryInfo() {
        return this.mQueryInfo;
    }

    public int getCount() {
        return this.mSuggestions.size();
    }

    public S getCurrent() {
        if (getPosition() < 0 || getPosition() >= getCount()) {
            return null;
        }
        return (Suggestion) this.mSuggestions.get(getPosition());
    }

    public Source getSuggestionSource() {
        return getCurrent() == null ? null : getCurrent().getSuggestionSource();
    }

    public String getIntentActionURI() {
        return getCurrent() == null ? null : getCurrent().getIntentActionURI();
    }

    public String getSuggestionIcon() {
        return getCurrent() == null ? null : getCurrent().getSuggestionIcon();
    }

    public String getSuggestionTitle() {
        return getCurrent() == null ? null : getCurrent().getSuggestionTitle();
    }

    public String getSuggestionSubTitle() {
        return getCurrent() == null ? null : getCurrent().getSuggestionSubTitle();
    }

    public String[] getColumnNames() {
        if (getExtraColumns() == this.EMPTY_COLUMNS) {
            return COLUMNS;
        }
        ArrayList<String> allColumns = new ArrayList(COLUMNS.length + getExtraColumns().size());
        allColumns.addAll(Arrays.asList(COLUMNS));
        allColumns.addAll(getExtraColumns());
        return (String[]) allColumns.toArray(new String[allColumns.size()]);
    }

    public SuggestionExtras getSuggestionExtras() {
        return getCurrent() == null ? null : getCurrent().getSuggestionExtras();
    }

    public int getColumnIndex(String columnName) {
        if ("title".equals(columnName)) {
            return 0;
        }
        if ("subTitle".equals(columnName)) {
            return 1;
        }
        if ("actionUri".equals(columnName)) {
            return 2;
        }
        if ("icon".equals(columnName)) {
            return 3;
        }
        return getExtraColumns().indexOf(columnName) + COLUMNS.length;
    }

    public String getString(int column) {
        switch (column) {
            case 0:
                return getSuggestionTitle();
            case 1:
                return getSuggestionSubTitle();
            case 2:
                return getIntentActionURI();
            case 3:
                return getSuggestionIcon();
            default:
                if (getSuggestionExtras() == null) {
                    return null;
                }
                return getSuggestionExtras().getExtra((String) getExtraColumns().get(column - COLUMNS.length));
        }
    }

    private ArrayList<String> getExtraColumns() {
        if (this.mExtraColumns == null) {
            Collection<String> extraColumns = getSuggestionExtras() != null ? getSuggestionExtras().getExtraColumnNames() : null;
            if (extraColumns == null || extraColumns.size() <= 0) {
                this.mExtraColumns = this.EMPTY_COLUMNS;
            } else {
                this.mExtraColumns = new ArrayList(extraColumns);
            }
        }
        return this.mExtraColumns;
    }

    public boolean onMove(int oldPosition, int newPosition) {
        this.mExtraColumns = null;
        return super.onMove(oldPosition, newPosition);
    }

    public short getShort(int column) {
        return (short) 0;
    }

    public int getInt(int column) {
        return 0;
    }

    public long getLong(int column) {
        return 0;
    }

    public float getFloat(int column) {
        return 0.0f;
    }

    public double getDouble(int column) {
        return 0.0d;
    }

    public boolean isNull(int column) {
        return getString(column) == null;
    }

    public void setExtras(Bundle extras) {
        if (extras == null) {
            extras = Bundle.EMPTY;
        }
        this.mExtras = extras;
    }

    public Bundle getExtras() {
        return this.mExtras;
    }

    public String toString() {
        return super.toString() + String.format("Suggestions = %s;", new Object[]{this.mSuggestions});
    }
}
