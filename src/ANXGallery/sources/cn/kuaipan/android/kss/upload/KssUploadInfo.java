package cn.kuaipan.android.kss.upload;

import android.util.Log;
import cn.kuaipan.android.kss.IKssUploadRequestResult;
import cn.kuaipan.android.kss.KssDef;
import cn.kuaipan.android.utils.OAuthTimeUtils;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class KssUploadInfo implements KssDef {
    boolean mBroken;
    ServerExpect mExpectInfo;
    private final UploadFileInfo mFileInfo;
    private final long mGenerateTime;
    private long mMaxChunkSize;
    private final IKssUploadRequestResult mRequestResult;
    private String mUploadId;

    public KssUploadInfo(UploadFileInfo fileInfo, IKssUploadRequestResult requestResult) {
        this(fileInfo, requestResult, OAuthTimeUtils.currentTime());
    }

    public KssUploadInfo(UploadFileInfo fileInfo, IKssUploadRequestResult requestResult, long generateTime) {
        this.mBroken = false;
        this.mMaxChunkSize = 4194304;
        this.mExpectInfo = null;
        this.mFileInfo = fileInfo;
        this.mRequestResult = requestResult;
        this.mGenerateTime = generateTime;
    }

    public UploadFileInfo getFileInfo() {
        return this.mFileInfo;
    }

    public IKssUploadRequestResult getRequestResult() {
        return this.mRequestResult;
    }

    public boolean isCompleted() {
        return this.mRequestResult != null && this.mRequestResult.isCompleted();
    }

    public long getGenerateTime() {
        return this.mGenerateTime;
    }

    public String getCommitString() {
        JSONObject root;
        try {
            JSONObject root2 = new JSONObject();
            try {
                root2.put("file_meta", this.mRequestResult.getFileMeta());
                int count = this.mRequestResult.getBlockCount();
                JSONArray blocks = new JSONArray();
                if (this.mRequestResult != null && count > 0) {
                    for (int i = 0; i < count; i++) {
                        JSONObject blockObj = new JSONObject();
                        blockObj.put("commit_meta", this.mRequestResult.getBlock(i).meta);
                        blocks.put(blockObj);
                    }
                }
                root2.put("commit_metas", blocks);
                root = root2;
            } catch (JSONException e) {
                root = root2;
                Log.w("KssUploadInfo", "Failed generate Json String for UploadRequestResult");
                root = null;
                return String.valueOf(root);
            }
        } catch (JSONException e2) {
            Log.w("KssUploadInfo", "Failed generate Json String for UploadRequestResult");
            root = null;
            return String.valueOf(root);
        }
        return String.valueOf(root);
    }

    public boolean isBroken() {
        return this.mBroken;
    }

    public void markBroken() {
        this.mBroken = true;
    }

    public String getUploadId() {
        return this.mUploadId;
    }

    public void setUploadId(String mUploadId) {
        this.mUploadId = mUploadId;
    }

    public long getMaxChunkSize() {
        return this.mMaxChunkSize;
    }

    public void setMaxChunkSize(long mMaxChunkSize) {
        this.mMaxChunkSize = mMaxChunkSize;
    }
}
