package com.miui.gallery.search.core.suggestion;

import android.database.AbstractCursor;
import android.database.ContentObserver;
import android.database.DataSetObserver;
import android.os.Bundle;
import com.miui.gallery.search.core.GroupList;
import com.miui.gallery.search.core.QueryInfo;
import com.miui.gallery.search.core.source.Source;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

public class GroupedSuggestionCursor<S extends SuggestionCursor> extends AbstractCursor implements GroupList<S, Suggestion>, SuggestionCursor {
    protected Integer mCachedCount = null;
    private Bundle mExtras = Bundle.EMPTY;
    protected DataSetObserver mObserver = new DataSetObserver() {
        public void onChanged() {
            GroupedSuggestionCursor.this.mPos = -1;
            GroupedSuggestionCursor.this.mCachedCount = null;
        }

        public void onInvalidated() {
            GroupedSuggestionCursor.this.mPos = -1;
            GroupedSuggestionCursor.this.mCachedCount = null;
        }
    };
    protected final QueryInfo mQueryInfo;
    private S mSection;
    private List<S> mSections;

    public GroupedSuggestionCursor(QueryInfo queryInfo, List<S> sections) {
        SuggestionCursor suggestionCursor = null;
        this.mQueryInfo = queryInfo;
        if (sections == null || sections.isEmpty()) {
            throw new IllegalArgumentException("Empty section value is not acceptable!");
        }
        this.mSections = new ArrayList(sections.size());
        for (S section : sections) {
            this.mSections.add(section);
            section.registerDataSetObserver(this.mObserver);
        }
        if (this.mSections.size() >= 1) {
            suggestionCursor = (SuggestionCursor) this.mSections.get(0);
        }
        setSection(suggestionCursor);
    }

    public void moveToPosition(int groupIndex, int childIndex) {
        checkGroupPosition(groupIndex);
        int position = 0;
        for (int i = 0; i < groupIndex; i++) {
            position += getChildrenCount(groupIndex);
        }
        moveToPosition(position + childIndex);
    }

    private void setSection(S section) {
        if (this.mSection != section) {
            this.mSection = section;
        }
    }

    public QueryInfo getQueryInfo() {
        return this.mSection != null ? this.mSection.getQueryInfo() : this.mQueryInfo;
    }

    public Suggestion getCurrent() {
        return this.mSection.getCurrent();
    }

    public Source getSuggestionSource() {
        return this.mSection.getSuggestionSource();
    }

    public String getIntentActionURI() {
        return this.mSection.getIntentActionURI();
    }

    public String getSuggestionIcon() {
        return this.mSection.getSuggestionIcon();
    }

    public String getSuggestionTitle() {
        return this.mSection.getSuggestionTitle();
    }

    public String getSuggestionSubTitle() {
        return this.mSection.getSuggestionSubTitle();
    }

    public SuggestionExtras getSuggestionExtras() {
        return this.mSection.getSuggestionExtras();
    }

    public int getCount() {
        if (this.mCachedCount == null) {
            int count = 0;
            for (int i = 0; i < getGroupCount(); i++) {
                count += getChildrenCount(i);
            }
            this.mCachedCount = Integer.valueOf(count);
        }
        return this.mCachedCount.intValue();
    }

    public boolean onMove(int oldPosition, int newPosition) {
        this.mSection = null;
        int sectionStartPos = 0;
        int groupIndex = -1;
        for (int i = 0; i < getGroupCount(); i++) {
            int tempChildrenCount = getChildrenCount(i);
            if (newPosition < sectionStartPos + tempChildrenCount) {
                this.mSection = getGroup(i);
                groupIndex = i;
                break;
            }
            sectionStartPos += tempChildrenCount;
        }
        if (groupIndex >= 0) {
            return onMoveGroup(groupIndex, newPosition - sectionStartPos);
        }
        return false;
    }

    protected boolean onMoveGroup(int groupIndex, int childPosition) {
        return getGroup(groupIndex).moveToPosition(childPosition);
    }

    public String getString(int column) {
        return this.mSection.getString(column);
    }

    public short getShort(int column) {
        return this.mSection.getShort(column);
    }

    public int getInt(int column) {
        return this.mSection.getInt(column);
    }

    public long getLong(int column) {
        return this.mSection.getLong(column);
    }

    public float getFloat(int column) {
        return this.mSection.getFloat(column);
    }

    public double getDouble(int column) {
        return this.mSection.getDouble(column);
    }

    public int getType(int column) {
        return this.mSection.getType(column);
    }

    public boolean isNull(int column) {
        return this.mSection.isNull(column);
    }

    public byte[] getBlob(int column) {
        return this.mSection.getBlob(column);
    }

    public String[] getColumnNames() {
        if (this.mSection != null) {
            return this.mSection.getColumnNames();
        }
        return new String[0];
    }

    public Bundle getExtras() {
        return this.mExtras;
    }

    public void deactivate() {
        for (SuggestionCursor section : this.mSections) {
            section.deactivate();
        }
    }

    public void close() {
        for (SuggestionCursor section : this.mSections) {
            section.close();
        }
        this.mSection = null;
        super.close();
    }

    public void registerContentObserver(ContentObserver observer) {
        for (SuggestionCursor section : this.mSections) {
            section.registerContentObserver(observer);
        }
        super.registerContentObserver(observer);
    }

    public void unregisterContentObserver(ContentObserver observer) {
        for (SuggestionCursor section : this.mSections) {
            section.unregisterContentObserver(observer);
        }
        super.unregisterContentObserver(observer);
    }

    public void registerDataSetObserver(DataSetObserver observer) {
        for (SuggestionCursor section : this.mSections) {
            section.registerDataSetObserver(observer);
        }
        super.registerDataSetObserver(observer);
    }

    public void unregisterDataSetObserver(DataSetObserver observer) {
        for (SuggestionCursor section : this.mSections) {
            section.unregisterDataSetObserver(observer);
        }
        super.unregisterDataSetObserver(observer);
    }

    public boolean requery() {
        for (SuggestionCursor section : this.mSections) {
            if (!section.requery()) {
                return false;
            }
        }
        return super.requery();
    }

    public int getGroupCount() {
        return this.mSections.size();
    }

    public int getChildrenCount(int groupIndex) {
        checkGroupPosition(groupIndex);
        return this.mSections.get(groupIndex) != null ? ((SuggestionCursor) this.mSections.get(groupIndex)).getCount() : 0;
    }

    public S getGroup(int groupIndex) {
        checkGroupPosition(groupIndex);
        return (SuggestionCursor) this.mSections.get(groupIndex);
    }

    protected void checkGroupPosition(int groupIndex) {
        if (groupIndex < 0 || groupIndex >= this.mSections.size()) {
            throw new IndexOutOfBoundsException(String.format(Locale.getDefault(), "Invalid groupIndex %d, total group count %d", new Object[]{Integer.valueOf(groupIndex), Integer.valueOf(this.mSections.size())}));
        }
    }

    public void setExtras(Bundle extras) {
        if (extras == null) {
            extras = Bundle.EMPTY;
        }
        this.mExtras = extras;
    }
}
