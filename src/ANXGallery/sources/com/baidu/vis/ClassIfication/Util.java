package com.baidu.vis.ClassIfication;

import android.content.Context;
import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.os.Build;
import android.util.Log;
import com.baidu.vis.ClassIfication.SDKExceptions.IlleagleCpuArch;
import com.baidu.vis.ClassIfication.SDKExceptions.MissingModleFileInAssetFolder;
import com.baidu.vis.ClassIfication.SDKExceptions.NV21BytesLengthNotMatch;
import com.baidu.vis.ClassIfication.SDKExceptions.NoSDCardPermission;
import com.nexstreaming.nexeditorsdk.nexExportFormat;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;

public class Util {
    private static final String TAG = "Predictor";

    public static byte[] bitmap2Bytes(Bitmap bmp) {
        ByteBuffer buf = ByteBuffer.allocate(bmp.getByteCount());
        bmp.copyPixelsToBuffer(buf);
        return buf.array();
    }

    public static Bitmap bytes2Bitmap(byte[] bytes, int width, int height, Config type) {
        Bitmap stitchBmp = Bitmap.createBitmap(width, height, type);
        stitchBmp.copyPixelsFromBuffer(ByteBuffer.wrap(bytes));
        return stitchBmp;
    }

    public static void checkFile(String nnFileName) throws NV21BytesLengthNotMatch {
        if (!new File(nnFileName).exists()) {
            throw new NV21BytesLengthNotMatch();
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:47:0x00b8 A:{SYNTHETIC, Splitter: B:47:0x00b8} */
    /* JADX WARNING: Removed duplicated region for block: B:80:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:50:0x00bd A:{SYNTHETIC, Splitter: B:50:0x00bd} */
    /* JADX WARNING: Removed duplicated region for block: B:64:0x00d5 A:{SYNTHETIC, Splitter: B:64:0x00d5} */
    /* JADX WARNING: Removed duplicated region for block: B:67:0x00da A:{SYNTHETIC, Splitter: B:67:0x00da} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static void copyAssets(Context ctx, String nnFileName) throws NoSDCardPermission, MissingModleFileInAssetFolder, IlleagleCpuArch {
        IOException e;
        Throwable th;
        String arch = Build.CPU_ABI;
        if (arch.contains("v7a") || arch.contains("v8a")) {
            AssetManager assetManager = ctx.getAssets();
            InputStream is = null;
            try {
                is = assetManager.open(nnFileName);
                if (is != null) {
                    try {
                        is.close();
                    } catch (IOException e2) {
                        e2.printStackTrace();
                    }
                }
                if (ctx.checkCallingOrSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") != 0) {
                    throw new NoSDCardPermission();
                } else if (new File(ctx.getExternalFilesDir(null), nnFileName).exists()) {
                    Log.d(TAG, "NN model on SD card");
                } else {
                    InputStream in = null;
                    OutputStream out = null;
                    try {
                        in = assetManager.open(nnFileName);
                        OutputStream out2 = new FileOutputStream(new File(ctx.getExternalFilesDir(null), nnFileName));
                        try {
                            byte[] buffer = new byte[1024];
                            while (true) {
                                int read = in.read(buffer);
                                if (read == -1) {
                                    break;
                                }
                                out2.write(buffer, 0, read);
                            }
                            if (in != null) {
                                try {
                                    in.close();
                                } catch (IOException e3) {
                                }
                            }
                            if (out2 != null) {
                                try {
                                    out2.close();
                                    out = out2;
                                    return;
                                } catch (IOException e4) {
                                    out = out2;
                                    return;
                                }
                            }
                        } catch (IOException e5) {
                            e2 = e5;
                            out = out2;
                            try {
                                Log.e(nexExportFormat.TAG_FORMAT_TAG, "Failed to copy asset file: " + nnFileName, e2);
                                if (in != null) {
                                }
                                if (out == null) {
                                }
                            } catch (Throwable th2) {
                                th = th2;
                                if (in != null) {
                                    try {
                                        in.close();
                                    } catch (IOException e6) {
                                    }
                                }
                                if (out != null) {
                                    try {
                                        out.close();
                                    } catch (IOException e7) {
                                    }
                                }
                                throw th;
                            }
                        } catch (Throwable th3) {
                            th = th3;
                            out = out2;
                            if (in != null) {
                            }
                            if (out != null) {
                            }
                            throw th;
                        }
                    } catch (IOException e8) {
                        e2 = e8;
                        Log.e(nexExportFormat.TAG_FORMAT_TAG, "Failed to copy asset file: " + nnFileName, e2);
                        if (in != null) {
                            try {
                                in.close();
                            } catch (IOException e9) {
                            }
                        }
                        if (out == null) {
                            try {
                                out.close();
                            } catch (IOException e10) {
                            }
                        }
                    }
                }
            } catch (IOException e11) {
                throw new MissingModleFileInAssetFolder();
            } catch (Throwable th4) {
                if (is != null) {
                    try {
                        is.close();
                    } catch (IOException e22) {
                        e22.printStackTrace();
                    }
                }
            }
        } else {
            throw new IlleagleCpuArch();
        }
    }
}
