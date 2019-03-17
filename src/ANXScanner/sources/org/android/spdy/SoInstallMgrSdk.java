package org.android.spdy;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.util.Enumeration;
import java.util.zip.ZipEntry;
import java.util.zip.ZipException;
import java.util.zip.ZipFile;

public class SoInstallMgrSdk {
    private static final String ARMEABI = "armeabi";
    private static final int EventID_SO_INIT = 21033;
    static final String LOGTAG = "INIT_SO";
    private static final String MIPS = "mips";
    private static final String X86 = "x86";
    static Context mContext = null;

    public static void init(Context c) {
        mContext = c;
    }

    public static boolean initSo(String libName, int version) {
        return initSo(libName, version, null);
    }

    public static boolean initSo(String libName, int version, ClassLoader classLoader) {
        boolean InitSuc;
        if (classLoader == null) {
            try {
                System.loadLibrary(libName);
            } catch (Exception e) {
                InitSuc = false;
                e.printStackTrace();
            } catch (UnsatisfiedLinkError e2) {
                InitSuc = false;
                e2.printStackTrace();
            } catch (Error e3) {
                InitSuc = false;
                e3.printStackTrace();
            }
        } else {
            Runtime runtime = Runtime.getRuntime();
            Method method = Runtime.class.getDeclaredMethod("loadLibrary", new Class[]{String.class, ClassLoader.class});
            method.setAccessible(true);
            method.invoke(runtime, new Object[]{libName, classLoader});
        }
        InitSuc = true;
        if (!InitSuc) {
            try {
                if (isExist(libName, version)) {
                    boolean res = _loadUnzipSo(libName, version, classLoader);
                    if (res) {
                        return res;
                    }
                    removeSoIfExit(libName, version);
                }
                String cpuType = _cpuType();
                if (!(cpuType.equalsIgnoreCase(MIPS) || cpuType.equalsIgnoreCase(X86))) {
                    try {
                        InitSuc = unZipSelectedFiles(libName, version, classLoader);
                    } catch (ZipException e4) {
                        e4.printStackTrace();
                    } catch (IOException e22) {
                        e22.printStackTrace();
                    }
                }
            } catch (Exception e5) {
                InitSuc = false;
                e5.printStackTrace();
            } catch (UnsatisfiedLinkError e23) {
                InitSuc = false;
                e23.printStackTrace();
            } catch (Error e32) {
                InitSuc = false;
                e32.printStackTrace();
            }
        }
        if (!InitSuc) {
        }
        return InitSuc;
    }

    private static String _getFieldReflectively(Build build, String fieldName) {
        try {
            return Build.class.getField(fieldName).get(build).toString();
        } catch (Exception e) {
            return "Unknown";
        }
    }

    private static String _cpuType() {
        String abi = _getFieldReflectively(new Build(), "CPU_ABI");
        if (abi == null || abi.length() == 0 || abi.equals("Unknown")) {
            abi = ARMEABI;
        }
        return abi.toLowerCase();
    }

    static String _targetSoFile(String libname, int version) {
        Context context = mContext;
        if (context == null) {
            return "";
        }
        String path = "/data/data/" + context.getPackageName() + "/files";
        File f = context.getFilesDir();
        if (f != null) {
            path = f.getPath();
        }
        return path + "/lib" + libname + "bk" + version + ".so";
    }

    static void removeSoIfExit(String libname, int version) {
        File a = new File(_targetSoFile(libname, version));
        if (a.exists()) {
            a.delete();
        }
    }

    static boolean isExist(String libname, int version) {
        return new File(_targetSoFile(libname, version)).exists();
    }

    static boolean _loadUnzipSo(String libname, int version, ClassLoader classLoader) {
        try {
            if (isExist(libname, version)) {
                if (classLoader == null) {
                    System.load(_targetSoFile(libname, version));
                } else {
                    Runtime runtime = Runtime.getRuntime();
                    Method method = Runtime.class.getDeclaredMethod("load", new Class[]{String.class, ClassLoader.class});
                    method.setAccessible(true);
                    method.invoke(runtime, new Object[]{_targetSoFile(libname, version), classLoader});
                }
            }
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        } catch (UnsatisfiedLinkError e2) {
            e2.printStackTrace();
            return false;
        } catch (Error e3) {
            e3.printStackTrace();
            return false;
        }
    }

    static boolean unZipSelectedFiles(String libname, int version, ClassLoader classLoader) throws ZipException, IOException {
        String sourcePath = "lib/armeabi/lib" + libname + ".so";
        ZipFile zf;
        InputStream in;
        FileOutputStream os;
        FileChannel channel;
        try {
            String zipPath = "";
            Context context = mContext;
            if (context == null) {
                return false;
            }
            ApplicationInfo aInfo = context.getApplicationInfo();
            if (aInfo != null) {
                zipPath = aInfo.sourceDir;
            }
            zf = new ZipFile(zipPath);
            Enumeration<?> entries = zf.entries();
            while (entries.hasMoreElements()) {
                ZipEntry entry = (ZipEntry) entries.nextElement();
                String path = entry.getName();
                if (path.contains("..") || path.contains("\\") || path.contains("%")) {
                    return false;
                }
                if (entry.getName().startsWith(sourcePath)) {
                    in = null;
                    os = null;
                    channel = null;
                    int total = 0;
                    removeSoIfExit(libname, version);
                    in = zf.getInputStream(entry);
                    os = context.openFileOutput("lib" + libname + "bk" + version + ".so", 0);
                    channel = os.getChannel();
                    byte[] buffers = new byte[1024];
                    while (true) {
                        int realLength = in.read(buffers);
                        if (realLength <= 0) {
                            break;
                        }
                        channel.write(ByteBuffer.wrap(buffers, 0, realLength));
                        total += realLength;
                    }
                    if (in != null) {
                        try {
                            in.close();
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                    if (channel != null) {
                        try {
                            channel.close();
                        } catch (Exception e2) {
                            e2.printStackTrace();
                        }
                    }
                    if (os != null) {
                        try {
                            os.close();
                        } catch (Exception e22) {
                            e22.printStackTrace();
                        }
                    }
                    if (zf != null) {
                        zf.close();
                    }
                    if (total > 0) {
                        return _loadUnzipSo(libname, version, classLoader);
                    }
                    return false;
                }
            }
            return false;
        } catch (IOException e3) {
            e3.printStackTrace();
        } catch (Throwable th) {
            if (in != null) {
                try {
                    in.close();
                } catch (Exception e222) {
                    e222.printStackTrace();
                }
            }
            if (channel != null) {
                try {
                    channel.close();
                } catch (Exception e2222) {
                    e2222.printStackTrace();
                }
            }
            if (os != null) {
                try {
                    os.close();
                } catch (Exception e22222) {
                    e22222.printStackTrace();
                }
            }
            if (zf != null) {
                zf.close();
            }
        }
    }
}
