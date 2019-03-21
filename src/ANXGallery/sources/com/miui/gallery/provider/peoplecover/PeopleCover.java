package com.miui.gallery.provider.peoplecover;

import android.content.ContentValues;
import android.database.Cursor;
import com.miui.gallery.dao.base.Entity;
import com.miui.gallery.dao.base.TableColumn;
import java.util.ArrayList;
import java.util.List;

public class PeopleCover extends Entity {
    private int mCoverScore;
    private String mCoverServerId;
    private String mPeopleServerId;
    private String mPeopleServerTag;

    private PeopleCover() {
    }

    public PeopleCover(String peopleId, String coverId, String serverTag, int coverScore) {
        this.mPeopleServerId = peopleId;
        this.mCoverServerId = coverId;
        this.mPeopleServerTag = serverTag;
        this.mCoverScore = coverScore;
    }

    public String getCoverId() {
        return this.mCoverServerId;
    }

    public void setCoverId(String id) {
        this.mCoverServerId = id;
    }

    public String getServerTag() {
        return this.mPeopleServerTag;
    }

    public void setServerTag(String tag) {
        this.mPeopleServerTag = tag;
    }

    public int getCoverScore() {
        return this.mCoverScore;
    }

    public void setCoverScore(int score) {
        this.mCoverScore = score;
    }

    protected List<TableColumn> getTableColumns() {
        ArrayList<TableColumn> columns = new ArrayList();
        Entity.addColumn(columns, "peopleServerId", "TEXT");
        Entity.addColumn(columns, "coverServerId", "TEXT");
        Entity.addColumn(columns, "peopleServerTag", "TEXT");
        Entity.addColumn(columns, "coverScore", "INTEGER");
        return columns;
    }

    protected void onInitFromCursor(Cursor cursor) {
        this.mPeopleServerId = Entity.getString(cursor, "peopleServerId");
        this.mCoverServerId = Entity.getString(cursor, "coverServerId");
        this.mPeopleServerTag = Entity.getString(cursor, "peopleServerTag");
        this.mCoverScore = Entity.getInt(cursor, "coverScore");
    }

    protected void onConvertToContents(ContentValues values) {
        values.put("peopleServerId", this.mPeopleServerId);
        values.put("coverServerId", this.mCoverServerId);
        values.put("peopleServerTag", this.mPeopleServerTag);
        values.put("coverScore", Integer.valueOf(this.mCoverScore));
    }

    protected String[] getUniqueConstraints() {
        return new String[]{"peopleServerId"};
    }
}
