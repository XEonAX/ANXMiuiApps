package com.miui.gallery.assistant.model;

import android.content.ContentValues;
import android.database.Cursor;
import com.miui.gallery.assistant.AssistantConstants;
import com.miui.gallery.assistant.algorithm.Algorithm;
import com.miui.gallery.assistant.jni.filter.ISceneResult;
import com.miui.gallery.assistant.jni.filter.SceneResult;
import com.miui.gallery.assistant.jni.score.QualityScore;
import com.miui.gallery.dao.base.Entity;
import com.miui.gallery.dao.base.TableColumn;
import com.miui.gallery.util.GsonUtils;
import java.util.ArrayList;
import java.util.List;

public class ImageFeature extends Entity implements Comparable<ImageFeature> {
    public static final String ALL_FEATURE_PROCESSED_SELECTION = ("imageId>0 AND version = 2 AND (imageType = 0 OR imageType = 1) AND " + getFlagsMatchSql(Algorithm.FLAG_ALL_ARRAY));
    public static final String ALL_IQA_CLUSTER_SELECTION = ("imageId>0 AND version = 2 AND (imageType = 0 OR imageType = 1) AND resultFlag & " + Integer.toString(1) + " > 0" + " AND " + "clusterGroupId" + ">0");
    public static final String ALL_PROCESSED_SELECTION = ("imageId>0 AND version = 2 AND (imageType = 0 OR imageType = 1) AND " + getFlagsMatchSql(Algorithm.FLAG_ALL_ARRAY) + " AND " + "clusterGroupId" + ">0");
    public static final String SCENE_TAG_SELECTION = ("imageId>0 AND version = 2 AND (imageType = 0 OR imageType = 1) AND resultFlag & " + Integer.toString(16) + " > 0" + " AND " + "imageDatetime" + ">?" + " AND " + "imageDatetime" + "<?" + " AND " + "(" + "sceneTagA" + " IN (%s)" + " OR " + "sceneTagB" + " IN (%s)" + " OR " + "sceneTagC" + " IN (%s)" + ")");
    private float[] mClusterFeature;
    private long mClusterGroupId;
    private long mCreateTime;
    private long mImageDateTime;
    private long mImageId;
    private int mImageType;
    private double mIqaBala;
    private double mIqaBlur;
    private int mIqaBlurType;
    private double mIqaComp;
    private double mIqaExpo;
    private double mIqaHaze;
    private double mIqaNima;
    private double mIqaNois;
    private double mIqaSatu;
    private int mResultFlag;
    private float mSceneScore;
    private int mSceneTag;
    private int mSceneTagA;
    private int mSceneTagB;
    private int mSceneTagC;
    private double mScore;
    private String mSha1;
    private int mVersion;

    private ImageFeature() {
        this.mVersion = 2;
    }

    public ImageFeature(long id, String sha1, long mixedDataTime) {
        this.mImageId = id;
        this.mSha1 = sha1;
        this.mVersion = 2;
        this.mSceneTag = -1;
        this.mSceneScore = 0.0f;
        this.mIqaBlurType = -1;
        this.mSceneTagA = -1;
        this.mSceneTagB = -1;
        this.mSceneTagC = -1;
        this.mImageType = 0;
        this.mCreateTime = System.currentTimeMillis();
        this.mImageDateTime = mixedDataTime;
    }

    public void setFeatureFlag(int flag) {
        this.mResultFlag |= flag;
    }

    public void setVersion(int version) {
        this.mVersion = version;
    }

    public boolean isFeatureDone(int flag) {
        return (this.mResultFlag & flag) > 0;
    }

    public int getFeatureFlag() {
        return this.mResultFlag;
    }

    public double getScore() {
        return this.mScore;
    }

    public long getImageId() {
        return this.mImageId;
    }

    public String getSha1() {
        return this.mSha1;
    }

    public float[] getClusterFeature() {
        return this.mClusterFeature;
    }

    public boolean hasClusterFeature() {
        return this.mClusterFeature != null && this.mClusterFeature.length == 1024;
    }

    public long getClusterGroupId() {
        return this.mClusterGroupId;
    }

    public void setSceneResult(SceneResult sceneResult) {
        if (sceneResult != null) {
            this.mSceneTag = sceneResult.getTag();
            this.mSceneScore = sceneResult.getScore();
            setFeatureFlag(2);
            return;
        }
        this.mSceneTag = -1;
        this.mSceneScore = 0.0f;
    }

    public void setSceneResult(ISceneResult sceneResult) {
        if (sceneResult != null) {
            List<Integer> validTop3Tag = sceneResult.getTags(3);
            if (validTop3Tag != null) {
                int tagCount = validTop3Tag.size();
                if (tagCount > 0) {
                    this.mSceneTagA = ((Integer) validTop3Tag.get(0)).intValue();
                }
                if (tagCount > 1) {
                    this.mSceneTagB = ((Integer) validTop3Tag.get(1)).intValue();
                }
                if (tagCount > 2) {
                    this.mSceneTagC = ((Integer) validTop3Tag.get(2)).intValue();
                }
            }
            setFeatureFlag(16);
            return;
        }
        this.mSceneTagA = -1;
        this.mSceneTagB = -1;
        this.mSceneTagC = -1;
    }

    public void setQualityScore(QualityScore qualityScore) {
        if (qualityScore != null) {
            this.mIqaExpo = qualityScore.getIqaExpo();
            this.mIqaSatu = qualityScore.getIqaSatu();
            this.mIqaBala = qualityScore.getIqaBala();
            this.mIqaHaze = qualityScore.getIqaHaze();
            this.mIqaNois = qualityScore.getIqaNois();
            this.mIqaBlur = qualityScore.getIqaBlur();
            this.mIqaComp = qualityScore.getIqaComp();
            this.mIqaNima = qualityScore.getIqaNima();
            this.mIqaBlurType = (int) qualityScore.getIqaBlurType();
            this.mScore = this.mIqaNima;
            setFeatureFlag(1);
        }
    }

    public void setClusterFeature(float[] clusterFeature) {
        if (clusterFeature != null) {
            this.mClusterFeature = clusterFeature;
            setFeatureFlag(4);
        }
    }

    public void setImageType(int imageType) {
        this.mImageType = imageType;
    }

    public long getImageDateTime() {
        return this.mImageDateTime;
    }

    protected List<TableColumn> getTableColumns() {
        ArrayList<TableColumn> columns = new ArrayList();
        Entity.addColumn((List) columns, "imageId", "INTEGER", true);
        Entity.addColumn(columns, "sha1", "TEXT");
        Entity.addColumn(columns, "version", "INTEGER");
        Entity.addColumn(columns, "score", "REAL");
        Entity.addColumn(columns, "sceneTag", "INTEGER");
        Entity.addColumn(columns, "sceneScore", "REAL");
        Entity.addColumn(columns, "iqaExpo", "REAL");
        Entity.addColumn(columns, "iqaSatu", "REAL");
        Entity.addColumn(columns, "iqaBala", "REAL");
        Entity.addColumn(columns, "iqaHaze", "REAL");
        Entity.addColumn(columns, "iqaNois", "REAL");
        Entity.addColumn(columns, "iqaBlur", "REAL");
        Entity.addColumn(columns, "iqaComP", "REAL");
        Entity.addColumn(columns, "iqaNima", "REAL");
        Entity.addColumn(columns, "iqaBlueType", "INTEGER");
        Entity.addColumn(columns, "clusterFeature", "TEXT");
        Entity.addColumn(columns, "sceneTagA", "INTEGER");
        Entity.addColumn(columns, "sceneTagB", "INTEGER");
        Entity.addColumn(columns, "sceneTagC", "INTEGER");
        Entity.addColumn(columns, "resultFlag", "INTEGER");
        Entity.addColumn(columns, "clusterGroupId", "INTEGER");
        Entity.addColumn(columns, "imageType", "INTEGER");
        Entity.addColumn(columns, "createTime", "INTEGER");
        Entity.addColumn(columns, "imageDatetime", "INTEGER");
        return columns;
    }

    protected void onInitFromCursor(Cursor cursor) {
        this.mImageId = Entity.getLong(cursor, "imageId");
        this.mSha1 = Entity.getStringDefault(cursor, "sha1", "");
        this.mVersion = Entity.getIntDefault(cursor, "version", 0);
        this.mScore = Entity.getDoubleDefault(cursor, "score", 0.0d);
        this.mSceneTag = Entity.getIntDefault(cursor, "sceneTag", -1);
        this.mSceneScore = Entity.getFloatDefault(cursor, "sceneScore", 0.0f);
        this.mIqaExpo = Entity.getDoubleDefault(cursor, "iqaExpo", 0.0d);
        this.mIqaSatu = Entity.getDoubleDefault(cursor, "iqaSatu", 0.0d);
        this.mIqaBala = Entity.getDoubleDefault(cursor, "iqaBala", 0.0d);
        this.mIqaHaze = Entity.getDoubleDefault(cursor, "iqaHaze", 0.0d);
        this.mIqaNois = Entity.getDoubleDefault(cursor, "iqaNois", 0.0d);
        this.mIqaBlur = Entity.getDoubleDefault(cursor, "iqaBlur", 0.0d);
        this.mIqaBlurType = Entity.getIntDefault(cursor, "iqaBlueType", -1);
        this.mIqaComp = Entity.getDoubleDefault(cursor, "iqaComP", 0.0d);
        this.mIqaNima = Entity.getDoubleDefault(cursor, "iqaNima", 0.0d);
        this.mClusterFeature = (float[]) GsonUtils.fromJson(Entity.getStringDefault(cursor, "clusterFeature", ""), float[].class);
        this.mSceneTagA = Entity.getIntDefault(cursor, "sceneTagA", -1);
        this.mSceneTagB = Entity.getIntDefault(cursor, "sceneTagB", -1);
        this.mSceneTagC = Entity.getIntDefault(cursor, "sceneTagC", -1);
        this.mResultFlag = Entity.getIntDefault(cursor, "resultFlag", 0);
        this.mClusterGroupId = Entity.getLongDefault(cursor, "clusterGroupId", 0);
        this.mImageType = Entity.getIntDefault(cursor, "imageType", 0);
        this.mCreateTime = Entity.getLongDefault(cursor, "createTime", 0);
        this.mImageDateTime = Entity.getLongDefault(cursor, "imageDatetime", 0);
    }

    protected void onConvertToContents(ContentValues values) {
        values.put("imageId", Long.valueOf(this.mImageId));
        values.put("sha1", this.mSha1);
        values.put("version", Integer.valueOf(this.mVersion));
        values.put("score", Double.valueOf(this.mScore));
        values.put("sceneTag", Integer.valueOf(this.mSceneTag));
        values.put("sceneScore", Float.valueOf(this.mSceneScore));
        values.put("iqaExpo", Double.valueOf(this.mIqaExpo));
        values.put("iqaSatu", Double.valueOf(this.mIqaSatu));
        values.put("iqaBala", Double.valueOf(this.mIqaBala));
        values.put("iqaHaze", Double.valueOf(this.mIqaHaze));
        values.put("iqaNois", Double.valueOf(this.mIqaNois));
        values.put("iqaBlur", Double.valueOf(this.mIqaBlur));
        values.put("iqaBlueType", Integer.valueOf(this.mIqaBlurType));
        values.put("iqaComP", Double.valueOf(this.mIqaComp));
        values.put("iqaNima", Double.valueOf(this.mIqaNima));
        values.put("sceneTagA", Integer.valueOf(this.mSceneTagA));
        values.put("sceneTagB", Integer.valueOf(this.mSceneTagB));
        values.put("sceneTagC", Integer.valueOf(this.mSceneTagC));
        values.put("clusterFeature", GsonUtils.toString(this.mClusterFeature));
        values.put("resultFlag", Integer.valueOf(this.mResultFlag));
        values.put("clusterGroupId", Long.valueOf(this.mClusterGroupId));
        values.put("imageType", Integer.valueOf(this.mImageType));
        values.put("createTime", Long.valueOf(this.mCreateTime));
        values.put("imageDatetime", Long.valueOf(this.mImageDateTime));
    }

    public String toString() {
        return "ImageFeature{mImageId=" + this.mImageId + ", mVersion=" + this.mVersion + ", mScore=" + this.mScore + ", mSceneTag=" + this.mSceneTag + ", mSceneScore=" + this.mSceneScore + ", mIqaExpo=" + this.mIqaExpo + ", mIqaSatu=" + this.mIqaSatu + ", mIqaBala=" + this.mIqaBala + ", mIqaHaze=" + this.mIqaHaze + ", mIqaNois=" + this.mIqaNois + ", mIqaBlur=" + this.mIqaBlur + ", mIqaBlurType=" + this.mIqaBlurType + ", mIqaComp=" + this.mIqaComp + ", mIqaNima=" + this.mIqaNima + ", mSceneTagA=" + this.mSceneTagA + ", mSceneTagB=" + this.mSceneTagB + ", mSceneTagC=" + this.mSceneTagC + ", mResultFlag=" + this.mResultFlag + ", mClusterGroupId=" + this.mClusterGroupId + ", mImageType=" + this.mImageType + ", mCreateTime=" + this.mCreateTime + '}';
    }

    public boolean isPoorImage() {
        return (this.mIqaBlur < 82.0d && this.mIqaBlurType == 0) || this.mIqaNois < 79.4d || this.mIqaExpo < 62.3d;
    }

    public boolean isDocumentImage() {
        int[] tag = AssistantConstants.TAGS_DOCUMENTS;
        int i = 0;
        while (i < tag.length) {
            if (this.mSceneTagA == tag[i] || this.mSceneTagB == tag[i] || this.mSceneTagC == tag[i]) {
                return true;
            }
            i++;
        }
        return false;
    }

    public int compareTo(ImageFeature o) {
        return Double.compare(this.mScore, o.mScore);
    }

    private static String getFlagsMatchSql(int[] flagAllArray) {
        if (flagAllArray == null || flagAllArray.length == 0) {
            return "";
        }
        StringBuilder stringBuilder = new StringBuilder();
        for (int i = 0; i < flagAllArray.length; i++) {
            stringBuilder.append("resultFlag").append(" & ").append(Integer.toString(flagAllArray[i])).append(" > 0");
            if (i != flagAllArray.length - 1) {
                stringBuilder.append(" AND ");
            }
        }
        return stringBuilder.toString();
    }

    public boolean isSelectionFeatureDone() {
        return isFeatureDone(1) && this.mClusterGroupId > 0;
    }
}
