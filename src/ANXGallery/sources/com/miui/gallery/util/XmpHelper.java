package com.miui.gallery.util;

import android.text.TextUtils;
import com.adobe.xmp.XMPException;
import com.adobe.xmp.XMPMeta;
import com.adobe.xmp.XMPMetaFactory;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;
import org.keyczar.Keyczar;

public class XmpHelper {
    private static final String TAG = XmpHelper.class.getSimpleName();

    private static class Section {
        public byte[] data;
        public int length;
        public int marker;

        private Section() {
        }
    }

    static {
        try {
            XMPMetaFactory.getSchemaRegistry().registerNamespace("http://ns.google.com/photos/1.0/camera/", "GCamera");
        } catch (XMPException e) {
            Log.d(TAG, "Failed to register ns http://ns.google.com/photos/1.0/camera/: " + e);
        }
    }

    private XmpHelper() {
    }

    public static long readMicroVideoOffset(String path) {
        Exception e;
        Throwable th;
        if (TextUtils.isEmpty(path)) {
            return 0;
        }
        long start = System.currentTimeMillis();
        FileInputStream inputStream = null;
        try {
            File file = new File(path);
            FileInputStream inputStream2 = new FileInputStream(file);
            try {
                XMPMeta xmpMeta = extractXMPMeta(inputStream2);
                if (xmpMeta == null) {
                    BaseMiscUtil.closeSilently(inputStream2);
                    return 0;
                }
                Integer type = xmpMeta.getPropertyInteger("http://ns.google.com/photos/1.0/camera/", "MicroVideo");
                if (type == null || type.intValue() != 1) {
                    BaseMiscUtil.closeSilently(inputStream2);
                    return 0;
                }
                Integer offset = xmpMeta.getPropertyInteger("http://ns.google.com/photos/1.0/camera/", "MicroVideoOffset");
                if (offset != null) {
                    Log.d(TAG, "readMicroVideoOffset cost %s", Long.valueOf(System.currentTimeMillis() - start));
                    long length = file.length() - ((long) offset.intValue());
                    BaseMiscUtil.closeSilently(inputStream2);
                    return length;
                }
                BaseMiscUtil.closeSilently(inputStream2);
                inputStream = inputStream2;
                return 0;
            } catch (Exception e2) {
                e = e2;
                inputStream = inputStream2;
            } catch (Throwable th2) {
                th = th2;
                inputStream = inputStream2;
                BaseMiscUtil.closeSilently(inputStream);
                throw th;
            }
        } catch (Exception e3) {
            e = e3;
            try {
                e.printStackTrace();
                BaseMiscUtil.closeSilently(inputStream);
                return 0;
            } catch (Throwable th3) {
                th = th3;
                BaseMiscUtil.closeSilently(inputStream);
                throw th;
            }
        }
    }

    public static XMPMeta extractXMPMeta(InputStream is) {
        XMPMeta xMPMeta = null;
        List<Section> sections = parse(is, true);
        if (sections == null) {
            return xMPMeta;
        }
        for (Section section : sections) {
            if (hasXMPHeader(section.data)) {
                byte[] buffer = new byte[(getXMPContentEnd(section.data) - 29)];
                System.arraycopy(section.data, 29, buffer, 0, buffer.length);
                try {
                    return XMPMetaFactory.parseFromBuffer(buffer);
                } catch (XMPException e) {
                    Log.d(TAG, "XMP parse error: " + e);
                    return xMPMeta;
                }
            }
        }
        return xMPMeta;
    }

    private static boolean hasXMPHeader(byte[] data) {
        if (data.length < 29) {
            return false;
        }
        try {
            byte[] header = new byte[29];
            System.arraycopy(data, 0, header, 0, 29);
            if (new String(header, Keyczar.DEFAULT_ENCODING).equals("http://ns.adobe.com/xap/1.0/\u0000")) {
                return true;
            }
            return false;
        } catch (UnsupportedEncodingException e) {
            return false;
        }
    }

    private static int getXMPContentEnd(byte[] data) {
        int i = data.length - 1;
        while (i >= 1) {
            if (data[i] == (byte) 62 && data[i - 1] != (byte) 63) {
                return i + 1;
            }
            i--;
        }
        return data.length;
    }

    /* JADX WARNING: Removed duplicated region for block: B:42:0x0078 A:{SYNTHETIC, Splitter: B:42:0x0078} */
    /* JADX WARNING: Missing block: B:30:0x0041, code:
            if (r15 != false) goto L_0x0062;
     */
    /* JADX WARNING: Missing block: B:32:?, code:
            r6 = new com.miui.gallery.util.XmpHelper.Section();
            r6.marker = r5;
            r6.length = -1;
            r6.data = new byte[r14.available()];
            r14.read(r6.data, 0, r6.data.length);
            r7.add(r6);
     */
    /* JADX WARNING: Missing block: B:33:0x0062, code:
            if (r14 == null) goto L_?;
     */
    /* JADX WARNING: Missing block: B:35:?, code:
            r14.close();
     */
    /* JADX WARNING: Missing block: B:95:?, code:
            return r7;
     */
    /* JADX WARNING: Missing block: B:99:?, code:
            return r7;
     */
    /* JADX WARNING: Missing block: B:100:?, code:
            return r7;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static List<Section> parse(InputStream is, boolean readMetaOnly) {
        if (is.read() == 255 && is.read() == 216) {
            List<Section> sections = new ArrayList();
            while (true) {
                int c = is.read();
                if (c != -1) {
                    if (c != 255) {
                        if (is != null) {
                            try {
                                is.close();
                            } catch (IOException e) {
                            }
                        }
                        return null;
                    }
                    do {
                        c = is.read();
                    } while (c == 255);
                    if (c == -1) {
                        if (is != null) {
                            try {
                                is.close();
                            } catch (IOException e2) {
                            }
                        }
                        return null;
                    }
                    int marker = c;
                    if (marker == 218) {
                        break;
                    }
                    int lh = is.read();
                    int ll = is.read();
                    if (lh != -1 && ll != -1) {
                        int length = (lh << 8) | ll;
                        if (!readMetaOnly || c == 225) {
                            try {
                                Section section = new Section();
                                section.marker = marker;
                                section.length = length;
                                section.data = new byte[(length - 2)];
                                is.read(section.data, 0, length - 2);
                                sections.add(section);
                            } catch (IOException e3) {
                                Log.d(TAG, "Could not parse file: " + e3);
                                if (is != null) {
                                    try {
                                        is.close();
                                    } catch (IOException e4) {
                                    }
                                }
                                return null;
                            } catch (Throwable th) {
                                if (is != null) {
                                    try {
                                        is.close();
                                    } catch (IOException e5) {
                                    }
                                }
                            }
                        } else {
                            is.skip((long) (length - 2));
                        }
                    } else if (is != null) {
                        try {
                            is.close();
                        } catch (IOException e6) {
                        }
                    }
                } else if (is == null) {
                    return sections;
                } else {
                    try {
                        is.close();
                        return sections;
                    } catch (IOException e7) {
                        return sections;
                    }
                }
            }
            if (is != null) {
            }
            return null;
        }
        if (is != null) {
            try {
                is.close();
            } catch (IOException e8) {
            }
        }
        return null;
    }
}
