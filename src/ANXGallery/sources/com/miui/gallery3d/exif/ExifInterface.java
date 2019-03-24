package com.miui.gallery3d.exif;

import android.util.SparseIntArray;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.nexstreaming.nexeditorsdk.nexClip;
import com.nexstreaming.nexeditorsdk.nexEngine;
import java.io.BufferedInputStream;
import java.io.Closeable;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteOrder;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;

public class ExifInterface {
    public static final ByteOrder DEFAULT_BYTE_ORDER = ByteOrder.BIG_ENDIAN;
    private static final String TAG = ExifInterface.class.getName();
    public static final int TAG_APERTURE_VALUE = defineTag(2, (short) -28158);
    public static final int TAG_ARTIST = defineTag(0, (short) 315);
    public static final int TAG_BITS_PER_SAMPLE = defineTag(0, (short) 258);
    public static final int TAG_BRIGHTNESS_VALUE = defineTag(2, (short) -28157);
    public static final int TAG_CFA_PATTERN = defineTag(2, (short) -23806);
    public static final int TAG_COLOR_SPACE = defineTag(2, (short) -24575);
    public static final int TAG_COMPONENTS_CONFIGURATION = defineTag(2, (short) -28415);
    public static final int TAG_COMPRESSED_BITS_PER_PIXEL = defineTag(2, (short) -28414);
    public static final int TAG_COMPRESSION = defineTag(0, (short) 259);
    public static final int TAG_CONTRAST = defineTag(2, (short) -23544);
    public static final int TAG_COPYRIGHT = defineTag(0, (short) -32104);
    public static final int TAG_CUSTOM_RENDERED = defineTag(2, (short) -23551);
    public static final int TAG_DATE_TIME = defineTag(0, (short) 306);
    public static final int TAG_DATE_TIME_DIGITIZED = defineTag(2, (short) -28668);
    public static final int TAG_DATE_TIME_ORIGINAL = defineTag(2, (short) -28669);
    public static final int TAG_DEVICE_SETTING_DESCRIPTION = defineTag(2, (short) -23541);
    public static final int TAG_DIGITAL_ZOOM_RATIO = defineTag(2, (short) -23548);
    public static final int TAG_EXIF_IFD = defineTag(0, (short) -30871);
    public static final int TAG_EXIF_VERSION = defineTag(2, (short) -28672);
    public static final int TAG_EXPOSURE_BIAS_VALUE = defineTag(2, (short) -28156);
    public static final int TAG_EXPOSURE_INDEX = defineTag(2, (short) -24043);
    public static final int TAG_EXPOSURE_MODE = defineTag(2, (short) -23550);
    public static final int TAG_EXPOSURE_PROGRAM = defineTag(2, (short) -30686);
    public static final int TAG_EXPOSURE_TIME = defineTag(2, (short) -32102);
    public static final int TAG_FILE_SOURCE = defineTag(2, (short) -23808);
    public static final int TAG_FLASH = defineTag(2, (short) -28151);
    public static final int TAG_FLASHPIX_VERSION = defineTag(2, (short) -24576);
    public static final int TAG_FLASH_ENERGY = defineTag(2, (short) -24053);
    public static final int TAG_FOCAL_LENGTH = defineTag(2, (short) -28150);
    public static final int TAG_FOCAL_LENGTH_IN_35_MM_FILE = defineTag(2, (short) -23547);
    public static final int TAG_FOCAL_PLANE_RESOLUTION_UNIT = defineTag(2, (short) -24048);
    public static final int TAG_FOCAL_PLANE_X_RESOLUTION = defineTag(2, (short) -24050);
    public static final int TAG_FOCAL_PLANE_Y_RESOLUTION = defineTag(2, (short) -24049);
    public static final int TAG_F_NUMBER = defineTag(2, (short) -32099);
    public static final int TAG_GAIN_CONTROL = defineTag(2, (short) -23545);
    public static final int TAG_GPS_ALTITUDE = defineTag(4, (short) 6);
    public static final int TAG_GPS_ALTITUDE_REF = defineTag(4, (short) 5);
    public static final int TAG_GPS_AREA_INFORMATION = defineTag(4, (short) 28);
    public static final int TAG_GPS_DATE_STAMP = defineTag(4, (short) 29);
    public static final int TAG_GPS_DEST_BEARING = defineTag(4, (short) 24);
    public static final int TAG_GPS_DEST_BEARING_REF = defineTag(4, (short) 23);
    public static final int TAG_GPS_DEST_DISTANCE = defineTag(4, (short) 26);
    public static final int TAG_GPS_DEST_DISTANCE_REF = defineTag(4, (short) 25);
    public static final int TAG_GPS_DEST_LATITUDE = defineTag(4, (short) 20);
    public static final int TAG_GPS_DEST_LATITUDE_REF = defineTag(4, (short) 19);
    public static final int TAG_GPS_DEST_LONGITUDE = defineTag(4, (short) 22);
    public static final int TAG_GPS_DEST_LONGITUDE_REF = defineTag(4, (short) 21);
    public static final int TAG_GPS_DIFFERENTIAL = defineTag(4, (short) 30);
    public static final int TAG_GPS_DOP = defineTag(4, (short) 11);
    public static final int TAG_GPS_IFD = defineTag(0, (short) -30683);
    public static final int TAG_GPS_IMG_DIRECTION = defineTag(4, (short) 17);
    public static final int TAG_GPS_IMG_DIRECTION_REF = defineTag(4, (short) 16);
    public static final int TAG_GPS_LATITUDE = defineTag(4, (short) 2);
    public static final int TAG_GPS_LATITUDE_REF = defineTag(4, (short) 1);
    public static final int TAG_GPS_LONGITUDE = defineTag(4, (short) 4);
    public static final int TAG_GPS_LONGITUDE_REF = defineTag(4, (short) 3);
    public static final int TAG_GPS_MAP_DATUM = defineTag(4, (short) 18);
    public static final int TAG_GPS_MEASURE_MODE = defineTag(4, (short) 10);
    public static final int TAG_GPS_PROCESSING_METHOD = defineTag(4, (short) 27);
    public static final int TAG_GPS_SATTELLITES = defineTag(4, (short) 8);
    public static final int TAG_GPS_SPEED = defineTag(4, (short) 13);
    public static final int TAG_GPS_SPEED_REF = defineTag(4, (short) 12);
    public static final int TAG_GPS_STATUS = defineTag(4, (short) 9);
    public static final int TAG_GPS_TIME_STAMP = defineTag(4, (short) 7);
    public static final int TAG_GPS_TRACK = defineTag(4, (short) 15);
    public static final int TAG_GPS_TRACK_REF = defineTag(4, (short) 14);
    public static final int TAG_GPS_VERSION_ID = defineTag(4, (short) 0);
    public static final int TAG_IMAGE_DESCRIPTION = defineTag(0, (short) 270);
    public static final int TAG_IMAGE_LENGTH = defineTag(0, (short) 257);
    public static final int TAG_IMAGE_UNIQUE_ID = defineTag(2, (short) -23520);
    public static final int TAG_IMAGE_WIDTH = defineTag(0, (short) 256);
    public static final int TAG_INTEROPERABILITY_IFD = defineTag(2, (short) -24571);
    public static final int TAG_INTEROPERABILITY_INDEX = defineTag(3, (short) 1);
    public static final int TAG_ISO_SPEED_RATINGS = defineTag(2, (short) -30681);
    public static final int TAG_JPEG_INTERCHANGE_FORMAT = defineTag(1, (short) 513);
    public static final int TAG_JPEG_INTERCHANGE_FORMAT_LENGTH = defineTag(1, (short) 514);
    public static final int TAG_LIGHT_SOURCE = defineTag(2, (short) -28152);
    public static final int TAG_MAKE = defineTag(0, (short) 271);
    public static final int TAG_MAKER_NOTE = defineTag(2, (short) -28036);
    public static final int TAG_MAX_APERTURE_VALUE = defineTag(2, (short) -28155);
    public static final int TAG_METERING_MODE = defineTag(2, (short) -28153);
    public static final int TAG_MODEL = defineTag(0, (short) 272);
    public static final int TAG_OECF = defineTag(2, (short) -30680);
    public static final int TAG_ORIENTATION = defineTag(0, (short) 274);
    public static final int TAG_PARALLEL_PROCESS_COMMENT = defineTag(2, (short) -30584);
    public static final int TAG_PHOTOMETRIC_INTERPRETATION = defineTag(0, (short) 262);
    public static final int TAG_PIXEL_X_DIMENSION = defineTag(2, (short) -24574);
    public static final int TAG_PIXEL_Y_DIMENSION = defineTag(2, (short) -24573);
    public static final int TAG_PLANAR_CONFIGURATION = defineTag(0, (short) 284);
    public static final int TAG_PRIMARY_CHROMATICITIES = defineTag(0, (short) 319);
    public static final int TAG_REFERENCE_BLACK_WHITE = defineTag(0, (short) 532);
    public static final int TAG_RELATED_SOUND_FILE = defineTag(2, (short) -24572);
    public static final int TAG_RESOLUTION_UNIT = defineTag(0, (short) 296);
    public static final int TAG_ROWS_PER_STRIP = defineTag(0, (short) 278);
    public static final int TAG_SAMPLES_PER_PIXEL = defineTag(0, (short) 277);
    public static final int TAG_SATURATION = defineTag(2, (short) -23543);
    public static final int TAG_SCENE_CAPTURE_TYPE = defineTag(2, (short) -23546);
    public static final int TAG_SCENE_TYPE = defineTag(2, (short) -23807);
    public static final int TAG_SENSING_METHOD = defineTag(2, (short) -24041);
    public static final int TAG_SHARPNESS = defineTag(2, (short) -23542);
    public static final int TAG_SHUTTER_SPEED_VALUE = defineTag(2, (short) -28159);
    public static final int TAG_SOFTWARE = defineTag(0, (short) 305);
    public static final int TAG_SPATIAL_FREQUENCY_RESPONSE = defineTag(2, (short) -24052);
    public static final int TAG_SPECTRAL_SENSITIVITY = defineTag(2, (short) -30684);
    public static final int TAG_STRIP_BYTE_COUNTS = defineTag(0, (short) 279);
    public static final int TAG_STRIP_OFFSETS = defineTag(0, (short) 273);
    public static final int TAG_SUBJECT_AREA = defineTag(2, (short) -28140);
    public static final int TAG_SUBJECT_DISTANCE = defineTag(2, (short) -28154);
    public static final int TAG_SUBJECT_DISTANCE_RANGE = defineTag(2, (short) -23540);
    public static final int TAG_SUBJECT_LOCATION = defineTag(2, (short) -24044);
    public static final int TAG_SUB_SEC_TIME = defineTag(2, (short) -28016);
    public static final int TAG_SUB_SEC_TIME_DIGITIZED = defineTag(2, (short) -28014);
    public static final int TAG_SUB_SEC_TIME_ORIGINAL = defineTag(2, (short) -28015);
    public static final int TAG_TRANSFER_FUNCTION = defineTag(0, (short) 301);
    public static final int TAG_USER_COMMENT = defineTag(2, (short) -28026);
    public static final int TAG_WHITE_BALANCE = defineTag(2, (short) -23549);
    public static final int TAG_WHITE_POINT = defineTag(0, (short) 318);
    public static final int TAG_XIAOMI_COMMENT = defineTag(2, (short) -26215);
    public static final int TAG_X_RESOLUTION = defineTag(0, (short) 282);
    public static final int TAG_Y_CB_CR_COEFFICIENTS = defineTag(0, (short) 529);
    public static final int TAG_Y_CB_CR_POSITIONING = defineTag(0, (short) 531);
    public static final int TAG_Y_CB_CR_SUB_SAMPLING = defineTag(0, (short) 530);
    public static final int TAG_Y_RESOLUTION = defineTag(0, (short) 283);
    protected static HashSet<Short> sBannedDefines = new HashSet(sOffsetTags);
    private static HashSet<Short> sOffsetTags = new HashSet();
    private ExifData mData = new ExifData(DEFAULT_BYTE_ORDER);
    private final DateFormat mDateTimeStampFormat = new SimpleDateFormat("yyyy:MM:dd kk:mm:ss");
    private final DateFormat mGPSDateStampFormat = new SimpleDateFormat("yyyy:MM:dd");
    private final Calendar mGPSTimeStampCalendar = Calendar.getInstance(TimeZone.getTimeZone("UTC"));
    private SparseIntArray mTagInfo = null;

    static {
        sOffsetTags.add(Short.valueOf(getTrueTagKey(TAG_GPS_IFD)));
        sOffsetTags.add(Short.valueOf(getTrueTagKey(TAG_EXIF_IFD)));
        sOffsetTags.add(Short.valueOf(getTrueTagKey(TAG_JPEG_INTERCHANGE_FORMAT)));
        sOffsetTags.add(Short.valueOf(getTrueTagKey(TAG_INTEROPERABILITY_IFD)));
        sOffsetTags.add(Short.valueOf(getTrueTagKey(TAG_STRIP_OFFSETS)));
        sBannedDefines.add(Short.valueOf(getTrueTagKey(-1)));
        sBannedDefines.add(Short.valueOf(getTrueTagKey(TAG_JPEG_INTERCHANGE_FORMAT_LENGTH)));
        sBannedDefines.add(Short.valueOf(getTrueTagKey(TAG_STRIP_BYTE_COUNTS)));
    }

    public static int defineTag(int ifdId, short tagId) {
        return (65535 & tagId) | (ifdId << 16);
    }

    public static short getTrueTagKey(int tag) {
        return (short) tag;
    }

    public static int getTrueIfd(int tag) {
        return tag >>> 16;
    }

    public ExifInterface() {
        this.mGPSDateStampFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
    }

    public void readExif(InputStream inStream) throws ExifInvalidFormatException, IOException {
        if (inStream == null) {
            throw new IllegalArgumentException("Argument is null");
        }
        this.mData = new ExifReader(this).read(inStream);
    }

    public void readExif(String inFileName) throws ExifInvalidFormatException, IOException {
        Throwable th;
        if (inFileName == null) {
            throw new IllegalArgumentException("Argument is null");
        }
        InputStream is = null;
        try {
            InputStream is2 = new BufferedInputStream(new FileInputStream(inFileName));
            try {
                readExif(is2);
                closeSilently(is2);
            } catch (Throwable th2) {
                th = th2;
                is = is2;
                closeSilently(is);
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            closeSilently(is);
            throw th;
        }
    }

    public OutputStream getExifWriterStream(OutputStream outStream) {
        if (outStream == null) {
            throw new IllegalArgumentException("Argument is null");
        }
        ExifOutputStream eos = new ExifOutputStream(outStream, this);
        eos.setExifData(this.mData);
        return eos;
    }

    public List<ExifTag> getAllTags() {
        return this.mData.getAllTags();
    }

    public ExifTag getTag(int tagId, int ifdId) {
        if (ExifTag.isValidIfd(ifdId)) {
            return this.mData.getTag(getTrueTagKey(tagId), ifdId);
        }
        return null;
    }

    public String getTagStringValue(int tagId, int ifdId) {
        ExifTag t = getTag(tagId, ifdId);
        if (t == null) {
            return null;
        }
        return t.getValueAsString();
    }

    public Integer getTagIntValue(int tagId, int ifdId) {
        int[] l = getTagIntValues(tagId, ifdId);
        if (l == null || l.length <= 0) {
            return null;
        }
        return new Integer(l[0]);
    }

    public Integer getTagIntValue(int tagId) {
        return getTagIntValue(tagId, getDefinedTagDefaultIfd(tagId));
    }

    public Byte getTagByteValue(int tagId, int ifdId) {
        byte[] l = getTagByteValues(tagId, ifdId);
        if (l == null || l.length <= 0) {
            return null;
        }
        return new Byte(l[0]);
    }

    public int[] getTagIntValues(int tagId, int ifdId) {
        ExifTag t = getTag(tagId, ifdId);
        if (t == null) {
            return null;
        }
        return t.getValueAsInts();
    }

    public byte[] getTagByteValues(int tagId, int ifdId) {
        ExifTag t = getTag(tagId, ifdId);
        if (t == null) {
            return null;
        }
        return t.getValueAsBytes();
    }

    public int getDefinedTagDefaultIfd(int tagId) {
        if (getTagInfo().get(tagId) == 0) {
            return -1;
        }
        return getTrueIfd(tagId);
    }

    protected static boolean isOffsetTag(short tag) {
        return sOffsetTags.contains(Short.valueOf(tag));
    }

    public ExifTag buildTag(int tagId, int ifdId, Object val) {
        int info = getTagInfo().get(tagId);
        if (info == 0 || val == null) {
            return null;
        }
        short type = getTypeFromInfo(info);
        int definedCount = getComponentCountFromInfo(info);
        boolean hasDefinedCount = definedCount != 0;
        if (!isIfdAllowed(info, ifdId)) {
            return null;
        }
        ExifTag t = new ExifTag(getTrueTagKey(tagId), type, definedCount, ifdId, hasDefinedCount);
        if (t.setValue(val)) {
            return t;
        }
        return null;
    }

    public ExifTag buildTag(int tagId, Object val) {
        return buildTag(tagId, getTrueIfd(tagId), val);
    }

    protected ExifTag buildUninitializedTag(int tagId) {
        int info = getTagInfo().get(tagId);
        if (info == 0) {
            return null;
        }
        short type = getTypeFromInfo(info);
        int definedCount = getComponentCountFromInfo(info);
        return new ExifTag(getTrueTagKey(tagId), type, definedCount, getTrueIfd(tagId), definedCount != 0);
    }

    public ExifTag setTag(ExifTag tag) {
        if (tag != null) {
            if (tag.getDataSize() < 65535) {
                return this.mData.addTag(tag);
            }
            HashMap<String, String> params = new HashMap();
            params.put("tagId", String.format(Locale.ENGLISH, "%04X\n", new Object[]{Short.valueOf(tag.getTagId())}));
            params.put("tagSize", String.valueOf(tag.getDataSize()));
            BaseSamplingStatHelper.recordErrorEvent("exif_parser", "exif_tag_overlength", params);
        }
        return null;
    }

    public String getXiaomiComment() {
        return this.mData.getXiaomiComment();
    }

    public static short getOrientationValueForRotation(int degrees) {
        degrees %= 360;
        if (degrees < 0) {
            degrees += 360;
        }
        if (degrees < 90) {
            return (short) 1;
        }
        if (degrees < nexClip.kClip_Rotate_180) {
            return (short) 6;
        }
        if (degrees < nexClip.kClip_Rotate_270) {
            return (short) 3;
        }
        return (short) 8;
    }

    private ExifTag buildTagIgnoreIfdAllowed(int tagId, int ifdId, Object val) {
        int info = getTagInfo().get(tagId);
        if (info == 0 || val == null) {
            return null;
        }
        short type = getTypeFromInfo(info);
        int definedCount = getComponentCountFromInfo(info);
        ExifTag t = new ExifTag(getTrueTagKey(tagId), type, definedCount, ifdId, definedCount != 0);
        if (t.setValue(val)) {
            return t;
        }
        return null;
    }

    public String getUserCommentAsASCII() {
        return this.mData.getUserCommentAsASCII();
    }

    public boolean addUserComment(String comment) {
        ExifTag t = buildTagIgnoreIfdAllowed(TAG_USER_COMMENT, 0, comment);
        if (t == null) {
            return false;
        }
        setTag(t);
        return true;
    }

    protected static void closeSilently(Closeable c) {
        if (c != null) {
            try {
                c.close();
            } catch (Throwable th) {
            }
        }
    }

    protected SparseIntArray getTagInfo() {
        if (this.mTagInfo == null) {
            this.mTagInfo = new SparseIntArray();
            initTagInfo();
        }
        return this.mTagInfo;
    }

    private void initTagInfo() {
        int ifdFlags = getFlagsFromAllowedIfds(new int[]{0, 1}) << 24;
        this.mTagInfo.put(TAG_MAKE, (nexEngine.ExportHEVCHighTierLevel51 | ifdFlags) | 0);
        this.mTagInfo.put(TAG_IMAGE_WIDTH, (nexEngine.ExportHEVCMainTierLevel52 | ifdFlags) | 1);
        this.mTagInfo.put(TAG_IMAGE_LENGTH, (nexEngine.ExportHEVCMainTierLevel52 | ifdFlags) | 1);
        this.mTagInfo.put(TAG_BITS_PER_SAMPLE, (196608 | ifdFlags) | 3);
        this.mTagInfo.put(TAG_COMPRESSION, (196608 | ifdFlags) | 1);
        this.mTagInfo.put(TAG_PHOTOMETRIC_INTERPRETATION, (196608 | ifdFlags) | 1);
        this.mTagInfo.put(TAG_ORIENTATION, (196608 | ifdFlags) | 1);
        this.mTagInfo.put(TAG_SAMPLES_PER_PIXEL, (196608 | ifdFlags) | 1);
        this.mTagInfo.put(TAG_PLANAR_CONFIGURATION, (196608 | ifdFlags) | 1);
        this.mTagInfo.put(TAG_Y_CB_CR_SUB_SAMPLING, (196608 | ifdFlags) | 2);
        this.mTagInfo.put(TAG_Y_CB_CR_POSITIONING, (196608 | ifdFlags) | 1);
        this.mTagInfo.put(TAG_X_RESOLUTION, (327680 | ifdFlags) | 1);
        this.mTagInfo.put(TAG_Y_RESOLUTION, (327680 | ifdFlags) | 1);
        this.mTagInfo.put(TAG_RESOLUTION_UNIT, (196608 | ifdFlags) | 1);
        this.mTagInfo.put(TAG_STRIP_OFFSETS, (nexEngine.ExportHEVCMainTierLevel52 | ifdFlags) | 0);
        this.mTagInfo.put(TAG_ROWS_PER_STRIP, (nexEngine.ExportHEVCMainTierLevel52 | ifdFlags) | 1);
        this.mTagInfo.put(TAG_STRIP_BYTE_COUNTS, (nexEngine.ExportHEVCMainTierLevel52 | ifdFlags) | 0);
        this.mTagInfo.put(TAG_TRANSFER_FUNCTION, (196608 | ifdFlags) | 768);
        this.mTagInfo.put(TAG_WHITE_POINT, (327680 | ifdFlags) | 2);
        this.mTagInfo.put(TAG_PRIMARY_CHROMATICITIES, (327680 | ifdFlags) | 6);
        this.mTagInfo.put(TAG_Y_CB_CR_COEFFICIENTS, (327680 | ifdFlags) | 3);
        this.mTagInfo.put(TAG_REFERENCE_BLACK_WHITE, (327680 | ifdFlags) | 6);
        this.mTagInfo.put(TAG_DATE_TIME, (nexEngine.ExportHEVCHighTierLevel51 | ifdFlags) | 20);
        this.mTagInfo.put(TAG_IMAGE_DESCRIPTION, (nexEngine.ExportHEVCHighTierLevel51 | ifdFlags) | 0);
        this.mTagInfo.put(TAG_MAKE, (nexEngine.ExportHEVCHighTierLevel51 | ifdFlags) | 0);
        this.mTagInfo.put(TAG_MODEL, (nexEngine.ExportHEVCHighTierLevel51 | ifdFlags) | 0);
        this.mTagInfo.put(TAG_SOFTWARE, (nexEngine.ExportHEVCHighTierLevel51 | ifdFlags) | 0);
        this.mTagInfo.put(TAG_ARTIST, (nexEngine.ExportHEVCHighTierLevel51 | ifdFlags) | 0);
        this.mTagInfo.put(TAG_COPYRIGHT, (nexEngine.ExportHEVCHighTierLevel51 | ifdFlags) | 0);
        this.mTagInfo.put(TAG_EXIF_IFD, (nexEngine.ExportHEVCMainTierLevel52 | ifdFlags) | 1);
        this.mTagInfo.put(TAG_GPS_IFD, (nexEngine.ExportHEVCMainTierLevel52 | ifdFlags) | 1);
        int ifdFlags1 = getFlagsFromAllowedIfds(new int[]{1}) << 24;
        this.mTagInfo.put(TAG_JPEG_INTERCHANGE_FORMAT, (nexEngine.ExportHEVCMainTierLevel52 | ifdFlags1) | 1);
        this.mTagInfo.put(TAG_JPEG_INTERCHANGE_FORMAT_LENGTH, (nexEngine.ExportHEVCMainTierLevel52 | ifdFlags1) | 1);
        int exifFlags = getFlagsFromAllowedIfds(new int[]{2}) << 24;
        this.mTagInfo.put(TAG_EXIF_VERSION, (458752 | exifFlags) | 4);
        this.mTagInfo.put(TAG_FLASHPIX_VERSION, (458752 | exifFlags) | 4);
        this.mTagInfo.put(TAG_COLOR_SPACE, (196608 | exifFlags) | 1);
        this.mTagInfo.put(TAG_COMPONENTS_CONFIGURATION, (458752 | exifFlags) | 4);
        this.mTagInfo.put(TAG_COMPRESSED_BITS_PER_PIXEL, (327680 | exifFlags) | 1);
        this.mTagInfo.put(TAG_PIXEL_X_DIMENSION, (nexEngine.ExportHEVCMainTierLevel52 | exifFlags) | 1);
        this.mTagInfo.put(TAG_PIXEL_Y_DIMENSION, (nexEngine.ExportHEVCMainTierLevel52 | exifFlags) | 1);
        this.mTagInfo.put(TAG_MAKER_NOTE, (458752 | exifFlags) | 0);
        this.mTagInfo.put(TAG_USER_COMMENT, (458752 | exifFlags) | 0);
        this.mTagInfo.put(TAG_RELATED_SOUND_FILE, (nexEngine.ExportHEVCHighTierLevel51 | exifFlags) | 13);
        this.mTagInfo.put(TAG_DATE_TIME_ORIGINAL, (nexEngine.ExportHEVCHighTierLevel51 | exifFlags) | 20);
        this.mTagInfo.put(TAG_DATE_TIME_DIGITIZED, (nexEngine.ExportHEVCHighTierLevel51 | exifFlags) | 20);
        this.mTagInfo.put(TAG_SUB_SEC_TIME, (nexEngine.ExportHEVCHighTierLevel51 | exifFlags) | 0);
        this.mTagInfo.put(TAG_SUB_SEC_TIME_ORIGINAL, (nexEngine.ExportHEVCHighTierLevel51 | exifFlags) | 0);
        this.mTagInfo.put(TAG_SUB_SEC_TIME_DIGITIZED, (nexEngine.ExportHEVCHighTierLevel51 | exifFlags) | 0);
        this.mTagInfo.put(TAG_IMAGE_UNIQUE_ID, (nexEngine.ExportHEVCHighTierLevel51 | exifFlags) | 33);
        this.mTagInfo.put(TAG_EXPOSURE_TIME, (327680 | exifFlags) | 1);
        this.mTagInfo.put(TAG_F_NUMBER, (327680 | exifFlags) | 1);
        this.mTagInfo.put(TAG_EXPOSURE_PROGRAM, (196608 | exifFlags) | 1);
        this.mTagInfo.put(TAG_SPECTRAL_SENSITIVITY, (nexEngine.ExportHEVCHighTierLevel51 | exifFlags) | 0);
        this.mTagInfo.put(TAG_ISO_SPEED_RATINGS, (196608 | exifFlags) | 0);
        this.mTagInfo.put(TAG_OECF, (458752 | exifFlags) | 0);
        this.mTagInfo.put(TAG_SHUTTER_SPEED_VALUE, (655360 | exifFlags) | 1);
        this.mTagInfo.put(TAG_APERTURE_VALUE, (327680 | exifFlags) | 1);
        this.mTagInfo.put(TAG_BRIGHTNESS_VALUE, (655360 | exifFlags) | 1);
        this.mTagInfo.put(TAG_EXPOSURE_BIAS_VALUE, (655360 | exifFlags) | 1);
        this.mTagInfo.put(TAG_MAX_APERTURE_VALUE, (327680 | exifFlags) | 1);
        this.mTagInfo.put(TAG_SUBJECT_DISTANCE, (327680 | exifFlags) | 1);
        this.mTagInfo.put(TAG_METERING_MODE, (196608 | exifFlags) | 1);
        this.mTagInfo.put(TAG_LIGHT_SOURCE, (196608 | exifFlags) | 1);
        this.mTagInfo.put(TAG_FLASH, (196608 | exifFlags) | 1);
        this.mTagInfo.put(TAG_FOCAL_LENGTH, (327680 | exifFlags) | 1);
        this.mTagInfo.put(TAG_SUBJECT_AREA, (196608 | exifFlags) | 0);
        this.mTagInfo.put(TAG_FLASH_ENERGY, (327680 | exifFlags) | 1);
        this.mTagInfo.put(TAG_SPATIAL_FREQUENCY_RESPONSE, (458752 | exifFlags) | 0);
        this.mTagInfo.put(TAG_FOCAL_PLANE_X_RESOLUTION, (327680 | exifFlags) | 1);
        this.mTagInfo.put(TAG_FOCAL_PLANE_Y_RESOLUTION, (327680 | exifFlags) | 1);
        this.mTagInfo.put(TAG_FOCAL_PLANE_RESOLUTION_UNIT, (196608 | exifFlags) | 1);
        this.mTagInfo.put(TAG_SUBJECT_LOCATION, (196608 | exifFlags) | 2);
        this.mTagInfo.put(TAG_EXPOSURE_INDEX, (327680 | exifFlags) | 1);
        this.mTagInfo.put(TAG_SENSING_METHOD, (196608 | exifFlags) | 1);
        this.mTagInfo.put(TAG_FILE_SOURCE, (458752 | exifFlags) | 1);
        this.mTagInfo.put(TAG_SCENE_TYPE, (458752 | exifFlags) | 1);
        this.mTagInfo.put(TAG_CFA_PATTERN, (458752 | exifFlags) | 0);
        this.mTagInfo.put(TAG_CUSTOM_RENDERED, (196608 | exifFlags) | 1);
        this.mTagInfo.put(TAG_EXPOSURE_MODE, (196608 | exifFlags) | 1);
        this.mTagInfo.put(TAG_WHITE_BALANCE, (196608 | exifFlags) | 1);
        this.mTagInfo.put(TAG_DIGITAL_ZOOM_RATIO, (327680 | exifFlags) | 1);
        this.mTagInfo.put(TAG_FOCAL_LENGTH_IN_35_MM_FILE, (196608 | exifFlags) | 1);
        this.mTagInfo.put(TAG_SCENE_CAPTURE_TYPE, (196608 | exifFlags) | 1);
        this.mTagInfo.put(TAG_GAIN_CONTROL, (327680 | exifFlags) | 1);
        this.mTagInfo.put(TAG_CONTRAST, (196608 | exifFlags) | 1);
        this.mTagInfo.put(TAG_SATURATION, (196608 | exifFlags) | 1);
        this.mTagInfo.put(TAG_SHARPNESS, (196608 | exifFlags) | 1);
        this.mTagInfo.put(TAG_DEVICE_SETTING_DESCRIPTION, (458752 | exifFlags) | 0);
        this.mTagInfo.put(TAG_SUBJECT_DISTANCE_RANGE, (196608 | exifFlags) | 1);
        this.mTagInfo.put(TAG_INTEROPERABILITY_IFD, (nexEngine.ExportHEVCMainTierLevel52 | exifFlags) | 1);
        this.mTagInfo.put(TAG_PARALLEL_PROCESS_COMMENT, (nexEngine.ExportHEVCHighTierLevel51 | exifFlags) | 0);
        this.mTagInfo.put(TAG_XIAOMI_COMMENT, (nexEngine.ExportHEVCHighTierLevel51 | exifFlags) | 0);
        int gpsFlags = getFlagsFromAllowedIfds(new int[]{4}) << 24;
        this.mTagInfo.put(TAG_GPS_VERSION_ID, (65536 | gpsFlags) | 4);
        this.mTagInfo.put(TAG_GPS_LATITUDE_REF, (nexEngine.ExportHEVCHighTierLevel51 | gpsFlags) | 2);
        this.mTagInfo.put(TAG_GPS_LONGITUDE_REF, (nexEngine.ExportHEVCHighTierLevel51 | gpsFlags) | 2);
        this.mTagInfo.put(TAG_GPS_LATITUDE, (655360 | gpsFlags) | 3);
        this.mTagInfo.put(TAG_GPS_LONGITUDE, (655360 | gpsFlags) | 3);
        this.mTagInfo.put(TAG_GPS_ALTITUDE_REF, (65536 | gpsFlags) | 1);
        this.mTagInfo.put(TAG_GPS_ALTITUDE, (327680 | gpsFlags) | 1);
        this.mTagInfo.put(TAG_GPS_TIME_STAMP, (327680 | gpsFlags) | 3);
        this.mTagInfo.put(TAG_GPS_SATTELLITES, (nexEngine.ExportHEVCHighTierLevel51 | gpsFlags) | 0);
        this.mTagInfo.put(TAG_GPS_STATUS, (nexEngine.ExportHEVCHighTierLevel51 | gpsFlags) | 2);
        this.mTagInfo.put(TAG_GPS_MEASURE_MODE, (nexEngine.ExportHEVCHighTierLevel51 | gpsFlags) | 2);
        this.mTagInfo.put(TAG_GPS_DOP, (327680 | gpsFlags) | 1);
        this.mTagInfo.put(TAG_GPS_SPEED_REF, (nexEngine.ExportHEVCHighTierLevel51 | gpsFlags) | 2);
        this.mTagInfo.put(TAG_GPS_SPEED, (327680 | gpsFlags) | 1);
        this.mTagInfo.put(TAG_GPS_TRACK_REF, (nexEngine.ExportHEVCHighTierLevel51 | gpsFlags) | 2);
        this.mTagInfo.put(TAG_GPS_TRACK, (327680 | gpsFlags) | 1);
        this.mTagInfo.put(TAG_GPS_IMG_DIRECTION_REF, (nexEngine.ExportHEVCHighTierLevel51 | gpsFlags) | 2);
        this.mTagInfo.put(TAG_GPS_IMG_DIRECTION, (327680 | gpsFlags) | 1);
        this.mTagInfo.put(TAG_GPS_MAP_DATUM, (nexEngine.ExportHEVCHighTierLevel51 | gpsFlags) | 0);
        this.mTagInfo.put(TAG_GPS_DEST_LATITUDE_REF, (nexEngine.ExportHEVCHighTierLevel51 | gpsFlags) | 2);
        this.mTagInfo.put(TAG_GPS_DEST_LATITUDE, (327680 | gpsFlags) | 1);
        this.mTagInfo.put(TAG_GPS_DEST_BEARING_REF, (nexEngine.ExportHEVCHighTierLevel51 | gpsFlags) | 2);
        this.mTagInfo.put(TAG_GPS_DEST_BEARING, (327680 | gpsFlags) | 1);
        this.mTagInfo.put(TAG_GPS_DEST_DISTANCE_REF, (nexEngine.ExportHEVCHighTierLevel51 | gpsFlags) | 2);
        this.mTagInfo.put(TAG_GPS_DEST_DISTANCE, (327680 | gpsFlags) | 1);
        this.mTagInfo.put(TAG_GPS_PROCESSING_METHOD, (458752 | gpsFlags) | 0);
        this.mTagInfo.put(TAG_GPS_AREA_INFORMATION, (458752 | gpsFlags) | 0);
        this.mTagInfo.put(TAG_GPS_DATE_STAMP, (nexEngine.ExportHEVCHighTierLevel51 | gpsFlags) | 11);
        this.mTagInfo.put(TAG_GPS_DIFFERENTIAL, (196608 | gpsFlags) | 11);
        this.mTagInfo.put(TAG_INTEROPERABILITY_INDEX, (nexEngine.ExportHEVCHighTierLevel51 | (getFlagsFromAllowedIfds(new int[]{3}) << 24)) | 0);
    }

    protected static int getAllowedIfdFlagsFromInfo(int info) {
        return info >>> 24;
    }

    protected static boolean isIfdAllowed(int info, int ifd) {
        int[] ifds = IfdData.getIfds();
        int ifdFlags = getAllowedIfdFlagsFromInfo(info);
        int i = 0;
        while (i < ifds.length) {
            if (ifd == ifds[i] && ((ifdFlags >> i) & 1) == 1) {
                return true;
            }
            i++;
        }
        return false;
    }

    protected static int getFlagsFromAllowedIfds(int[] allowedIfds) {
        if (allowedIfds == null || allowedIfds.length == 0) {
            return 0;
        }
        int flags = 0;
        int[] ifds = IfdData.getIfds();
        for (int i = 0; i < 5; i++) {
            for (int j : allowedIfds) {
                if (ifds[i] == j) {
                    flags |= 1 << i;
                    break;
                }
            }
        }
        return flags;
    }

    protected static short getTypeFromInfo(int info) {
        return (short) ((info >> 16) & 255);
    }

    protected static int getComponentCountFromInfo(int info) {
        return 65535 & info;
    }
}