package com.nexstreaming.app.common.util;

import android.util.Log;
import com.miui.gallery.assistant.jni.filter.BaiduSceneResult;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

public enum FileType {
    JPEG((String) FileCategory.Image, (int) new String[]{"jpeg", "jpg"}, (FileCategory) new int[][]{new int[]{255, 216, 255}}),
    PNG((String) FileCategory.Image, (int) new String[]{"png"}, (FileCategory) new int[][]{new int[]{BaiduSceneResult.JEWELRY, 80, 78, 71, 13, 10, 26, 10}}),
    SVG((String) FileCategory.Image, (int) new String[]{"svg"}, (FileCategory) new int[][]{new int[]{60, BaiduSceneResult.BUILDING_OTHER, BaiduSceneResult.SUBWAY, BaiduSceneResult.MOUNTAINEERING}, new int[]{60, 83, 86, 71}}),
    WEBP((String) FileCategory.Image, (int) new String[]{"webp"}, (FileCategory) new int[][]{new int[]{82, 73, 70, 70, -1, -1, -1, -1, 87, 69, 66, 80}}),
    GIF((String) FileCategory.Image, (int) new String[]{"gif"}, (FileCategory) new int[][]{new int[]{71, 73, 70, 56, 55, 97}, new int[]{71, 73, 70, 56, 57, 97}}),
    M4A((String) FileCategory.Audio, (int) new String[]{"m4a"}, (FileCategory) new int[][]{new int[]{0, 0, 0, 32, BaiduSceneResult.TAEKWONDO, BaiduSceneResult.CAR, BaiduSceneResult.STATION, BaiduSceneResult.STREET_VIEW, 77, 52, 65, 32}, new int[]{-1, -1, -1, -1, BaiduSceneResult.TAEKWONDO, BaiduSceneResult.CAR, BaiduSceneResult.STATION, BaiduSceneResult.STREET_VIEW, 77, 52, 65, 32}}),
    M4V((String) FileCategory.Video, (int) new String[]{"m4v"}, (FileCategory) new int[][]{new int[]{0, 0, 0, 24, BaiduSceneResult.TAEKWONDO, BaiduSceneResult.CAR, BaiduSceneResult.STATION, BaiduSceneResult.STREET_VIEW, BaiduSceneResult.CHURCH, BaiduSceneResult.STREET_VIEW, 52, 50}, new int[]{-1, -1, -1, -1, BaiduSceneResult.TAEKWONDO, BaiduSceneResult.CAR, BaiduSceneResult.STATION, BaiduSceneResult.STREET_VIEW, BaiduSceneResult.CHURCH, BaiduSceneResult.STREET_VIEW, 52, 50}}),
    MP4((String) FileCategory.Video, (int) new String[]{"mp4"}, (FileCategory) new int[][]{new int[]{0, 0, 0, 20, BaiduSceneResult.TAEKWONDO, BaiduSceneResult.CAR, BaiduSceneResult.STATION, BaiduSceneResult.STREET_VIEW, BaiduSceneResult.TEMPLE, BaiduSceneResult.BUILDING_OTHER, BaiduSceneResult.WESTERN_ARCHITECTURE, BaiduSceneResult.CHURCH}, new int[]{0, 0, 0, 24, BaiduSceneResult.TAEKWONDO, BaiduSceneResult.CAR, BaiduSceneResult.STATION, BaiduSceneResult.STREET_VIEW, BaiduSceneResult.TEMPLE, BaiduSceneResult.BUILDING_OTHER, BaiduSceneResult.WESTERN_ARCHITECTURE, BaiduSceneResult.CHURCH}, new int[]{0, 0, 0, 24, BaiduSceneResult.TAEKWONDO, BaiduSceneResult.CAR, BaiduSceneResult.STATION, BaiduSceneResult.STREET_VIEW, 51, BaiduSceneResult.MOUNTAINEERING, BaiduSceneResult.STREET_VIEW, 53}, new int[]{0, 0, 0, 28, BaiduSceneResult.TAEKWONDO, BaiduSceneResult.CAR, BaiduSceneResult.STATION, BaiduSceneResult.STREET_VIEW, 77, 83, 78, 86, 1, 41, 0, 70, 77, 83, 78, 86, BaiduSceneResult.CHURCH, BaiduSceneResult.STREET_VIEW, 52, 50}, new int[]{-1, -1, -1, -1, BaiduSceneResult.TAEKWONDO, BaiduSceneResult.CAR, BaiduSceneResult.STATION, BaiduSceneResult.STREET_VIEW, 51, BaiduSceneResult.MOUNTAINEERING, BaiduSceneResult.STREET_VIEW, 53}, new int[]{-1, -1, -1, -1, BaiduSceneResult.TAEKWONDO, BaiduSceneResult.CAR, BaiduSceneResult.STATION, BaiduSceneResult.STREET_VIEW, 77, 83, 78, 86}, new int[]{-1, -1, -1, -1, BaiduSceneResult.TAEKWONDO, BaiduSceneResult.CAR, BaiduSceneResult.STATION, BaiduSceneResult.STREET_VIEW, BaiduSceneResult.TEMPLE, BaiduSceneResult.BUILDING_OTHER, BaiduSceneResult.WESTERN_ARCHITECTURE, BaiduSceneResult.CHURCH}, new int[]{0, 0, 0, 24, BaiduSceneResult.TAEKWONDO, BaiduSceneResult.CAR, BaiduSceneResult.STATION, BaiduSceneResult.STREET_VIEW, BaiduSceneResult.CHURCH, BaiduSceneResult.STREET_VIEW, 52, 49}}),
    F_3GP((String) FileCategory.VideoOrAudio, (int) new String[]{"3gp", "3gpp", "3g2"}, (FileCategory) new int[][]{new int[]{0, 0, 0, -1, BaiduSceneResult.TAEKWONDO, BaiduSceneResult.CAR, BaiduSceneResult.STATION, BaiduSceneResult.STREET_VIEW, 51, BaiduSceneResult.MOUNTAINEERING, BaiduSceneResult.STREET_VIEW}, new int[]{0, 0, 0, -1, BaiduSceneResult.TAEKWONDO, BaiduSceneResult.CAR, BaiduSceneResult.STATION, BaiduSceneResult.STREET_VIEW, 51, BaiduSceneResult.MOUNTAINEERING, 50}}),
    K3G(FileCategory.Video, new String[]{"k3g"}),
    ACC(FileCategory.Video, new String[]{"acc"}),
    AVI((String) FileCategory.Video, (int) new String[]{"avi"}, (FileCategory) new int[][]{new int[]{82, 73, 70, 70, -1, -1, -1, -1, 65, 86, 73, 32, 76, 73, 83, 84}}),
    MOV((String) FileCategory.Video, (int) new String[]{"mov"}, (FileCategory) new int[][]{new int[]{0, 0, 0, 20, BaiduSceneResult.TAEKWONDO, BaiduSceneResult.CAR, BaiduSceneResult.STATION, BaiduSceneResult.STREET_VIEW, BaiduSceneResult.FOUNTAIN, BaiduSceneResult.CAR, 32, 32}, new int[]{BaiduSceneResult.TAEKWONDO, BaiduSceneResult.CAR, BaiduSceneResult.STATION, BaiduSceneResult.STREET_VIEW, BaiduSceneResult.FOUNTAIN, BaiduSceneResult.CAR, 32, 32}, new int[]{-1, -1, -1, -1, BaiduSceneResult.CHURCH, BaiduSceneResult.WESTERN_ARCHITECTURE, BaiduSceneResult.WESTERN_ARCHITECTURE, BaiduSceneResult.SUBWAY}}),
    WMV((String) FileCategory.Video, (int) new String[]{"wmv"}, (FileCategory) new int[][]{new int[]{48, 38, 178, BaiduSceneResult.FERRY, BaiduSceneResult.DIGITAL_PRODUCT, BaiduSceneResult.TAEKWONDO, 207, 17, 166, 217, 0, 170, 0, 98, 206, BaiduSceneResult.ANCIENT_CHINESE_ARCHITECTURE}}),
    MP3((String) FileCategory.Audio, (int) new String[]{"mp3"}, (FileCategory) new int[][]{new int[]{73, 68, 51}, new int[]{255, 251}}),
    AAC((String) FileCategory.Audio, (int) new String[]{"aac"}, (FileCategory) new int[][]{new int[]{255, 241}, new int[]{255, 249}}),
    BMP((String) FileCategory.Image, (int) new String[]{"bmp"}, (FileCategory) new int[][]{new int[]{66, 77}}),
    TTF(FileCategory.Font, new String[]{"ttf", "otf"}),
    WBMP((String) FileCategory.Image, (int) new String[]{"wbmp"}, (FileCategory) false);
    
    private static final int CHECK_SIZE = 32;
    private static final String LOG_TAG = "FileType";
    private static final byte[] WEBP_HEADER = null;
    private static final Map<String, FileType> extensionMap = null;
    private final FileCategory category;
    private final boolean extensionOnly;
    private final String[] extensions;
    private final a imp;
    private final boolean isSupportedFormat;

    private static abstract class a {
        abstract boolean a(byte[] bArr);

        private a() {
        }

        /* synthetic */ a(AnonymousClass1 anonymousClass1) {
            this();
        }
    }

    public enum FileCategory {
        private static final /* synthetic */ FileCategory[] $VALUES = null;
        public static final FileCategory Audio = null;
        public static final FileCategory Font = null;
        public static final FileCategory Image = null;
        public static final FileCategory Video = null;
        public static final FileCategory VideoOrAudio = null;

        private FileCategory(String str, int i) {
        }

        public static FileCategory valueOf(String str) {
            return (FileCategory) Enum.valueOf(FileCategory.class, str);
        }

        public static FileCategory[] values() {
            return (FileCategory[]) $VALUES.clone();
        }

        static {
            Audio = new FileCategory("Audio", 0);
            Video = new FileCategory("Video", 1);
            VideoOrAudio = new FileCategory("VideoOrAudio", 2);
            Image = new FileCategory("Image", 3);
            Font = new FileCategory("Font", 4);
            $VALUES = new FileCategory[]{Audio, Video, VideoOrAudio, Image, Font};
        }
    }

    static {
        extensionMap = new HashMap();
        WEBP_HEADER = new byte[]{(byte) 82, (byte) 73, (byte) 70, (byte) 70, (byte) 87, (byte) 69, (byte) 66, (byte) 80};
    }

    private FileType(FileCategory fileCategory, String[] strArr, boolean z) {
        this.imp = new a() {
            boolean a(byte[] bArr) {
                return false;
            }
        };
        this.category = fileCategory;
        this.extensions = strArr;
        this.extensionOnly = false;
        this.isSupportedFormat = z;
    }

    private FileType(FileCategory fileCategory, String[] strArr) {
        this.imp = new a() {
            boolean a(byte[] bArr) {
                return false;
            }
        };
        this.category = fileCategory;
        this.extensions = strArr;
        this.extensionOnly = true;
        this.isSupportedFormat = true;
    }

    private FileType(FileCategory fileCategory, String[] strArr, final int[]... iArr) {
        this.imp = new a() {
            boolean a(byte[] bArr) {
                for (int[] iArr : iArr) {
                    if (bArr.length >= iArr.length) {
                        int i = 0;
                        while (i < iArr.length) {
                            if (iArr[i] == -1 || bArr[i] == ((byte) iArr[i])) {
                                i++;
                            }
                        }
                        return true;
                    }
                }
                return false;
            }
        };
        this.category = fileCategory;
        this.extensions = strArr;
        this.extensionOnly = false;
        this.isSupportedFormat = true;
    }

    private static void a() {
        if (extensionMap.isEmpty()) {
            for (FileType fileType : values()) {
                for (Object put : fileType.extensions) {
                    extensionMap.put(put, fileType);
                }
            }
        }
    }

    public boolean isSupportedFormat() {
        return this.isSupportedFormat;
    }

    public boolean isImage() {
        return this.category == FileCategory.Image;
    }

    public boolean isVideo() {
        return this.category == FileCategory.Video || this.category == FileCategory.VideoOrAudio;
    }

    public boolean isAudio() {
        return this.category == FileCategory.Audio || this.category == FileCategory.VideoOrAudio;
    }

    public FileCategory getCategory() {
        return this.category;
    }

    public static FileType fromExtension(String str) {
        if (str == null) {
            return null;
        }
        int lastIndexOf = str.lastIndexOf(46);
        if (lastIndexOf < 0 || lastIndexOf < str.lastIndexOf(47)) {
            return null;
        }
        String toLowerCase = str.substring(lastIndexOf + 1).toLowerCase(Locale.US);
        if (extensionMap.isEmpty()) {
            a();
        }
        return (FileType) extensionMap.get(toLowerCase);
    }

    public static FileType fromExtension(File file) {
        if (file == null) {
            return null;
        }
        Object toLowerCase;
        String name = file.getName();
        int lastIndexOf = name.lastIndexOf(46);
        if (lastIndexOf >= 0) {
            toLowerCase = name.substring(lastIndexOf + 1).toLowerCase(Locale.US);
        } else {
            toLowerCase = null;
        }
        if (toLowerCase == null) {
            return null;
        }
        if (extensionMap.isEmpty()) {
            a();
        }
        return (FileType) extensionMap.get(toLowerCase);
    }

    public static FileType fromFile(String str) {
        if (str == null) {
            return null;
        }
        return fromFile(new File(str));
    }

    /* JADX WARNING: Removed duplicated region for block: B:34:0x008a  */
    /* JADX WARNING: Removed duplicated region for block: B:82:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x00da  */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x008a  */
    /* JADX WARNING: Removed duplicated region for block: B:82:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x00da  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static FileType fromFile(File file) {
        FileType[] values;
        int length;
        int i;
        FileType fileType;
        if (file == null) {
            return null;
        }
        String substring;
        FileType fileType2;
        byte[] bArr;
        int read;
        String name = file.getName();
        int lastIndexOf = name.lastIndexOf(46);
        if (lastIndexOf >= 0) {
            substring = name.substring(lastIndexOf + 1);
        } else {
            substring = null;
        }
        if (substring != null) {
            for (FileType fileType22 : values()) {
                for (String str : fileType22.extensions) {
                    if (fileType22.extensionOnly && str.equalsIgnoreCase(substring)) {
                        Log.d(LOG_TAG, "FileType extension match: " + fileType22.name());
                        return fileType22;
                    }
                }
            }
        }
        if (!file.exists() || file.length() < 32) {
            bArr = null;
        } else {
            byte[] bArr2 = new byte[32];
            FileInputStream fileInputStream;
            try {
                fileInputStream = new FileInputStream(file);
                read = fileInputStream.read(bArr2);
                try {
                    fileInputStream.close();
                } catch (IOException e) {
                    bArr2 = null;
                    values = values();
                    length = values.length;
                    i = 0;
                    fileType = null;
                    while (i < length) {
                    }
                    fileType22 = fileType;
                    if (fileType22 != null) {
                    }
                    bArr = bArr2;
                    if (substring != null) {
                    }
                    return null;
                }
            } catch (IOException e2) {
                read = 0;
                bArr2 = null;
                values = values();
                length = values.length;
                i = 0;
                fileType = null;
                while (i < length) {
                }
                fileType22 = fileType;
                if (fileType22 != null) {
                }
                bArr = bArr2;
                if (substring != null) {
                }
                return null;
            } catch (Throwable th) {
                fileInputStream.close();
            }
            if (bArr2 != null && read >= 32) {
                values = values();
                length = values.length;
                i = 0;
                fileType = null;
                while (i < length) {
                    fileType22 = values[i];
                    if (fileType22.imp.a(bArr2)) {
                        Log.d(LOG_TAG, "FileType analysis match: " + fileType22.name());
                        if (fileType != null) {
                            Log.d(LOG_TAG, "FileType analysis MULTIPLE match: " + fileType22.name() + " (fall back to file extension)");
                            fileType22 = null;
                            break;
                        }
                    } else {
                        fileType22 = fileType;
                    }
                    i++;
                    fileType = fileType22;
                }
                fileType22 = fileType;
                if (fileType22 != null) {
                    return fileType22;
                }
            }
            bArr = bArr2;
        }
        if (substring != null) {
            for (FileType fileType3 : values()) {
                for (String equalsIgnoreCase : fileType3.extensions) {
                    if (equalsIgnoreCase.equalsIgnoreCase(substring)) {
                        Log.d(LOG_TAG, "FileType extension match: " + fileType3.name() + " [" + (bArr == null ? "null" : n.a(bArr)) + "]");
                        return fileType3;
                    }
                }
            }
        }
        return null;
    }
}
