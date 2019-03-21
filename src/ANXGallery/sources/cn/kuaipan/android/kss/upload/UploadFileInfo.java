package cn.kuaipan.android.kss.upload;

import android.text.TextUtils;
import android.util.Log;
import cn.kuaipan.android.exception.KscException;
import cn.kuaipan.android.exception.KscRuntimeException;
import cn.kuaipan.android.kss.KssDef;
import cn.kuaipan.android.utils.Encode;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class UploadFileInfo implements KssDef {
    private final ArrayList<BlockInfo> mBlockInfos = new ArrayList();
    private String mSha1;

    public static class BlockInfo {
        public final String md5;
        public final String sha1;
        public final int size;

        private BlockInfo(String sha1, String md5, int size) {
            this.sha1 = sha1;
            this.md5 = md5;
            this.size = size;
        }
    }

    public static UploadFileInfo getFileInfo(File file) throws KscException, InterruptedException {
        Throwable e;
        Throwable th;
        IOException e2;
        InputStream in = null;
        try {
            InputStream in2 = new FileInputStream(file);
            try {
                UploadFileInfo info = new UploadFileInfo();
                MessageDigest fileSha1 = MessageDigest.getInstance("SHA1");
                MessageDigest blockSha1 = MessageDigest.getInstance("SHA1");
                MessageDigest blockMd5 = MessageDigest.getInstance("MD5");
                byte[] buf = new byte[8192];
                long pos = 0;
                int blockIndex = 1;
                while (true) {
                    int len = in2.read(buf);
                    if (len < 0) {
                        break;
                    }
                    pos += (long) len;
                    fileSha1.update(buf, 0, len);
                    if (pos < ((long) blockIndex) * 4194304) {
                        blockSha1.update(buf, 0, len);
                        blockMd5.update(buf, 0, len);
                    } else {
                        int blockOffset = len - ((int) (pos - (((long) blockIndex) * 4194304)));
                        blockIndex++;
                        Log.d("UploadFileInfo", "blockoffset: " + blockOffset + " len: " + len + " pos: " + pos + " blockIndex" + blockIndex + buf + " blockOffset > input.length: " + (((long) blockOffset) > ((long) buf.length)));
                        blockSha1.update(buf, 0, blockOffset);
                        blockMd5.update(buf, 0, blockOffset);
                        info.appendBlock(Encode.byteArrayToHexString(blockSha1.digest()), Encode.byteArrayToHexString(blockMd5.digest()), 4194304);
                        if (len > blockOffset) {
                            blockSha1.update(buf, blockOffset, len - blockOffset);
                            blockMd5.update(buf, blockOffset, len - blockOffset);
                        }
                    }
                }
                if (((long) blockIndex) * 4194304 > pos && ((long) blockIndex) * 4194304 < 4194304 + pos) {
                    info.appendBlock(Encode.byteArrayToHexString(blockSha1.digest()), Encode.byteArrayToHexString(blockMd5.digest()), pos - (4194304 * ((long) (blockIndex - 1))));
                } else if (pos == 0) {
                    throw new KscRuntimeException(500003, file + " read error.");
                }
                info.setSha1(Encode.byteArrayToHexString(fileSha1.digest()));
                try {
                    in2.close();
                } catch (Throwable th2) {
                }
                return info;
            } catch (NoSuchAlgorithmException e3) {
                e = e3;
                in = in2;
                try {
                    throw new KscRuntimeException(500005, e);
                } catch (Throwable th3) {
                    th = th3;
                    try {
                        in.close();
                    } catch (Throwable th4) {
                    }
                    throw th;
                }
            } catch (IOException e4) {
                e2 = e4;
                in = in2;
                throw KscException.newException(e2, null);
            } catch (Throwable th5) {
                th = th5;
                in = in2;
                in.close();
                throw th;
            }
        } catch (NoSuchAlgorithmException e5) {
            e = e5;
            throw new KscRuntimeException(500005, e);
        } catch (IOException e6) {
            e2 = e6;
            throw KscException.newException(e2, null);
        }
    }

    private UploadFileInfo() {
    }

    public UploadFileInfo(String kssString) {
        try {
            JSONObject root = new JSONObject(kssString);
            this.mSha1 = root.optString("sha1");
            JSONArray blockArray = root.optJSONArray("block_infos");
            if (blockArray != null) {
                int count = blockArray.length();
                for (int i = 0; i < count; i++) {
                    JSONObject block = blockArray.optJSONObject(i);
                    String sha1 = block == null ? null : block.optString("sha1");
                    String md5 = block == null ? null : block.optString("md5");
                    int size = block == null ? -1 : block.optInt("size", -1);
                    if (!(TextUtils.isEmpty(sha1) || TextUtils.isEmpty(md5) || size < 0)) {
                        appendBlock(sha1, md5, (long) size);
                    }
                }
            }
        } catch (JSONException e) {
            Log.w("UploadFileInfo", "Failed parser UploadFileInfo from a String. The String:" + kssString, e);
        }
    }

    private JSONArray getBlockInfos() {
        try {
            JSONArray jSONArray = new JSONArray();
            Iterator it = this.mBlockInfos.iterator();
            while (it.hasNext()) {
                BlockInfo blockInfo = (BlockInfo) it.next();
                JSONObject block = new JSONObject();
                block.put("sha1", blockInfo.sha1);
                block.put("md5", blockInfo.md5);
                block.put("size", blockInfo.size);
                jSONArray.put(block);
            }
            return jSONArray;
        } catch (Throwable th) {
            Log.w("UploadFileInfo", "Failed generate Json String for UploadRequestInfo");
            return null;
        }
    }

    void setSha1(String sha1) {
        this.mSha1 = sha1;
    }

    public String getSha1() {
        return this.mSha1;
    }

    void appendBlock(String sha1, String md5, long size) {
        this.mBlockInfos.add(new BlockInfo(sha1, md5, (int) size));
    }

    public BlockInfo getBlockInfo(int index) {
        if (index >= this.mBlockInfos.size()) {
            return null;
        }
        return (BlockInfo) this.mBlockInfos.get(index);
    }

    public String getKssString() {
        JSONArray blockInfos = getBlockInfos();
        if (blockInfos == null) {
            return null;
        }
        JSONObject root = new JSONObject();
        try {
            root.put("block_infos", blockInfos);
            return root.toString();
        } catch (Throwable th) {
            return String.valueOf(root);
        }
    }

    public String toString() {
        JSONObject root = new JSONObject();
        try {
            root.put("block_infos", getBlockInfos());
            root.put("sha1", this.mSha1);
        } catch (Throwable th) {
        }
        return String.valueOf(root);
    }
}
