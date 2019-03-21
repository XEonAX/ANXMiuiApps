package com.miui.gallery.search.core.suggestion;

import android.content.ContentResolver;
import android.database.CharArrayBuffer;
import android.database.ContentObserver;
import android.database.DataSetObserver;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.miui.gallery.search.SearchConstants.SectionType;
import com.miui.gallery.search.core.QueryInfo;
import com.miui.gallery.search.core.source.Source;
import java.util.ArrayList;
import java.util.List;

public class BaseSuggestionSection implements SuggestionSection {
    protected String mDataURI;
    protected final SuggestionCursor mItems;
    protected Suggestion mMoreItem;
    protected final QueryInfo mQueryInfo;
    private List<RankInfo> mRankInfos;
    private SuggestionExtras mSectionExtras;
    private String mSectionSubTitle;
    private String mSectionTitle;
    protected final String mSectionTypeString;

    public BaseSuggestionSection(QueryInfo queryInfo, String sectionType, SuggestionCursor cursor) {
        this(queryInfo, sectionType, cursor, null, null, null, null, null, null);
    }

    public BaseSuggestionSection(QueryInfo queryInfo, SectionType sectionType, SuggestionCursor cursor, String dataURI, String sectionTitle, String sectionSubTitle, Suggestion moreItem) {
        this(queryInfo, sectionType != null ? sectionType.getName() : SectionType.SECTION_TYPE_DEFAULT.getName(), cursor, dataURI, sectionTitle, sectionSubTitle, moreItem, null, null);
    }

    public BaseSuggestionSection(QueryInfo queryInfo, String sectionType, SuggestionCursor cursor, String dataURI, String sectionTitle, String sectionSubTitle, Suggestion moreItem, List<RankInfo> rankInfos, Bundle extras) {
        this.mQueryInfo = queryInfo;
        this.mItems = cursor;
        if (TextUtils.isEmpty(sectionType)) {
            this.mSectionTypeString = SectionType.SECTION_TYPE_DEFAULT.getName();
        } else {
            this.mSectionTypeString = sectionType;
        }
        this.mDataURI = dataURI;
        this.mSectionTitle = sectionTitle;
        this.mSectionSubTitle = sectionSubTitle;
        this.mMoreItem = moreItem;
        if (rankInfos != null && rankInfos.size() > 0) {
            this.mRankInfos = new ArrayList(rankInfos);
        }
        if (extras != null && extras != Bundle.EMPTY) {
            setExtras(extras);
        }
    }

    public String getSectionTypeString() {
        return this.mSectionTypeString;
    }

    public SectionType getSectionType() {
        return SectionType.fromName(this.mSectionTypeString);
    }

    public void setSectionMoreItem(Suggestion moreItem) {
        this.mMoreItem = moreItem;
    }

    public Suggestion moveToMore() {
        return this.mMoreItem;
    }

    public String getSectionTitle() {
        return this.mSectionTitle;
    }

    public String getSectionSubTitle() {
        return this.mSectionSubTitle;
    }

    public String getDataURI() {
        return this.mDataURI;
    }

    public void setSectionExtras(SuggestionExtras sectionExtras) {
        this.mSectionExtras = sectionExtras;
    }

    public SuggestionExtras getSectionExtras() {
        return this.mSectionExtras;
    }

    public List<RankInfo> getRankInfos() {
        return this.mRankInfos;
    }

    public QueryInfo getQueryInfo() {
        return this.mQueryInfo;
    }

    public Suggestion getCurrent() {
        return this.mItems.getCurrent();
    }

    public Source getSuggestionSource() {
        return this.mItems.getSuggestionSource();
    }

    public String getIntentActionURI() {
        return this.mItems.getIntentActionURI();
    }

    public String getSuggestionIcon() {
        return this.mItems.getSuggestionIcon();
    }

    public String getSuggestionTitle() {
        return this.mItems.getSuggestionTitle();
    }

    public String getSuggestionSubTitle() {
        return this.mItems.getSuggestionSubTitle();
    }

    public SuggestionExtras getSuggestionExtras() {
        return this.mItems.getSuggestionExtras();
    }

    public void close() {
        if (this.mItems != null) {
            this.mItems.close();
        }
    }

    public int getCount() {
        return this.mItems == null ? 0 : this.mItems.getCount();
    }

    public String[] getColumnNames() {
        return this.mItems == null ? new String[0] : this.mItems.getColumnNames();
    }

    public String getString(int column) {
        return this.mItems.getString(column);
    }

    public short getShort(int column) {
        return this.mItems.getShort(column);
    }

    public int getInt(int column) {
        return this.mItems.getInt(column);
    }

    public long getLong(int column) {
        return this.mItems.getLong(column);
    }

    public float getFloat(int column) {
        return this.mItems.getFloat(column);
    }

    public double getDouble(int column) {
        return this.mItems.getDouble(column);
    }

    public int getPosition() {
        return this.mItems == null ? -1 : this.mItems.getPosition();
    }

    public boolean getWantsAllOnMoveCalls() {
        return this.mItems != null && this.mItems.getWantsAllOnMoveCalls();
    }

    public boolean isAfterLast() {
        return this.mItems.isAfterLast();
    }

    public boolean isBeforeFirst() {
        return this.mItems.isBeforeFirst();
    }

    public boolean isFirst() {
        return this.mItems.isFirst();
    }

    public boolean isLast() {
        return this.mItems.isLast();
    }

    public int getType(int columnIndex) {
        return this.mItems.getType(columnIndex);
    }

    public boolean isNull(int columnIndex) {
        return this.mItems.isNull(columnIndex);
    }

    public boolean moveToLast() {
        return this.mItems != null && this.mItems.moveToLast();
    }

    public boolean move(int offset) {
        return this.mItems != null && this.mItems.move(offset);
    }

    public boolean moveToPosition(int position) {
        return this.mItems != null && this.mItems.moveToPosition(position);
    }

    public boolean moveToNext() {
        return this.mItems != null && this.mItems.moveToNext();
    }

    public boolean moveToPrevious() {
        return this.mItems != null && this.mItems.moveToPrevious();
    }

    public void registerContentObserver(ContentObserver observer) {
        if (this.mItems != null) {
            this.mItems.registerContentObserver(observer);
        }
    }

    public void registerDataSetObserver(DataSetObserver observer) {
        if (this.mItems != null) {
            this.mItems.registerDataSetObserver(observer);
        }
    }

    public boolean moveToFirst() {
        return this.mItems != null && this.mItems.moveToFirst();
    }

    public int getColumnIndex(String columnName) {
        return this.mItems == null ? -1 : this.mItems.getColumnIndex(columnName);
    }

    public int getColumnIndexOrThrow(String columnName) throws IllegalArgumentException {
        if (this.mItems != null) {
            return this.mItems.getColumnIndexOrThrow(columnName);
        }
        throw new IllegalArgumentException("column '" + columnName + "' does not exist");
    }

    public String getColumnName(int columnIndex) {
        return this.mItems == null ? null : this.mItems.getColumnName(columnIndex);
    }

    public int getColumnCount() {
        return this.mItems == null ? 0 : this.mItems.getColumnCount();
    }

    public byte[] getBlob(int columnIndex) {
        return this.mItems.getBlob(columnIndex);
    }

    public void copyStringToBuffer(int columnIndex, CharArrayBuffer buffer) {
        if (this.mItems != null) {
            this.mItems.copyStringToBuffer(columnIndex, buffer);
        }
    }

    public void deactivate() {
        if (this.mItems != null) {
            this.mItems.deactivate();
        }
    }

    public boolean requery() {
        return this.mItems != null && this.mItems.requery();
    }

    public boolean isClosed() {
        return this.mItems != null && this.mItems.isClosed();
    }

    public Bundle getExtras() {
        return this.mItems == null ? null : this.mItems.getExtras();
    }

    public void setExtras(Bundle extras) {
        if (this.mItems != null) {
            this.mItems.setExtras(extras);
        }
    }

    public Bundle respond(Bundle extras) {
        return this.mItems == null ? null : this.mItems.respond(extras);
    }

    public void setNotificationUri(ContentResolver cr, Uri uri) {
        if (this.mItems != null) {
            this.mItems.setNotificationUri(cr, uri);
        }
    }

    public Uri getNotificationUri() {
        return this.mItems == null ? null : this.mItems.getNotificationUri();
    }

    public void unregisterContentObserver(ContentObserver observer) {
        if (this.mItems != null) {
            this.mItems.unregisterContentObserver(observer);
        }
    }

    public void unregisterDataSetObserver(DataSetObserver observer) {
        if (this.mItems != null) {
            this.mItems.unregisterDataSetObserver(observer);
        }
    }
}
