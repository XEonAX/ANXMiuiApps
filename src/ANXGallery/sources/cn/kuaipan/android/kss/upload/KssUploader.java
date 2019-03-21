package cn.kuaipan.android.kss.upload;

import android.net.Uri;
import android.net.Uri.Builder;
import android.text.TextUtils;
import android.util.Log;
import cn.kuaipan.android.exception.ErrorHelper;
import cn.kuaipan.android.exception.KscException;
import cn.kuaipan.android.exception.KscRuntimeException;
import cn.kuaipan.android.exception.ServerException;
import cn.kuaipan.android.exception.ServerMsgException;
import cn.kuaipan.android.http.DecoderInputStream;
import cn.kuaipan.android.http.IKscTransferListener;
import cn.kuaipan.android.http.KscHttpRequest;
import cn.kuaipan.android.http.KscHttpRequest.HttpMethod;
import cn.kuaipan.android.http.KscHttpResponse;
import cn.kuaipan.android.http.KscHttpTransmitter;
import cn.kuaipan.android.kss.FileTranceListener;
import cn.kuaipan.android.kss.IKssUploadRequestResult;
import cn.kuaipan.android.kss.IKssUploadRequestResult.Block;
import cn.kuaipan.android.kss.KssDef;
import cn.kuaipan.android.kss.RC4Encoder;
import cn.kuaipan.android.kss.upload.UploadFileInfo.BlockInfo;
import cn.kuaipan.android.utils.ApiDataHelper;
import cn.kuaipan.android.utils.Encode;
import cn.kuaipan.android.utils.IObtainable;
import cn.kuaipan.android.utils.RandomFileInputStream;
import com.nexstreaming.nexeditorsdk.nexEngine;
import com.xiaomi.micloudsdk.stat.MiCloudStatManager;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.zip.CRC32;
import org.apache.http.HttpEntity;

public class KssUploader implements KssDef {
    public static volatile boolean sBreakForUT;
    private final CRC32 CRC32 = new CRC32();
    private final byte[] CRC_BUF = new byte[8192];
    private long mChunkSize = 65536;
    private final UploadTaskStore mTaskStore;
    private final KscHttpTransmitter mTransmitter;

    public KssUploader(KscHttpTransmitter transmitter, UploadTaskStore taskStore) {
        this.mTaskStore = taskStore;
        this.mTransmitter = transmitter;
    }

    public void upload(File localFile, IKscTransferListener listener, int taskHash, KssUploadInfo uploadInfo) throws KscException, InterruptedException {
        FileTranceListener sendListener = null;
        if (listener != null) {
            sendListener = new FileTranceListener(listener, true);
            listener.setSendTotal(localFile.length());
        }
        int blockIndex = 0;
        while (!Thread.interrupted()) {
            Log.d("KssUploader", "upload blockIndex: " + blockIndex);
            uploadBlock(taskHash, localFile, sendListener, uploadInfo, !false, blockIndex);
            blockIndex++;
            if (uploadInfo.isCompleted()) {
                return;
            }
        }
        throw new InterruptedException();
    }

    private void uploadBlock(int taskHash, File file, FileTranceListener listener, KssUploadInfo info, boolean needVerify, int blockIndex) throws KscException, InterruptedException {
        if (info == null) {
            throw new IllegalArgumentException("The KssUploadInfo can not be empty.");
        }
        verifyBlock(file, info.getFileInfo(), blockIndex);
        Block block = info.getRequestResult().getBlock(blockIndex);
        if (block == null) {
            throw new KscRuntimeException(500008, "Block should not be null");
        } else if (!block.isComplete()) {
            uploadBlock(taskHash, file, listener, info, blockIndex);
        } else if (listener != null) {
            listener.setSendPos(Math.min(((long) (blockIndex + 1)) * 4194304, file.length()));
        }
    }

    /* JADX WARNING: Missing block: B:57:?, code:
            r12.close();
     */
    /* JADX WARNING: Missing block: B:85:?, code:
            return;
     */
    /* JADX WARNING: Missing block: B:86:?, code:
            return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void uploadBlock(int taskHash, File file, FileTranceListener listenerGroup, KssUploadInfo info, int blockIndex) throws KscException, InterruptedException {
        Throwable t;
        Throwable th;
        UploadChunkInfoPersist uploadChunkInfoP = getUploadPos(taskHash);
        String upload_id = null;
        long pos = 0;
        if (uploadChunkInfoP != null) {
            upload_id = uploadChunkInfoP.upload_id;
            if (!TextUtils.isEmpty(upload_id)) {
                pos = uploadChunkInfoP.pos;
            }
        }
        pos -= pos % 65536;
        if (pos >= ((long) (blockIndex + 1)) * 4194304 || pos < ((long) blockIndex) * 4194304) {
            pos = ((long) blockIndex) * 4194304;
        }
        long blockEnd = Math.min(file.length(), ((long) (blockIndex + 1)) * 4194304);
        IKssUploadRequestResult request = info.getRequestResult();
        Log.d("KssUploader", "RC4 key:" + Arrays.toString(request.getSecureKey()));
        RandomFileInputStream in = null;
        try {
            UploadChunkInfo chunkInfo;
            Throwable serverMsgException;
            AtomicInteger atomicInteger = new AtomicInteger(3);
            while (true) {
                RandomFileInputStream in2;
                try {
                    in2 = in;
                    if (atomicInteger.get() < 0) {
                        in = in2;
                        break;
                    }
                    RC4Encoder rc4Decoder = new RC4Encoder(request.getSecureKey());
                    in = new RandomFileInputStream(file);
                    in.moveToPos(pos);
                    if (listenerGroup != null) {
                        listenerGroup.setSendPos(pos);
                    }
                    chunkInfo = new UploadChunkInfo(pos % 4194304, blockEnd - pos, upload_id);
                    while (chunkInfo.next_pos < blockEnd && chunkInfo.left_bytes > 0) {
                        if (Thread.interrupted()) {
                            throw new InterruptedException();
                        }
                        IKscTransferListener listener;
                        if (listenerGroup == null) {
                            listener = null;
                        } else {
                            listener = listenerGroup.getChunkListaner(chunkInfo.next_pos + pos);
                        }
                        chunkInfo = uploadChunk(in, rc4Decoder, listener, info, blockIndex, chunkInfo);
                        UploadChunkInfoPersist uploadChunkInfoPersist;
                        if (chunkInfo == null) {
                            throw new KscRuntimeException(500008, "Return chunkInfo is null");
                        } else if (chunkInfo.isContinue()) {
                            uploadChunkInfoPersist = new UploadChunkInfoPersist();
                            uploadChunkInfoPersist.pos = (((long) blockIndex) * 4194304) + chunkInfo.next_pos;
                            uploadChunkInfoPersist.upload_id = chunkInfo.upload_id;
                            updateUploadInfo(taskHash, info, uploadChunkInfoPersist);
                            if (sBreakForUT) {
                                Log.d("KssUploader", "break for UT");
                                Thread.currentThread().interrupt();
                            }
                        } else if (chunkInfo.isComplete()) {
                            uploadChunkInfoPersist = new UploadChunkInfoPersist();
                            uploadChunkInfoPersist.pos = Math.min(((long) (blockIndex + 1)) * 4194304, file.length());
                            uploadChunkInfoPersist.upload_id = "";
                            Block block = request.getBlock(blockIndex);
                            block.meta = chunkInfo.commit_meta;
                            block.exist = true;
                            updateUploadInfo(taskHash, info, uploadChunkInfoPersist);
                        }
                    }
                    if (!chunkInfo.isComplete()) {
                        if (!chunkInfo.needBlockRetry() || atomicInteger.decrementAndGet() <= 0) {
                            serverMsgException = new ServerMsgException(200, chunkInfo.stat);
                            Log.w("KssUploader", "Exception in uploadBlock", serverMsgException);
                            info.markBroken();
                            deleteUploadInfo(taskHash);
                        } else {
                            pos = 0;
                            upload_id = "";
                            Log.d("KssUploader", "upload needBlockRetry: " + chunkInfo.stat);
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    in = in2;
                    in.close();
                    throw th;
                }
            }
            serverMsgException = new ServerMsgException(200, chunkInfo.stat);
            Log.w("KssUploader", "Exception in uploadBlock", serverMsgException);
            info.markBroken();
            deleteUploadInfo(taskHash);
            throw serverMsgException;
        } catch (Throwable th3) {
            t = th3;
        }
    }

    private UploadChunkInfo uploadChunk(RandomFileInputStream in, RC4Encoder rc4Decoder, IKscTransferListener listener, KssUploadInfo info, int blockIndex, UploadChunkInfo chunkInfo) throws KscException, InterruptedException {
        IKssUploadRequestResult request = info.getRequestResult();
        String[] urls = request.getNodeUrls();
        if (urls == null || urls.length <= 0) {
            throw new IllegalArgumentException("No available urls.");
        }
        int i = 0;
        while (i < urls.length) {
            if (Thread.interrupted()) {
                throw new InterruptedException();
            }
            try {
                in.moveToPos((4194304 * ((long) blockIndex)) + chunkInfo.next_pos);
                in.mark(nexEngine.ExportHEVCMainTierLevel61);
                Builder builder = Uri.parse(urls[i] + "/upload_block_chunk").buildUpon();
                builder.appendQueryParameter("chunk_pos", String.valueOf(chunkInfo.next_pos));
                if (TextUtils.isEmpty(chunkInfo.upload_id)) {
                    builder.appendQueryParameter("file_meta", request.getFileMeta());
                    builder.appendQueryParameter("block_meta", request.getBlock(blockIndex).meta);
                } else {
                    builder.appendQueryParameter("upload_id", chunkInfo.upload_id);
                }
                UploadChunkInfo result = _uploadChunk(builder.build(), chunkInfo.next_pos, in, rc4Decoder, listener, info);
                info.mExpectInfo = result.expect_info;
                return result;
            } catch (Exception e) {
                ErrorHelper.handleInterruptException(e);
                if (i >= urls.length - 1) {
                    throw KscException.newException(e, "Failed when upload a kss chunk.");
                }
                i++;
            }
        }
        return null;
    }

    private UploadChunkInfo _uploadChunk(Uri uri, long pos, RandomFileInputStream in, RC4Encoder rc4Decoder, IKscTransferListener listener, KssUploadInfo info) throws KscException, InterruptedException, IOException {
        UploadChunkInfo result = null;
        AtomicInteger atomicInteger = new AtomicInteger(3);
        while (atomicInteger.get() >= 0) {
            in.reset();
            long blockSize = Math.min(4194304, ((long) in.available()) + pos);
            if (blockSize < 0) {
                Log.d("KssUploader", "blockSize<0, adjust blockSize to 4M");
                blockSize = 4194304;
            }
            long len = Math.min(Math.min(this.mChunkSize, blockSize - pos), info.getMaxChunkSize());
            ServerExpect expectInfo = info.mExpectInfo;
            if (expectInfo != null) {
                expectInfo.validate();
                if (expectInfo.nextChunkSize > 0) {
                    Log.v("KssUploader", String.format("Adjust chunk size from %d to %d", new Object[]{Long.valueOf(len), Long.valueOf(Math.min(len, expectInfo.nextChunkSize))}));
                    len = newLen;
                }
                if (expectInfo.uploadDelay > 0) {
                    Log.v("KssUploader", String.format("Sleeping for delay %d(s)", new Object[]{Integer.valueOf(expectInfo.uploadDelay)}));
                    Thread.sleep((long) (expectInfo.uploadDelay * 1000));
                }
            }
            Uri bodyUri = uri.buildUpon().appendQueryParameter("body_sum", String.valueOf((long) getCRC(new DecoderInputStream(in, rc4Decoder, 8192), len))).build();
            in.reset();
            DecoderInputStream input = new DecoderInputStream(in, rc4Decoder, 8192);
            if (listener != null) {
                try {
                    listener.setSendPos(0);
                } catch (KscException e) {
                    if (!ErrorHelper.isNetworkException(e) || atomicInteger.decrementAndGet() < 0) {
                        throw e;
                    }
                    this.mChunkSize = Math.max(65536, this.mChunkSize >> 1);
                    result = null;
                    if (Thread.interrupted()) {
                        throw new InterruptedException();
                    }
                    Thread.sleep(5000);
                }
            }
            result = doUpload(bodyUri, input, len, listener);
            if (result.isContinue() || result.isComplete()) {
                updatePos(result, pos, len, blockSize);
                if (len >= this.mChunkSize) {
                    this.mChunkSize = Math.min(MAX_CHUNKSIZE, this.mChunkSize << 1);
                }
                return result;
            } else if (!result.canRetry() || atomicInteger.decrementAndGet() < 0) {
                return result;
            } else {
                Log.d("KssUploader", "upload needChunkRetry: " + result.stat);
            }
        }
        return result;
    }

    private UploadChunkInfo doUpload(Uri uri, InputStream input, long len, IKscTransferListener listener) throws KscException, InterruptedException {
        Map<String, Object> dataMap = null;
        try {
            KscHttpRequest request = new KscHttpRequest(HttpMethod.POST, uri, null, listener);
            request.setPostEntity(new KssInputStreamEntity(input, len));
            long execStartTime = System.currentTimeMillis();
            KscHttpResponse resp = this.mTransmitter.execute(request, 4);
            long timeCost = System.currentTimeMillis() - execStartTime;
            long size = 0;
            if (resp.getResponse() != null) {
                HttpEntity entity = resp.getResponse().getEntity();
                if (entity != null) {
                    size = entity.getContentLength();
                }
            }
            int statusCode = resp.getStatusCode();
            String exceptionName = "";
            if (resp.getError() != null) {
                exceptionName = resp.getError().getClass().getSimpleName();
            }
            MiCloudStatManager.getInstance().addHttpEvent(uri.toString(), timeCost, size, statusCode, exceptionName);
            ErrorHelper.throwError(resp);
            if (statusCode != 200) {
                ServerException e = new ServerException(statusCode, resp.dump());
                Log.w("KssUploader", "Exception in doUpload", e);
                throw e;
            }
            dataMap = ApiDataHelper.contentToMap(resp);
            UploadChunkInfo uploadChunkInfo = new UploadChunkInfo(dataMap);
            uploadChunkInfo.expect_info = ServerExpect.getServerExpect(resp);
            return uploadChunkInfo;
        } finally {
            if (dataMap != null && (dataMap instanceof IObtainable)) {
                ((IObtainable) dataMap).recycle();
            }
        }
    }

    private void updateUploadInfo(int taskHash, KssUploadInfo uploadInfo, UploadChunkInfoPersist uploadChunkInfoPersist) {
        if (this.mTaskStore != null) {
            this.mTaskStore.updateUploadInfo(taskHash, uploadInfo, uploadChunkInfoPersist);
        }
    }

    private void deleteUploadInfo(int taskHash) throws InterruptedException {
        if (this.mTaskStore != null) {
            this.mTaskStore.removeUploadInfo(taskHash);
        }
    }

    private UploadChunkInfoPersist getUploadPos(int taskHash) throws InterruptedException {
        if (this.mTaskStore == null) {
            return null;
        }
        return this.mTaskStore.getUploadPos(taskHash);
    }

    private static void verifyBlock(File file, UploadFileInfo request, int blockIndex) throws KscException, InterruptedException {
        IOException e;
        Throwable th;
        BlockInfo info = request.getBlockInfo(blockIndex);
        int size = (int) Math.min(file.length() - (((long) blockIndex) * 4194304), 4194304);
        if (size != info.size) {
            throw new KscException(403002, "Block size has changed.");
        }
        long start = ((long) blockIndex) * 4194304;
        InputStream in = null;
        try {
            InputStream in2 = new FileInputStream(file);
            try {
                if (in2.skip(start) != start) {
                    throw new KscException(403002, "File size has changed.");
                } else if (TextUtils.equals(Encode.SHA1Encode(in2, size), info.sha1)) {
                    try {
                        in2.close();
                    } catch (Throwable th2) {
                    }
                } else {
                    throw new KscException(403002, "Block has changed.");
                }
            } catch (IOException e2) {
                e = e2;
                in = in2;
                try {
                    throw KscException.newException(e, null);
                } catch (Throwable th3) {
                    th = th3;
                    try {
                        in.close();
                    } catch (Throwable th4) {
                    }
                    throw th;
                }
            } catch (Throwable th5) {
                th = th5;
                in = in2;
                in.close();
                throw th;
            }
        } catch (IOException e3) {
            e = e3;
            throw KscException.newException(e, null);
        }
    }

    private static void updatePos(UploadChunkInfo result, long pos, long len, long blockSize) {
        if (result != null) {
            if (result.isComplete()) {
                result.next_pos = blockSize;
                result.left_bytes = 0;
            } else if (result.isContinue()) {
                long nextPos = pos + len;
                long nextLen = blockSize - nextPos;
                if (result.next_pos != nextPos || result.left_bytes != nextLen) {
                    Log.w("KssUploader", "Chunk pos is (" + result.next_pos + ", " + result.left_bytes + "), but in process is (" + nextPos + ", " + nextLen + ")");
                    result.next_pos = nextPos;
                    result.left_bytes = nextLen;
                }
            } else {
                result.next_pos = pos;
                result.left_bytes = blockSize - pos;
            }
        }
    }

    private synchronized int getCRC(InputStream in, long len) throws IOException {
        this.CRC32.reset();
        long leftSize = len;
        while (leftSize > 0) {
            int size = in.read(this.CRC_BUF, 0, (int) Math.min((long) this.CRC_BUF.length, leftSize));
            if (size >= 0) {
                leftSize -= (long) size;
                this.CRC32.update(this.CRC_BUF, 0, size);
            }
        }
        return (int) this.CRC32.getValue();
    }
}
