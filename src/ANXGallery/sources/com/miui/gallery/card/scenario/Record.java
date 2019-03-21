package com.miui.gallery.card.scenario;

import android.content.ContentValues;
import android.database.Cursor;
import android.text.TextUtils;
import com.miui.gallery.dao.base.Entity;
import com.miui.gallery.dao.base.TableColumn;
import com.miui.gallery.util.GsonUtils;
import com.miui.gallery.util.Log;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.List;

public class Record extends Entity {
    private long mEndTime;
    private String mLocation;
    private List<Long> mMediaIds;
    private String mPeopleId;
    private String mPrimaryKey;
    private int mScenarioId;
    private String mSecondaryKey;
    private long mStartTime;
    private int mState;
    private long mTargetTime;
    private String mTertiaryKey;
    private long mTime;

    public static class UniqueKey {
        private final long mEndTime;
        private final String mLocation;
        private final String mPeopleId;
        private final String mPrimaryKey;
        private final int mScenarioId;
        private final String mSecondaryKey;
        private final long mStartTime;
        private final long mTargetTime;
        private final String mTertiaryKey;

        UniqueKey(int scenarioId, long startTime, long endTime, long targetTime, String peopleId, String location, String primaryKey, String secondaryKey, String tertiaryKey) {
            this.mScenarioId = scenarioId;
            this.mStartTime = startTime;
            this.mEndTime = endTime;
            this.mTargetTime = targetTime;
            this.mPeopleId = peopleId;
            this.mLocation = location;
            this.mPrimaryKey = primaryKey;
            this.mSecondaryKey = secondaryKey;
            this.mTertiaryKey = tertiaryKey;
        }

        public int getScenarioId() {
            return this.mScenarioId;
        }

        public long getStartTime() {
            return this.mStartTime;
        }

        public String getPrimaryKey() {
            return this.mPrimaryKey;
        }

        public long getTargetTime() {
            return this.mTargetTime <= 0 ? this.mStartTime : this.mTargetTime;
        }

        public boolean equals(Object o) {
            if (this == o) {
                return true;
            }
            if (!(o instanceof UniqueKey)) {
                return false;
            }
            UniqueKey uniqueKey = (UniqueKey) o;
            if (this.mScenarioId == uniqueKey.mScenarioId) {
                if (this.mStartTime == uniqueKey.mStartTime) {
                    return true;
                }
                if (this.mTargetTime > 0 && this.mTargetTime == uniqueKey.mTargetTime) {
                    return true;
                }
                if (!(TextUtils.isEmpty(this.mLocation) || TextUtils.isEmpty(uniqueKey.mLocation) || !TextUtils.equals(this.mLocation, uniqueKey.mLocation))) {
                    return true;
                }
            }
            return false;
        }

        public int hashCode() {
            return (((this.mScenarioId * 31) + ((int) (this.mStartTime ^ (this.mStartTime >>> 32)))) * 31) + ((int) (this.mTargetTime ^ (this.mTargetTime >>> 32)));
        }
    }

    private Record() {
    }

    public Record(Scenario scenario, List<Long> imageIds) {
        this.mTime = DateUtils.getCurrentTimeMillis();
        this.mMediaIds = imageIds;
        this.mState = 1;
        if (scenario != null) {
            this.mScenarioId = scenario.getScenarioId();
            this.mStartTime = scenario.getStartTime();
            this.mEndTime = scenario.getEndTime();
            this.mTargetTime = scenario.getTargetTime() <= 0 ? this.mStartTime : scenario.getTargetTime();
            this.mPeopleId = scenario.getPeopleId();
            this.mLocation = scenario.getLocation();
            this.mPrimaryKey = scenario.getPrimaryKey();
            this.mSecondaryKey = scenario.getSecondary();
            this.mTertiaryKey = scenario.getTertiaryKey();
        }
    }

    public int getScenarioId() {
        return this.mScenarioId;
    }

    public long getStartTime() {
        return this.mStartTime;
    }

    public long getEndTime() {
        return this.mEndTime;
    }

    public String getPeopleId() {
        return this.mPeopleId;
    }

    public String getLocation() {
        return this.mLocation;
    }

    public String getPrimaryKey() {
        return this.mPrimaryKey;
    }

    public String getSecondaryKey() {
        return this.mSecondaryKey;
    }

    public long getTime() {
        return this.mTime;
    }

    public int getState() {
        return this.mState;
    }

    public void setState(int state) {
        this.mState = state;
    }

    public List<Long> getMediaIds() {
        return this.mMediaIds;
    }

    public long getTargetTime() {
        return this.mTargetTime <= 0 ? this.mStartTime : this.mTargetTime;
    }

    protected List<TableColumn> getTableColumns() {
        ArrayList<TableColumn> columns = new ArrayList();
        Entity.addColumn(columns, "scenarioId", "INTEGER");
        Entity.addColumn(columns, "scenarioStartTime", "INTEGER");
        Entity.addColumn(columns, "scenarioEndTime", "INTEGER");
        Entity.addColumn(columns, "scenarioPeopleId", "TEXT");
        Entity.addColumn(columns, "scenarioLocation", "TEXT");
        Entity.addColumn(columns, "scenarioPrimaryKey", "TEXT");
        Entity.addColumn(columns, "scenarioSecondaryKey", "TEXT");
        Entity.addColumn(columns, "scenarioTertiaryKey", "TEXT");
        Entity.addColumn(columns, "time", "INTEGER");
        Entity.addColumn(columns, "state", "INTEGER");
        Entity.addColumn(columns, "medias", "TEXT");
        Entity.addColumn(columns, "scenarioTargetTime", "INTEGER");
        return columns;
    }

    protected void onInitFromCursor(Cursor cursor) {
        this.mScenarioId = Entity.getInt(cursor, "scenarioId");
        this.mStartTime = Entity.getLong(cursor, "scenarioStartTime");
        this.mEndTime = Entity.getLong(cursor, "scenarioEndTime");
        this.mPeopleId = Entity.getString(cursor, "scenarioPeopleId");
        this.mLocation = Entity.getString(cursor, "scenarioLocation");
        this.mPrimaryKey = Entity.getString(cursor, "scenarioPrimaryKey");
        this.mSecondaryKey = Entity.getString(cursor, "scenarioSecondaryKey");
        this.mTertiaryKey = Entity.getString(cursor, "scenarioTertiaryKey");
        this.mTime = Entity.getLong(cursor, "time");
        this.mState = Entity.getInt(cursor, "state");
        try {
            this.mMediaIds = GsonUtils.getArray(Entity.getString(cursor, "medias"), (Type) Long.class);
        } catch (Exception e) {
            Log.e("Record", "Get media array of scenario %d from cursor error", Integer.valueOf(this.mScenarioId));
        }
        this.mTargetTime = Entity.getLong(cursor, "scenarioTargetTime");
        this.mTargetTime = this.mTargetTime <= 0 ? this.mStartTime : this.mTargetTime;
    }

    protected void onConvertToContents(ContentValues values) {
        values.put("scenarioId", Integer.valueOf(this.mScenarioId));
        values.put("scenarioStartTime", Long.valueOf(this.mStartTime));
        values.put("scenarioEndTime", Long.valueOf(this.mEndTime));
        values.put("scenarioPeopleId", this.mPeopleId == null ? "" : this.mPeopleId);
        values.put("scenarioLocation", this.mLocation == null ? "" : this.mLocation);
        values.put("scenarioPrimaryKey", this.mPrimaryKey == null ? "" : this.mPrimaryKey);
        values.put("scenarioSecondaryKey", this.mSecondaryKey == null ? "" : this.mSecondaryKey);
        values.put("scenarioTertiaryKey", this.mTertiaryKey == null ? "" : this.mTertiaryKey);
        values.put("time", Long.valueOf(this.mTime));
        values.put("state", Integer.valueOf(this.mState));
        values.put("medias", GsonUtils.toString(this.mMediaIds));
        values.put("scenarioTargetTime", Long.valueOf(this.mTargetTime));
    }

    protected String[] getUniqueConstraints() {
        return new String[]{"scenarioId"};
    }

    public UniqueKey getUniqueKey() {
        return new UniqueKey(getScenarioId(), getStartTime(), getEndTime(), getTargetTime(), getPeopleId(), getLocation(), getPrimaryKey(), getSecondaryKey(), getPrimaryKey());
    }
}
