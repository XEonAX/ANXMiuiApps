package cn.kuaipan.android.kss;

import android.util.Log;
import cn.kuaipan.android.exception.KscException;
import cn.kuaipan.android.kss.IKssDownloadRequestResult.Block;
import cn.kuaipan.android.utils.ApiDataHelper;
import cn.kuaipan.android.utils.Encode;
import java.util.Arrays;
import java.util.Collection;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class DownloadRequestResult implements IKssDownloadRequestResult, KssDef {
    private Block[] blocks;
    private byte[] secure_key;
    private final String stat;

    public DownloadRequestResult(Map<String, Object> kssData) throws KscException {
        this.stat = ApiDataHelper.asString(kssData, "stat");
        if ("OK".equalsIgnoreCase(this.stat)) {
            this.secure_key = Encode.hexStringToByteArray(ApiDataHelper.asString(kssData, "secure_key"));
            Collection<Map<String, Object>> blockDatas = (Collection) kssData.get("blocks");
            if (blockDatas != null) {
                this.blocks = new Block[blockDatas.size()];
                int i = 0;
                for (Map<String, Object> blockData : blockDatas) {
                    String sha1 = ApiDataHelper.asString(blockData, "sha1");
                    long size = ApiDataHelper.asNumber(blockData.get("size"), Integer.valueOf(0)).longValue();
                    String[] urls = null;
                    Collection<String> urlDatas = (Collection) blockData.get("urls");
                    if (urlDatas != null) {
                        urls = new String[urlDatas.size()];
                        int j = 0;
                        for (String url : urlDatas) {
                            int j2 = j + 1;
                            urls[j] = url;
                            j = j2;
                        }
                    }
                    int i2 = i + 1;
                    this.blocks[i] = new Block(sha1, urls, size);
                    i = i2;
                }
            }
        }
    }

    public int getStatus() {
        return "OK".equalsIgnoreCase(this.stat) ? 0 : -1;
    }

    public String getMessage() {
        return this.stat;
    }

    public String getHash() {
        int i;
        int i2 = 0;
        StringBuilder builder = new StringBuilder();
        if (this.blocks == null) {
            i = 0;
        } else {
            i = this.blocks.length;
        }
        builder.append(i);
        builder.append(':');
        builder.append(getTotalSize());
        builder.append(':');
        StringBuilder blockStr = new StringBuilder();
        if (this.blocks != null) {
            Block[] blockArr = this.blocks;
            int length = blockArr.length;
            while (i2 < length) {
                blockStr.append(blockArr[i2].sha1);
                i2++;
            }
        }
        builder.append(Encode.MD5Encode(blockStr.toString().getBytes()));
        return builder.toString();
    }

    public byte[] getSecureKey() {
        return this.secure_key;
    }

    public int getBlockCount() {
        return this.blocks == null ? -1 : this.blocks.length;
    }

    public Block getBlock(int index) {
        return this.blocks[index];
    }

    public String[] getBlockUrls(long start) {
        if (start < 0 || this.blocks == null) {
            return null;
        }
        long pos = 0;
        for (int i = 0; i < this.blocks.length; i++) {
            long end = pos + this.blocks[i].size;
            if (start >= pos && start < end) {
                return this.blocks[i].urls;
            }
            pos = end;
        }
        return null;
    }

    public String toString() {
        JSONObject root;
        try {
            JSONObject root2 = new JSONObject();
            try {
                root2.put("stat", this.stat);
                root2.put("secure_key", Encode.byteArrayToHexString(this.secure_key));
                JSONArray blocks = new JSONArray();
                if (this.blocks != null) {
                    for (Block block : this.blocks) {
                        JSONArray urls;
                        JSONObject blockObj = new JSONObject();
                        blockObj.put("sha1", block.sha1);
                        blockObj.put("size", block.size);
                        if (block.urls != null) {
                            urls = new JSONArray(Arrays.asList(block.urls));
                        } else {
                            urls = new JSONArray();
                        }
                        blockObj.put("urls", urls);
                        blocks.put(blockObj);
                    }
                }
                root2.put("blocks", blocks);
                root = root2;
            } catch (JSONException e) {
                root = root2;
                Log.w("DownloadRequestResult", "Failed generate Json String for UploadRequestResult");
                root = null;
                return String.valueOf(root);
            }
        } catch (JSONException e2) {
            Log.w("DownloadRequestResult", "Failed generate Json String for UploadRequestResult");
            root = null;
            return String.valueOf(root);
        }
        return String.valueOf(root);
    }

    public long getTotalSize() {
        if (this.blocks == null) {
            return 0;
        }
        long result = 0;
        for (Block block : this.blocks) {
            result += block.size;
        }
        return result;
    }

    public long getModifyTime() {
        return -1;
    }
}
