package com.miui.gallery.card;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.assistant.model.MediaFeatureItem;
import com.miui.gallery.card.scenario.Record.UniqueKey;
import com.miui.gallery.cloud.card.model.CardInfo.OperationInfo;
import com.miui.gallery.dao.base.Entity;
import com.miui.gallery.dao.base.TableColumn;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.GalleryStatHelper;
import com.miui.gallery.util.GsonUtils;
import com.miui.gallery.util.Log;
import com.nexstreaming.nexeditorsdk.nexExportFormat;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONException;

public class Card extends Entity implements Comparable<Card> {
    public static final String BASE_UI_CARD_SELECTION = ("ignored = 0 AND localFlag NOT IN (1,-2,-1,4) AND (" + String.format("%s > %s AND %s < %s", new Object[]{Long.valueOf(System.currentTimeMillis()), "validStart", Long.valueOf(System.currentTimeMillis()), "validEnd"}) + " OR " + nexExportFormat.TAG_FORMAT_TYPE + "<>" + 2 + ")");
    public static final String BASE_UNSYNC_CARD_SELECTION = ("ignored = 0 AND syncable = 1 AND " + String.format("%s = %s OR %s = %s OR %s = %s", new Object[]{"localFlag", Integer.valueOf(1), "localFlag", Integer.valueOf(0), "localFlag", Integer.valueOf(2)}));
    private String mActionUrl;
    private List<String> mAllMediaSha1s;
    private int mBaseColor;
    private List<MediaFeatureItem> mCoverMediaFeatureItems;
    private int mCreateBy;
    private long mCreateTime;
    private String mDescription;
    private String mDetailUrl;
    private HashMap<String, String> mExtras;
    private int mImageResId;
    private Uri mImageUri;
    private boolean mIsDeletable;
    private boolean mIsIgnored;
    private boolean mIsSyncable;
    private boolean mIsTop;
    private int mLocalFlag;
    private OperationInfo mOperationInfo;
    private int mScenarioId;
    private List<String> mSelectedMediaSha1s;
    private String mServerId;
    private long mServerTag;
    private String mTitle;
    private int mType;
    private UniqueKey mUniqueKey;
    private long mUpdateTime;
    private long mValidEndTime;
    private long mValidStartTime;

    public static class Builder {
        private List<String> mAllMediaSha1s;
        private int mBaseColor;
        private final Context mContext;
        private List<MediaFeatureItem> mCoverMediaFeatureItems;
        private int mCreateBy;
        private long mCreateTime;
        private boolean mDeletable = true;
        private String mDescription;
        private String mDetailUrl;
        private int mImageResId;
        private Uri mImageUri;
        private boolean mIsIgnored = false;
        private boolean mIsSyncable = true;
        private boolean mIsTop = false;
        private OperationInfo mOperationInfo;
        private int mScenarioId;
        private List<String> mSelectedMediaSha1s;
        private String mServerId;
        private long mServerTag;
        private String mTitle;
        private int mType = 0;
        private UniqueKey mUniqueKey;
        private long mUpdateTime;
        private long mValidEndTime = Long.MAX_VALUE;
        private long mValidStartTime = 0;

        public Builder(Context context) {
            this.mContext = context;
        }

        public Builder setTitle(String title) {
            this.mTitle = title;
            return this;
        }

        public Builder setDescription(String description) {
            this.mDescription = description;
            return this;
        }

        public Builder setDetailUrl(String url) {
            this.mDetailUrl = url;
            return this;
        }

        public Builder setImageUri(Uri uri) {
            this.mImageUri = uri;
            return this;
        }

        public Builder setDeletable(boolean deletable) {
            this.mDeletable = deletable;
            return this;
        }

        public Builder setType(int type) {
            this.mType = type;
            return this;
        }

        public Builder setUniqueKey(UniqueKey uniqueKey) {
            this.mUniqueKey = uniqueKey;
            return this;
        }

        public Builder setAllMediaSha1s(List<String> allMediaSha1s) {
            this.mAllMediaSha1s = allMediaSha1s;
            return this;
        }

        public Builder setSelectedMediaSha1s(List<String> selectedMediaSha1s) {
            this.mSelectedMediaSha1s = selectedMediaSha1s;
            return this;
        }

        public Builder setCoverMediaFeatureItems(List<MediaFeatureItem> mediaFeatureItems) {
            this.mCoverMediaFeatureItems = mediaFeatureItems;
            return this;
        }

        public Builder setScenarioId(int scenarioId) {
            this.mScenarioId = scenarioId;
            return this;
        }

        public Builder setServerId(String serverId) {
            this.mServerId = serverId;
            return this;
        }

        public Builder setServerTag(long serverTag) {
            this.mServerTag = serverTag;
            return this;
        }

        public Builder setCreateBy(int createBy) {
            this.mCreateBy = createBy;
            return this;
        }

        public Builder setCreateTime(long createTime) {
            this.mCreateTime = createTime;
            return this;
        }

        public Builder setUpdateTime(long updateTime) {
            this.mUpdateTime = updateTime;
            return this;
        }

        public Builder setIsIgnored(boolean isIgnored) {
            this.mIsIgnored = isIgnored;
            return this;
        }

        public Builder setSyncable(boolean syncable) {
            this.mIsSyncable = syncable;
            return this;
        }

        public Builder setOperationInfo(OperationInfo operationInfo) {
            this.mOperationInfo = operationInfo;
            return this;
        }

        public Builder setValidStartTime(long validStartTime) {
            this.mValidStartTime = validStartTime;
            return this;
        }

        public Builder setValidEndTime(long validEndTime) {
            if (validEndTime <= 0) {
                validEndTime = Long.MAX_VALUE;
            }
            this.mValidEndTime = validEndTime;
            return this;
        }

        public Builder setTop(boolean top) {
            this.mIsTop = top;
            return this;
        }

        public Card build() {
            if (TextUtils.isEmpty(this.mTitle)) {
                Log.e("Card", "the title must not be empty.");
            }
            Card card = new Card();
            card.mTitle = this.mTitle;
            card.mDescription = this.mDescription;
            card.mDetailUrl = this.mDetailUrl;
            card.mIsDeletable = this.mDeletable;
            card.mBaseColor = this.mBaseColor;
            card.mUniqueKey = this.mUniqueKey;
            card.mOperationInfo = this.mOperationInfo;
            card.mActionUrl = this.mOperationInfo != null ? this.mOperationInfo.getUrl() : "";
            Uri access$1000 = this.mImageUri != null ? Card.decodeUri(this.mImageUri) : this.mOperationInfo != null ? Uri.parse(this.mOperationInfo.getBackgroundUrl()) : null;
            card.mImageUri = access$1000;
            card.mAllMediaSha1s = this.mAllMediaSha1s;
            card.mSelectedMediaSha1s = this.mSelectedMediaSha1s;
            card.mCoverMediaFeatureItems = this.mCoverMediaFeatureItems;
            card.mScenarioId = this.mScenarioId;
            card.mServerId = this.mServerId;
            card.mServerTag = this.mServerTag;
            card.mCreateBy = this.mCreateBy;
            card.mCreateTime = this.mCreateTime;
            card.mUpdateTime = this.mUpdateTime;
            card.mIsIgnored = this.mIsIgnored;
            card.mIsSyncable = this.mIsSyncable;
            card.mValidStartTime = this.mValidStartTime;
            card.mValidEndTime = this.mValidEndTime;
            card.mIsTop = this.mIsTop;
            if (this.mImageResId > 0) {
                card.mImageUri = Card.convertResIdToUri(this.mContext, this.mImageResId);
            }
            card.mType = this.mType;
            return card;
        }
    }

    public static class CardExtraInfo {
        public final boolean isIgnored;
        public final UniqueKey uniqueKey;

        public CardExtraInfo(UniqueKey uniqueKey, boolean isIgnored) {
            this.uniqueKey = uniqueKey;
            this.isIgnored = isIgnored;
        }
    }

    /* synthetic */ Card(AnonymousClass1 x0) {
        this();
    }

    private Card() {
        this.mImageResId = -1;
    }

    public synchronized void setCoverMediaFeatureItems(List<MediaFeatureItem> coverMediaFeatureItems) {
        if (this.mCoverMediaFeatureItems == null) {
            this.mCoverMediaFeatureItems = new ArrayList();
        }
        this.mCoverMediaFeatureItems.clear();
        if (BaseMiscUtil.isValid(coverMediaFeatureItems)) {
            this.mCoverMediaFeatureItems.addAll(coverMediaFeatureItems);
        }
    }

    public List<MediaFeatureItem> getCoverMediaFeatureItems() {
        return this.mCoverMediaFeatureItems == null ? null : new ArrayList(this.mCoverMediaFeatureItems);
    }

    public void setCreateTime(long time) {
        this.mCreateTime = time;
    }

    public long getCreateTime() {
        return this.mCreateTime;
    }

    public void setTitle(String title) {
        this.mTitle = title;
    }

    public String getTitle() {
        return this.mTitle;
    }

    public void setDescription(String description) {
        this.mDescription = description;
    }

    public String getDescription() {
        return this.mDescription;
    }

    public String getDetailUrl() {
        return this.mDetailUrl;
    }

    public String getActionUrl() {
        return this.mActionUrl;
    }

    public Uri getImageUri() {
        return this.mImageUri;
    }

    public int getImageResId(Context context) {
        if (this.mImageUri == null) {
            return 0;
        }
        if (this.mImageResId == -1) {
            this.mImageResId = convertUriToResId(context, this.mImageUri);
        }
        return this.mImageResId;
    }

    public int getBaseColor() {
        return this.mBaseColor;
    }

    public boolean isDeletable() {
        return this.mIsDeletable;
    }

    public UniqueKey getUniqueKey() {
        return this.mUniqueKey;
    }

    public OperationInfo getOperationInfo() {
        return this.mOperationInfo;
    }

    public synchronized List<String> getAllMediaSha1s() {
        return this.mAllMediaSha1s == null ? null : new ArrayList(this.mAllMediaSha1s);
    }

    public synchronized void setAllMediaSha1s(List<String> allMediaSha1s) {
        if (this.mAllMediaSha1s == null) {
            this.mAllMediaSha1s = new ArrayList();
        }
        this.mAllMediaSha1s.clear();
        if (BaseMiscUtil.isValid(allMediaSha1s)) {
            this.mAllMediaSha1s.addAll(allMediaSha1s);
        }
    }

    public synchronized List<String> getSelectedMediaSha1s() {
        return this.mSelectedMediaSha1s == null ? null : new ArrayList(this.mSelectedMediaSha1s);
    }

    public synchronized void setSelectedMediaSha1s(List<String> selectedMediaSha1s, String from) {
        if (this.mSelectedMediaSha1s == null) {
            this.mSelectedMediaSha1s = new ArrayList();
        }
        this.mSelectedMediaSha1s.clear();
        if (BaseMiscUtil.isValid(selectedMediaSha1s)) {
            this.mSelectedMediaSha1s.addAll(selectedMediaSha1s);
        } else {
            Map<String, String> params = new HashMap(1);
            params.put("from", from);
            GalleryStatHelper.recordCountEvent("assistant", "assistant_card_remove_all_image", params);
            Log.d("Card", android.util.Log.getStackTraceString(new Throwable()));
        }
    }

    private void putExtra(String key, String value) {
        if (this.mExtras == null) {
            this.mExtras = new HashMap();
        }
        this.mExtras.put(key, value);
    }

    private String getExtra(String key) {
        if (this.mExtras != null) {
            return (String) this.mExtras.get(key);
        }
        return null;
    }

    public int getScenarioId() {
        return this.mScenarioId;
    }

    public void setScenarioId(int scenarioId) {
        this.mScenarioId = scenarioId;
    }

    public String getServerId() {
        return this.mServerId;
    }

    public void setServerId(String serverId) {
        this.mServerId = serverId;
    }

    public long getServerTag() {
        return this.mServerTag;
    }

    public void setServerTag(long serverTag) {
        this.mServerTag = serverTag;
    }

    public int getLocalFlag() {
        return this.mLocalFlag;
    }

    public void setLocalFlag(int localFlag) {
        this.mLocalFlag = localFlag;
    }

    public long getUpdateTime() {
        return this.mUpdateTime;
    }

    public void setUpdateTime(long updateTime) {
        this.mUpdateTime = updateTime;
    }

    public int getCreateBy() {
        return this.mCreateBy;
    }

    public void setCreateBy(int createBy) {
        this.mCreateBy = createBy;
    }

    public boolean isIgnored() {
        return this.mIsIgnored;
    }

    public boolean isSyncable() {
        return this.mIsSyncable;
    }

    public long getValidStartTime() {
        return this.mValidStartTime;
    }

    public long getValidEndTime() {
        return this.mValidEndTime;
    }

    public boolean isTop() {
        return this.mIsTop;
    }

    public CardExtraInfo getCardExtraInfo() {
        return new CardExtraInfo(this.mUniqueKey, this.mIsIgnored);
    }

    public void setCardExtraInfo(CardExtraInfo cardExtraInfo) {
        if (cardExtraInfo != null) {
            this.mUniqueKey = cardExtraInfo.uniqueKey;
            this.mIsIgnored = cardExtraInfo.isIgnored;
        }
    }

    public boolean isValid() {
        return this.mLocalFlag == 0 || this.mLocalFlag == 2 || this.mLocalFlag == 3;
    }

    public boolean isOutofDate() {
        long now = System.currentTimeMillis();
        return this.mValidStartTime > now || this.mValidEndTime < now;
    }

    protected List<TableColumn> getTableColumns() {
        ArrayList<TableColumn> columns = new ArrayList();
        Entity.addColumn(columns, "cardId", "INTEGER");
        Entity.addColumn(columns, "title", "TEXT");
        Entity.addColumn(columns, "description", "TEXT");
        Entity.addColumn(columns, "actionText", "TEXT");
        Entity.addColumn(columns, "actionUrl", "TEXT");
        Entity.addColumn(columns, "detailUrl", "TEXT");
        Entity.addColumn(columns, "imageUri", "TEXT");
        Entity.addColumn(columns, "createTime", "INTEGER");
        Entity.addColumn(columns, "deletable", "INTEGER");
        Entity.addColumn(columns, nexExportFormat.TAG_FORMAT_TYPE, "INTEGER");
        Entity.addColumn(columns, "styles", "TEXT");
        Entity.addColumn(columns, "extras", "TEXT");
        Entity.addColumn(columns, "scenarioId", "INTEGER");
        Entity.addColumn(columns, "serverId", "TEXT");
        Entity.addColumn(columns, "serverTag", "INTEGER");
        Entity.addColumn(columns, "localFlag", "INTEGER");
        Entity.addColumn(columns, "updateTime", "INTEGER");
        Entity.addColumn(columns, "createdBy", "INTEGER");
        Entity.addColumn(columns, "ignored", "INTEGER");
        Entity.addColumn((List) columns, "syncable", "INTEGER", String.valueOf(1));
        Entity.addColumn((List) columns, "validStart", "INTEGER", String.valueOf(0));
        Entity.addColumn((List) columns, "validEnd", "INTEGER", String.valueOf(Long.MAX_VALUE));
        Entity.addColumn((List) columns, "isTop", "INTEGER", String.valueOf(0));
        return columns;
    }

    protected void onInitFromCursor(Cursor cursor) {
        boolean z;
        boolean z2 = true;
        this.mTitle = Entity.getString(cursor, "title");
        this.mDescription = Entity.getString(cursor, "description");
        this.mDetailUrl = Entity.getString(cursor, "detailUrl");
        this.mActionUrl = Entity.getString(cursor, "actionUrl");
        String imageUri = Entity.getString(cursor, "imageUri");
        if (imageUri != null) {
            this.mImageUri = Uri.parse(imageUri);
        }
        this.mCreateTime = Entity.getLong(cursor, "createTime");
        this.mIsDeletable = Entity.getInt(cursor, "deletable") == 1;
        setType(Entity.getInt(cursor, nexExportFormat.TAG_FORMAT_TYPE));
        parseStyles(Entity.getString(cursor, "styles"));
        this.mExtras = stringToMap(Entity.getString(cursor, "extras"));
        this.mUniqueKey = (UniqueKey) GsonUtils.fromJson(getExtra("unique_key"), UniqueKey.class);
        this.mOperationInfo = (OperationInfo) GsonUtils.fromJson(getExtra("operation_info"), OperationInfo.class);
        try {
            this.mAllMediaSha1s = GsonUtils.getArray(getExtra("all_images"), (Type) String.class);
            this.mSelectedMediaSha1s = GsonUtils.getArray(getExtra("selected_images"), (Type) String.class);
            this.mCoverMediaFeatureItems = GsonUtils.getArray(getExtra("covers"), (Type) MediaFeatureItem.class);
        } catch (JSONException e) {
            Log.e("Card", "Create card from cursor error:" + e);
        }
        this.mScenarioId = Entity.getInt(cursor, "scenarioId");
        if (this.mScenarioId <= 0) {
            int scenarioId;
            if (this.mUniqueKey != null) {
                scenarioId = this.mUniqueKey.getScenarioId();
            } else {
                scenarioId = 0;
            }
            this.mScenarioId = scenarioId;
        }
        this.mServerId = Entity.getString(cursor, "serverId");
        this.mServerTag = Entity.getLong(cursor, "serverTag");
        this.mLocalFlag = Entity.getInt(cursor, "localFlag");
        this.mUpdateTime = Entity.getLong(cursor, "updateTime");
        this.mCreateBy = Entity.getInt(cursor, "createdBy");
        if (Entity.getInt(cursor, "ignored") == 1) {
            z = true;
        } else {
            z = false;
        }
        this.mIsIgnored = z;
        if (Entity.getInt(cursor, "syncable") == 1) {
            z = true;
        } else {
            z = false;
        }
        this.mIsSyncable = z;
        this.mValidStartTime = Entity.getLong(cursor, "validStart");
        this.mValidEndTime = Entity.getLong(cursor, "validEnd");
        if (Entity.getInt(cursor, "isTop") != 1) {
            z2 = false;
        }
        this.mIsTop = z2;
    }

    protected synchronized void onConvertToContents(ContentValues values) {
        int i = 1;
        synchronized (this) {
            int i2;
            values.put("title", this.mTitle);
            values.put("description", this.mDescription);
            values.putNull("actionText");
            values.put("actionUrl", this.mActionUrl);
            values.put("detailUrl", this.mDetailUrl);
            if (this.mImageUri == null) {
                values.putNull("imageUri");
            } else {
                values.put("imageUri", this.mImageUri.toString());
            }
            values.put("createTime", Long.valueOf(this.mCreateTime));
            values.put("deletable", Integer.valueOf(this.mIsDeletable ? 1 : 0));
            values.put(nexExportFormat.TAG_FORMAT_TYPE, Integer.valueOf(getType()));
            values.put("styles", wrapStyles());
            putExtra("unique_key", GsonUtils.toString(this.mUniqueKey));
            putExtra("operation_info", GsonUtils.toString(this.mOperationInfo));
            putExtra("all_images", GsonUtils.toString(this.mAllMediaSha1s));
            putExtra("selected_images", GsonUtils.toString(this.mSelectedMediaSha1s));
            putExtra("covers", GsonUtils.toString(this.mCoverMediaFeatureItems));
            values.put("extras", mapToString(this.mExtras));
            values.put("scenarioId", Integer.valueOf(this.mScenarioId));
            values.put("serverId", this.mServerId);
            values.put("serverTag", Long.valueOf(this.mServerTag));
            values.put("localFlag", Integer.valueOf(this.mLocalFlag));
            values.put("updateTime", Long.valueOf(this.mUpdateTime));
            values.put("createdBy", Integer.valueOf(this.mCreateBy));
            values.put("ignored", Integer.valueOf(this.mIsIgnored ? 1 : 0));
            String str = "syncable";
            if (this.mIsSyncable) {
                i2 = 1;
            } else {
                i2 = 0;
            }
            values.put(str, Integer.valueOf(i2));
            values.put("validStart", Long.valueOf(this.mValidStartTime));
            values.put("validEnd", Long.valueOf(this.mValidEndTime));
            String str2 = "isTop";
            if (!this.mIsTop) {
                i = 0;
            }
            values.put(str2, Integer.valueOf(i));
        }
    }

    synchronized void copyFrom(Card srcCard) {
        if (srcCard != null) {
            this.mTitle = srcCard.getTitle();
            this.mDescription = srcCard.getDescription();
            this.mActionUrl = srcCard.getActionUrl();
            this.mDetailUrl = srcCard.getDetailUrl();
            this.mImageUri = srcCard.getImageUri();
            this.mCreateTime = srcCard.getCreateTime();
            this.mIsDeletable = srcCard.isDeletable();
            this.mType = srcCard.getType();
            this.mUniqueKey = srcCard.getUniqueKey();
            this.mOperationInfo = srcCard.getOperationInfo();
            this.mAllMediaSha1s = srcCard.getAllMediaSha1s();
            this.mSelectedMediaSha1s = srcCard.getSelectedMediaSha1s();
            this.mCoverMediaFeatureItems = srcCard.getCoverMediaFeatureItems();
            this.mImageResId = srcCard.getImageResId(GalleryApp.sGetAndroidContext());
            this.mBaseColor = srcCard.getBaseColor();
            this.mScenarioId = srcCard.getScenarioId();
            this.mServerId = srcCard.getServerId();
            this.mServerTag = srcCard.getServerTag();
            this.mLocalFlag = srcCard.getLocalFlag();
            this.mUpdateTime = srcCard.getUpdateTime();
            this.mCreateBy = srcCard.getCreateBy();
            this.mIsIgnored = srcCard.isIgnored();
            this.mIsSyncable = srcCard.isSyncable();
            this.mValidStartTime = srcCard.getValidStartTime();
            this.mValidEndTime = srcCard.getValidEndTime();
            this.mIsTop = srcCard.isTop();
        }
    }

    protected String[] getUniqueConstraints() {
        return new String[]{"_id"};
    }

    public int getType() {
        return this.mType;
    }

    public synchronized boolean isEmpty() {
        boolean z;
        z = (this.mType == 2 || BaseMiscUtil.isValid(this.mSelectedMediaSha1s)) ? false : true;
        return z;
    }

    public synchronized boolean isCoversNeedRefresh() {
        boolean z = false;
        synchronized (this) {
            if (this.mSelectedMediaSha1s != null) {
                if (this.mCoverMediaFeatureItems != null) {
                    Set<String> coverImageSha1Set = new HashSet();
                    for (MediaFeatureItem mediaFeatureItem : this.mCoverMediaFeatureItems) {
                        if (mediaFeatureItem != null) {
                            coverImageSha1Set.add(mediaFeatureItem.getSha1());
                        }
                    }
                    for (String mediaSha1 : this.mSelectedMediaSha1s) {
                        if (coverImageSha1Set.contains(mediaSha1)) {
                            coverImageSha1Set.remove(mediaSha1);
                        }
                    }
                    if (!coverImageSha1Set.isEmpty() || (this.mCoverMediaFeatureItems.size() < 5 && this.mSelectedMediaSha1s.size() >= 5)) {
                        z = true;
                    }
                } else {
                    z = true;
                }
            }
        }
        return z;
    }

    private void setType(int type) {
        this.mType = type;
    }

    private void parseStyles(String str) {
        HashMap<String, String> styles = stringToMap(str);
        if (styles != null) {
            this.mBaseColor = stringToInt((String) styles.get("baseColor"));
        }
    }

    private String wrapStyles() {
        HashMap<String, String> styles = new HashMap();
        styles.put("baseColor", String.valueOf(this.mBaseColor));
        return mapToString(styles);
    }

    public boolean isLocalDeleted() {
        return this.mLocalFlag == 1;
    }

    public String generateDuplicateKey() {
        return this.mScenarioId + "_" + this.mCreateTime;
    }

    public int compareTo(Card o) {
        int topCompare = -Boolean.compare(this.mIsTop, o.mIsTop);
        if (topCompare == 0) {
            return -Long.compare(this.mCreateTime, o.mCreateTime);
        }
        return topCompare;
    }

    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (!(o instanceof Card)) {
            return false;
        }
        if (this.mId != ((Card) o).mId) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return (int) this.mId;
    }

    public synchronized boolean removeImages(List<String> imageSha1s) {
        int removeCount;
        removeCount = 0;
        if (BaseMiscUtil.isValid(this.mSelectedMediaSha1s) && BaseMiscUtil.isValid(this.mAllMediaSha1s) && BaseMiscUtil.isValid(imageSha1s)) {
            for (String deleteSha1 : imageSha1s) {
                if (this.mSelectedMediaSha1s.contains(deleteSha1) && this.mSelectedMediaSha1s.remove(deleteSha1)) {
                    removeCount++;
                }
                if (this.mAllMediaSha1s.contains(deleteSha1)) {
                    this.mAllMediaSha1s.remove(deleteSha1);
                }
            }
        }
        if (removeCount > 0) {
            Log.d("Card", "Delete %d images from Card %d", Integer.valueOf(removeCount), Long.valueOf(this.mId));
        }
        return removeCount > 0;
    }

    public long getRecordStartTime() {
        return getUniqueKey() != null ? getUniqueKey().getStartTime() : -1;
    }

    public long getRecordTargetTime() {
        return getUniqueKey() != null ? getUniqueKey().getTargetTime() : -1;
    }

    private static Uri decodeUri(Uri uri) {
        return uri == null ? uri : Uri.parse(Uri.decode(uri.toString()));
    }

    public static Uri convertResIdToUri(Context context, int resId) {
        String type = context.getResources().getResourceTypeName(resId);
        String entry = context.getResources().getResourceEntryName(resId);
        return Uri.parse(String.format("%s://%s", new Object[]{type, entry}));
    }

    public static int convertUriToResId(Context context, Uri uri) {
        String type = uri.getScheme();
        String entry = uri.getAuthority();
        String packageName = context.getPackageName();
        return context.getResources().getIdentifier(String.format("%s/%s", new Object[]{type, entry}), null, packageName);
    }

    private static String mapToString(HashMap<String, String> map) {
        String str = null;
        if (map == null) {
            return str;
        }
        try {
            return new Gson().toJson((Object) map);
        } catch (Object e) {
            Log.e("Card", "mapToString occur error.\n", e);
            return str;
        }
    }

    private static HashMap<String, String> stringToMap(String str) {
        if (str == null) {
            return null;
        }
        try {
            return (HashMap) new Gson().fromJson(str, new TypeToken<HashMap<String, String>>() {
            }.getType());
        } catch (Object e) {
            Log.e("Card", "stringToMap occur error.\n", e);
            return null;
        }
    }

    private static int stringToInt(String str) {
        int i = 0;
        if (str == null) {
            return i;
        }
        try {
            return Integer.valueOf(str).intValue();
        } catch (Object e) {
            Log.e("Card", "stringToInt occur error.\n", e);
            return i;
        }
    }
}
