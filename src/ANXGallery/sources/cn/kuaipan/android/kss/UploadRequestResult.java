package cn.kuaipan.android.kss;

import android.util.Log;
import cn.kuaipan.android.exception.KscException;
import cn.kuaipan.android.kss.IKssUploadRequestResult.Block;
import cn.kuaipan.android.utils.ApiDataHelper;
import cn.kuaipan.android.utils.Encode;
import java.util.Arrays;
import java.util.Collection;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class UploadRequestResult implements IKssUploadRequestResult, KssDef {
    private Block[] blocks;
    private final String file_meta;
    private String[] node_urls;
    private final byte[] secure_key;

    public UploadRequestResult(Map<String, Object> kssData) throws KscException {
        int i;
        int i2;
        this.secure_key = Encode.hexStringToByteArray(ApiDataHelper.asString(kssData, "secure_key"));
        this.file_meta = ApiDataHelper.asString(kssData, "file_meta");
        Collection<Map<String, Object>> blockDatas = (Collection) kssData.get("block_metas");
        if (blockDatas != null) {
            this.blocks = new Block[blockDatas.size()];
            i = 0;
            for (Map<String, Object> blockData : blockDatas) {
                boolean exist;
                if (ApiDataHelper.asNumber(blockData.get("is_existed"), Integer.valueOf(0)).intValue() != 0) {
                    exist = true;
                } else {
                    exist = false;
                }
                i2 = i + 1;
                this.blocks[i] = new Block(ApiDataHelper.asString(blockData, exist ? "commit_meta" : "block_meta"), exist);
                i = i2;
            }
        }
        Collection<String> urls = (Collection) kssData.get("node_urls");
        if (urls != null) {
            this.node_urls = new String[urls.size()];
            i = 0;
            for (String url : urls) {
                i2 = i + 1;
                this.node_urls[i] = url;
                i = i2;
            }
        }
    }

    public byte[] getSecureKey() {
        return this.secure_key;
    }

    public String[] getNodeUrls() {
        return this.node_urls;
    }

    public String getFileMeta() {
        return this.file_meta;
    }

    public int getBlockCount() {
        return this.blocks == null ? 0 : this.blocks.length;
    }

    public Block getBlock(int index) {
        if (this.blocks == null || index >= this.blocks.length) {
            return null;
        }
        return this.blocks[index];
    }

    public boolean isCompleted() {
        if (this.blocks == null) {
            return true;
        }
        for (Block block : this.blocks) {
            if (!block.exist) {
                return false;
            }
        }
        return true;
    }

    public String toString() {
        JSONObject root;
        try {
            JSONObject root2 = new JSONObject();
            try {
                JSONArray urls;
                root2.put("secure_key", Encode.byteArrayToHexString(this.secure_key));
                root2.put("file_meta", this.file_meta);
                if (this.node_urls != null) {
                    urls = new JSONArray(Arrays.asList(this.node_urls));
                } else {
                    urls = new JSONArray();
                }
                root2.put("node_urls", urls);
                JSONArray blocks = new JSONArray();
                if (this.blocks != null) {
                    for (Block block : this.blocks) {
                        int i;
                        JSONObject blockObj = new JSONObject();
                        String str = "is_existed";
                        if (block.exist) {
                            i = 1;
                        } else {
                            i = 0;
                        }
                        blockObj.put(str, i);
                        if (block.exist) {
                            blockObj.put("commit_meta", block.meta);
                        } else {
                            blockObj.put("block_meta", block.meta);
                        }
                        blocks.put(blockObj);
                    }
                }
                root2.put("block_metas", blocks);
                root = root2;
            } catch (JSONException e) {
                root = root2;
                Log.w("UploadRequestResult", "Failed generate Json String for UploadRequestResult");
                root = null;
                return String.valueOf(root);
            }
        } catch (JSONException e2) {
            Log.w("UploadRequestResult", "Failed generate Json String for UploadRequestResult");
            root = null;
            return String.valueOf(root);
        }
        return String.valueOf(root);
    }
}
