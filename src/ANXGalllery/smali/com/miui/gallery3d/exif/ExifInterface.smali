.class public Lcom/miui/gallery3d/exif/ExifInterface;
.super Ljava/lang/Object;
.source "ExifInterface.java"


# static fields
.field public static final DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

.field private static final TAG:Ljava/lang/String;

.field public static final TAG_APERTURE_VALUE:I

.field public static final TAG_ARTIST:I

.field public static final TAG_BITS_PER_SAMPLE:I

.field public static final TAG_BRIGHTNESS_VALUE:I

.field public static final TAG_CFA_PATTERN:I

.field public static final TAG_COLOR_SPACE:I

.field public static final TAG_COMPONENTS_CONFIGURATION:I

.field public static final TAG_COMPRESSED_BITS_PER_PIXEL:I

.field public static final TAG_COMPRESSION:I

.field public static final TAG_CONTRAST:I

.field public static final TAG_COPYRIGHT:I

.field public static final TAG_CUSTOM_RENDERED:I

.field public static final TAG_DATE_TIME:I

.field public static final TAG_DATE_TIME_DIGITIZED:I

.field public static final TAG_DATE_TIME_ORIGINAL:I

.field public static final TAG_DEVICE_SETTING_DESCRIPTION:I

.field public static final TAG_DIGITAL_ZOOM_RATIO:I

.field public static final TAG_EXIF_IFD:I

.field public static final TAG_EXIF_VERSION:I

.field public static final TAG_EXPOSURE_BIAS_VALUE:I

.field public static final TAG_EXPOSURE_INDEX:I

.field public static final TAG_EXPOSURE_MODE:I

.field public static final TAG_EXPOSURE_PROGRAM:I

.field public static final TAG_EXPOSURE_TIME:I

.field public static final TAG_FILE_SOURCE:I

.field public static final TAG_FLASH:I

.field public static final TAG_FLASHPIX_VERSION:I

.field public static final TAG_FLASH_ENERGY:I

.field public static final TAG_FOCAL_LENGTH:I

.field public static final TAG_FOCAL_LENGTH_IN_35_MM_FILE:I

.field public static final TAG_FOCAL_PLANE_RESOLUTION_UNIT:I

.field public static final TAG_FOCAL_PLANE_X_RESOLUTION:I

.field public static final TAG_FOCAL_PLANE_Y_RESOLUTION:I

.field public static final TAG_F_NUMBER:I

.field public static final TAG_GAIN_CONTROL:I

.field public static final TAG_GPS_ALTITUDE:I

.field public static final TAG_GPS_ALTITUDE_REF:I

.field public static final TAG_GPS_AREA_INFORMATION:I

.field public static final TAG_GPS_DATE_STAMP:I

.field public static final TAG_GPS_DEST_BEARING:I

.field public static final TAG_GPS_DEST_BEARING_REF:I

.field public static final TAG_GPS_DEST_DISTANCE:I

.field public static final TAG_GPS_DEST_DISTANCE_REF:I

.field public static final TAG_GPS_DEST_LATITUDE:I

.field public static final TAG_GPS_DEST_LATITUDE_REF:I

.field public static final TAG_GPS_DEST_LONGITUDE:I

.field public static final TAG_GPS_DEST_LONGITUDE_REF:I

.field public static final TAG_GPS_DIFFERENTIAL:I

.field public static final TAG_GPS_DOP:I

.field public static final TAG_GPS_IFD:I

.field public static final TAG_GPS_IMG_DIRECTION:I

.field public static final TAG_GPS_IMG_DIRECTION_REF:I

.field public static final TAG_GPS_LATITUDE:I

.field public static final TAG_GPS_LATITUDE_REF:I

.field public static final TAG_GPS_LONGITUDE:I

.field public static final TAG_GPS_LONGITUDE_REF:I

.field public static final TAG_GPS_MAP_DATUM:I

.field public static final TAG_GPS_MEASURE_MODE:I

.field public static final TAG_GPS_PROCESSING_METHOD:I

.field public static final TAG_GPS_SATTELLITES:I

.field public static final TAG_GPS_SPEED:I

.field public static final TAG_GPS_SPEED_REF:I

.field public static final TAG_GPS_STATUS:I

.field public static final TAG_GPS_TIME_STAMP:I

.field public static final TAG_GPS_TRACK:I

.field public static final TAG_GPS_TRACK_REF:I

.field public static final TAG_GPS_VERSION_ID:I

.field public static final TAG_IMAGE_DESCRIPTION:I

.field public static final TAG_IMAGE_LENGTH:I

.field public static final TAG_IMAGE_UNIQUE_ID:I

.field public static final TAG_IMAGE_WIDTH:I

.field public static final TAG_INTEROPERABILITY_IFD:I

.field public static final TAG_INTEROPERABILITY_INDEX:I

.field public static final TAG_ISO_SPEED_RATINGS:I

.field public static final TAG_JPEG_INTERCHANGE_FORMAT:I

.field public static final TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

.field public static final TAG_LIGHT_SOURCE:I

.field public static final TAG_MAKE:I

.field public static final TAG_MAKER_NOTE:I

.field public static final TAG_MAX_APERTURE_VALUE:I

.field public static final TAG_METERING_MODE:I

.field public static final TAG_MODEL:I

.field public static final TAG_OECF:I

.field public static final TAG_ORIENTATION:I

.field public static final TAG_PARALLEL_PROCESS_COMMENT:I

.field public static final TAG_PHOTOMETRIC_INTERPRETATION:I

.field public static final TAG_PIXEL_X_DIMENSION:I

.field public static final TAG_PIXEL_Y_DIMENSION:I

.field public static final TAG_PLANAR_CONFIGURATION:I

.field public static final TAG_PRIMARY_CHROMATICITIES:I

.field public static final TAG_REFERENCE_BLACK_WHITE:I

.field public static final TAG_RELATED_SOUND_FILE:I

.field public static final TAG_RESOLUTION_UNIT:I

.field public static final TAG_ROWS_PER_STRIP:I

.field public static final TAG_SAMPLES_PER_PIXEL:I

.field public static final TAG_SATURATION:I

.field public static final TAG_SCENE_CAPTURE_TYPE:I

.field public static final TAG_SCENE_TYPE:I

.field public static final TAG_SENSING_METHOD:I

.field public static final TAG_SHARPNESS:I

.field public static final TAG_SHUTTER_SPEED_VALUE:I

.field public static final TAG_SOFTWARE:I

.field public static final TAG_SPATIAL_FREQUENCY_RESPONSE:I

.field public static final TAG_SPECTRAL_SENSITIVITY:I

.field public static final TAG_STRIP_BYTE_COUNTS:I

.field public static final TAG_STRIP_OFFSETS:I

.field public static final TAG_SUBJECT_AREA:I

.field public static final TAG_SUBJECT_DISTANCE:I

.field public static final TAG_SUBJECT_DISTANCE_RANGE:I

.field public static final TAG_SUBJECT_LOCATION:I

.field public static final TAG_SUB_SEC_TIME:I

.field public static final TAG_SUB_SEC_TIME_DIGITIZED:I

.field public static final TAG_SUB_SEC_TIME_ORIGINAL:I

.field public static final TAG_TRANSFER_FUNCTION:I

.field public static final TAG_USER_COMMENT:I

.field public static final TAG_WHITE_BALANCE:I

.field public static final TAG_WHITE_POINT:I

.field public static final TAG_XIAOMI_COMMENT:I

.field public static final TAG_X_RESOLUTION:I

.field public static final TAG_Y_CB_CR_COEFFICIENTS:I

.field public static final TAG_Y_CB_CR_POSITIONING:I

.field public static final TAG_Y_CB_CR_SUB_SAMPLING:I

.field public static final TAG_Y_RESOLUTION:I

.field protected static sBannedDefines:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field private static sOffsetTags:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mData:Lcom/miui/gallery3d/exif/ExifData;

.field private final mDateTimeStampFormat:Ljava/text/DateFormat;

.field private final mGPSDateStampFormat:Ljava/text/DateFormat;

.field private final mGPSTimeStampCalendar:Ljava/util/Calendar;

.field private mTagInfo:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x4

    const/4 v1, 0x2

    .line 79
    const-class v0, Lcom/miui/gallery3d/exif/ExifInterface;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG:Ljava/lang/String;

    .line 91
    const/16 v0, 0x100

    .line 92
    invoke-static {v3, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_IMAGE_WIDTH:I

    .line 93
    const/16 v0, 0x101

    .line 94
    invoke-static {v3, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_IMAGE_LENGTH:I

    .line 95
    const/16 v0, 0x102

    .line 96
    invoke-static {v3, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_BITS_PER_SAMPLE:I

    .line 97
    const/16 v0, 0x103

    .line 98
    invoke-static {v3, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_COMPRESSION:I

    .line 99
    const/16 v0, 0x106

    .line 100
    invoke-static {v3, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_PHOTOMETRIC_INTERPRETATION:I

    .line 101
    const/16 v0, 0x10e

    .line 102
    invoke-static {v3, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_IMAGE_DESCRIPTION:I

    .line 103
    const/16 v0, 0x10f

    .line 104
    invoke-static {v3, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_MAKE:I

    .line 105
    const/16 v0, 0x110

    .line 106
    invoke-static {v3, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_MODEL:I

    .line 107
    const/16 v0, 0x111

    .line 108
    invoke-static {v3, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    .line 109
    const/16 v0, 0x112

    .line 110
    invoke-static {v3, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_ORIENTATION:I

    .line 111
    const/16 v0, 0x115

    .line 112
    invoke-static {v3, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_SAMPLES_PER_PIXEL:I

    .line 113
    const/16 v0, 0x116

    .line 114
    invoke-static {v3, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_ROWS_PER_STRIP:I

    .line 115
    const/16 v0, 0x117

    .line 116
    invoke-static {v3, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    .line 117
    const/16 v0, 0x11a

    .line 118
    invoke-static {v3, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_X_RESOLUTION:I

    .line 119
    const/16 v0, 0x11b

    .line 120
    invoke-static {v3, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_Y_RESOLUTION:I

    .line 121
    const/16 v0, 0x11c

    .line 122
    invoke-static {v3, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_PLANAR_CONFIGURATION:I

    .line 123
    const/16 v0, 0x128

    .line 124
    invoke-static {v3, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_RESOLUTION_UNIT:I

    .line 125
    const/16 v0, 0x12d

    .line 126
    invoke-static {v3, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_TRANSFER_FUNCTION:I

    .line 127
    const/16 v0, 0x131

    .line 128
    invoke-static {v3, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_SOFTWARE:I

    .line 129
    const/16 v0, 0x132

    .line 130
    invoke-static {v3, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_DATE_TIME:I

    .line 131
    const/16 v0, 0x13b

    .line 132
    invoke-static {v3, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_ARTIST:I

    .line 133
    const/16 v0, 0x13e

    .line 134
    invoke-static {v3, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_WHITE_POINT:I

    .line 135
    const/16 v0, 0x13f

    .line 136
    invoke-static {v3, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_PRIMARY_CHROMATICITIES:I

    .line 137
    const/16 v0, 0x211

    .line 138
    invoke-static {v3, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_Y_CB_CR_COEFFICIENTS:I

    .line 139
    const/16 v0, 0x212

    .line 140
    invoke-static {v3, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_Y_CB_CR_SUB_SAMPLING:I

    .line 141
    const/16 v0, 0x213

    .line 142
    invoke-static {v3, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_Y_CB_CR_POSITIONING:I

    .line 143
    const/16 v0, 0x214

    .line 144
    invoke-static {v3, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_REFERENCE_BLACK_WHITE:I

    .line 145
    const/16 v0, -0x7d68

    .line 146
    invoke-static {v3, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_COPYRIGHT:I

    .line 147
    const/16 v0, -0x7897

    .line 148
    invoke-static {v3, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_EXIF_IFD:I

    .line 149
    const/16 v0, -0x77db

    .line 150
    invoke-static {v3, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_IFD:I

    .line 152
    const/16 v0, 0x201

    .line 153
    invoke-static {v4, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    .line 154
    const/16 v0, 0x202

    .line 155
    invoke-static {v4, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    .line 157
    const/16 v0, -0x7d66

    .line 158
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_EXPOSURE_TIME:I

    .line 159
    const/16 v0, -0x7d63

    .line 160
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_F_NUMBER:I

    .line 161
    const/16 v0, -0x77de

    .line 162
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_EXPOSURE_PROGRAM:I

    .line 163
    const/16 v0, -0x77dc

    .line 164
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_SPECTRAL_SENSITIVITY:I

    .line 165
    const/16 v0, -0x77d9

    .line 166
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_ISO_SPEED_RATINGS:I

    .line 167
    const/16 v0, -0x77d8

    .line 168
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_OECF:I

    .line 169
    const/16 v0, -0x7000

    .line 170
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_EXIF_VERSION:I

    .line 171
    const/16 v0, -0x6ffd

    .line 172
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_DATE_TIME_ORIGINAL:I

    .line 173
    const/16 v0, -0x6ffc

    .line 174
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_DATE_TIME_DIGITIZED:I

    .line 175
    const/16 v0, -0x6eff

    .line 176
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_COMPONENTS_CONFIGURATION:I

    .line 177
    const/16 v0, -0x6efe

    .line 178
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_COMPRESSED_BITS_PER_PIXEL:I

    .line 179
    const/16 v0, -0x6dff

    .line 180
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_SHUTTER_SPEED_VALUE:I

    .line 181
    const/16 v0, -0x6dfe

    .line 182
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_APERTURE_VALUE:I

    .line 183
    const/16 v0, -0x6dfd

    .line 184
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_BRIGHTNESS_VALUE:I

    .line 185
    const/16 v0, -0x6dfc

    .line 186
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_EXPOSURE_BIAS_VALUE:I

    .line 187
    const/16 v0, -0x6dfb

    .line 188
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_MAX_APERTURE_VALUE:I

    .line 189
    const/16 v0, -0x6dfa

    .line 190
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_SUBJECT_DISTANCE:I

    .line 191
    const/16 v0, -0x6df9

    .line 192
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_METERING_MODE:I

    .line 193
    const/16 v0, -0x6df8

    .line 194
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_LIGHT_SOURCE:I

    .line 195
    const/16 v0, -0x6df7

    .line 196
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_FLASH:I

    .line 197
    const/16 v0, -0x6df6

    .line 198
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_FOCAL_LENGTH:I

    .line 199
    const/16 v0, -0x6dec

    .line 200
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_SUBJECT_AREA:I

    .line 201
    const/16 v0, -0x6d84

    .line 202
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_MAKER_NOTE:I

    .line 203
    const/16 v0, -0x6d7a

    .line 204
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_USER_COMMENT:I

    .line 205
    const/16 v0, -0x6d70

    .line 206
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_SUB_SEC_TIME:I

    .line 207
    const/16 v0, -0x6d6f

    .line 208
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_SUB_SEC_TIME_ORIGINAL:I

    .line 209
    const/16 v0, -0x6d6e

    .line 210
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_SUB_SEC_TIME_DIGITIZED:I

    .line 211
    const/16 v0, -0x6000

    .line 212
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_FLASHPIX_VERSION:I

    .line 213
    const/16 v0, -0x5fff

    .line 214
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_COLOR_SPACE:I

    .line 215
    const/16 v0, -0x5ffe

    .line 216
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_PIXEL_X_DIMENSION:I

    .line 217
    const/16 v0, -0x5ffd

    .line 218
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_PIXEL_Y_DIMENSION:I

    .line 219
    const/16 v0, -0x5ffc

    .line 220
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_RELATED_SOUND_FILE:I

    .line 221
    const/16 v0, -0x5ffb

    .line 222
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    .line 223
    const/16 v0, -0x5df5

    .line 224
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_FLASH_ENERGY:I

    .line 225
    const/16 v0, -0x5df4

    .line 226
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_SPATIAL_FREQUENCY_RESPONSE:I

    .line 227
    const/16 v0, -0x5df2

    .line 228
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_FOCAL_PLANE_X_RESOLUTION:I

    .line 229
    const/16 v0, -0x5df1

    .line 230
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_FOCAL_PLANE_Y_RESOLUTION:I

    .line 231
    const/16 v0, -0x5df0

    .line 232
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_FOCAL_PLANE_RESOLUTION_UNIT:I

    .line 233
    const/16 v0, -0x5dec

    .line 234
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_SUBJECT_LOCATION:I

    .line 235
    const/16 v0, -0x5deb

    .line 236
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_EXPOSURE_INDEX:I

    .line 237
    const/16 v0, -0x5de9

    .line 238
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_SENSING_METHOD:I

    .line 239
    const/16 v0, -0x5d00

    .line 240
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_FILE_SOURCE:I

    .line 241
    const/16 v0, -0x5cff

    .line 242
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_SCENE_TYPE:I

    .line 243
    const/16 v0, -0x5cfe

    .line 244
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_CFA_PATTERN:I

    .line 245
    const/16 v0, -0x5bff

    .line 246
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_CUSTOM_RENDERED:I

    .line 247
    const/16 v0, -0x5bfe

    .line 248
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_EXPOSURE_MODE:I

    .line 249
    const/16 v0, -0x5bfd

    .line 250
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_WHITE_BALANCE:I

    .line 251
    const/16 v0, -0x5bfc

    .line 252
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_DIGITAL_ZOOM_RATIO:I

    .line 253
    const/16 v0, -0x5bfb

    .line 254
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_FOCAL_LENGTH_IN_35_MM_FILE:I

    .line 255
    const/16 v0, -0x5bfa

    .line 256
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_SCENE_CAPTURE_TYPE:I

    .line 257
    const/16 v0, -0x5bf9

    .line 258
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GAIN_CONTROL:I

    .line 259
    const/16 v0, -0x5bf8

    .line 260
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_CONTRAST:I

    .line 261
    const/16 v0, -0x5bf7

    .line 262
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_SATURATION:I

    .line 263
    const/16 v0, -0x5bf6

    .line 264
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_SHARPNESS:I

    .line 265
    const/16 v0, -0x5bf5

    .line 266
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_DEVICE_SETTING_DESCRIPTION:I

    .line 267
    const/16 v0, -0x5bf4

    .line 268
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_SUBJECT_DISTANCE_RANGE:I

    .line 269
    const/16 v0, -0x5be0

    .line 270
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_IMAGE_UNIQUE_ID:I

    .line 271
    const/16 v0, -0x7778

    .line 272
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_PARALLEL_PROCESS_COMMENT:I

    .line 273
    const/16 v0, -0x6667

    .line 274
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_XIAOMI_COMMENT:I

    .line 277
    invoke-static {v2, v3}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_VERSION_ID:I

    .line 279
    invoke-static {v2, v4}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_LATITUDE_REF:I

    .line 281
    invoke-static {v2, v1}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_LATITUDE:I

    .line 283
    invoke-static {v2, v5}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_LONGITUDE_REF:I

    .line 285
    invoke-static {v2, v2}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_LONGITUDE:I

    .line 286
    const/4 v0, 0x5

    .line 287
    invoke-static {v2, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_ALTITUDE_REF:I

    .line 288
    const/4 v0, 0x6

    .line 289
    invoke-static {v2, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_ALTITUDE:I

    .line 290
    const/4 v0, 0x7

    .line 291
    invoke-static {v2, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_TIME_STAMP:I

    .line 292
    const/16 v0, 0x8

    .line 293
    invoke-static {v2, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_SATTELLITES:I

    .line 294
    const/16 v0, 0x9

    .line 295
    invoke-static {v2, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_STATUS:I

    .line 296
    const/16 v0, 0xa

    .line 297
    invoke-static {v2, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_MEASURE_MODE:I

    .line 298
    const/16 v0, 0xb

    .line 299
    invoke-static {v2, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_DOP:I

    .line 300
    const/16 v0, 0xc

    .line 301
    invoke-static {v2, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_SPEED_REF:I

    .line 302
    const/16 v0, 0xd

    .line 303
    invoke-static {v2, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_SPEED:I

    .line 304
    const/16 v0, 0xe

    .line 305
    invoke-static {v2, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_TRACK_REF:I

    .line 306
    const/16 v0, 0xf

    .line 307
    invoke-static {v2, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_TRACK:I

    .line 308
    const/16 v0, 0x10

    .line 309
    invoke-static {v2, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION_REF:I

    .line 310
    const/16 v0, 0x11

    .line 311
    invoke-static {v2, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION:I

    .line 312
    const/16 v0, 0x12

    .line 313
    invoke-static {v2, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_MAP_DATUM:I

    .line 314
    const/16 v0, 0x13

    .line 315
    invoke-static {v2, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_DEST_LATITUDE_REF:I

    .line 316
    const/16 v0, 0x14

    .line 317
    invoke-static {v2, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_DEST_LATITUDE:I

    .line 318
    const/16 v0, 0x15

    .line 319
    invoke-static {v2, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_DEST_LONGITUDE_REF:I

    .line 320
    const/16 v0, 0x16

    .line 321
    invoke-static {v2, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_DEST_LONGITUDE:I

    .line 322
    const/16 v0, 0x17

    .line 323
    invoke-static {v2, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_DEST_BEARING_REF:I

    .line 324
    const/16 v0, 0x18

    .line 325
    invoke-static {v2, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_DEST_BEARING:I

    .line 326
    const/16 v0, 0x19

    .line 327
    invoke-static {v2, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_DEST_DISTANCE_REF:I

    .line 328
    const/16 v0, 0x1a

    .line 329
    invoke-static {v2, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_DEST_DISTANCE:I

    .line 330
    const/16 v0, 0x1b

    .line 331
    invoke-static {v2, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_PROCESSING_METHOD:I

    .line 332
    const/16 v0, 0x1c

    .line 333
    invoke-static {v2, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_AREA_INFORMATION:I

    .line 334
    const/16 v0, 0x1d

    .line 335
    invoke-static {v2, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_DATE_STAMP:I

    .line 336
    const/16 v0, 0x1e

    .line 337
    invoke-static {v2, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_DIFFERENTIAL:I

    .line 340
    invoke-static {v5, v4}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_INTEROPERABILITY_INDEX:I

    .line 346
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/miui/gallery3d/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    .line 348
    sget-object v0, Lcom/miui/gallery3d/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    sget v1, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_IFD:I

    invoke-static {v1}, Lcom/miui/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 349
    sget-object v0, Lcom/miui/gallery3d/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    sget v1, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_EXIF_IFD:I

    invoke-static {v1}, Lcom/miui/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 350
    sget-object v0, Lcom/miui/gallery3d/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    sget v1, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    invoke-static {v1}, Lcom/miui/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 351
    sget-object v0, Lcom/miui/gallery3d/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    sget v1, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    invoke-static {v1}, Lcom/miui/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 352
    sget-object v0, Lcom/miui/gallery3d/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    sget v1, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-static {v1}, Lcom/miui/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 358
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lcom/miui/gallery3d/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/miui/gallery3d/exif/ExifInterface;->sBannedDefines:Ljava/util/HashSet;

    .line 360
    sget-object v0, Lcom/miui/gallery3d/exif/ExifInterface;->sBannedDefines:Ljava/util/HashSet;

    const/4 v1, -0x1

    invoke-static {v1}, Lcom/miui/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 361
    sget-object v0, Lcom/miui/gallery3d/exif/ExifInterface;->sBannedDefines:Ljava/util/HashSet;

    sget v1, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    invoke-static {v1}, Lcom/miui/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 362
    sget-object v0, Lcom/miui/gallery3d/exif/ExifInterface;->sBannedDefines:Ljava/util/HashSet;

    sget v1, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    invoke-static {v1}, Lcom/miui/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 732
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    sput-object v0, Lcom/miui/gallery3d/exif/ExifInterface;->DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 734
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 731
    new-instance v0, Lcom/miui/gallery3d/exif/ExifData;

    sget-object v1, Lcom/miui/gallery3d/exif/ExifInterface;->DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

    invoke-direct {v0, v1}, Lcom/miui/gallery3d/exif/ExifData;-><init>(Ljava/nio/ByteOrder;)V

    iput-object v0, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mData:Lcom/miui/gallery3d/exif/ExifData;

    .line 2012
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy:MM:dd kk:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mDateTimeStampFormat:Ljava/text/DateFormat;

    .line 2013
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy:MM:dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mGPSDateStampFormat:Ljava/text/DateFormat;

    .line 2014
    const-string v0, "UTC"

    .line 2015
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    .line 2268
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    .line 735
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mGPSDateStampFormat:Ljava/text/DateFormat;

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 736
    return-void
.end method

.method private buildTagIgnoreIfdAllowed(IILjava/lang/Object;)Lcom/miui/gallery3d/exif/ExifTag;
    .locals 8
    .param p1, "tagId"    # I
    .param p2, "ifdId"    # I
    .param p3, "val"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x0

    .line 2083
    invoke-virtual {p0}, Lcom/miui/gallery3d/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    .line 2084
    .local v6, "info":I
    if-eqz v6, :cond_0

    if-nez p3, :cond_2

    :cond_0
    move-object v0, v7

    .line 2094
    :cond_1
    :goto_0
    return-object v0

    .line 2087
    :cond_2
    invoke-static {v6}, Lcom/miui/gallery3d/exif/ExifInterface;->getTypeFromInfo(I)S

    move-result v2

    .line 2088
    .local v2, "type":S
    invoke-static {v6}, Lcom/miui/gallery3d/exif/ExifInterface;->getComponentCountFromInfo(I)I

    move-result v3

    .line 2089
    .local v3, "definedCount":I
    if-eqz v3, :cond_3

    const/4 v5, 0x1

    .line 2090
    .local v5, "hasDefinedCount":Z
    :goto_1
    new-instance v0, Lcom/miui/gallery3d/exif/ExifTag;

    invoke-static {p1}, Lcom/miui/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery3d/exif/ExifTag;-><init>(SSIIZ)V

    .line 2091
    .local v0, "t":Lcom/miui/gallery3d/exif/ExifTag;
    invoke-virtual {v0, p3}, Lcom/miui/gallery3d/exif/ExifTag;->setValue(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object v0, v7

    .line 2092
    goto :goto_0

    .line 2089
    .end local v0    # "t":Lcom/miui/gallery3d/exif/ExifTag;
    .end local v5    # "hasDefinedCount":Z
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method protected static closeSilently(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "c"    # Ljava/io/Closeable;

    .prologue
    .line 2259
    if-eqz p0, :cond_0

    .line 2261
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2266
    :cond_0
    :goto_0
    return-void

    .line 2262
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static defineTag(IS)I
    .locals 2
    .param p0, "ifdId"    # I
    .param p1, "tagId"    # S

    .prologue
    .line 369
    const v0, 0xffff

    and-int/2addr v0, p1

    shl-int/lit8 v1, p0, 0x10

    or-int/2addr v0, v1

    return v0
.end method

.method protected static getAllowedIfdFlagsFromInfo(I)I
    .locals 1
    .param p0, "info"    # I

    .prologue
    .line 2557
    ushr-int/lit8 v0, p0, 0x18

    return v0
.end method

.method protected static getComponentCountFromInfo(I)I
    .locals 1
    .param p0, "info"    # I

    .prologue
    .line 2614
    const v0, 0xffff

    and-int/2addr v0, p0

    return v0
.end method

.method protected static getFlagsFromAllowedIfds([I)I
    .locals 8
    .param p0, "allowedIfds"    # [I

    .prologue
    const/4 v4, 0x0

    .line 2593
    if-eqz p0, :cond_0

    array-length v5, p0

    if-nez v5, :cond_2

    :cond_0
    move v0, v4

    .line 2606
    :cond_1
    return v0

    .line 2596
    :cond_2
    const/4 v0, 0x0

    .line 2597
    .local v0, "flags":I
    invoke-static {}, Lcom/miui/gallery3d/exif/IfdData;->getIfds()[I

    move-result-object v2

    .line 2598
    .local v2, "ifds":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v5, 0x5

    if-ge v1, v5, :cond_1

    .line 2599
    array-length v6, p0

    move v5, v4

    :goto_1
    if-ge v5, v6, :cond_3

    aget v3, p0, v5

    .line 2600
    .local v3, "j":I
    aget v7, v2, v1

    if-ne v7, v3, :cond_4

    .line 2601
    const/4 v5, 0x1

    shl-int/2addr v5, v1

    or-int/2addr v0, v5

    .line 2598
    .end local v3    # "j":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2599
    .restart local v3    # "j":I
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method public static getOrientationValueForRotation(I)S
    .locals 1
    .param p0, "degrees"    # I

    .prologue
    .line 1924
    rem-int/lit16 p0, p0, 0x168

    .line 1925
    if-gez p0, :cond_0

    .line 1926
    add-int/lit16 p0, p0, 0x168

    .line 1928
    :cond_0
    const/16 v0, 0x5a

    if-ge p0, v0, :cond_1

    .line 1929
    const/4 v0, 0x1

    .line 1935
    :goto_0
    return v0

    .line 1930
    :cond_1
    const/16 v0, 0xb4

    if-ge p0, v0, :cond_2

    .line 1931
    const/4 v0, 0x6

    goto :goto_0

    .line 1932
    :cond_2
    const/16 v0, 0x10e

    if-ge p0, v0, :cond_3

    .line 1933
    const/4 v0, 0x3

    goto :goto_0

    .line 1935
    :cond_3
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public static getTrueIfd(I)I
    .locals 1
    .param p0, "tag"    # I

    .prologue
    .line 384
    ushr-int/lit8 v0, p0, 0x10

    return v0
.end method

.method public static getTrueTagKey(I)S
    .locals 1
    .param p0, "tag"    # I

    .prologue
    .line 377
    int-to-short v0, p0

    return v0
.end method

.method protected static getTypeFromInfo(I)S
    .locals 1
    .param p0, "info"    # I

    .prologue
    .line 2610
    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    return v0
.end method

.method private initTagInfo()V
    .locals 13

    .prologue
    .line 2286
    const/4 v10, 0x2

    new-array v5, v10, [I

    fill-array-data v5, :array_0

    .line 2289
    .local v5, "ifdAllowedIfds":[I
    invoke-static {v5}, Lcom/miui/gallery3d/exif/ExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v10

    shl-int/lit8 v6, v10, 0x18

    .line 2290
    .local v6, "ifdFlags":I
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_MAKE:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2292
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_IMAGE_WIDTH:I

    const/high16 v12, 0x40000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2294
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_IMAGE_LENGTH:I

    const/high16 v12, 0x40000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2296
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_BITS_PER_SAMPLE:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x3

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2298
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_COMPRESSION:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2300
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_PHOTOMETRIC_INTERPRETATION:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2302
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_ORIENTATION:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2304
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_SAMPLES_PER_PIXEL:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2306
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_PLANAR_CONFIGURATION:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2308
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_Y_CB_CR_SUB_SAMPLING:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x2

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2310
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_Y_CB_CR_POSITIONING:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2312
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_X_RESOLUTION:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2314
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_Y_RESOLUTION:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2316
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_RESOLUTION_UNIT:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2318
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    const/high16 v12, 0x40000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2320
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_ROWS_PER_STRIP:I

    const/high16 v12, 0x40000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2322
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    const/high16 v12, 0x40000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2324
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_TRANSFER_FUNCTION:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v6

    or-int/lit16 v12, v12, 0x300

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2326
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_WHITE_POINT:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x2

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2328
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_PRIMARY_CHROMATICITIES:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x6

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2330
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_Y_CB_CR_COEFFICIENTS:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x3

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2332
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_REFERENCE_BLACK_WHITE:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x6

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2334
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_DATE_TIME:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x14

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2336
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_IMAGE_DESCRIPTION:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2338
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_MAKE:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2340
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_MODEL:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2342
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_SOFTWARE:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2344
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_ARTIST:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2346
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_COPYRIGHT:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2348
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_EXIF_IFD:I

    const/high16 v12, 0x40000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2350
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_IFD:I

    const/high16 v12, 0x40000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2353
    const/4 v10, 0x1

    new-array v4, v10, [I

    const/4 v10, 0x0

    const/4 v11, 0x1

    aput v11, v4, v10

    .line 2356
    .local v4, "ifd1AllowedIfds":[I
    invoke-static {v4}, Lcom/miui/gallery3d/exif/ExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v10

    shl-int/lit8 v7, v10, 0x18

    .line 2357
    .local v7, "ifdFlags1":I
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    const/high16 v12, 0x40000

    or-int/2addr v12, v7

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2359
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    const/high16 v12, 0x40000

    or-int/2addr v12, v7

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2362
    const/4 v10, 0x1

    new-array v0, v10, [I

    const/4 v10, 0x0

    const/4 v11, 0x2

    aput v11, v0, v10

    .line 2365
    .local v0, "exifAllowedIfds":[I
    invoke-static {v0}, Lcom/miui/gallery3d/exif/ExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v10

    shl-int/lit8 v1, v10, 0x18

    .line 2366
    .local v1, "exifFlags":I
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_EXIF_VERSION:I

    const/high16 v12, 0x70000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x4

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2368
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_FLASHPIX_VERSION:I

    const/high16 v12, 0x70000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x4

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2370
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_COLOR_SPACE:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2372
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_COMPONENTS_CONFIGURATION:I

    const/high16 v12, 0x70000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x4

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2374
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_COMPRESSED_BITS_PER_PIXEL:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2376
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_PIXEL_X_DIMENSION:I

    const/high16 v12, 0x40000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2378
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_PIXEL_Y_DIMENSION:I

    const/high16 v12, 0x40000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2380
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_MAKER_NOTE:I

    const/high16 v12, 0x70000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2382
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_USER_COMMENT:I

    const/high16 v12, 0x70000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2384
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_RELATED_SOUND_FILE:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0xd

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2386
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_DATE_TIME_ORIGINAL:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x14

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2388
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_DATE_TIME_DIGITIZED:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x14

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2390
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_SUB_SEC_TIME:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2392
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_SUB_SEC_TIME_ORIGINAL:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2394
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_SUB_SEC_TIME_DIGITIZED:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2396
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_IMAGE_UNIQUE_ID:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x21

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2398
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_EXPOSURE_TIME:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2400
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_F_NUMBER:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2402
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_EXPOSURE_PROGRAM:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2404
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_SPECTRAL_SENSITIVITY:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2406
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_ISO_SPEED_RATINGS:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2408
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_OECF:I

    const/high16 v12, 0x70000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2410
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_SHUTTER_SPEED_VALUE:I

    const/high16 v12, 0xa0000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2412
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_APERTURE_VALUE:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2414
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_BRIGHTNESS_VALUE:I

    const/high16 v12, 0xa0000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2416
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_EXPOSURE_BIAS_VALUE:I

    const/high16 v12, 0xa0000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2418
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_MAX_APERTURE_VALUE:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2420
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_SUBJECT_DISTANCE:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2422
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_METERING_MODE:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2424
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_LIGHT_SOURCE:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2426
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_FLASH:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2428
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_FOCAL_LENGTH:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2430
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_SUBJECT_AREA:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2432
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_FLASH_ENERGY:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2434
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_SPATIAL_FREQUENCY_RESPONSE:I

    const/high16 v12, 0x70000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2436
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_FOCAL_PLANE_X_RESOLUTION:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2438
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_FOCAL_PLANE_Y_RESOLUTION:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2440
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_FOCAL_PLANE_RESOLUTION_UNIT:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2442
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_SUBJECT_LOCATION:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x2

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2444
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_EXPOSURE_INDEX:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2446
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_SENSING_METHOD:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2448
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_FILE_SOURCE:I

    const/high16 v12, 0x70000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2450
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_SCENE_TYPE:I

    const/high16 v12, 0x70000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2452
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_CFA_PATTERN:I

    const/high16 v12, 0x70000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2454
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_CUSTOM_RENDERED:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2456
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_EXPOSURE_MODE:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2458
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_WHITE_BALANCE:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2460
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_DIGITAL_ZOOM_RATIO:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2462
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_FOCAL_LENGTH_IN_35_MM_FILE:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2464
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_SCENE_CAPTURE_TYPE:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2466
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GAIN_CONTROL:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2468
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_CONTRAST:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2470
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_SATURATION:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2472
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_SHARPNESS:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2474
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_DEVICE_SETTING_DESCRIPTION:I

    const/high16 v12, 0x70000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2476
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_SUBJECT_DISTANCE_RANGE:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2478
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    const/high16 v12, 0x40000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2480
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_PARALLEL_PROCESS_COMMENT:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2482
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_XIAOMI_COMMENT:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2485
    const/4 v10, 0x1

    new-array v2, v10, [I

    const/4 v10, 0x0

    const/4 v11, 0x4

    aput v11, v2, v10

    .line 2488
    .local v2, "gpsAllowedIfds":[I
    invoke-static {v2}, Lcom/miui/gallery3d/exif/ExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v10

    shl-int/lit8 v3, v10, 0x18

    .line 2489
    .local v3, "gpsFlags":I
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_VERSION_ID:I

    const/high16 v12, 0x10000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x4

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2491
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_LATITUDE_REF:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x2

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2493
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_LONGITUDE_REF:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x2

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2495
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_LATITUDE:I

    const/high16 v12, 0xa0000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x3

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2497
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_LONGITUDE:I

    const/high16 v12, 0xa0000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x3

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2499
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_ALTITUDE_REF:I

    const/high16 v12, 0x10000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2501
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_ALTITUDE:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2503
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_TIME_STAMP:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x3

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2505
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_SATTELLITES:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2507
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_STATUS:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x2

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2509
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_MEASURE_MODE:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x2

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2511
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_DOP:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2513
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_SPEED_REF:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x2

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2515
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_SPEED:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2517
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_TRACK_REF:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x2

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2519
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_TRACK:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2521
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION_REF:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x2

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2523
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2525
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_MAP_DATUM:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2527
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_DEST_LATITUDE_REF:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x2

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2529
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_DEST_LATITUDE:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2531
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_DEST_BEARING_REF:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x2

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2533
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_DEST_BEARING:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2535
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_DEST_DISTANCE_REF:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x2

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2537
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_DEST_DISTANCE:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2539
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_PROCESSING_METHOD:I

    const/high16 v12, 0x70000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2541
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_AREA_INFORMATION:I

    const/high16 v12, 0x70000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2543
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_DATE_STAMP:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0xb

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2545
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_DIFFERENTIAL:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0xb

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2548
    const/4 v10, 0x1

    new-array v8, v10, [I

    const/4 v10, 0x0

    const/4 v11, 0x3

    aput v11, v8, v10

    .line 2551
    .local v8, "interopAllowedIfds":[I
    invoke-static {v8}, Lcom/miui/gallery3d/exif/ExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v10

    shl-int/lit8 v9, v10, 0x18

    .line 2552
    .local v9, "interopFlags":I
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_INTEROPERABILITY_INDEX:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v9

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2554
    return-void

    .line 2286
    nop

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method protected static isIfdAllowed(II)Z
    .locals 5
    .param p0, "info"    # I
    .param p1, "ifd"    # I

    .prologue
    const/4 v3, 0x1

    .line 2582
    invoke-static {}, Lcom/miui/gallery3d/exif/IfdData;->getIfds()[I

    move-result-object v2

    .line 2583
    .local v2, "ifds":[I
    invoke-static {p0}, Lcom/miui/gallery3d/exif/ExifInterface;->getAllowedIfdFlagsFromInfo(I)I

    move-result v1

    .line 2584
    .local v1, "ifdFlags":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_1

    .line 2585
    aget v4, v2, v0

    if-ne p1, v4, :cond_0

    shr-int v4, v1, v0

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v3, :cond_0

    .line 2589
    :goto_1
    return v3

    .line 2584
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2589
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method protected static isOffsetTag(S)Z
    .locals 2
    .param p0, "tag"    # S

    .prologue
    .line 1531
    sget-object v0, Lcom/miui/gallery3d/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public addUserComment(Ljava/lang/String;)Z
    .locals 3
    .param p1, "comment"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 2111
    sget v2, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_USER_COMMENT:I

    invoke-direct {p0, v2, v1, p1}, Lcom/miui/gallery3d/exif/ExifInterface;->buildTagIgnoreIfdAllowed(IILjava/lang/Object;)Lcom/miui/gallery3d/exif/ExifTag;

    move-result-object v0

    .line 2112
    .local v0, "t":Lcom/miui/gallery3d/exif/ExifTag;
    if-nez v0, :cond_0

    .line 2116
    :goto_0
    return v1

    .line 2115
    :cond_0
    invoke-virtual {p0, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->setTag(Lcom/miui/gallery3d/exif/ExifTag;)Lcom/miui/gallery3d/exif/ExifTag;

    .line 2116
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public buildTag(IILjava/lang/Object;)Lcom/miui/gallery3d/exif/ExifTag;
    .locals 8
    .param p1, "tagId"    # I
    .param p2, "ifdId"    # I
    .param p3, "val"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x0

    .line 1546
    invoke-virtual {p0}, Lcom/miui/gallery3d/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    .line 1547
    .local v6, "info":I
    if-eqz v6, :cond_0

    if-nez p3, :cond_2

    :cond_0
    move-object v0, v7

    .line 1560
    :cond_1
    :goto_0
    return-object v0

    .line 1550
    :cond_2
    invoke-static {v6}, Lcom/miui/gallery3d/exif/ExifInterface;->getTypeFromInfo(I)S

    move-result v2

    .line 1551
    .local v2, "type":S
    invoke-static {v6}, Lcom/miui/gallery3d/exif/ExifInterface;->getComponentCountFromInfo(I)I

    move-result v3

    .line 1552
    .local v3, "definedCount":I
    if-eqz v3, :cond_3

    const/4 v5, 0x1

    .line 1553
    .local v5, "hasDefinedCount":Z
    :goto_1
    invoke-static {v6, p2}, Lcom/miui/gallery3d/exif/ExifInterface;->isIfdAllowed(II)Z

    move-result v1

    if-nez v1, :cond_4

    move-object v0, v7

    .line 1554
    goto :goto_0

    .line 1552
    .end local v5    # "hasDefinedCount":Z
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 1556
    .restart local v5    # "hasDefinedCount":Z
    :cond_4
    new-instance v0, Lcom/miui/gallery3d/exif/ExifTag;

    invoke-static {p1}, Lcom/miui/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery3d/exif/ExifTag;-><init>(SSIIZ)V

    .line 1557
    .local v0, "t":Lcom/miui/gallery3d/exif/ExifTag;
    invoke-virtual {v0, p3}, Lcom/miui/gallery3d/exif/ExifTag;->setValue(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object v0, v7

    .line 1558
    goto :goto_0
.end method

.method public buildTag(ILjava/lang/Object;)Lcom/miui/gallery3d/exif/ExifTag;
    .locals 2
    .param p1, "tagId"    # I
    .param p2, "val"    # Ljava/lang/Object;

    .prologue
    .line 1571
    invoke-static {p1}, Lcom/miui/gallery3d/exif/ExifInterface;->getTrueIfd(I)I

    move-result v0

    .line 1572
    .local v0, "ifdId":I
    invoke-virtual {p0, p1, v0, p2}, Lcom/miui/gallery3d/exif/ExifInterface;->buildTag(IILjava/lang/Object;)Lcom/miui/gallery3d/exif/ExifTag;

    move-result-object v1

    return-object v1
.end method

.method protected buildUninitializedTag(I)Lcom/miui/gallery3d/exif/ExifTag;
    .locals 7
    .param p1, "tagId"    # I

    .prologue
    .line 1576
    invoke-virtual {p0}, Lcom/miui/gallery3d/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    .line 1577
    .local v6, "info":I
    if-nez v6, :cond_0

    .line 1578
    const/4 v0, 0x0

    .line 1585
    :goto_0
    return-object v0

    .line 1580
    :cond_0
    invoke-static {v6}, Lcom/miui/gallery3d/exif/ExifInterface;->getTypeFromInfo(I)S

    move-result v2

    .line 1581
    .local v2, "type":S
    invoke-static {v6}, Lcom/miui/gallery3d/exif/ExifInterface;->getComponentCountFromInfo(I)I

    move-result v3

    .line 1582
    .local v3, "definedCount":I
    if-eqz v3, :cond_1

    const/4 v5, 0x1

    .line 1583
    .local v5, "hasDefinedCount":Z
    :goto_1
    invoke-static {p1}, Lcom/miui/gallery3d/exif/ExifInterface;->getTrueIfd(I)I

    move-result v4

    .line 1584
    .local v4, "ifdId":I
    new-instance v0, Lcom/miui/gallery3d/exif/ExifTag;

    invoke-static {p1}, Lcom/miui/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery3d/exif/ExifTag;-><init>(SSIIZ)V

    .line 1585
    .local v0, "t":Lcom/miui/gallery3d/exif/ExifTag;
    goto :goto_0

    .line 1582
    .end local v0    # "t":Lcom/miui/gallery3d/exif/ExifTag;
    .end local v4    # "ifdId":I
    .end local v5    # "hasDefinedCount":Z
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public getAllTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery3d/exif/ExifTag;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1190
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mData:Lcom/miui/gallery3d/exif/ExifData;

    invoke-virtual {v0}, Lcom/miui/gallery3d/exif/ExifData;->getAllTags()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDefinedTagDefaultIfd(I)I
    .locals 2
    .param p1, "tagId"    # I

    .prologue
    .line 1497
    invoke-virtual {p0}, Lcom/miui/gallery3d/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 1498
    .local v0, "info":I
    if-nez v0, :cond_0

    .line 1499
    const/4 v1, -0x1

    .line 1501
    :goto_0
    return v1

    :cond_0
    invoke-static {p1}, Lcom/miui/gallery3d/exif/ExifInterface;->getTrueIfd(I)I

    move-result v1

    goto :goto_0
.end method

.method public getExifWriterStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 3
    .param p1, "outStream"    # Ljava/io/OutputStream;

    .prologue
    .line 976
    if-nez p1, :cond_0

    .line 977
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Argument is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 979
    :cond_0
    new-instance v0, Lcom/miui/gallery3d/exif/ExifOutputStream;

    invoke-direct {v0, p1, p0}, Lcom/miui/gallery3d/exif/ExifOutputStream;-><init>(Ljava/io/OutputStream;Lcom/miui/gallery3d/exif/ExifInterface;)V

    .line 980
    .local v0, "eos":Lcom/miui/gallery3d/exif/ExifOutputStream;
    iget-object v1, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mData:Lcom/miui/gallery3d/exif/ExifData;

    invoke-virtual {v0, v1}, Lcom/miui/gallery3d/exif/ExifOutputStream;->setExifData(Lcom/miui/gallery3d/exif/ExifData;)V

    .line 981
    return-object v0
.end method

.method public getTag(II)Lcom/miui/gallery3d/exif/ExifTag;
    .locals 2
    .param p1, "tagId"    # I
    .param p2, "ifdId"    # I

    .prologue
    .line 1225
    invoke-static {p2}, Lcom/miui/gallery3d/exif/ExifTag;->isValidIfd(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1226
    const/4 v0, 0x0

    .line 1228
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mData:Lcom/miui/gallery3d/exif/ExifData;

    invoke-static {p1}, Lcom/miui/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-virtual {v0, v1, p2}, Lcom/miui/gallery3d/exif/ExifData;->getTag(SI)Lcom/miui/gallery3d/exif/ExifTag;

    move-result-object v0

    goto :goto_0
.end method

.method public getTagByteValue(II)Ljava/lang/Byte;
    .locals 3
    .param p1, "tagId"    # I
    .param p2, "ifdId"    # I

    .prologue
    .line 1332
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery3d/exif/ExifInterface;->getTagByteValues(II)[B

    move-result-object v0

    .line 1333
    .local v0, "l":[B
    if-eqz v0, :cond_0

    array-length v1, v0

    if-gtz v1, :cond_1

    .line 1334
    :cond_0
    const/4 v1, 0x0

    .line 1336
    :goto_0
    return-object v1

    :cond_1
    new-instance v1, Ljava/lang/Byte;

    const/4 v2, 0x0

    aget-byte v2, v0, v2

    invoke-direct {v1, v2}, Ljava/lang/Byte;-><init>(B)V

    goto :goto_0
.end method

.method public getTagByteValues(II)[B
    .locals 2
    .param p1, "tagId"    # I
    .param p2, "ifdId"    # I

    .prologue
    .line 1408
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery3d/exif/ExifInterface;->getTag(II)Lcom/miui/gallery3d/exif/ExifTag;

    move-result-object v0

    .line 1409
    .local v0, "t":Lcom/miui/gallery3d/exif/ExifTag;
    if-nez v0, :cond_0

    .line 1410
    const/4 v1, 0x0

    .line 1412
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/miui/gallery3d/exif/ExifTag;->getValueAsBytes()[B

    move-result-object v1

    goto :goto_0
.end method

.method protected getTagInfo()Landroid/util/SparseIntArray;
    .locals 1

    .prologue
    .line 2271
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    if-nez v0, :cond_0

    .line 2272
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    .line 2273
    invoke-direct {p0}, Lcom/miui/gallery3d/exif/ExifInterface;->initTagInfo()V

    .line 2275
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method public getTagIntValue(I)Ljava/lang/Integer;
    .locals 2
    .param p1, "tagId"    # I

    .prologue
    .line 1324
    invoke-virtual {p0, p1}, Lcom/miui/gallery3d/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1325
    .local v0, "ifdId":I
    invoke-virtual {p0, p1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->getTagIntValue(II)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method public getTagIntValue(II)Ljava/lang/Integer;
    .locals 3
    .param p1, "tagId"    # I
    .param p2, "ifdId"    # I

    .prologue
    .line 1313
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery3d/exif/ExifInterface;->getTagIntValues(II)[I

    move-result-object v0

    .line 1314
    .local v0, "l":[I
    if-eqz v0, :cond_0

    array-length v1, v0

    if-gtz v1, :cond_1

    .line 1315
    :cond_0
    const/4 v1, 0x0

    .line 1317
    :goto_0
    return-object v1

    :cond_1
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x0

    aget v2, v0, v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_0
.end method

.method public getTagIntValues(II)[I
    .locals 2
    .param p1, "tagId"    # I
    .param p2, "ifdId"    # I

    .prologue
    .line 1389
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery3d/exif/ExifInterface;->getTag(II)Lcom/miui/gallery3d/exif/ExifTag;

    move-result-object v0

    .line 1390
    .local v0, "t":Lcom/miui/gallery3d/exif/ExifTag;
    if-nez v0, :cond_0

    .line 1391
    const/4 v1, 0x0

    .line 1393
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/miui/gallery3d/exif/ExifTag;->getValueAsInts()[I

    move-result-object v1

    goto :goto_0
.end method

.method public getTagStringValue(II)Ljava/lang/String;
    .locals 2
    .param p1, "tagId"    # I
    .param p2, "ifdId"    # I

    .prologue
    .line 1275
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery3d/exif/ExifInterface;->getTag(II)Lcom/miui/gallery3d/exif/ExifTag;

    move-result-object v0

    .line 1276
    .local v0, "t":Lcom/miui/gallery3d/exif/ExifTag;
    if-nez v0, :cond_0

    .line 1277
    const/4 v1, 0x0

    .line 1279
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/miui/gallery3d/exif/ExifTag;->getValueAsString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getUserCommentAsASCII()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2107
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mData:Lcom/miui/gallery3d/exif/ExifData;

    invoke-virtual {v0}, Lcom/miui/gallery3d/exif/ExifData;->getUserCommentAsASCII()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getXiaomiComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1915
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mData:Lcom/miui/gallery3d/exif/ExifData;

    invoke-virtual {v0}, Lcom/miui/gallery3d/exif/ExifData;->getXiaomiComment()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readExif(Ljava/io/InputStream;)V
    .locals 3
    .param p1, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/gallery3d/exif/ExifInvalidFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 757
    if-nez p1, :cond_0

    .line 758
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Argument is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 760
    :cond_0
    new-instance v1, Lcom/miui/gallery3d/exif/ExifReader;

    invoke-direct {v1, p0}, Lcom/miui/gallery3d/exif/ExifReader;-><init>(Lcom/miui/gallery3d/exif/ExifInterface;)V

    invoke-virtual {v1, p1}, Lcom/miui/gallery3d/exif/ExifReader;->read(Ljava/io/InputStream;)Lcom/miui/gallery3d/exif/ExifData;

    move-result-object v0

    .line 761
    .local v0, "d":Lcom/miui/gallery3d/exif/ExifData;
    iput-object v0, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mData:Lcom/miui/gallery3d/exif/ExifData;

    .line 762
    return-void
.end method

.method public readExif(Ljava/lang/String;)V
    .locals 4
    .param p1, "inFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/gallery3d/exif/ExifInvalidFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 773
    if-nez p1, :cond_0

    .line 774
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Argument is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 776
    :cond_0
    const/4 v0, 0x0

    .line 778
    .local v0, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 779
    .end local v0    # "is":Ljava/io/InputStream;
    .local v1, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/miui/gallery3d/exif/ExifInterface;->readExif(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 781
    invoke-static {v1}, Lcom/miui/gallery3d/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    .line 783
    return-void

    .line 781
    .end local v1    # "is":Ljava/io/InputStream;
    .restart local v0    # "is":Ljava/io/InputStream;
    :catchall_0
    move-exception v2

    :goto_0
    invoke-static {v0}, Lcom/miui/gallery3d/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    throw v2

    .end local v0    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "is":Ljava/io/InputStream;
    .restart local v0    # "is":Ljava/io/InputStream;
    goto :goto_0
.end method

.method public setTag(Lcom/miui/gallery3d/exif/ExifTag;)Lcom/miui/gallery3d/exif/ExifTag;
    .locals 7
    .param p1, "tag"    # Lcom/miui/gallery3d/exif/ExifTag;

    .prologue
    .line 1631
    if-eqz p1, :cond_1

    .line 1632
    invoke-virtual {p1}, Lcom/miui/gallery3d/exif/ExifTag;->getDataSize()I

    move-result v1

    const v2, 0xffff

    if-ge v1, v2, :cond_0

    .line 1633
    iget-object v1, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mData:Lcom/miui/gallery3d/exif/ExifData;

    invoke-virtual {v1, p1}, Lcom/miui/gallery3d/exif/ExifData;->addTag(Lcom/miui/gallery3d/exif/ExifTag;)Lcom/miui/gallery3d/exif/ExifTag;

    move-result-object v1

    .line 1642
    :goto_0
    return-object v1

    .line 1635
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1636
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "tagId"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v3, "%04X\n"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/miui/gallery3d/exif/ExifTag;->getTagId()S

    move-result v6

    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1637
    const-string/jumbo v1, "tagSize"

    invoke-virtual {p1}, Lcom/miui/gallery3d/exif/ExifTag;->getDataSize()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1638
    const-string v1, "exif_parser"

    const-string v2, "exif_tag_overlength"

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/stat/BaseSamplingStatHelper;->recordErrorEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1642
    .end local v0    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
