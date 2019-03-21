package cn.kuaipan.android.kss.upload;

import cn.kuaipan.android.kss.KssDef;
import cn.kuaipan.android.utils.ApiDataHelper;
import java.util.HashSet;
import java.util.Map;

class UploadChunkInfo implements KssDef {
    private static final HashSet<String> sReRequestSet = new HashSet();
    private static final HashSet<String> sReTrySet = new HashSet();
    public final String commit_meta;
    public ServerExpect expect_info;
    public long left_bytes;
    public long next_pos;
    public final String stat;
    public final String upload_id;

    public UploadChunkInfo(long nextPos, long leftPos, String uploadId) {
        this.stat = "CONTINUE_UPLOAD";
        this.next_pos = nextPos;
        this.left_bytes = leftPos;
        this.upload_id = uploadId;
        this.commit_meta = null;
    }

    public UploadChunkInfo(Map<String, Object> dataMap) {
        this.stat = ApiDataHelper.asString(dataMap, "stat");
        this.next_pos = ApiDataHelper.asNumber(dataMap.get("next_pos"), Integer.valueOf(-1)).longValue();
        this.left_bytes = ApiDataHelper.asNumber(dataMap.get("left_bytes"), Integer.valueOf(-1)).longValue();
        this.upload_id = ApiDataHelper.asString(dataMap, "upload_id");
        this.commit_meta = ApiDataHelper.asString(dataMap, "commit_meta");
    }

    public boolean isComplete() {
        return "BLOCK_COMPLETED".equalsIgnoreCase(this.stat);
    }

    public boolean isContinue() {
        return "CONTINUE_UPLOAD".equalsIgnoreCase(this.stat);
    }

    static {
        sReRequestSet.add("ERR_INVALID_FILE_META");
        sReRequestSet.add("ERR_INVALID_BLOCK_META");
        sReRequestSet.add("ERR_INVALID_UPLOAD_ID");
        sReRequestSet.add("ERR_INVALID_CHUNK_POS");
        sReRequestSet.add("ERR_INVALID_CHUNK_SIZE");
        sReRequestSet.add("ERR_CHUNK_OUT_OF_RANGE");
        sReTrySet.add("ERR_CHUNK_CORRUPTED");
        sReTrySet.add("ERR_SERVER_EXCEPTION");
        sReTrySet.add("ERR_STORAGE_REQUEST_ERROR");
        sReTrySet.add("ERR_STORAGE_REQUEST_FAILED");
    }

    public boolean canRetry() {
        return sReTrySet.contains(this.stat == null ? null : this.stat.toUpperCase());
    }

    public boolean needBlockRetry() {
        return "ERR_BLOCK_CORRUPTED".equalsIgnoreCase(this.stat);
    }
}
