package cn.kuaipan.android.kss.download;

import android.text.TextUtils;
import cn.kuaipan.android.exception.ErrorHelper;
import cn.kuaipan.android.exception.KscException;
import cn.kuaipan.android.exception.KscRuntimeException;
import cn.kuaipan.android.http.IKscDecoder;
import cn.kuaipan.android.http.IKscTransferListener;
import cn.kuaipan.android.http.KscHttpRequest;
import cn.kuaipan.android.http.KscHttpRequest.HttpMethod;
import cn.kuaipan.android.http.KscHttpResponse;
import cn.kuaipan.android.http.KscHttpTransmitter;
import cn.kuaipan.android.kss.IKssDownloadRequestResult;
import cn.kuaipan.android.kss.KssDef;
import cn.kuaipan.android.kss.RC4Encoder;
import cn.kuaipan.android.utils.FileUtils;
import com.xiaomi.micloudsdk.stat.MiCloudStatManager;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.security.InvalidKeyException;
import java.util.concurrent.atomic.AtomicInteger;
import org.apache.http.HttpEntity;

public class KssDownloader implements KssDef {
    private final KscHttpTransmitter mTransmitter;

    public KssDownloader(KscHttpTransmitter transmitter) {
        this.mTransmitter = transmitter;
    }

    /* JADX WARNING: Removed duplicated region for block: B:15:0x0046 A:{SYNTHETIC, Splitter: B:15:0x0046} */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x004b  */
    /* JADX WARNING: Removed duplicated region for block: B:15:0x0046 A:{SYNTHETIC, Splitter: B:15:0x0046} */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x004b  */
    /* JADX WARNING: Removed duplicated region for block: B:15:0x0046 A:{SYNTHETIC, Splitter: B:15:0x0046} */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x004b  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void download(File savePath, boolean append, IKscTransferListener listener, IKssDownloadRequestResult request) throws KscException, InterruptedException {
        Throwable th;
        IOException e;
        KssAccessor accessor = null;
        boolean completed = false;
        KInfo kinfo = null;
        LoadMap map = null;
        try {
            long size = request.getTotalSize();
            if (!savePath.exists()) {
                savePath.getParentFile().mkdirs();
            } else if ((!append || savePath.isDirectory() || savePath.length() > size) && !FileUtils.deletes(savePath)) {
                throw new SecurityException("Failed delete target file. Can't download to dest path: " + savePath);
            }
            LoadMap map2 = new LoadMap(request, listener);
            boolean mapLoaded = false;
            try {
                File infoFile = KInfo.getInfoFile(savePath);
                KInfo kinfo2 = new KInfo(infoFile);
                try {
                    if (infoFile.exists()) {
                        kinfo2.load();
                        if (TextUtils.equals(kinfo2.getHash(), request.getHash())) {
                            mapLoaded = kinfo2.loadToMap(map2);
                        }
                    }
                    if (!mapLoaded && savePath.exists()) {
                        map2.initSize(savePath.length());
                    }
                    try {
                        KssAccessor accessor2 = new KssAccessor(savePath);
                        try {
                            map2.verify(accessor2, false);
                            long targetSize = request.getTotalSize();
                            if (savePath.length() != targetSize) {
                                accessor2.inflate(targetSize);
                            }
                            try {
                                AtomicInteger retry = new AtomicInteger(3);
                                while (true) {
                                    completed = map2.isCompleted();
                                    if (completed) {
                                        long modifyTime = request.getModifyTime();
                                        if (modifyTime > 0) {
                                            savePath.setLastModified(modifyTime);
                                        }
                                        if (accessor2 != null) {
                                            try {
                                                accessor2.close();
                                            } catch (Throwable th2) {
                                            }
                                        }
                                        if (kinfo2 == null) {
                                            return;
                                        }
                                        if (completed) {
                                            kinfo2.delete();
                                            return;
                                        } else if (map2 != null) {
                                            kinfo2.setHash(request.getHash());
                                            kinfo2.setLoadMap(map2);
                                            kinfo2.save();
                                            return;
                                        } else {
                                            return;
                                        }
                                    } else if (Thread.interrupted()) {
                                        throw new InterruptedException();
                                    } else {
                                        download(request, accessor2, map2, retry);
                                        retry.set(3);
                                    }
                                }
                            } catch (InvalidKeyException e2) {
                                throw KscException.newException(e2, "Failed when download kss block.");
                            } catch (KscException e3) {
                                if (!ErrorHelper.isNetworkException(e3) || retry.decrementAndGet() < 0) {
                                    throw e3;
                                }
                                Thread.sleep(5000);
                            } catch (Throwable th3) {
                                th = th3;
                                map = map2;
                                kinfo = kinfo2;
                                accessor = accessor2;
                                if (accessor != null) {
                                }
                                if (kinfo != null) {
                                }
                                throw th;
                            }
                            throw e3;
                        } catch (IOException e4) {
                            e = e4;
                            accessor = accessor2;
                            throw KscException.newException(e, "Local IO error, when prepare kss download.");
                        }
                    } catch (IOException e5) {
                        e = e5;
                        throw KscException.newException(e, "Local IO error, when prepare kss download.");
                    }
                } catch (Throwable th4) {
                    th = th4;
                    map = map2;
                    kinfo = kinfo2;
                    if (accessor != null) {
                    }
                    if (kinfo != null) {
                    }
                    throw th;
                }
            } catch (Throwable th5) {
                th = th5;
                map = map2;
                if (accessor != null) {
                }
                if (kinfo != null) {
                }
                throw th;
            }
        } catch (Throwable th6) {
            th = th6;
            if (accessor != null) {
                try {
                    accessor.close();
                } catch (Throwable th7) {
                }
            }
            if (kinfo != null) {
                if (completed) {
                    kinfo.delete();
                } else if (map != null) {
                    kinfo.setHash(request.getHash());
                    kinfo.setLoadMap(map);
                    kinfo.save();
                }
            }
            throw th;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:60:0x0157  */
    /* JADX WARNING: Removed duplicated region for block: B:77:0x0137 A:{SYNTHETIC} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void download(IKssDownloadRequestResult request, KssAccessor accessor, LoadMap map, AtomicInteger retry) throws InterruptedException, InvalidKeyException, KscException {
        Exception e;
        Throwable th;
        LoadRecorder recorder = map.obtainRecorder();
        while (recorder != null) {
            if (Thread.interrupted()) {
                throw new InterruptedException();
            }
            long start = recorder.getSpace().getStart();
            String[] urls = request.getBlockUrls(start);
            long range = start - map.getBlockStart(start);
            if (urls == null || urls.length <= 0) {
                throw new IllegalArgumentException("No available urls to download.");
            }
            RC4Encoder rC4Encoder = new RC4Encoder(request.getSecureKey());
            int i = 0;
            while (i < urls.length) {
                if (Thread.interrupted()) {
                    throw new InterruptedException();
                }
                KscHttpRequest req = null;
                KscHttpResponse resp = null;
                try {
                    rC4Encoder.init();
                    String url = urls[i];
                    KscHttpRequest kscHttpRequest = new KscHttpRequest(HttpMethod.GET, url, (IKscDecoder) rC4Encoder, null);
                    if (range > 0) {
                        try {
                            kscHttpRequest.getRequest().addHeader("Range", "bytes=" + range + "-");
                        } catch (Exception e2) {
                            e = e2;
                            req = kscHttpRequest;
                            try {
                                ErrorHelper.handleInterruptException(e);
                                if (i < urls.length - 1) {
                                }
                            } catch (Throwable th2) {
                                th = th2;
                            }
                        } catch (Throwable th3) {
                            th = th3;
                            req = kscHttpRequest;
                            if (null != null || req == null) {
                                releaseResponse(resp);
                            } else {
                                req.getRequest().abort();
                            }
                            if (recorder != null) {
                                recorder.recycle();
                            }
                            throw th;
                        }
                    }
                    long execStartTime = System.currentTimeMillis();
                    resp = this.mTransmitter.execute(kscHttpRequest, 4);
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
                    MiCloudStatManager.getInstance().addHttpEvent(url, timeCost, size, statusCode, exceptionName);
                    ErrorHelper.throwError(resp);
                    save(resp, accessor, recorder, retry);
                    map.verify(accessor, true);
                    if (true || kscHttpRequest == null) {
                        releaseResponse(resp);
                    } else {
                        kscHttpRequest.getRequest().abort();
                    }
                    if (recorder != null) {
                        recorder.recycle();
                    }
                    recorder = map.obtainRecorder();
                } catch (Exception e3) {
                    e = e3;
                    ErrorHelper.handleInterruptException(e);
                    if (i < urls.length - 1) {
                        String str;
                        if (resp == null) {
                            str = "No response.";
                        } else {
                            str = resp.dump();
                        }
                        throw KscException.newException(e, str);
                    }
                    if (null != null || req == null) {
                        releaseResponse(resp);
                    } else {
                        req.getRequest().abort();
                    }
                    if (recorder != null) {
                        recorder.recycle();
                    }
                    i++;
                }
            }
            recorder = map.obtainRecorder();
        }
    }

    private void save(KscHttpResponse response, KssAccessor accessor, LoadRecorder recorder, AtomicInteger retry) throws IllegalStateException, IOException {
        boolean received = false;
        try {
            InputStream in = response.getContent();
            if (in == null) {
                throw new KscRuntimeException(500008, "Not meet exception, but no response.\n" + response.dump());
            }
            byte[] buf = new byte[8192];
            while (true) {
                int len = in.read(buf);
                if (len < 0) {
                    break;
                }
                received = true;
                if (len > 0 && accessor.write(buf, 0, len, recorder) < len) {
                    break;
                }
            }
            if (received) {
                retry.set(3);
            }
        } catch (Throwable th) {
            if (null != null) {
                retry.set(3);
            }
        }
    }

    private void releaseResponse(KscHttpResponse response) throws InterruptedException {
        if (response != null) {
            try {
                response.release();
            } catch (Throwable t) {
                if (ErrorHelper.isInterrupted(t) == null) {
                }
            }
        }
    }
}
