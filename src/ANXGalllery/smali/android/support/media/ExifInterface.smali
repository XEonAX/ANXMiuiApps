.class public Landroid/support/media/ExifInterface;
.super Ljava/lang/Object;
.source "ExifInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;,
        Landroid/support/media/ExifInterface$ExifTag;,
        Landroid/support/media/ExifInterface$ExifAttribute;,
        Landroid/support/media/ExifInterface$Rational;
    }
.end annotation


# static fields
.field private static final ASCII:Ljava/nio/charset/Charset;

.field public static final BITS_PER_SAMPLE_GREYSCALE_1:[I

.field public static final BITS_PER_SAMPLE_GREYSCALE_2:[I

.field public static final BITS_PER_SAMPLE_RGB:[I

.field private static final EXIF_ASCII_PREFIX:[B

.field private static final EXIF_POINTER_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

.field static final EXIF_TAGS:[[Landroid/support/media/ExifInterface$ExifTag;

.field private static final FLIPPED_ROTATION_ORDER:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final IDENTIFIER_EXIF_APP1:[B

.field private static final IFD_EXIF_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

.field static final IFD_FORMAT_BYTES_PER_FORMAT:[I

.field static final IFD_FORMAT_NAMES:[Ljava/lang/String;

.field private static final IFD_GPS_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

.field private static final IFD_INTEROPERABILITY_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

.field private static final IFD_THUMBNAIL_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

.field private static final IFD_TIFF_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

.field private static final JPEG_INTERCHANGE_FORMAT_LENGTH_TAG:Landroid/support/media/ExifInterface$ExifTag;

.field private static final JPEG_INTERCHANGE_FORMAT_TAG:Landroid/support/media/ExifInterface$ExifTag;

.field static final JPEG_SIGNATURE:[B

.field private static final ORF_CAMERA_SETTINGS_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

.field private static final ORF_IMAGE_PROCESSING_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

.field private static final ORF_MAKER_NOTE_HEADER_1:[B

.field private static final ORF_MAKER_NOTE_HEADER_2:[B

.field private static final ORF_MAKER_NOTE_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

.field private static final PEF_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

.field private static final ROTATION_ORDER:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG_RAF_IMAGE_SIZE:Landroid/support/media/ExifInterface$ExifTag;

.field private static final sExifPointerTagMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sExifTagMapsForReading:[Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/support/media/ExifInterface$ExifTag;",
            ">;"
        }
    .end annotation
.end field

.field private static final sExifTagMapsForWriting:[Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/media/ExifInterface$ExifTag;",
            ">;"
        }
    .end annotation
.end field

.field private static sFormatter:Ljava/text/SimpleDateFormat;

.field private static final sGpsTimestampPattern:Ljava/util/regex/Pattern;

.field private static final sNonZeroTimePattern:Ljava/util/regex/Pattern;

.field private static final sTagSetForCompatibility:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

.field private final mAttributes:[Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/media/ExifInterface$ExifAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private mExifByteOrder:Ljava/nio/ByteOrder;

.field private mExifOffset:I

.field private final mFilename:Ljava/lang/String;

.field private mHasThumbnail:Z

.field private mIsSupportedFile:Z

.field private mMimeType:I

.field private mOrfMakerNoteOffset:I

.field private mOrfThumbnailLength:I

.field private mOrfThumbnailOffset:I

.field private mRw2JpgFromRawOffset:I

.field private mThumbnailBytes:[B

.field private mThumbnailCompression:I

.field private mThumbnailLength:I

.field private mThumbnailOffset:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x5

    const/4 v11, 0x2

    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v5, 0x0

    .line 2145
    new-array v0, v4, [Ljava/lang/Integer;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x6

    .line 2146
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v11

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    .line 2145
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/support/media/ExifInterface;->ROTATION_ORDER:Ljava/util/List;

    .line 2147
    new-array v0, v4, [Ljava/lang/Integer;

    const/4 v1, 0x0

    .line 2148
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v11

    .line 2149
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    .line 2147
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/support/media/ExifInterface;->FLIPPED_ROTATION_ORDER:Ljava/util/List;

    .line 2788
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/media/ExifInterface;->BITS_PER_SAMPLE_RGB:[I

    .line 2793
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v4, v0, v1

    sput-object v0, Landroid/support/media/ExifInterface;->BITS_PER_SAMPLE_GREYSCALE_1:[I

    .line 2798
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x8

    aput v2, v0, v1

    sput-object v0, Landroid/support/media/ExifInterface;->BITS_PER_SAMPLE_GREYSCALE_2:[I

    .line 2829
    new-array v0, v3, [B

    fill-array-data v0, :array_1

    sput-object v0, Landroid/support/media/ExifInterface;->JPEG_SIGNATURE:[B

    .line 2841
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Landroid/support/media/ExifInterface;->ORF_MAKER_NOTE_HEADER_1:[B

    .line 2843
    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    sput-object v0, Landroid/support/media/ExifInterface;->ORF_MAKER_NOTE_HEADER_2:[B

    .line 2888
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "BYTE"

    aput-object v2, v0, v1

    const-string v1, "STRING"

    aput-object v1, v0, v11

    const-string v1, "USHORT"

    aput-object v1, v0, v3

    const-string v1, "ULONG"

    aput-object v1, v0, v4

    const-string v1, "URATIONAL"

    aput-object v1, v0, v12

    const/4 v1, 0x6

    const-string v2, "SBYTE"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "UNDEFINED"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "SSHORT"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "SLONG"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "SRATIONAL"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "SINGLE"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "DOUBLE"

    aput-object v2, v0, v1

    sput-object v0, Landroid/support/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    .line 2893
    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Landroid/support/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    .line 2896
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_5

    sput-object v0, Landroid/support/media/ExifInterface;->EXIF_ASCII_PREFIX:[B

    .line 3335
    const/16 v0, 0x29

    new-array v8, v0, [Landroid/support/media/ExifInterface$ExifTag;

    const/4 v0, 0x0

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "NewSubfileType"

    const/16 v9, 0xfe

    invoke-direct {v1, v2, v9, v4, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/4 v0, 0x1

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "SubfileType"

    const/16 v9, 0xff

    invoke-direct {v1, v2, v9, v4, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    new-instance v0, Landroid/support/media/ExifInterface$ExifTag;

    const-string v1, "ImageWidth"

    const/16 v2, 0x100

    invoke-direct/range {v0 .. v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/support/media/ExifInterface$1;)V

    aput-object v0, v8, v11

    new-instance v0, Landroid/support/media/ExifInterface$ExifTag;

    const-string v1, "ImageLength"

    const/16 v2, 0x101

    invoke-direct/range {v0 .. v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/support/media/ExifInterface$1;)V

    aput-object v0, v8, v3

    new-instance v0, Landroid/support/media/ExifInterface$ExifTag;

    const-string v1, "BitsPerSample"

    const/16 v2, 0x102

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v0, v8, v4

    new-instance v0, Landroid/support/media/ExifInterface$ExifTag;

    const-string v1, "Compression"

    const/16 v2, 0x103

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v0, v8, v12

    const/4 v0, 0x6

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "PhotometricInterpretation"

    const/16 v9, 0x106

    invoke-direct {v1, v2, v9, v3, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/4 v0, 0x7

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "ImageDescription"

    const/16 v9, 0x10e

    invoke-direct {v1, v2, v9, v11, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/16 v0, 0x8

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "Make"

    const/16 v9, 0x10f

    invoke-direct {v1, v2, v9, v11, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/16 v0, 0x9

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "Model"

    const/16 v9, 0x110

    invoke-direct {v1, v2, v9, v11, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/16 v9, 0xa

    new-instance v0, Landroid/support/media/ExifInterface$ExifTag;

    const-string v1, "StripOffsets"

    const/16 v2, 0x111

    invoke-direct/range {v0 .. v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/support/media/ExifInterface$1;)V

    aput-object v0, v8, v9

    const/16 v0, 0xb

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "Orientation"

    const/16 v9, 0x112

    invoke-direct {v1, v2, v9, v3, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/16 v0, 0xc

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "SamplesPerPixel"

    const/16 v9, 0x115

    invoke-direct {v1, v2, v9, v3, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/16 v9, 0xd

    new-instance v0, Landroid/support/media/ExifInterface$ExifTag;

    const-string v1, "RowsPerStrip"

    const/16 v2, 0x116

    invoke-direct/range {v0 .. v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/support/media/ExifInterface$1;)V

    aput-object v0, v8, v9

    const/16 v9, 0xe

    new-instance v0, Landroid/support/media/ExifInterface$ExifTag;

    const-string v1, "StripByteCounts"

    const/16 v2, 0x117

    invoke-direct/range {v0 .. v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/support/media/ExifInterface$1;)V

    aput-object v0, v8, v9

    const/16 v0, 0xf

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "XResolution"

    const/16 v9, 0x11a

    invoke-direct {v1, v2, v9, v12, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/16 v0, 0x10

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "YResolution"

    const/16 v9, 0x11b

    invoke-direct {v1, v2, v9, v12, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/16 v0, 0x11

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "PlanarConfiguration"

    const/16 v9, 0x11c

    invoke-direct {v1, v2, v9, v3, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/16 v0, 0x12

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "ResolutionUnit"

    const/16 v9, 0x128

    invoke-direct {v1, v2, v9, v3, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/16 v0, 0x13

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "TransferFunction"

    const/16 v9, 0x12d

    invoke-direct {v1, v2, v9, v3, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/16 v0, 0x14

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "Software"

    const/16 v9, 0x131

    invoke-direct {v1, v2, v9, v11, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/16 v0, 0x15

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "DateTime"

    const/16 v9, 0x132

    invoke-direct {v1, v2, v9, v11, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/16 v0, 0x16

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "Artist"

    const/16 v9, 0x13b

    invoke-direct {v1, v2, v9, v11, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/16 v0, 0x17

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "WhitePoint"

    const/16 v9, 0x13e

    invoke-direct {v1, v2, v9, v12, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/16 v0, 0x18

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "PrimaryChromaticities"

    const/16 v9, 0x13f

    invoke-direct {v1, v2, v9, v12, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/16 v0, 0x19

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "SubIFDPointer"

    const/16 v9, 0x14a

    invoke-direct {v1, v2, v9, v4, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/16 v0, 0x1a

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "JPEGInterchangeFormat"

    const/16 v9, 0x201

    invoke-direct {v1, v2, v9, v4, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/16 v0, 0x1b

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "JPEGInterchangeFormatLength"

    const/16 v9, 0x202

    invoke-direct {v1, v2, v9, v4, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/16 v0, 0x1c

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "YCbCrCoefficients"

    const/16 v9, 0x211

    invoke-direct {v1, v2, v9, v12, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/16 v0, 0x1d

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "YCbCrSubSampling"

    const/16 v9, 0x212

    invoke-direct {v1, v2, v9, v3, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/16 v0, 0x1e

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "YCbCrPositioning"

    const/16 v9, 0x213

    invoke-direct {v1, v2, v9, v3, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/16 v0, 0x1f

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "ReferenceBlackWhite"

    const/16 v9, 0x214

    invoke-direct {v1, v2, v9, v12, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/16 v0, 0x20

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "Copyright"

    const v9, 0x8298

    invoke-direct {v1, v2, v9, v11, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/16 v0, 0x21

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "ExifIFDPointer"

    const v9, 0x8769

    invoke-direct {v1, v2, v9, v4, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/16 v0, 0x22

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "GPSInfoIFDPointer"

    const v9, 0x8825

    invoke-direct {v1, v2, v9, v4, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/16 v0, 0x23

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "SensorTopBorder"

    invoke-direct {v1, v2, v4, v4, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/16 v0, 0x24

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "SensorLeftBorder"

    invoke-direct {v1, v2, v12, v4, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/16 v0, 0x25

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "SensorBottomBorder"

    const/4 v9, 0x6

    invoke-direct {v1, v2, v9, v4, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/16 v0, 0x26

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "SensorRightBorder"

    const/4 v9, 0x7

    invoke-direct {v1, v2, v9, v4, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/16 v0, 0x27

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "ISO"

    const/16 v9, 0x17

    invoke-direct {v1, v2, v9, v3, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/16 v0, 0x28

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "JpgFromRaw"

    const/16 v9, 0x2e

    const/4 v10, 0x7

    invoke-direct {v1, v2, v9, v10, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    sput-object v8, Landroid/support/media/ExifInterface;->IFD_TIFF_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

    .line 3384
    const/16 v0, 0x3b

    new-array v8, v0, [Landroid/support/media/ExifInterface$ExifTag;

    const/4 v0, 0x0

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "ExposureTime"

    const v9, 0x829a

    invoke-direct {v1, v2, v9, v12, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/4 v0, 0x1

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "FNumber"

    const v9, 0x829d

    invoke-direct {v1, v2, v9, v12, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    new-instance v0, Landroid/support/media/ExifInterface$ExifTag;

    const-string v1, "ExposureProgram"

    const v2, 0x8822

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v0, v8, v11

    new-instance v0, Landroid/support/media/ExifInterface$ExifTag;

    const-string v1, "SpectralSensitivity"

    const v2, 0x8824

    invoke-direct {v0, v1, v2, v11, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v0, v8, v3

    new-instance v0, Landroid/support/media/ExifInterface$ExifTag;

    const-string v1, "PhotographicSensitivity"

    const v2, 0x8827

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v0, v8, v4

    new-instance v0, Landroid/support/media/ExifInterface$ExifTag;

    const-string v1, "OECF"

    const v2, 0x8828

    const/4 v9, 0x7

    invoke-direct {v0, v1, v2, v9, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v0, v8, v12

    const/4 v0, 0x6

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "ExifVersion"

    const v9, 0x9000

    invoke-direct {v1, v2, v9, v11, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/4 v0, 0x7

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "DateTimeOriginal"

    const v9, 0x9003

    invoke-direct {v1, v2, v9, v11, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/16 v0, 0x8

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "DateTimeDigitized"

    const v9, 0x9004

    invoke-direct {v1, v2, v9, v11, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/16 v0, 0x9

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "ComponentsConfiguration"

    const v9, 0x9101

    const/4 v10, 0x7

    invoke-direct {v1, v2, v9, v10, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/16 v0, 0xa

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "CompressedBitsPerPixel"

    const v9, 0x9102

    invoke-direct {v1, v2, v9, v12, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/16 v0, 0xb

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "ShutterSpeedValue"

    const v9, 0x9201

    const/16 v10, 0xa

    invoke-direct {v1, v2, v9, v10, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/16 v0, 0xc

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "ApertureValue"

    const v9, 0x9202

    invoke-direct {v1, v2, v9, v12, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/16 v0, 0xd

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "BrightnessValue"

    const v9, 0x9203

    const/16 v10, 0xa

    invoke-direct {v1, v2, v9, v10, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/16 v0, 0xe

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "ExposureBiasValue"

    const v9, 0x9204

    const/16 v10, 0xa

    invoke-direct {v1, v2, v9, v10, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/16 v0, 0xf

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "MaxApertureValue"

    const v9, 0x9205

    invoke-direct {v1, v2, v9, v12, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/16 v0, 0x10

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "SubjectDistance"

    const v9, 0x9206

    invoke-direct {v1, v2, v9, v12, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/16 v0, 0x11

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "MeteringMode"

    const v9, 0x9207

    invoke-direct {v1, v2, v9, v3, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/16 v0, 0x12

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "LightSource"

    const v9, 0x9208

    invoke-direct {v1, v2, v9, v3, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/16 v0, 0x13

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "Flash"

    const v9, 0x9209

    invoke-direct {v1, v2, v9, v3, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/16 v0, 0x14

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "FocalLength"

    const v9, 0x920a

    invoke-direct {v1, v2, v9, v12, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/16 v0, 0x15

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "SubjectArea"

    const v9, 0x9214

    invoke-direct {v1, v2, v9, v3, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/16 v0, 0x16

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "MakerNote"

    const v9, 0x927c

    const/4 v10, 0x7

    invoke-direct {v1, v2, v9, v10, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/16 v0, 0x17

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "UserComment"

    const v9, 0x9286

    const/4 v10, 0x7

    invoke-direct {v1, v2, v9, v10, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/16 v0, 0x18

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "SubSecTime"

    const v9, 0x9290

    invoke-direct {v1, v2, v9, v11, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/16 v0, 0x19

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "SubSecTimeOriginal"

    const v9, 0x9291

    invoke-direct {v1, v2, v9, v11, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/16 v0, 0x1a

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "SubSecTimeDigitized"

    const v9, 0x9292

    invoke-direct {v1, v2, v9, v11, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/16 v0, 0x1b

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "FlashpixVersion"

    const v9, 0xa000

    const/4 v10, 0x7

    invoke-direct {v1, v2, v9, v10, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/16 v0, 0x1c

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "ColorSpace"

    const v9, 0xa001

    invoke-direct {v1, v2, v9, v3, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/16 v9, 0x1d

    new-instance v0, Landroid/support/media/ExifInterface$ExifTag;

    const-string v1, "PixelXDimension"

    const v2, 0xa002

    invoke-direct/range {v0 .. v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/support/media/ExifInterface$1;)V

    aput-object v0, v8, v9

    const/16 v9, 0x1e

    new-instance v0, Landroid/support/media/ExifInterface$ExifTag;

    const-string v1, "PixelYDimension"

    const v2, 0xa003

    invoke-direct/range {v0 .. v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/support/media/ExifInterface$1;)V

    aput-object v0, v8, v9

    const/16 v0, 0x1f

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "RelatedSoundFile"

    const v9, 0xa004

    invoke-direct {v1, v2, v9, v11, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/16 v0, 0x20

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "InteroperabilityIFDPointer"

    const v9, 0xa005

    invoke-direct {v1, v2, v9, v4, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/16 v0, 0x21

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "FlashEnergy"

    const v9, 0xa20b

    invoke-direct {v1, v2, v9, v12, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/16 v0, 0x22

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "SpatialFrequencyResponse"

    const v9, 0xa20c

    const/4 v10, 0x7

    invoke-direct {v1, v2, v9, v10, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/16 v0, 0x23

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "FocalPlaneXResolution"

    const v9, 0xa20e

    invoke-direct {v1, v2, v9, v12, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/16 v0, 0x24

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "FocalPlaneYResolution"

    const v9, 0xa20f

    invoke-direct {v1, v2, v9, v12, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/16 v0, 0x25

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "FocalPlaneResolutionUnit"

    const v9, 0xa210

    invoke-direct {v1, v2, v9, v3, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/16 v0, 0x26

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "SubjectLocation"

    const v9, 0xa214

    invoke-direct {v1, v2, v9, v3, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/16 v0, 0x27

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "ExposureIndex"

    const v9, 0xa215

    invoke-direct {v1, v2, v9, v12, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/16 v0, 0x28

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "SensingMethod"

    const v9, 0xa217

    invoke-direct {v1, v2, v9, v3, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/16 v0, 0x29

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "FileSource"

    const v9, 0xa300

    const/4 v10, 0x7

    invoke-direct {v1, v2, v9, v10, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/16 v0, 0x2a

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "SceneType"

    const v9, 0xa301

    const/4 v10, 0x7

    invoke-direct {v1, v2, v9, v10, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/16 v0, 0x2b

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "CFAPattern"

    const v9, 0xa302

    const/4 v10, 0x7

    invoke-direct {v1, v2, v9, v10, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/16 v0, 0x2c

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "CustomRendered"

    const v9, 0xa401

    invoke-direct {v1, v2, v9, v3, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/16 v0, 0x2d

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "ExposureMode"

    const v9, 0xa402

    invoke-direct {v1, v2, v9, v3, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/16 v0, 0x2e

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "WhiteBalance"

    const v9, 0xa403

    invoke-direct {v1, v2, v9, v3, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/16 v0, 0x2f

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "DigitalZoomRatio"

    const v9, 0xa404

    invoke-direct {v1, v2, v9, v12, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/16 v0, 0x30

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "FocalLengthIn35mmFilm"

    const v9, 0xa405

    invoke-direct {v1, v2, v9, v3, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/16 v0, 0x31

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "SceneCaptureType"

    const v9, 0xa406

    invoke-direct {v1, v2, v9, v3, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/16 v0, 0x32

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "GainControl"

    const v9, 0xa407

    invoke-direct {v1, v2, v9, v3, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/16 v0, 0x33

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "Contrast"

    const v9, 0xa408

    invoke-direct {v1, v2, v9, v3, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/16 v0, 0x34

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "Saturation"

    const v9, 0xa409

    invoke-direct {v1, v2, v9, v3, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/16 v0, 0x35

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "Sharpness"

    const v9, 0xa40a

    invoke-direct {v1, v2, v9, v3, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/16 v0, 0x36

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "DeviceSettingDescription"

    const v9, 0xa40b

    const/4 v10, 0x7

    invoke-direct {v1, v2, v9, v10, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/16 v0, 0x37

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "SubjectDistanceRange"

    const v9, 0xa40c

    invoke-direct {v1, v2, v9, v3, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/16 v0, 0x38

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "ImageUniqueID"

    const v9, 0xa420

    invoke-direct {v1, v2, v9, v11, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/16 v0, 0x39

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "DNGVersion"

    const v9, 0xc612

    const/4 v10, 0x1

    invoke-direct {v1, v2, v9, v10, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/16 v9, 0x3a

    new-instance v0, Landroid/support/media/ExifInterface$ExifTag;

    const-string v1, "DefaultCropSize"

    const v2, 0xc620

    invoke-direct/range {v0 .. v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/support/media/ExifInterface$1;)V

    aput-object v0, v8, v9

    sput-object v8, Landroid/support/media/ExifInterface;->IFD_EXIF_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

    .line 3447
    const/16 v0, 0x1f

    new-array v0, v0, [Landroid/support/media/ExifInterface$ExifTag;

    const/4 v1, 0x0

    new-instance v2, Landroid/support/media/ExifInterface$ExifTag;

    const-string v8, "GPSVersionID"

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-direct {v2, v8, v9, v10, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Landroid/support/media/ExifInterface$ExifTag;

    const-string v8, "GPSLatitudeRef"

    const/4 v9, 0x1

    invoke-direct {v2, v8, v9, v11, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v2, v0, v1

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "GPSLatitude"

    invoke-direct {v1, v2, v11, v12, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v0, v11

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "GPSLongitudeRef"

    invoke-direct {v1, v2, v3, v11, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v0, v3

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "GPSLongitude"

    invoke-direct {v1, v2, v4, v12, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v0, v4

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "GPSAltitudeRef"

    const/4 v8, 0x1

    invoke-direct {v1, v2, v12, v8, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v0, v12

    const/4 v1, 0x6

    new-instance v2, Landroid/support/media/ExifInterface$ExifTag;

    const-string v8, "GPSAltitude"

    const/4 v9, 0x6

    invoke-direct {v2, v8, v9, v12, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Landroid/support/media/ExifInterface$ExifTag;

    const-string v8, "GPSTimeStamp"

    const/4 v9, 0x7

    invoke-direct {v2, v8, v9, v12, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Landroid/support/media/ExifInterface$ExifTag;

    const-string v8, "GPSSatellites"

    const/16 v9, 0x8

    invoke-direct {v2, v8, v9, v11, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Landroid/support/media/ExifInterface$ExifTag;

    const-string v8, "GPSStatus"

    const/16 v9, 0x9

    invoke-direct {v2, v8, v9, v11, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Landroid/support/media/ExifInterface$ExifTag;

    const-string v8, "GPSMeasureMode"

    const/16 v9, 0xa

    invoke-direct {v2, v8, v9, v11, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Landroid/support/media/ExifInterface$ExifTag;

    const-string v8, "GPSDOP"

    const/16 v9, 0xb

    invoke-direct {v2, v8, v9, v12, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Landroid/support/media/ExifInterface$ExifTag;

    const-string v8, "GPSSpeedRef"

    const/16 v9, 0xc

    invoke-direct {v2, v8, v9, v11, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Landroid/support/media/ExifInterface$ExifTag;

    const-string v8, "GPSSpeed"

    const/16 v9, 0xd

    invoke-direct {v2, v8, v9, v12, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Landroid/support/media/ExifInterface$ExifTag;

    const-string v8, "GPSTrackRef"

    const/16 v9, 0xe

    invoke-direct {v2, v8, v9, v11, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Landroid/support/media/ExifInterface$ExifTag;

    const-string v8, "GPSTrack"

    const/16 v9, 0xf

    invoke-direct {v2, v8, v9, v12, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Landroid/support/media/ExifInterface$ExifTag;

    const-string v8, "GPSImgDirectionRef"

    const/16 v9, 0x10

    invoke-direct {v2, v8, v9, v11, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Landroid/support/media/ExifInterface$ExifTag;

    const-string v8, "GPSImgDirection"

    const/16 v9, 0x11

    invoke-direct {v2, v8, v9, v12, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Landroid/support/media/ExifInterface$ExifTag;

    const-string v8, "GPSMapDatum"

    const/16 v9, 0x12

    invoke-direct {v2, v8, v9, v11, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Landroid/support/media/ExifInterface$ExifTag;

    const-string v8, "GPSDestLatitudeRef"

    const/16 v9, 0x13

    invoke-direct {v2, v8, v9, v11, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-instance v2, Landroid/support/media/ExifInterface$ExifTag;

    const-string v8, "GPSDestLatitude"

    const/16 v9, 0x14

    invoke-direct {v2, v8, v9, v12, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-instance v2, Landroid/support/media/ExifInterface$ExifTag;

    const-string v8, "GPSDestLongitudeRef"

    const/16 v9, 0x15

    invoke-direct {v2, v8, v9, v11, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-instance v2, Landroid/support/media/ExifInterface$ExifTag;

    const-string v8, "GPSDestLongitude"

    const/16 v9, 0x16

    invoke-direct {v2, v8, v9, v12, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-instance v2, Landroid/support/media/ExifInterface$ExifTag;

    const-string v8, "GPSDestBearingRef"

    const/16 v9, 0x17

    invoke-direct {v2, v8, v9, v11, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-instance v2, Landroid/support/media/ExifInterface$ExifTag;

    const-string v8, "GPSDestBearing"

    const/16 v9, 0x18

    invoke-direct {v2, v8, v9, v12, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-instance v2, Landroid/support/media/ExifInterface$ExifTag;

    const-string v8, "GPSDestDistanceRef"

    const/16 v9, 0x19

    invoke-direct {v2, v8, v9, v11, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-instance v2, Landroid/support/media/ExifInterface$ExifTag;

    const-string v8, "GPSDestDistance"

    const/16 v9, 0x1a

    invoke-direct {v2, v8, v9, v12, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-instance v2, Landroid/support/media/ExifInterface$ExifTag;

    const-string v8, "GPSProcessingMethod"

    const/16 v9, 0x1b

    const/4 v10, 0x7

    invoke-direct {v2, v8, v9, v10, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-instance v2, Landroid/support/media/ExifInterface$ExifTag;

    const-string v8, "GPSAreaInformation"

    const/16 v9, 0x1c

    const/4 v10, 0x7

    invoke-direct {v2, v8, v9, v10, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-instance v2, Landroid/support/media/ExifInterface$ExifTag;

    const-string v8, "GPSDateStamp"

    const/16 v9, 0x1d

    invoke-direct {v2, v8, v9, v11, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-instance v2, Landroid/support/media/ExifInterface$ExifTag;

    const-string v8, "GPSDifferential"

    const/16 v9, 0x1e

    invoke-direct {v2, v8, v9, v3, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v2, v0, v1

    sput-object v0, Landroid/support/media/ExifInterface;->IFD_GPS_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

    .line 3481
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/support/media/ExifInterface$ExifTag;

    const/4 v1, 0x0

    new-instance v2, Landroid/support/media/ExifInterface$ExifTag;

    const-string v8, "InteroperabilityIndex"

    const/4 v9, 0x1

    invoke-direct {v2, v8, v9, v11, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v2, v0, v1

    sput-object v0, Landroid/support/media/ExifInterface;->IFD_INTEROPERABILITY_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

    .line 3485
    const/16 v0, 0x25

    new-array v8, v0, [Landroid/support/media/ExifInterface$ExifTag;

    const/4 v0, 0x0

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "NewSubfileType"

    const/16 v9, 0xfe

    invoke-direct {v1, v2, v9, v4, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/4 v0, 0x1

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "SubfileType"

    const/16 v9, 0xff

    invoke-direct {v1, v2, v9, v4, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    new-instance v0, Landroid/support/media/ExifInterface$ExifTag;

    const-string v1, "ThumbnailImageWidth"

    const/16 v2, 0x100

    invoke-direct/range {v0 .. v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/support/media/ExifInterface$1;)V

    aput-object v0, v8, v11

    new-instance v0, Landroid/support/media/ExifInterface$ExifTag;

    const-string v1, "ThumbnailImageLength"

    const/16 v2, 0x101

    invoke-direct/range {v0 .. v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/support/media/ExifInterface$1;)V

    aput-object v0, v8, v3

    new-instance v0, Landroid/support/media/ExifInterface$ExifTag;

    const-string v1, "BitsPerSample"

    const/16 v2, 0x102

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v0, v8, v4

    new-instance v0, Landroid/support/media/ExifInterface$ExifTag;

    const-string v1, "Compression"

    const/16 v2, 0x103

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v0, v8, v12

    const/4 v0, 0x6

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "PhotometricInterpretation"

    const/16 v9, 0x106

    invoke-direct {v1, v2, v9, v3, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/4 v0, 0x7

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "ImageDescription"

    const/16 v9, 0x10e

    invoke-direct {v1, v2, v9, v11, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/16 v0, 0x8

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "Make"

    const/16 v9, 0x10f

    invoke-direct {v1, v2, v9, v11, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/16 v0, 0x9

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "Model"

    const/16 v9, 0x110

    invoke-direct {v1, v2, v9, v11, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/16 v9, 0xa

    new-instance v0, Landroid/support/media/ExifInterface$ExifTag;

    const-string v1, "StripOffsets"

    const/16 v2, 0x111

    invoke-direct/range {v0 .. v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/support/media/ExifInterface$1;)V

    aput-object v0, v8, v9

    const/16 v0, 0xb

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "Orientation"

    const/16 v9, 0x112

    invoke-direct {v1, v2, v9, v3, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/16 v0, 0xc

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "SamplesPerPixel"

    const/16 v9, 0x115

    invoke-direct {v1, v2, v9, v3, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/16 v9, 0xd

    new-instance v0, Landroid/support/media/ExifInterface$ExifTag;

    const-string v1, "RowsPerStrip"

    const/16 v2, 0x116

    invoke-direct/range {v0 .. v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/support/media/ExifInterface$1;)V

    aput-object v0, v8, v9

    const/16 v9, 0xe

    new-instance v0, Landroid/support/media/ExifInterface$ExifTag;

    const-string v1, "StripByteCounts"

    const/16 v2, 0x117

    invoke-direct/range {v0 .. v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/support/media/ExifInterface$1;)V

    aput-object v0, v8, v9

    const/16 v0, 0xf

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "XResolution"

    const/16 v9, 0x11a

    invoke-direct {v1, v2, v9, v12, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/16 v0, 0x10

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "YResolution"

    const/16 v9, 0x11b

    invoke-direct {v1, v2, v9, v12, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/16 v0, 0x11

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "PlanarConfiguration"

    const/16 v9, 0x11c

    invoke-direct {v1, v2, v9, v3, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/16 v0, 0x12

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "ResolutionUnit"

    const/16 v9, 0x128

    invoke-direct {v1, v2, v9, v3, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/16 v0, 0x13

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "TransferFunction"

    const/16 v9, 0x12d

    invoke-direct {v1, v2, v9, v3, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/16 v0, 0x14

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "Software"

    const/16 v9, 0x131

    invoke-direct {v1, v2, v9, v11, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/16 v0, 0x15

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "DateTime"

    const/16 v9, 0x132

    invoke-direct {v1, v2, v9, v11, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/16 v0, 0x16

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "Artist"

    const/16 v9, 0x13b

    invoke-direct {v1, v2, v9, v11, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/16 v0, 0x17

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "WhitePoint"

    const/16 v9, 0x13e

    invoke-direct {v1, v2, v9, v12, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/16 v0, 0x18

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "PrimaryChromaticities"

    const/16 v9, 0x13f

    invoke-direct {v1, v2, v9, v12, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/16 v0, 0x19

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "SubIFDPointer"

    const/16 v9, 0x14a

    invoke-direct {v1, v2, v9, v4, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/16 v0, 0x1a

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "JPEGInterchangeFormat"

    const/16 v9, 0x201

    invoke-direct {v1, v2, v9, v4, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/16 v0, 0x1b

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "JPEGInterchangeFormatLength"

    const/16 v9, 0x202

    invoke-direct {v1, v2, v9, v4, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/16 v0, 0x1c

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "YCbCrCoefficients"

    const/16 v9, 0x211

    invoke-direct {v1, v2, v9, v12, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/16 v0, 0x1d

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "YCbCrSubSampling"

    const/16 v9, 0x212

    invoke-direct {v1, v2, v9, v3, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/16 v0, 0x1e

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "YCbCrPositioning"

    const/16 v9, 0x213

    invoke-direct {v1, v2, v9, v3, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/16 v0, 0x1f

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "ReferenceBlackWhite"

    const/16 v9, 0x214

    invoke-direct {v1, v2, v9, v12, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/16 v0, 0x20

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "Copyright"

    const v9, 0x8298

    invoke-direct {v1, v2, v9, v11, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/16 v0, 0x21

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "ExifIFDPointer"

    const v9, 0x8769

    invoke-direct {v1, v2, v9, v4, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/16 v0, 0x22

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "GPSInfoIFDPointer"

    const v9, 0x8825

    invoke-direct {v1, v2, v9, v4, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/16 v0, 0x23

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "DNGVersion"

    const v9, 0xc612

    const/4 v10, 0x1

    invoke-direct {v1, v2, v9, v10, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v8, v0

    const/16 v9, 0x24

    new-instance v0, Landroid/support/media/ExifInterface$ExifTag;

    const-string v1, "DefaultCropSize"

    const v2, 0xc620

    invoke-direct/range {v0 .. v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/support/media/ExifInterface$1;)V

    aput-object v0, v8, v9

    sput-object v8, Landroid/support/media/ExifInterface;->IFD_THUMBNAIL_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

    .line 3528
    new-instance v0, Landroid/support/media/ExifInterface$ExifTag;

    const-string v1, "StripOffsets"

    const/16 v2, 0x111

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    sput-object v0, Landroid/support/media/ExifInterface;->TAG_RAF_IMAGE_SIZE:Landroid/support/media/ExifInterface$ExifTag;

    .line 3532
    new-array v0, v3, [Landroid/support/media/ExifInterface$ExifTag;

    const/4 v1, 0x0

    new-instance v2, Landroid/support/media/ExifInterface$ExifTag;

    const-string v8, "ThumbnailImage"

    const/16 v9, 0x100

    const/4 v10, 0x7

    invoke-direct {v2, v8, v9, v10, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Landroid/support/media/ExifInterface$ExifTag;

    const-string v8, "CameraSettingsIFDPointer"

    const/16 v9, 0x2020

    invoke-direct {v2, v8, v9, v4, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v2, v0, v1

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "ImageProcessingIFDPointer"

    const/16 v8, 0x2040

    invoke-direct {v1, v2, v8, v4, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v0, v11

    sput-object v0, Landroid/support/media/ExifInterface;->ORF_MAKER_NOTE_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

    .line 3537
    new-array v0, v11, [Landroid/support/media/ExifInterface$ExifTag;

    const/4 v1, 0x0

    new-instance v2, Landroid/support/media/ExifInterface$ExifTag;

    const-string v8, "PreviewImageStart"

    const/16 v9, 0x101

    invoke-direct {v2, v8, v9, v4, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Landroid/support/media/ExifInterface$ExifTag;

    const-string v8, "PreviewImageLength"

    const/16 v9, 0x102

    invoke-direct {v2, v8, v9, v4, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v2, v0, v1

    sput-object v0, Landroid/support/media/ExifInterface;->ORF_CAMERA_SETTINGS_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

    .line 3541
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/support/media/ExifInterface$ExifTag;

    const/4 v1, 0x0

    new-instance v2, Landroid/support/media/ExifInterface$ExifTag;

    const-string v8, "AspectFrame"

    const/16 v9, 0x1113

    invoke-direct {v2, v8, v9, v3, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v2, v0, v1

    sput-object v0, Landroid/support/media/ExifInterface;->ORF_IMAGE_PROCESSING_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

    .line 3545
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/support/media/ExifInterface$ExifTag;

    const/4 v1, 0x0

    new-instance v2, Landroid/support/media/ExifInterface$ExifTag;

    const-string v8, "ColorSpace"

    const/16 v9, 0x37

    invoke-direct {v2, v8, v9, v3, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v2, v0, v1

    sput-object v0, Landroid/support/media/ExifInterface;->PEF_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

    .line 3573
    const/16 v0, 0xa

    new-array v0, v0, [[Landroid/support/media/ExifInterface$ExifTag;

    const/4 v1, 0x0

    sget-object v2, Landroid/support/media/ExifInterface;->IFD_TIFF_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroid/support/media/ExifInterface;->IFD_EXIF_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

    aput-object v2, v0, v1

    sget-object v1, Landroid/support/media/ExifInterface;->IFD_GPS_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

    aput-object v1, v0, v11

    sget-object v1, Landroid/support/media/ExifInterface;->IFD_INTEROPERABILITY_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

    aput-object v1, v0, v3

    sget-object v1, Landroid/support/media/ExifInterface;->IFD_THUMBNAIL_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

    aput-object v1, v0, v4

    sget-object v1, Landroid/support/media/ExifInterface;->IFD_TIFF_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

    aput-object v1, v0, v12

    const/4 v1, 0x6

    sget-object v2, Landroid/support/media/ExifInterface;->ORF_MAKER_NOTE_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/support/media/ExifInterface;->ORF_CAMERA_SETTINGS_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Landroid/support/media/ExifInterface;->ORF_IMAGE_PROCESSING_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Landroid/support/media/ExifInterface;->PEF_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

    aput-object v2, v0, v1

    sput-object v0, Landroid/support/media/ExifInterface;->EXIF_TAGS:[[Landroid/support/media/ExifInterface$ExifTag;

    .line 3579
    const/4 v0, 0x6

    new-array v0, v0, [Landroid/support/media/ExifInterface$ExifTag;

    const/4 v1, 0x0

    new-instance v2, Landroid/support/media/ExifInterface$ExifTag;

    const-string v8, "SubIFDPointer"

    const/16 v9, 0x14a

    invoke-direct {v2, v8, v9, v4, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Landroid/support/media/ExifInterface$ExifTag;

    const-string v8, "ExifIFDPointer"

    const v9, 0x8769

    invoke-direct {v2, v8, v9, v4, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v2, v0, v1

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "GPSInfoIFDPointer"

    const v8, 0x8825

    invoke-direct {v1, v2, v8, v4, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v0, v11

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "InteroperabilityIFDPointer"

    const v8, 0xa005

    invoke-direct {v1, v2, v8, v4, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v0, v3

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "CameraSettingsIFDPointer"

    const/16 v8, 0x2020

    const/4 v9, 0x1

    invoke-direct {v1, v2, v8, v9, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v0, v4

    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v2, "ImageProcessingIFDPointer"

    const/16 v8, 0x2040

    const/4 v9, 0x1

    invoke-direct {v1, v2, v8, v9, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v1, v0, v12

    sput-object v0, Landroid/support/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

    .line 3589
    new-instance v0, Landroid/support/media/ExifInterface$ExifTag;

    const-string v1, "JPEGInterchangeFormat"

    const/16 v2, 0x201

    invoke-direct {v0, v1, v2, v4, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    sput-object v0, Landroid/support/media/ExifInterface;->JPEG_INTERCHANGE_FORMAT_TAG:Landroid/support/media/ExifInterface$ExifTag;

    .line 3591
    new-instance v0, Landroid/support/media/ExifInterface$ExifTag;

    const-string v1, "JPEGInterchangeFormatLength"

    const/16 v2, 0x202

    invoke-direct {v0, v1, v2, v4, v5}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    sput-object v0, Landroid/support/media/ExifInterface;->JPEG_INTERCHANGE_FORMAT_LENGTH_TAG:Landroid/support/media/ExifInterface$ExifTag;

    .line 3596
    sget-object v0, Landroid/support/media/ExifInterface;->EXIF_TAGS:[[Landroid/support/media/ExifInterface$ExifTag;

    array-length v0, v0

    new-array v0, v0, [Ljava/util/HashMap;

    sput-object v0, Landroid/support/media/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    .line 3600
    sget-object v0, Landroid/support/media/ExifInterface;->EXIF_TAGS:[[Landroid/support/media/ExifInterface$ExifTag;

    array-length v0, v0

    new-array v0, v0, [Ljava/util/HashMap;

    sput-object v0, Landroid/support/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    .line 3602
    new-instance v0, Ljava/util/HashSet;

    new-array v1, v12, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "FNumber"

    aput-object v5, v1, v2

    const/4 v2, 0x1

    const-string v5, "DigitalZoomRatio"

    aput-object v5, v1, v2

    const-string v2, "ExposureTime"

    aput-object v2, v1, v11

    const-string v2, "SubjectDistance"

    aput-object v2, v1, v3

    const-string v2, "GPSTimeStamp"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroid/support/media/ExifInterface;->sTagSetForCompatibility:Ljava/util/HashSet;

    .line 3607
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/support/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    .line 3614
    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Landroid/support/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    .line 3616
    const-string v0, "Exif\u0000\u0000"

    sget-object v1, Landroid/support/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Landroid/support/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    .line 3655
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy:MM:dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/support/media/ExifInterface;->sFormatter:Ljava/text/SimpleDateFormat;

    .line 3656
    sget-object v0, Landroid/support/media/ExifInterface;->sFormatter:Ljava/text/SimpleDateFormat;

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 3659
    const/4 v6, 0x0

    .local v6, "ifdType":I
    :goto_0
    sget-object v0, Landroid/support/media/ExifInterface;->EXIF_TAGS:[[Landroid/support/media/ExifInterface$ExifTag;

    array-length v0, v0

    if-ge v6, v0, :cond_1

    .line 3660
    sget-object v0, Landroid/support/media/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    aput-object v1, v0, v6

    .line 3661
    sget-object v0, Landroid/support/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    aput-object v1, v0, v6

    .line 3662
    sget-object v0, Landroid/support/media/ExifInterface;->EXIF_TAGS:[[Landroid/support/media/ExifInterface$ExifTag;

    aget-object v1, v0, v6

    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_0

    aget-object v7, v1, v0

    .line 3663
    .local v7, "tag":Landroid/support/media/ExifInterface$ExifTag;
    sget-object v5, Landroid/support/media/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    aget-object v5, v5, v6

    iget v8, v7, Landroid/support/media/ExifInterface$ExifTag;->number:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3664
    sget-object v5, Landroid/support/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    aget-object v5, v5, v6

    iget-object v8, v7, Landroid/support/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-virtual {v5, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3662
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3659
    .end local v7    # "tag":Landroid/support/media/ExifInterface$ExifTag;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 3669
    :cond_1
    sget-object v0, Landroid/support/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    sget-object v1, Landroid/support/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget v1, v1, Landroid/support/media/ExifInterface$ExifTag;->number:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3670
    sget-object v0, Landroid/support/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    sget-object v1, Landroid/support/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget v1, v1, Landroid/support/media/ExifInterface$ExifTag;->number:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3671
    sget-object v0, Landroid/support/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    sget-object v1, Landroid/support/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

    aget-object v1, v1, v11

    iget v1, v1, Landroid/support/media/ExifInterface$ExifTag;->number:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3672
    sget-object v0, Landroid/support/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    sget-object v1, Landroid/support/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

    aget-object v1, v1, v3

    iget v1, v1, Landroid/support/media/ExifInterface$ExifTag;->number:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3673
    sget-object v0, Landroid/support/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    sget-object v1, Landroid/support/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

    aget-object v1, v1, v4

    iget v1, v1, Landroid/support/media/ExifInterface$ExifTag;->number:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3674
    sget-object v0, Landroid/support/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    sget-object v1, Landroid/support/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

    aget-object v1, v1, v12

    iget v1, v1, Landroid/support/media/ExifInterface$ExifTag;->number:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3697
    const-string v0, ".*[1-9].*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/support/media/ExifInterface;->sNonZeroTimePattern:Ljava/util/regex/Pattern;

    .line 3699
    const-string v0, "^([0-9][0-9]):([0-9][0-9]):([0-9][0-9])$"

    .line 3700
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/support/media/ExifInterface;->sGpsTimestampPattern:Ljava/util/regex/Pattern;

    .line 3699
    return-void

    .line 2788
    :array_0
    .array-data 4
        0x8
        0x8
        0x8
    .end array-data

    .line 2829
    :array_1
    .array-data 1
        -0x1t
        -0x28t
        -0x1t
    .end array-data

    .line 2841
    :array_2
    .array-data 1
        0x4ft
        0x4ct
        0x59t
        0x4dt
        0x50t
        0x0t
    .end array-data

    .line 2843
    nop

    :array_3
    .array-data 1
        0x4ft
        0x4ct
        0x59t
        0x4dt
        0x50t
        0x55t
        0x53t
        0x0t
        0x49t
        0x49t
    .end array-data

    .line 2893
    nop

    :array_4
    .array-data 4
        0x0
        0x1
        0x1
        0x2
        0x4
        0x8
        0x1
        0x1
        0x2
        0x4
        0x8
        0x4
        0x8
        0x1
    .end array-data

    .line 2896
    :array_5
    .array-data 1
        0x41t
        0x53t
        0x43t
        0x49t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 3726
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3680
    sget-object v0, Landroid/support/media/ExifInterface;->EXIF_TAGS:[[Landroid/support/media/ExifInterface$ExifTag;

    array-length v0, v0

    new-array v0, v0, [Ljava/util/HashMap;

    iput-object v0, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 3682
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 3727
    if-nez p1, :cond_0

    .line 3728
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inputStream cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3730
    :cond_0
    iput-object v1, p0, Landroid/support/media/ExifInterface;->mFilename:Ljava/lang/String;

    .line 3731
    instance-of v0, p1, Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 3732
    check-cast v0, Landroid/content/res/AssetManager$AssetInputStream;

    iput-object v0, p0, Landroid/support/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 3736
    :goto_0
    invoke-direct {p0, p1}, Landroid/support/media/ExifInterface;->loadAttributes(Ljava/io/InputStream;)V

    .line 3737
    return-void

    .line 3734
    :cond_1
    iput-object v1, p0, Landroid/support/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3705
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3680
    sget-object v2, Landroid/support/media/ExifInterface;->EXIF_TAGS:[[Landroid/support/media/ExifInterface$ExifTag;

    array-length v2, v2

    new-array v2, v2, [Ljava/util/HashMap;

    iput-object v2, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 3682
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v2, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 3706
    if-nez p1, :cond_0

    .line 3707
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "filename cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3709
    :cond_0
    const/4 v0, 0x0

    .line 3710
    .local v0, "in":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/support/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 3711
    iput-object p1, p0, Landroid/support/media/ExifInterface;->mFilename:Ljava/lang/String;

    .line 3713
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3714
    .end local v0    # "in":Ljava/io/FileInputStream;
    .local v1, "in":Ljava/io/FileInputStream;
    :try_start_1
    invoke-direct {p0, v1}, Landroid/support/media/ExifInterface;->loadAttributes(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3716
    invoke-static {v1}, Landroid/support/media/ExifInterface;->closeQuietly(Ljava/io/Closeable;)V

    .line 3718
    return-void

    .line 3716
    .end local v1    # "in":Ljava/io/FileInputStream;
    .restart local v0    # "in":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v2

    :goto_0
    invoke-static {v0}, Landroid/support/media/ExifInterface;->closeQuietly(Ljava/io/Closeable;)V

    throw v2

    .end local v0    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "in":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "in":Ljava/io/FileInputStream;
    .restart local v0    # "in":Ljava/io/FileInputStream;
    goto :goto_0
.end method

.method static synthetic access$000()Ljava/nio/charset/Charset;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Landroid/support/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method static synthetic access$100()[B
    .locals 1

    .prologue
    .line 69
    sget-object v0, Landroid/support/media/ExifInterface;->EXIF_ASCII_PREFIX:[B

    return-object v0
.end method

.method private addDefaultValuesForCompatibility()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 5245
    const-string v1, "DateTimeOriginal"

    invoke-virtual {p0, v1}, Landroid/support/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5246
    .local v0, "valueOfDateTimeOriginal":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "DateTime"

    invoke-virtual {p0, v1}, Landroid/support/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 5247
    iget-object v1, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, v4

    const-string v2, "DateTime"

    .line 5248
    invoke-static {v0}, Landroid/support/media/ExifInterface$ExifAttribute;->createString(Ljava/lang/String;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object v3

    .line 5247
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5252
    :cond_0
    const-string v1, "ImageWidth"

    invoke-virtual {p0, v1}, Landroid/support/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 5253
    iget-object v1, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, v4

    const-string v2, "ImageWidth"

    iget-object v3, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5254
    invoke-static {v6, v7, v3}, Landroid/support/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object v3

    .line 5253
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5256
    :cond_1
    const-string v1, "ImageLength"

    invoke-virtual {p0, v1}, Landroid/support/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 5257
    iget-object v1, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, v4

    const-string v2, "ImageLength"

    iget-object v3, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5258
    invoke-static {v6, v7, v3}, Landroid/support/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object v3

    .line 5257
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5260
    :cond_2
    const-string v1, "Orientation"

    invoke-virtual {p0, v1}, Landroid/support/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    .line 5261
    iget-object v1, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, v4

    const-string v2, "Orientation"

    iget-object v3, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5262
    invoke-static {v6, v7, v3}, Landroid/support/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object v3

    .line 5261
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5264
    :cond_3
    const-string v1, "LightSource"

    invoke-virtual {p0, v1}, Landroid/support/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    .line 5265
    iget-object v1, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const-string v2, "LightSource"

    iget-object v3, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5266
    invoke-static {v6, v7, v3}, Landroid/support/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object v3

    .line 5265
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5268
    :cond_4
    return-void
.end method

.method private static closeQuietly(Ljava/io/Closeable;)V
    .locals 2
    .param p0, "closeable"    # Ljava/io/Closeable;

    .prologue
    .line 6440
    if-eqz p0, :cond_0

    .line 6442
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 6448
    :cond_0
    :goto_0
    return-void

    .line 6443
    :catch_0
    move-exception v0

    .line 6444
    .local v0, "rethrown":Ljava/lang/RuntimeException;
    throw v0

    .line 6445
    .end local v0    # "rethrown":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private static convertRationalLatLonToDouble(Ljava/lang/String;Ljava/lang/String;)D
    .locals 18
    .param p0, "rationalString"    # Ljava/lang/String;
    .param p1, "ref"    # Ljava/lang/String;

    .prologue
    .line 4645
    :try_start_0
    const-string v9, ","

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 4648
    .local v8, "parts":[Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v9, v8, v9

    const-string v14, "/"

    invoke-virtual {v9, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 4649
    .local v5, "pair":[Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v9, v5, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    const/4 v9, 0x1

    aget-object v9, v5, v9

    .line 4650
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v16

    div-double v2, v14, v16

    .line 4652
    .local v2, "degrees":D
    const/4 v9, 0x1

    aget-object v9, v8, v9

    const-string v14, "/"

    invoke-virtual {v9, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 4653
    const/4 v9, 0x0

    aget-object v9, v5, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    const/4 v9, 0x1

    aget-object v9, v5, v9

    .line 4654
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v16

    div-double v6, v14, v16

    .line 4656
    .local v6, "minutes":D
    const/4 v9, 0x2

    aget-object v9, v8, v9

    const-string v14, "/"

    invoke-virtual {v9, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 4657
    const/4 v9, 0x0

    aget-object v9, v5, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    const/4 v9, 0x1

    aget-object v9, v5, v9

    .line 4658
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v16

    div-double v12, v14, v16

    .line 4660
    .local v12, "seconds":D
    const-wide/high16 v14, 0x404e000000000000L    # 60.0

    div-double v14, v6, v14

    add-double/2addr v14, v2

    const-wide v16, 0x40ac200000000000L    # 3600.0

    div-double v16, v12, v16

    add-double v10, v14, v16

    .line 4661
    .local v10, "result":D
    const-string v9, "S"

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "W"

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 4662
    :cond_0
    neg-double v10, v10

    .line 4664
    .end local v10    # "result":D
    :cond_1
    return-wide v10

    .line 4663
    .restart local v10    # "result":D
    :cond_2
    const-string v9, "N"

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, "E"

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 4667
    new-instance v9, Ljava/lang/IllegalArgumentException;

    invoke-direct {v9}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v9
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4669
    .end local v2    # "degrees":D
    .end local v5    # "pair":[Ljava/lang/String;
    .end local v6    # "minutes":D
    .end local v8    # "parts":[Ljava/lang/String;
    .end local v10    # "result":D
    .end local v12    # "seconds":D
    :catch_0
    move-exception v4

    .line 4671
    .local v4, "e":Ljava/lang/RuntimeException;
    :goto_0
    new-instance v9, Ljava/lang/IllegalArgumentException;

    invoke-direct {v9}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v9

    .line 4669
    .end local v4    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method private static convertToLongArray(Ljava/lang/Object;)[J
    .locals 6
    .param p0, "inputObj"    # Ljava/lang/Object;

    .prologue
    .line 6470
    instance-of v3, p0, [I

    if-eqz v3, :cond_0

    .line 6471
    check-cast p0, [I

    .end local p0    # "inputObj":Ljava/lang/Object;
    move-object v1, p0

    check-cast v1, [I

    .line 6472
    .local v1, "input":[I
    array-length v3, v1

    new-array v2, v3, [J

    .line 6473
    .local v2, "result":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_1

    .line 6474
    aget v3, v1, v0

    int-to-long v4, v3

    aput-wide v4, v2, v0

    .line 6473
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6477
    .end local v0    # "i":I
    .end local v1    # "input":[I
    .end local v2    # "result":[J
    .restart local p0    # "inputObj":Ljava/lang/Object;
    :cond_0
    instance-of v3, p0, [J

    if-eqz v3, :cond_2

    .line 6478
    check-cast p0, [J

    .end local p0    # "inputObj":Ljava/lang/Object;
    check-cast p0, [J

    move-object v2, p0

    .line 6480
    :cond_1
    :goto_1
    return-object v2

    .restart local p0    # "inputObj":Ljava/lang/Object;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private getExifAttribute(Ljava/lang/String;)Landroid/support/media/ExifInterface$ExifAttribute;
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 3747
    const-string v2, "ISOSpeedRatings"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3752
    const-string p1, "PhotographicSensitivity"

    .line 3756
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Landroid/support/media/ExifInterface;->EXIF_TAGS:[[Landroid/support/media/ExifInterface$ExifTag;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 3757
    iget-object v2, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/media/ExifInterface$ExifAttribute;

    .line 3758
    .local v1, "value":Landroid/support/media/ExifInterface$ExifAttribute;
    if-eqz v1, :cond_1

    .line 3762
    .end local v1    # "value":Landroid/support/media/ExifInterface$ExifAttribute;
    :goto_1
    return-object v1

    .line 3756
    .restart local v1    # "value":Landroid/support/media/ExifInterface$ExifAttribute;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3762
    .end local v1    # "value":Landroid/support/media/ExifInterface$ExifAttribute;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getJpegAttributes(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;II)V
    .locals 10
    .param p1, "in"    # Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;
    .param p2, "jpegOffset"    # I
    .param p3, "imageType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4786
    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v5}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 4789
    int-to-long v6, p2

    invoke-virtual {p1, v6, v7}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 4790
    move v1, p2

    .line 4793
    .local v1, "bytesRead":I
    invoke-virtual {p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    move-result v4

    .local v4, "marker":B
    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 4794
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid marker: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    and-int/lit16 v7, v4, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 4796
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 4797
    invoke-virtual {p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    move-result v5

    const/16 v6, -0x28

    if-eq v5, v6, :cond_1

    .line 4798
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid marker: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    and-int/lit16 v7, v4, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 4800
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 4802
    :goto_0
    invoke-virtual {p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    move-result v4

    .line 4803
    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 4804
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid marker:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    and-int/lit16 v7, v4, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 4806
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 4807
    invoke-virtual {p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    move-result v4

    .line 4811
    add-int/lit8 v1, v1, 0x1

    .line 4815
    const/16 v5, -0x27

    if-eq v4, v5, :cond_3

    const/16 v5, -0x26

    if-ne v4, v5, :cond_4

    .line 4916
    :cond_3
    iget-object v5, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v5}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 4917
    return-void

    .line 4818
    :cond_4
    invoke-virtual {p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v5

    add-int/lit8 v3, v5, -0x2

    .line 4819
    .local v3, "length":I
    add-int/lit8 v1, v1, 0x2

    .line 4824
    if-gez v3, :cond_5

    .line 4825
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Invalid length"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 4827
    :cond_5
    sparse-switch v4, :sswitch_data_0

    .line 4907
    :cond_6
    :goto_1
    if-gez v3, :cond_c

    .line 4908
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Invalid length"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 4832
    :sswitch_0
    const/4 v5, 0x6

    if-lt v3, v5, :cond_6

    .line 4836
    const/4 v5, 0x6

    new-array v2, v5, [B

    .line 4837
    .local v2, "identifier":[B
    invoke-virtual {p1, v2}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v5

    const/4 v6, 0x6

    if-eq v5, v6, :cond_7

    .line 4838
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Invalid exif"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 4840
    :cond_7
    add-int/lit8 v1, v1, 0x6

    .line 4841
    add-int/lit8 v3, v3, -0x6

    .line 4842
    sget-object v5, Landroid/support/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    invoke-static {v2, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 4846
    if-gtz v3, :cond_8

    .line 4847
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Invalid exif"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 4853
    :cond_8
    iput v1, p0, Landroid/support/media/ExifInterface;->mExifOffset:I

    .line 4855
    new-array v0, v3, [B

    .line 4856
    .local v0, "bytes":[B
    invoke-virtual {p1, v0}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v5

    if-eq v5, v3, :cond_9

    .line 4857
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Invalid exif"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 4859
    :cond_9
    add-int/2addr v1, v3

    .line 4860
    const/4 v3, 0x0

    .line 4862
    invoke-direct {p0, v0, p3}, Landroid/support/media/ExifInterface;->readExifSegment([BI)V

    goto :goto_1

    .line 4867
    .end local v0    # "bytes":[B
    .end local v2    # "identifier":[B
    :sswitch_1
    new-array v0, v3, [B

    .line 4868
    .restart local v0    # "bytes":[B
    invoke-virtual {p1, v0}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v5

    if-eq v5, v3, :cond_a

    .line 4869
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Invalid exif"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 4871
    :cond_a
    const/4 v3, 0x0

    .line 4872
    const-string v5, "UserComment"

    invoke-virtual {p0, v5}, Landroid/support/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_6

    .line 4873
    iget-object v5, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const-string v6, "UserComment"

    new-instance v7, Ljava/lang/String;

    sget-object v8, Landroid/support/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v7, v0, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v7}, Landroid/support/media/ExifInterface$ExifAttribute;->createString(Ljava/lang/String;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 4892
    .end local v0    # "bytes":[B
    :sswitch_2
    const/4 v5, 0x1

    invoke-virtual {p1, v5}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_b

    .line 4893
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Invalid SOFx"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 4895
    :cond_b
    iget-object v5, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v5, v5, p3

    const-string v6, "ImageLength"

    .line 4896
    invoke-virtual {p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v7

    int-to-long v8, v7

    iget-object v7, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4895
    invoke-static {v8, v9, v7}, Landroid/support/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4897
    iget-object v5, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v5, v5, p3

    const-string v6, "ImageWidth"

    .line 4898
    invoke-virtual {p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v7

    int-to-long v8, v7

    iget-object v7, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4897
    invoke-static {v8, v9, v7}, Landroid/support/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4899
    add-int/lit8 v3, v3, -0x5

    .line 4900
    goto/16 :goto_1

    .line 4910
    :cond_c
    invoke-virtual {p1, v3}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    move-result v5

    if-eq v5, v3, :cond_d

    .line 4911
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Invalid JPEG segment"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 4913
    :cond_d
    add-int/2addr v1, v3

    .line 4914
    goto/16 :goto_0

    .line 4827
    nop

    :sswitch_data_0
    .sparse-switch
        -0x40 -> :sswitch_2
        -0x3f -> :sswitch_2
        -0x3e -> :sswitch_2
        -0x3d -> :sswitch_2
        -0x3b -> :sswitch_2
        -0x3a -> :sswitch_2
        -0x39 -> :sswitch_2
        -0x37 -> :sswitch_2
        -0x36 -> :sswitch_2
        -0x35 -> :sswitch_2
        -0x33 -> :sswitch_2
        -0x32 -> :sswitch_2
        -0x31 -> :sswitch_2
        -0x1f -> :sswitch_0
        -0x2 -> :sswitch_1
    .end sparse-switch
.end method

.method private getMimeType(Ljava/io/BufferedInputStream;)I
    .locals 2
    .param p1, "in"    # Ljava/io/BufferedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x1388

    .line 4684
    invoke-virtual {p1, v1}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 4685
    new-array v0, v1, [B

    .line 4686
    .local v0, "signatureCheckBytes":[B
    invoke-virtual {p1, v0}, Ljava/io/BufferedInputStream;->read([B)I

    .line 4687
    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->reset()V

    .line 4688
    invoke-static {v0}, Landroid/support/media/ExifInterface;->isJpegFormat([B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4689
    const/4 v1, 0x4

    .line 4698
    :goto_0
    return v1

    .line 4690
    :cond_0
    invoke-direct {p0, v0}, Landroid/support/media/ExifInterface;->isRafFormat([B)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4691
    const/16 v1, 0x9

    goto :goto_0

    .line 4692
    :cond_1
    invoke-direct {p0, v0}, Landroid/support/media/ExifInterface;->isOrfFormat([B)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4693
    const/4 v1, 0x7

    goto :goto_0

    .line 4694
    :cond_2
    invoke-direct {p0, v0}, Landroid/support/media/ExifInterface;->isRw2Format([B)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4695
    const/16 v1, 0xa

    goto :goto_0

    .line 4698
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getOrfAttributes(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 15
    .param p1, "in"    # Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5031
    invoke-direct/range {p0 .. p1}, Landroid/support/media/ExifInterface;->getRawAttributes(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 5036
    iget-object v12, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v13, 0x1

    aget-object v12, v12, v13

    const-string v13, "MakerNote"

    .line 5037
    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/media/ExifInterface$ExifAttribute;

    .line 5038
    .local v4, "makerNoteAttribute":Landroid/support/media/ExifInterface$ExifAttribute;
    if-eqz v4, :cond_3

    .line 5040
    new-instance v5, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;

    iget-object v12, v4, Landroid/support/media/ExifInterface$ExifAttribute;->bytes:[B

    invoke-direct {v5, v12}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    .line 5042
    .local v5, "makerNoteDataInputStream":Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;
    iget-object v12, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v5, v12}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 5046
    sget-object v12, Landroid/support/media/ExifInterface;->ORF_MAKER_NOTE_HEADER_1:[B

    array-length v12, v12

    new-array v6, v12, [B

    .line 5047
    .local v6, "makerNoteHeader1Bytes":[B
    invoke-virtual {v5, v6}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 5048
    const-wide/16 v12, 0x0

    invoke-virtual {v5, v12, v13}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 5049
    sget-object v12, Landroid/support/media/ExifInterface;->ORF_MAKER_NOTE_HEADER_2:[B

    array-length v12, v12

    new-array v7, v12, [B

    .line 5050
    .local v7, "makerNoteHeader2Bytes":[B
    invoke-virtual {v5, v7}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 5052
    sget-object v12, Landroid/support/media/ExifInterface;->ORF_MAKER_NOTE_HEADER_1:[B

    invoke-static {v6, v12}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 5053
    const-wide/16 v12, 0x8

    invoke-virtual {v5, v12, v13}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 5059
    :cond_0
    :goto_0
    const/4 v12, 0x6

    invoke-direct {p0, v5, v12}, Landroid/support/media/ExifInterface;->readImageFileDirectory(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 5062
    iget-object v12, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v13, 0x7

    aget-object v12, v12, v13

    const-string v13, "PreviewImageStart"

    .line 5063
    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/media/ExifInterface$ExifAttribute;

    .line 5064
    .local v3, "imageStartAttribute":Landroid/support/media/ExifInterface$ExifAttribute;
    iget-object v12, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v13, 0x7

    aget-object v12, v12, v13

    const-string v13, "PreviewImageLength"

    .line 5065
    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/media/ExifInterface$ExifAttribute;

    .line 5067
    .local v2, "imageLengthAttribute":Landroid/support/media/ExifInterface$ExifAttribute;
    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    .line 5068
    iget-object v12, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v13, 0x5

    aget-object v12, v12, v13

    const-string v13, "JPEGInterchangeFormat"

    invoke-virtual {v12, v13, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5070
    iget-object v12, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v13, 0x5

    aget-object v12, v12, v13

    const-string v13, "JPEGInterchangeFormatLength"

    invoke-virtual {v12, v13, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5077
    :cond_1
    iget-object v12, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/16 v13, 0x8

    aget-object v12, v12, v13

    const-string v13, "AspectFrame"

    .line 5078
    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/media/ExifInterface$ExifAttribute;

    .line 5079
    .local v0, "aspectFrameAttribute":Landroid/support/media/ExifInterface$ExifAttribute;
    if-eqz v0, :cond_3

    .line 5080
    iget-object v12, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v0, v12}, Landroid/support/media/ExifInterface$ExifAttribute;->access$500(Landroid/support/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [I

    move-object v1, v12

    check-cast v1, [I

    .line 5081
    .local v1, "aspectFrameValues":[I
    if-eqz v1, :cond_2

    array-length v12, v1

    const/4 v13, 0x4

    if-eq v12, v13, :cond_5

    .line 5082
    :cond_2
    const-string v12, "ExifInterface"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Invalid aspect frame values. frame="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 5083
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 5082
    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5106
    .end local v0    # "aspectFrameAttribute":Landroid/support/media/ExifInterface$ExifAttribute;
    .end local v1    # "aspectFrameValues":[I
    .end local v2    # "imageLengthAttribute":Landroid/support/media/ExifInterface$ExifAttribute;
    .end local v3    # "imageStartAttribute":Landroid/support/media/ExifInterface$ExifAttribute;
    .end local v5    # "makerNoteDataInputStream":Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;
    .end local v6    # "makerNoteHeader1Bytes":[B
    .end local v7    # "makerNoteHeader2Bytes":[B
    :cond_3
    :goto_1
    return-void

    .line 5054
    .restart local v5    # "makerNoteDataInputStream":Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local v6    # "makerNoteHeader1Bytes":[B
    .restart local v7    # "makerNoteHeader2Bytes":[B
    :cond_4
    sget-object v12, Landroid/support/media/ExifInterface;->ORF_MAKER_NOTE_HEADER_2:[B

    invoke-static {v7, v12}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 5055
    const-wide/16 v12, 0xc

    invoke-virtual {v5, v12, v13}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    goto/16 :goto_0

    .line 5086
    .restart local v0    # "aspectFrameAttribute":Landroid/support/media/ExifInterface$ExifAttribute;
    .restart local v1    # "aspectFrameValues":[I
    .restart local v2    # "imageLengthAttribute":Landroid/support/media/ExifInterface$ExifAttribute;
    .restart local v3    # "imageStartAttribute":Landroid/support/media/ExifInterface$ExifAttribute;
    :cond_5
    const/4 v12, 0x2

    aget v12, v1, v12

    const/4 v13, 0x0

    aget v13, v1, v13

    if-le v12, v13, :cond_3

    const/4 v12, 0x3

    aget v12, v1, v12

    const/4 v13, 0x1

    aget v13, v1, v13

    if-le v12, v13, :cond_3

    .line 5088
    const/4 v12, 0x2

    aget v12, v1, v12

    const/4 v13, 0x0

    aget v13, v1, v13

    sub-int/2addr v12, v13

    add-int/lit8 v10, v12, 0x1

    .line 5089
    .local v10, "primaryImageWidth":I
    const/4 v12, 0x3

    aget v12, v1, v12

    const/4 v13, 0x1

    aget v13, v1, v13

    sub-int/2addr v12, v13

    add-int/lit8 v8, v12, 0x1

    .line 5091
    .local v8, "primaryImageLength":I
    if-ge v10, v8, :cond_6

    .line 5092
    add-int/2addr v10, v8

    .line 5093
    sub-int v8, v10, v8

    .line 5094
    sub-int/2addr v10, v8

    .line 5096
    :cond_6
    iget-object v12, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5097
    invoke-static {v10, v12}, Landroid/support/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object v11

    .line 5098
    .local v11, "primaryImageWidthAttribute":Landroid/support/media/ExifInterface$ExifAttribute;
    iget-object v12, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5099
    invoke-static {v8, v12}, Landroid/support/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object v9

    .line 5101
    .local v9, "primaryImageLengthAttribute":Landroid/support/media/ExifInterface$ExifAttribute;
    iget-object v12, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v13, 0x0

    aget-object v12, v12, v13

    const-string v13, "ImageWidth"

    invoke-virtual {v12, v13, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5102
    iget-object v12, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v13, 0x0

    aget-object v12, v12, v13

    const-string v13, "ImageLength"

    invoke-virtual {v12, v13, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private getRafAttributes(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 14
    .param p1, "in"    # Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4972
    const/16 v12, 0x54

    invoke-virtual {p1, v12}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    .line 4973
    const/4 v12, 0x4

    new-array v6, v12, [B

    .line 4974
    .local v6, "jpegOffsetBytes":[B
    const/4 v12, 0x4

    new-array v0, v12, [B

    .line 4975
    .local v0, "cfaHeaderOffsetBytes":[B
    invoke-virtual {p1, v6}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    .line 4977
    const/4 v12, 0x4

    invoke-virtual {p1, v12}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    .line 4978
    invoke-virtual {p1, v0}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    .line 4979
    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    .line 4980
    .local v10, "rafJpegOffset":I
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v9

    .line 4983
    .local v9, "rafCfaHeaderOffset":I
    const/4 v12, 0x5

    invoke-direct {p0, p1, v10, v12}, Landroid/support/media/ExifInterface;->getJpegAttributes(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;II)V

    .line 4986
    int-to-long v12, v9

    invoke-virtual {p1, v12, v13}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 4989
    sget-object v12, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v12}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 4990
    invoke-virtual {p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v8

    .line 4997
    .local v8, "numberOfDirectoryEntry":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v8, :cond_0

    .line 4998
    invoke-virtual {p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v11

    .line 4999
    .local v11, "tagNumber":I
    invoke-virtual {p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v7

    .line 5000
    .local v7, "numberOfBytes":I
    sget-object v12, Landroid/support/media/ExifInterface;->TAG_RAF_IMAGE_SIZE:Landroid/support/media/ExifInterface$ExifTag;

    iget v12, v12, Landroid/support/media/ExifInterface$ExifTag;->number:I

    if-ne v11, v12, :cond_1

    .line 5001
    invoke-virtual {p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v2

    .line 5002
    .local v2, "imageLength":I
    invoke-virtual {p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v4

    .line 5003
    .local v4, "imageWidth":I
    iget-object v12, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5004
    invoke-static {v2, v12}, Landroid/support/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object v3

    .line 5005
    .local v3, "imageLengthAttribute":Landroid/support/media/ExifInterface$ExifAttribute;
    iget-object v12, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5006
    invoke-static {v4, v12}, Landroid/support/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object v5

    .line 5007
    .local v5, "imageWidthAttribute":Landroid/support/media/ExifInterface$ExifAttribute;
    iget-object v12, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v13, 0x0

    aget-object v12, v12, v13

    const-string v13, "ImageLength"

    invoke-virtual {v12, v13, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5008
    iget-object v12, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v13, 0x0

    aget-object v12, v12, v13

    const-string v13, "ImageWidth"

    invoke-virtual {v12, v13, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5016
    .end local v2    # "imageLength":I
    .end local v3    # "imageLengthAttribute":Landroid/support/media/ExifInterface$ExifAttribute;
    .end local v4    # "imageWidth":I
    .end local v5    # "imageWidthAttribute":Landroid/support/media/ExifInterface$ExifAttribute;
    .end local v7    # "numberOfBytes":I
    .end local v11    # "tagNumber":I
    :cond_0
    return-void

    .line 5014
    .restart local v7    # "numberOfBytes":I
    .restart local v11    # "tagNumber":I
    :cond_1
    invoke-virtual {p1, v7}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    .line 4997
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getRawAttributes(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 8
    .param p1, "in"    # Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x9

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 4921
    invoke-virtual {p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->available()I

    move-result v3

    invoke-direct {p0, p1, v3}, Landroid/support/media/ExifInterface;->parseTiffHeaders(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 4924
    invoke-direct {p0, p1, v4}, Landroid/support/media/ExifInterface;->readImageFileDirectory(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 4927
    invoke-direct {p0, p1, v4}, Landroid/support/media/ExifInterface;->updateImageSizeValues(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 4928
    const/4 v3, 0x5

    invoke-direct {p0, p1, v3}, Landroid/support/media/ExifInterface;->updateImageSizeValues(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 4929
    const/4 v3, 0x4

    invoke-direct {p0, p1, v3}, Landroid/support/media/ExifInterface;->updateImageSizeValues(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 4932
    invoke-direct {p0, p1}, Landroid/support/media/ExifInterface;->validateImages(Ljava/io/InputStream;)V

    .line 4934
    iget v3, p0, Landroid/support/media/ExifInterface;->mMimeType:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    .line 4937
    iget-object v3, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v6

    const-string v4, "MakerNote"

    .line 4938
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/media/ExifInterface$ExifAttribute;

    .line 4939
    .local v1, "makerNoteAttribute":Landroid/support/media/ExifInterface$ExifAttribute;
    if-eqz v1, :cond_0

    .line 4941
    new-instance v2, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;

    iget-object v3, v1, Landroid/support/media/ExifInterface$ExifAttribute;->bytes:[B

    invoke-direct {v2, v3}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    .line 4943
    .local v2, "makerNoteDataInputStream":Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;
    iget-object v3, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 4946
    const-wide/16 v4, 0x6

    invoke-virtual {v2, v4, v5}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 4949
    invoke-direct {p0, v2, v7}, Landroid/support/media/ExifInterface;->readImageFileDirectory(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 4952
    iget-object v3, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v7

    const-string v4, "ColorSpace"

    .line 4953
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/media/ExifInterface$ExifAttribute;

    .line 4954
    .local v0, "colorSpaceAttribute":Landroid/support/media/ExifInterface$ExifAttribute;
    if-eqz v0, :cond_0

    .line 4955
    iget-object v3, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v6

    const-string v4, "ColorSpace"

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4959
    .end local v0    # "colorSpaceAttribute":Landroid/support/media/ExifInterface$ExifAttribute;
    .end local v1    # "makerNoteAttribute":Landroid/support/media/ExifInterface$ExifAttribute;
    .end local v2    # "makerNoteDataInputStream":Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;
    :cond_0
    return-void
.end method

.method private getRw2Attributes(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 7
    .param p1, "in"    # Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 5113
    invoke-direct {p0, p1}, Landroid/support/media/ExifInterface;->getRawAttributes(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 5116
    iget-object v3, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v5

    const-string v4, "JpgFromRaw"

    .line 5117
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/media/ExifInterface$ExifAttribute;

    .line 5118
    .local v1, "jpgFromRawAttribute":Landroid/support/media/ExifInterface$ExifAttribute;
    if-eqz v1, :cond_0

    .line 5119
    iget v3, p0, Landroid/support/media/ExifInterface;->mRw2JpgFromRawOffset:I

    const/4 v4, 0x5

    invoke-direct {p0, p1, v3, v4}, Landroid/support/media/ExifInterface;->getJpegAttributes(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;II)V

    .line 5123
    :cond_0
    iget-object v3, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v5

    const-string v4, "ISO"

    .line 5124
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/media/ExifInterface$ExifAttribute;

    .line 5125
    .local v2, "rw2IsoAttribute":Landroid/support/media/ExifInterface$ExifAttribute;
    iget-object v3, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v6

    const-string v4, "PhotographicSensitivity"

    .line 5126
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/media/ExifInterface$ExifAttribute;

    .line 5127
    .local v0, "exifIsoAttribute":Landroid/support/media/ExifInterface$ExifAttribute;
    if-eqz v2, :cond_1

    if-nez v0, :cond_1

    .line 5129
    iget-object v3, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v6

    const-string v4, "PhotographicSensitivity"

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5131
    :cond_1
    return-void
.end method

.method private static guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;
    .locals 18
    .param p0, "entryValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6018
    const-string v14, ","

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 6019
    const-string v14, ","

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 6020
    .local v3, "entryValues":[Ljava/lang/String;
    const/4 v14, 0x0

    aget-object v14, v3, v14

    invoke-static {v14}, Landroid/support/media/ExifInterface;->guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v2

    .line 6021
    .local v2, "dataFormat":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v14, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_1

    .line 6087
    .end local v2    # "dataFormat":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v3    # "entryValues":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .line 6024
    .restart local v2    # "dataFormat":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v3    # "entryValues":[Ljava/lang/String;
    :cond_1
    const/4 v8, 0x1

    .local v8, "i":I
    :goto_1
    array-length v14, v3

    if-ge v8, v14, :cond_0

    .line 6025
    aget-object v14, v3, v8

    invoke-static {v14}, Landroid/support/media/ExifInterface;->guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v7

    .line 6026
    .local v7, "guessDataFormat":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v6, -0x1

    .local v6, "first":I
    const/4 v13, -0x1

    .line 6027
    .local v13, "second":I
    iget-object v14, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v14, Ljava/lang/Integer;

    iget-object v15, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v14, v15}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    iget-object v14, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v14, Ljava/lang/Integer;

    iget-object v15, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 6028
    invoke-virtual {v14, v15}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 6029
    :cond_2
    iget-object v14, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 6031
    :cond_3
    iget-object v14, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_5

    iget-object v14, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v14, Ljava/lang/Integer;

    iget-object v15, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v14, v15}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    iget-object v14, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v14, Ljava/lang/Integer;

    iget-object v15, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 6032
    invoke-virtual {v14, v15}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 6033
    :cond_4
    iget-object v14, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 6035
    :cond_5
    const/4 v14, -0x1

    if-ne v6, v14, :cond_6

    const/4 v14, -0x1

    if-ne v13, v14, :cond_6

    .line 6036
    new-instance v2, Landroid/util/Pair;

    .end local v2    # "dataFormat":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v14, 0x2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, -0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v2, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 6038
    .restart local v2    # "dataFormat":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_6
    const/4 v14, -0x1

    if-ne v6, v14, :cond_8

    .line 6039
    new-instance v2, Landroid/util/Pair;

    .end local v2    # "dataFormat":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, -0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v2, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6024
    .restart local v2    # "dataFormat":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_7
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 6042
    :cond_8
    const/4 v14, -0x1

    if-ne v13, v14, :cond_7

    .line 6043
    new-instance v2, Landroid/util/Pair;

    .end local v2    # "dataFormat":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, -0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v2, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6044
    .restart local v2    # "dataFormat":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    goto :goto_2

    .line 6050
    .end local v2    # "dataFormat":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v3    # "entryValues":[Ljava/lang/String;
    .end local v6    # "first":I
    .end local v7    # "guessDataFormat":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v8    # "i":I
    .end local v13    # "second":I
    :cond_9
    const-string v14, "/"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_f

    .line 6051
    const-string v14, "/"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 6052
    .local v12, "rationalNumber":[Ljava/lang/String;
    array-length v14, v12

    const/4 v15, 0x2

    if-ne v14, v15, :cond_b

    .line 6054
    const/4 v14, 0x0

    :try_start_0
    aget-object v14, v12, v14

    invoke-static {v14}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    double-to-long v10, v14

    .line 6055
    .local v10, "numerator":J
    const/4 v14, 0x1

    aget-object v14, v12, v14

    invoke-static {v14}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    double-to-long v4, v14

    .line 6056
    .local v4, "denominator":J
    const-wide/16 v14, 0x0

    cmp-long v14, v10, v14

    if-ltz v14, :cond_a

    const-wide/16 v14, 0x0

    cmp-long v14, v4, v14

    if-gez v14, :cond_c

    .line 6057
    :cond_a
    new-instance v2, Landroid/util/Pair;

    const/16 v14, 0xa

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, -0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v2, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 6063
    .end local v4    # "denominator":J
    .end local v10    # "numerator":J
    :catch_0
    move-exception v14

    .line 6067
    :cond_b
    new-instance v2, Landroid/util/Pair;

    const/4 v14, 0x2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, -0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v2, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 6059
    .restart local v4    # "denominator":J
    .restart local v10    # "numerator":J
    :cond_c
    const-wide/32 v14, 0x7fffffff

    cmp-long v14, v10, v14

    if-gtz v14, :cond_d

    const-wide/32 v14, 0x7fffffff

    cmp-long v14, v4, v14

    if-lez v14, :cond_e

    .line 6060
    :cond_d
    :try_start_1
    new-instance v2, Landroid/util/Pair;

    const/4 v14, 0x5

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, -0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v2, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 6062
    :cond_e
    new-instance v2, Landroid/util/Pair;

    const/16 v14, 0xa

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x5

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v2, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 6070
    .end local v4    # "denominator":J
    .end local v10    # "numerator":J
    .end local v12    # "rationalNumber":[Ljava/lang/String;
    :cond_f
    :try_start_2
    invoke-static/range {p0 .. p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 6071
    .local v9, "longValue":Ljava/lang/Long;
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-ltz v14, :cond_10

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const-wide/32 v16, 0xffff

    cmp-long v14, v14, v16

    if-gtz v14, :cond_10

    .line 6072
    new-instance v2, Landroid/util/Pair;

    const/4 v14, 0x3

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x4

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v2, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 6078
    .end local v9    # "longValue":Ljava/lang/Long;
    :catch_1
    move-exception v14

    .line 6082
    :try_start_3
    invoke-static/range {p0 .. p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 6083
    new-instance v2, Landroid/util/Pair;

    const/16 v14, 0xc

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, -0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v2, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 6084
    :catch_2
    move-exception v14

    .line 6087
    new-instance v2, Landroid/util/Pair;

    const/4 v14, 0x2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, -0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v2, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 6074
    .restart local v9    # "longValue":Ljava/lang/Long;
    :cond_10
    :try_start_4
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-gez v14, :cond_11

    .line 6075
    new-instance v2, Landroid/util/Pair;

    const/16 v14, 0x9

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, -0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v2, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 6077
    :cond_11
    new-instance v2, Landroid/util/Pair;

    const/4 v14, 0x4

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, -0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v2, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0
.end method

.method private handleThumbnailFromJfif(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V
    .locals 8
    .param p1, "in"    # Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;
    .param p2, "thumbnailData"    # Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5574
    const-string v5, "JPEGInterchangeFormat"

    .line 5575
    invoke-virtual {p2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/media/ExifInterface$ExifAttribute;

    .line 5576
    .local v0, "jpegInterchangeFormatAttribute":Landroid/support/media/ExifInterface$ExifAttribute;
    const-string v5, "JPEGInterchangeFormatLength"

    .line 5577
    invoke-virtual {p2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/media/ExifInterface$ExifAttribute;

    .line 5578
    .local v1, "jpegInterchangeFormatLengthAttribute":Landroid/support/media/ExifInterface$ExifAttribute;
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 5580
    iget-object v5, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v5}, Landroid/support/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v4

    .line 5581
    .local v4, "thumbnailOffset":I
    iget-object v5, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v5}, Landroid/support/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v3

    .line 5584
    .local v3, "thumbnailLength":I
    invoke-virtual {p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->available()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 5585
    iget v5, p0, Landroid/support/media/ExifInterface;->mMimeType:I

    const/4 v6, 0x4

    if-eq v5, v6, :cond_0

    iget v5, p0, Landroid/support/media/ExifInterface;->mMimeType:I

    const/16 v6, 0x9

    if-eq v5, v6, :cond_0

    iget v5, p0, Landroid/support/media/ExifInterface;->mMimeType:I

    const/16 v6, 0xa

    if-ne v5, v6, :cond_3

    .line 5587
    :cond_0
    iget v5, p0, Landroid/support/media/ExifInterface;->mExifOffset:I

    add-int/2addr v4, v5

    .line 5596
    :cond_1
    :goto_0
    if-lez v4, :cond_2

    if-lez v3, :cond_2

    .line 5597
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/support/media/ExifInterface;->mHasThumbnail:Z

    .line 5598
    iput v4, p0, Landroid/support/media/ExifInterface;->mThumbnailOffset:I

    .line 5599
    iput v3, p0, Landroid/support/media/ExifInterface;->mThumbnailLength:I

    .line 5600
    iget-object v5, p0, Landroid/support/media/ExifInterface;->mFilename:Ljava/lang/String;

    if-nez v5, :cond_2

    iget-object v5, p0, Landroid/support/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    if-nez v5, :cond_2

    .line 5602
    new-array v2, v3, [B

    .line 5603
    .local v2, "thumbnailBytes":[B
    int-to-long v6, v4

    invoke-virtual {p1, v6, v7}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 5604
    invoke-virtual {p1, v2}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 5605
    iput-object v2, p0, Landroid/support/media/ExifInterface;->mThumbnailBytes:[B

    .line 5609
    .end local v2    # "thumbnailBytes":[B
    .end local v3    # "thumbnailLength":I
    .end local v4    # "thumbnailOffset":I
    :cond_2
    return-void

    .line 5588
    .restart local v3    # "thumbnailLength":I
    .restart local v4    # "thumbnailOffset":I
    :cond_3
    iget v5, p0, Landroid/support/media/ExifInterface;->mMimeType:I

    const/4 v6, 0x7

    if-ne v5, v6, :cond_1

    .line 5590
    iget v5, p0, Landroid/support/media/ExifInterface;->mOrfMakerNoteOffset:I

    add-int/2addr v4, v5

    goto :goto_0
.end method

.method private handleThumbnailFromStrips(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V
    .locals 22
    .param p1, "in"    # Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;
    .param p2, "thumbnailData"    # Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5614
    const-string v20, "StripOffsets"

    .line 5615
    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/support/media/ExifInterface$ExifAttribute;

    .line 5616
    .local v16, "stripOffsetsAttribute":Landroid/support/media/ExifInterface$ExifAttribute;
    const-string v20, "StripByteCounts"

    .line 5617
    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/support/media/ExifInterface$ExifAttribute;

    .line 5619
    .local v12, "stripByteCountsAttribute":Landroid/support/media/ExifInterface$ExifAttribute;
    if-eqz v16, :cond_0

    if-eqz v12, :cond_0

    .line 5620
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v20, v0

    .line 5621
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/support/media/ExifInterface$ExifAttribute;->access$500(Landroid/support/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/support/media/ExifInterface;->convertToLongArray(Ljava/lang/Object;)[J

    move-result-object v15

    .line 5622
    .local v15, "stripOffsets":[J
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v20, v0

    .line 5623
    move-object/from16 v0, v20

    invoke-static {v12, v0}, Landroid/support/media/ExifInterface$ExifAttribute;->access$500(Landroid/support/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/support/media/ExifInterface;->convertToLongArray(Ljava/lang/Object;)[J

    move-result-object v11

    .line 5625
    .local v11, "stripByteCounts":[J
    if-nez v15, :cond_1

    .line 5626
    const-string v20, "ExifInterface"

    const-string/jumbo v21, "stripOffsets should not be null."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5671
    .end local v11    # "stripByteCounts":[J
    .end local v15    # "stripOffsets":[J
    :cond_0
    :goto_0
    return-void

    .line 5629
    .restart local v11    # "stripByteCounts":[J
    .restart local v15    # "stripOffsets":[J
    :cond_1
    if-nez v11, :cond_2

    .line 5630
    const-string v20, "ExifInterface"

    const-string/jumbo v21, "stripByteCounts should not be null."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5634
    :cond_2
    const-wide/16 v18, 0x0

    .line 5635
    .local v18, "totalStripByteCount":J
    array-length v0, v11

    move/from16 v21, v0

    const/16 v20, 0x0

    :goto_1
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_3

    aget-wide v4, v11, v20

    .line 5636
    .local v4, "byteCount":J
    add-long v18, v18, v4

    .line 5635
    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    .line 5640
    .end local v4    # "byteCount":J
    :cond_3
    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    new-array v0, v0, [B

    move-object/from16 v17, v0

    .line 5642
    .local v17, "totalStripBytes":[B
    const/4 v7, 0x0

    .line 5643
    .local v7, "bytesRead":I
    const/4 v6, 0x0

    .line 5644
    .local v6, "bytesAdded":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    array-length v0, v15

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v8, v0, :cond_5

    .line 5645
    aget-wide v20, v15, v8

    move-wide/from16 v0, v20

    long-to-int v14, v0

    .line 5646
    .local v14, "stripOffset":I
    aget-wide v20, v11, v8

    move-wide/from16 v0, v20

    long-to-int v10, v0

    .line 5649
    .local v10, "stripByteCount":I
    sub-int v9, v14, v7

    .line 5650
    .local v9, "skipBytes":I
    if-gez v9, :cond_4

    .line 5651
    const-string v20, "ExifInterface"

    const-string v21, "Invalid strip offset value"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5653
    :cond_4
    int-to-long v0, v9

    move-wide/from16 v20, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 5654
    add-int/2addr v7, v9

    .line 5657
    new-array v13, v10, [B

    .line 5658
    .local v13, "stripBytes":[B
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    .line 5659
    add-int/2addr v7, v10

    .line 5662
    const/16 v20, 0x0

    array-length v0, v13

    move/from16 v21, v0

    move/from16 v0, v20

    move-object/from16 v1, v17

    move/from16 v2, v21

    invoke-static {v13, v0, v1, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5664
    array-length v0, v13

    move/from16 v20, v0

    add-int v6, v6, v20

    .line 5644
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 5667
    .end local v9    # "skipBytes":I
    .end local v10    # "stripByteCount":I
    .end local v13    # "stripBytes":[B
    .end local v14    # "stripOffset":I
    :cond_5
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/media/ExifInterface;->mHasThumbnail:Z

    .line 5668
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/support/media/ExifInterface;->mThumbnailBytes:[B

    .line 5669
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/media/ExifInterface;->mThumbnailLength:I

    goto/16 :goto_0
.end method

.method private static isJpegFormat([B)Z
    .locals 3
    .param p0, "signatureCheckBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4706
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Landroid/support/media/ExifInterface;->JPEG_SIGNATURE:[B

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 4707
    aget-byte v1, p0, v0

    sget-object v2, Landroid/support/media/ExifInterface;->JPEG_SIGNATURE:[B

    aget-byte v2, v2, v0

    if-eq v1, v2, :cond_0

    .line 4708
    const/4 v1, 0x0

    .line 4711
    :goto_1
    return v1

    .line 4706
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4711
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private isOrfFormat([B)Z
    .locals 3
    .param p1, "signatureCheckBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4739
    new-instance v1, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v1, p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    .line 4742
    .local v1, "signatureInputStream":Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;
    invoke-direct {p0, v1}, Landroid/support/media/ExifInterface;->readByteOrder(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;

    move-result-object v2

    iput-object v2, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4744
    iget-object v2, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 4746
    invoke-virtual {v1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v0

    .line 4747
    .local v0, "orfSignature":S
    invoke-virtual {v1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    .line 4748
    const/16 v2, 0x4f52

    if-eq v0, v2, :cond_0

    const/16 v2, 0x5352

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isRafFormat([B)Z
    .locals 4
    .param p1, "signatureCheckBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4721
    const-string v2, "FUJIFILMCCD-RAW"

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 4722
    .local v1, "rafSignatureBytes":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 4723
    aget-byte v2, p1, v0

    aget-byte v3, v1, v0

    if-eq v2, v3, :cond_0

    .line 4724
    const/4 v2, 0x0

    .line 4727
    :goto_1
    return v2

    .line 4722
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4727
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private isRw2Format([B)Z
    .locals 3
    .param p1, "signatureCheckBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4756
    new-instance v1, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v1, p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    .line 4759
    .local v1, "signatureInputStream":Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;
    invoke-direct {p0, v1}, Landroid/support/media/ExifInterface;->readByteOrder(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;

    move-result-object v2

    iput-object v2, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4761
    iget-object v2, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 4763
    invoke-virtual {v1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v0

    .line 4764
    .local v0, "signatureByte":S
    invoke-virtual {v1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    .line 4765
    const/16 v2, 0x55

    if-ne v0, v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isSupportedDataType(Ljava/util/HashMap;)Z
    .locals 7
    .param p1, "thumbnailData"    # Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 5675
    const-string v4, "BitsPerSample"

    .line 5676
    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/media/ExifInterface$ExifAttribute;

    .line 5677
    .local v0, "bitsPerSampleAttribute":Landroid/support/media/ExifInterface$ExifAttribute;
    if-eqz v0, :cond_3

    .line 5678
    iget-object v4, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v0, v4}, Landroid/support/media/ExifInterface$ExifAttribute;->access$500(Landroid/support/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    move-object v1, v4

    check-cast v1, [I

    .line 5680
    .local v1, "bitsPerSampleValue":[I
    sget-object v4, Landroid/support/media/ExifInterface;->BITS_PER_SAMPLE_RGB:[I

    invoke-static {v4, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    .line 5705
    .end local v1    # "bitsPerSampleValue":[I
    :goto_0
    return v4

    .line 5685
    .restart local v1    # "bitsPerSampleValue":[I
    :cond_0
    iget v4, p0, Landroid/support/media/ExifInterface;->mMimeType:I

    const/4 v6, 0x3

    if-ne v4, v6, :cond_3

    .line 5686
    const-string v4, "PhotometricInterpretation"

    .line 5687
    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/media/ExifInterface$ExifAttribute;

    .line 5688
    .local v2, "photometricInterpretationAttribute":Landroid/support/media/ExifInterface$ExifAttribute;
    if-eqz v2, :cond_3

    .line 5689
    iget-object v4, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5690
    invoke-virtual {v2, v4}, Landroid/support/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v3

    .line 5691
    .local v3, "photometricInterpretationValue":I
    if-ne v3, v5, :cond_1

    sget-object v4, Landroid/support/media/ExifInterface;->BITS_PER_SAMPLE_GREYSCALE_2:[I

    .line 5692
    invoke-static {v1, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    const/4 v4, 0x6

    if-ne v3, v4, :cond_3

    sget-object v4, Landroid/support/media/ExifInterface;->BITS_PER_SAMPLE_RGB:[I

    .line 5694
    invoke-static {v1, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    move v4, v5

    .line 5695
    goto :goto_0

    .line 5705
    .end local v1    # "bitsPerSampleValue":[I
    .end local v2    # "photometricInterpretationAttribute":Landroid/support/media/ExifInterface$ExifAttribute;
    .end local v3    # "photometricInterpretationValue":I
    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private isThumbnail(Ljava/util/HashMap;)Z
    .locals 6
    .param p1, "map"    # Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x200

    .line 5711
    const-string v4, "ImageLength"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/media/ExifInterface$ExifAttribute;

    .line 5712
    .local v0, "imageLengthAttribute":Landroid/support/media/ExifInterface$ExifAttribute;
    const-string v4, "ImageWidth"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/media/ExifInterface$ExifAttribute;

    .line 5714
    .local v2, "imageWidthAttribute":Landroid/support/media/ExifInterface$ExifAttribute;
    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    .line 5715
    iget-object v4, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v4}, Landroid/support/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v1

    .line 5716
    .local v1, "imageLengthValue":I
    iget-object v4, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v4}, Landroid/support/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v3

    .line 5717
    .local v3, "imageWidthValue":I
    if-gt v1, v5, :cond_0

    if-gt v3, v5, :cond_0

    .line 5718
    const/4 v4, 0x1

    .line 5721
    .end local v1    # "imageLengthValue":I
    .end local v3    # "imageWidthValue":I
    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private loadAttributes(Ljava/io/InputStream;)V
    .locals 7
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4195
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    sget-object v5, Landroid/support/media/ExifInterface;->EXIF_TAGS:[[Landroid/support/media/ExifInterface$ExifTag;

    array-length v5, v5

    if-ge v2, v5, :cond_0

    .line 4196
    iget-object v5, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    aput-object v6, v5, v2

    .line 4195
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4200
    :cond_0
    new-instance v3, Ljava/io/BufferedInputStream;

    const/16 v5, 0x1388

    invoke-direct {v3, p1, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4201
    .end local p1    # "in":Ljava/io/InputStream;
    .local v3, "in":Ljava/io/InputStream;
    :try_start_1
    move-object v0, v3

    check-cast v0, Ljava/io/BufferedInputStream;

    move-object v5, v0

    invoke-direct {p0, v5}, Landroid/support/media/ExifInterface;->getMimeType(Ljava/io/BufferedInputStream;)I

    move-result v5

    iput v5, p0, Landroid/support/media/ExifInterface;->mMimeType:I

    .line 4204
    new-instance v4, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v4, v3}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 4206
    .local v4, "inputStream":Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;
    iget v5, p0, Landroid/support/media/ExifInterface;->mMimeType:I

    packed-switch v5, :pswitch_data_0

    .line 4239
    :goto_1
    invoke-direct {p0, v4}, Landroid/support/media/ExifInterface;->setThumbnailData(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 4240
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/support/media/ExifInterface;->mIsSupportedFile:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4251
    invoke-direct {p0}, Landroid/support/media/ExifInterface;->addDefaultValuesForCompatibility()V

    move-object p1, v3

    .line 4257
    .end local v3    # "in":Ljava/io/InputStream;
    .end local v4    # "inputStream":Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local p1    # "in":Ljava/io/InputStream;
    :goto_2
    return-void

    .line 4208
    .end local p1    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    .restart local v4    # "inputStream":Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;
    :pswitch_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_2
    invoke-direct {p0, v4, v5, v6}, Landroid/support/media/ExifInterface;->getJpegAttributes(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;II)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 4241
    .end local v4    # "inputStream":Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;
    :catch_0
    move-exception v1

    move-object p1, v3

    .line 4244
    .end local v3    # "in":Ljava/io/InputStream;
    .local v1, "e":Ljava/io/IOException;
    .restart local p1    # "in":Ljava/io/InputStream;
    :goto_3
    const/4 v5, 0x0

    :try_start_3
    iput-boolean v5, p0, Landroid/support/media/ExifInterface;->mIsSupportedFile:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4251
    invoke-direct {p0}, Landroid/support/media/ExifInterface;->addDefaultValuesForCompatibility()V

    goto :goto_2

    .line 4212
    .end local v1    # "e":Ljava/io/IOException;
    .end local p1    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    .restart local v4    # "inputStream":Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;
    :pswitch_1
    :try_start_4
    invoke-direct {p0, v4}, Landroid/support/media/ExifInterface;->getRafAttributes(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 4251
    .end local v4    # "inputStream":Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;
    :catchall_0
    move-exception v5

    move-object p1, v3

    .end local v3    # "in":Ljava/io/InputStream;
    .restart local p1    # "in":Ljava/io/InputStream;
    :goto_4
    invoke-direct {p0}, Landroid/support/media/ExifInterface;->addDefaultValuesForCompatibility()V

    throw v5

    .line 4216
    .end local p1    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    .restart local v4    # "inputStream":Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;
    :pswitch_2
    :try_start_5
    invoke-direct {p0, v4}, Landroid/support/media/ExifInterface;->getOrfAttributes(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;)V

    goto :goto_1

    .line 4220
    :pswitch_3
    invoke-direct {p0, v4}, Landroid/support/media/ExifInterface;->getRw2Attributes(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;)V

    goto :goto_1

    .line 4231
    :pswitch_4
    invoke-direct {p0, v4}, Landroid/support/media/ExifInterface;->getRawAttributes(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 4251
    .end local v3    # "in":Ljava/io/InputStream;
    .end local v4    # "inputStream":Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local p1    # "in":Ljava/io/InputStream;
    :catchall_1
    move-exception v5

    goto :goto_4

    .line 4241
    :catch_1
    move-exception v1

    goto :goto_3

    .line 4206
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private parseTiffHeaders(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;I)V
    .locals 5
    .param p1, "dataInputStream"    # Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;
    .param p2, "exifBytesLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5293
    invoke-direct {p0, p1}, Landroid/support/media/ExifInterface;->readByteOrder(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;

    move-result-object v2

    iput-object v2, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5295
    iget-object v2, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v2}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 5298
    invoke-virtual {p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v1

    .line 5299
    .local v1, "startCode":I
    iget v2, p0, Landroid/support/media/ExifInterface;->mMimeType:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_0

    iget v2, p0, Landroid/support/media/ExifInterface;->mMimeType:I

    const/16 v3, 0xa

    if-eq v2, v3, :cond_0

    const/16 v2, 0x2a

    if-eq v1, v2, :cond_0

    .line 5300
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid start code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5304
    :cond_0
    invoke-virtual {p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v0

    .line 5305
    .local v0, "firstIfdOffset":I
    const/16 v2, 0x8

    if-lt v0, v2, :cond_1

    if-lt v0, p2, :cond_2

    .line 5306
    :cond_1
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid first Ifd offset: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5308
    :cond_2
    add-int/lit8 v0, v0, -0x8

    .line 5309
    if-lez v0, :cond_3

    .line 5310
    invoke-virtual {p1, v0}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    move-result v2

    if-eq v2, v0, :cond_3

    .line 5311
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t jump to first Ifd: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5314
    :cond_3
    return-void
.end method

.method private readByteOrder(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;
    .locals 4
    .param p1, "dataInputStream"    # Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5273
    invoke-virtual {p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v0

    .line 5274
    .local v0, "byteOrder":S
    sparse-switch v0, :sswitch_data_0

    .line 5286
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid byte order: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5279
    :sswitch_0
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 5284
    :goto_0
    return-object v1

    :sswitch_1
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_0

    .line 5274
    :sswitch_data_0
    .sparse-switch
        0x4949 -> :sswitch_0
        0x4d4d -> :sswitch_1
    .end sparse-switch
.end method

.method private readExifSegment([BI)V
    .locals 2
    .param p1, "exifBytes"    # [B
    .param p2, "imageType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5233
    new-instance v0, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v0, p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    .line 5237
    .local v0, "dataInputStream":Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;
    array-length v1, p1

    invoke-direct {p0, v0, v1}, Landroid/support/media/ExifInterface;->parseTiffHeaders(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 5240
    invoke-direct {p0, v0, p2}, Landroid/support/media/ExifInterface;->readImageFileDirectory(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 5241
    return-void
.end method

.method private readImageFileDirectory(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;I)V
    .locals 28
    .param p1, "dataInputStream"    # Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;
    .param p2, "ifdType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5319
    invoke-static/range {p1 .. p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->access$700(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v24

    add-int/lit8 v24, v24, 0x2

    invoke-static/range {p1 .. p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->access$800(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_1

    .line 5512
    :cond_0
    :goto_0
    return-void

    .line 5324
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v18

    .line 5328
    .local v18, "numberOfDirectoryEntry":S
    invoke-static/range {p1 .. p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->access$700(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v24

    mul-int/lit8 v25, v18, 0xc

    add-int v24, v24, v25

    invoke-static/range {p1 .. p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->access$800(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-gt v0, v1, :cond_0

    .line 5334
    const/4 v10, 0x0

    .local v10, "i":S
    :goto_1
    move/from16 v0, v18

    if-ge v10, v0, :cond_17

    .line 5335
    invoke-virtual/range {p1 .. p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v22

    .line 5336
    .local v22, "tagNumber":I
    invoke-virtual/range {p1 .. p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v9

    .line 5337
    .local v9, "dataFormat":I
    invoke-virtual/range {p1 .. p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v17

    .line 5339
    .local v17, "numberOfComponents":I
    invoke-virtual/range {p1 .. p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->peek()I

    move-result v24

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x4

    add-long v14, v24, v26

    .line 5342
    .local v14, "nextEntryOffset":J
    sget-object v24, Landroid/support/media/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    aget-object v24, v24, p2

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/support/media/ExifInterface$ExifTag;

    .line 5350
    .local v19, "tag":Landroid/support/media/ExifInterface$ExifTag;
    const-wide/16 v6, 0x0

    .line 5351
    .local v6, "byteCount":J
    const/16 v23, 0x0

    .line 5352
    .local v23, "valid":Z
    if-nez v19, :cond_3

    .line 5353
    const-string v24, "ExifInterface"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Skip the tag entry since tag number is not defined: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5371
    :goto_2
    if-nez v23, :cond_a

    .line 5372
    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 5334
    :cond_2
    :goto_3
    add-int/lit8 v24, v10, 0x1

    move/from16 v0, v24

    int-to-short v10, v0

    goto :goto_1

    .line 5354
    :cond_3
    if-lez v9, :cond_4

    sget-object v24, Landroid/support/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v9, v0, :cond_5

    .line 5355
    :cond_4
    const-string v24, "ExifInterface"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Skip the tag entry since data format is invalid: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 5356
    :cond_5
    move-object/from16 v0, v19

    invoke-static {v0, v9}, Landroid/support/media/ExifInterface$ExifTag;->access$900(Landroid/support/media/ExifInterface$ExifTag;I)Z

    move-result v24

    if-nez v24, :cond_6

    .line 5357
    const-string v24, "ExifInterface"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Skip the tag entry since data format ("

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    sget-object v26, Landroid/support/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    aget-object v26, v26, v9

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ") is unexpected for tag: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 5360
    :cond_6
    const/16 v24, 0x7

    move/from16 v0, v24

    if-ne v9, v0, :cond_7

    .line 5361
    move-object/from16 v0, v19

    iget v9, v0, Landroid/support/media/ExifInterface$ExifTag;->primaryFormat:I

    .line 5363
    :cond_7
    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v24, v0

    sget-object v26, Landroid/support/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    aget v26, v26, v9

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    mul-long v6, v24, v26

    .line 5364
    const-wide/16 v24, 0x0

    cmp-long v24, v6, v24

    if-ltz v24, :cond_8

    const-wide/32 v24, 0x7fffffff

    cmp-long v24, v6, v24

    if-lez v24, :cond_9

    .line 5365
    :cond_8
    const-string v24, "ExifInterface"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Skip the tag entry since the number of components is invalid: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 5368
    :cond_9
    const/16 v23, 0x1

    goto/16 :goto_2

    .line 5378
    :cond_a
    const-wide/16 v24, 0x4

    cmp-long v24, v6, v24

    if-lez v24, :cond_c

    .line 5379
    invoke-virtual/range {p1 .. p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v20

    .line 5383
    .local v20, "offset":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/media/ExifInterface;->mMimeType:I

    move/from16 v24, v0

    const/16 v25, 0x7

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_e

    .line 5384
    const-string v24, "MakerNote"

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_d

    .line 5386
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/media/ExifInterface;->mOrfMakerNoteOffset:I

    .line 5411
    :cond_b
    :goto_4
    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v24, v0

    add-long v24, v24, v6

    invoke-static/range {p1 .. p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->access$800(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v26

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    cmp-long v24, v24, v26

    if-gtz v24, :cond_f

    .line 5412
    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 5422
    .end local v20    # "offset":I
    :cond_c
    sget-object v24, Landroid/support/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    .line 5427
    .local v16, "nextIfdType":Ljava/lang/Integer;
    if-eqz v16, :cond_11

    .line 5428
    const-wide/16 v20, -0x1

    .line 5430
    .local v20, "offset":J
    packed-switch v9, :pswitch_data_0

    .line 5456
    :goto_5
    :pswitch_0
    const-wide/16 v24, 0x0

    cmp-long v24, v20, v24

    if-lez v24, :cond_10

    invoke-static/range {p1 .. p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->access$800(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v24

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    cmp-long v24, v20, v24

    if-gez v24, :cond_10

    .line 5457
    move-object/from16 v0, p1

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 5458
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Landroid/support/media/ExifInterface;->readImageFileDirectory(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 5463
    :goto_6
    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    goto/16 :goto_3

    .line 5387
    .end local v16    # "nextIfdType":Ljava/lang/Integer;
    .local v20, "offset":I
    :cond_d
    const/16 v24, 0x6

    move/from16 v0, p2

    move/from16 v1, v24

    if-ne v0, v1, :cond_b

    const-string v24, "ThumbnailImage"

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    move-object/from16 v25, v0

    .line 5388
    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_b

    .line 5390
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/media/ExifInterface;->mOrfThumbnailOffset:I

    .line 5391
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/media/ExifInterface;->mOrfThumbnailLength:I

    .line 5393
    const/16 v24, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v25, v0

    .line 5394
    invoke-static/range {v24 .. v25}, Landroid/support/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object v8

    .line 5395
    .local v8, "compressionAttribute":Landroid/support/media/ExifInterface$ExifAttribute;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/media/ExifInterface;->mOrfThumbnailOffset:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v26, v0

    .line 5396
    invoke-static/range {v24 .. v26}, Landroid/support/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object v11

    .line 5397
    .local v11, "jpegInterchangeFormatAttribute":Landroid/support/media/ExifInterface$ExifAttribute;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/media/ExifInterface;->mOrfThumbnailLength:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v26, v0

    .line 5398
    invoke-static/range {v24 .. v26}, Landroid/support/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object v12

    .line 5400
    .local v12, "jpegInterchangeFormatLengthAttribute":Landroid/support/media/ExifInterface$ExifAttribute;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v24, v0

    const/16 v25, 0x4

    aget-object v24, v24, v25

    const-string v25, "Compression"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5401
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v24, v0

    const/16 v25, 0x4

    aget-object v24, v24, v25

    const-string v25, "JPEGInterchangeFormat"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5403
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v24, v0

    const/16 v25, 0x4

    aget-object v24, v24, v25

    const-string v25, "JPEGInterchangeFormatLength"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 5406
    .end local v8    # "compressionAttribute":Landroid/support/media/ExifInterface$ExifAttribute;
    .end local v11    # "jpegInterchangeFormatAttribute":Landroid/support/media/ExifInterface$ExifAttribute;
    .end local v12    # "jpegInterchangeFormatLengthAttribute":Landroid/support/media/ExifInterface$ExifAttribute;
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/media/ExifInterface;->mMimeType:I

    move/from16 v24, v0

    const/16 v25, 0xa

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_b

    .line 5407
    const-string v24, "JpgFromRaw"

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_b

    .line 5408
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/media/ExifInterface;->mRw2JpgFromRawOffset:I

    goto/16 :goto_4

    .line 5415
    :cond_f
    const-string v24, "ExifInterface"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Skip the tag entry since data offset is invalid: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5416
    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    goto/16 :goto_3

    .line 5432
    .restart local v16    # "nextIfdType":Ljava/lang/Integer;
    .local v20, "offset":J
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v24

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v20, v0

    .line 5433
    goto/16 :goto_5

    .line 5436
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v24

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v20, v0

    .line 5437
    goto/16 :goto_5

    .line 5440
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedInt()J

    move-result-wide v20

    .line 5441
    goto/16 :goto_5

    .line 5445
    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v24

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v20, v0

    .line 5446
    goto/16 :goto_5

    .line 5460
    :cond_10
    const-string v24, "ExifInterface"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Skip jump into the IFD since its offset is invalid: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 5467
    .end local v20    # "offset":J
    :cond_11
    long-to-int v0, v6

    move/from16 v24, v0

    move/from16 v0, v24

    new-array v5, v0, [B

    .line 5468
    .local v5, "bytes":[B
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 5469
    new-instance v4, Landroid/support/media/ExifInterface$ExifAttribute;

    const/16 v24, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v24

    invoke-direct {v4, v9, v0, v5, v1}, Landroid/support/media/ExifInterface$ExifAttribute;-><init>(II[BLandroid/support/media/ExifInterface$1;)V

    .line 5470
    .local v4, "attribute":Landroid/support/media/ExifInterface$ExifAttribute;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v24, v0

    aget-object v24, v24, p2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5475
    const-string v24, "DNGVersion"

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_12

    .line 5476
    const/16 v24, 0x3

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/media/ExifInterface;->mMimeType:I

    .line 5482
    :cond_12
    const-string v24, "Make"

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_13

    const-string v24, "Model"

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_14

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v24, v0

    .line 5483
    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/support/media/ExifInterface$ExifAttribute;->getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;

    move-result-object v24

    const-string v25, "PENTAX"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_15

    :cond_14
    const-string v24, "Compression"

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    move-object/from16 v25, v0

    .line 5484
    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v24, v0

    .line 5485
    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/support/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v24

    const v25, 0xffff

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_16

    .line 5486
    :cond_15
    const/16 v24, 0x8

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/media/ExifInterface;->mMimeType:I

    .line 5490
    :cond_16
    invoke-virtual/range {p1 .. p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->peek()I

    move-result v24

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    cmp-long v24, v24, v14

    if-eqz v24, :cond_2

    .line 5491
    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    goto/16 :goto_3

    .line 5495
    .end local v4    # "attribute":Landroid/support/media/ExifInterface$ExifAttribute;
    .end local v5    # "bytes":[B
    .end local v6    # "byteCount":J
    .end local v9    # "dataFormat":I
    .end local v14    # "nextEntryOffset":J
    .end local v16    # "nextIfdType":Ljava/lang/Integer;
    .end local v17    # "numberOfComponents":I
    .end local v19    # "tag":Landroid/support/media/ExifInterface$ExifTag;
    .end local v22    # "tagNumber":I
    .end local v23    # "valid":Z
    :cond_17
    invoke-virtual/range {p1 .. p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->peek()I

    move-result v24

    add-int/lit8 v24, v24, 0x4

    invoke-static/range {p1 .. p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->access$800(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-gt v0, v1, :cond_0

    .line 5496
    invoke-virtual/range {p1 .. p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v13

    .line 5502
    .local v13, "nextIfdOffset":I
    const/16 v24, 0x8

    move/from16 v0, v24

    if-le v13, v0, :cond_0

    invoke-static/range {p1 .. p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->access$800(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v24

    move/from16 v0, v24

    if-ge v13, v0, :cond_0

    .line 5503
    int-to-long v0, v13

    move-wide/from16 v24, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 5504
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v24, v0

    const/16 v25, 0x4

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Ljava/util/HashMap;->isEmpty()Z

    move-result v24

    if-eqz v24, :cond_18

    .line 5506
    const/16 v24, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Landroid/support/media/ExifInterface;->readImageFileDirectory(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;I)V

    goto/16 :goto_0

    .line 5507
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v24, v0

    const/16 v25, 0x5

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Ljava/util/HashMap;->isEmpty()Z

    move-result v24

    if-eqz v24, :cond_0

    .line 5508
    const/16 v24, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Landroid/support/media/ExifInterface;->readImageFileDirectory(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;I)V

    goto/16 :goto_0

    .line 5430
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private retrieveJpegImageSize(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;I)V
    .locals 6
    .param p1, "in"    # Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;
    .param p2, "imageType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5523
    iget-object v4, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, p2

    const-string v5, "ImageLength"

    .line 5524
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/media/ExifInterface$ExifAttribute;

    .line 5525
    .local v0, "imageLengthAttribute":Landroid/support/media/ExifInterface$ExifAttribute;
    iget-object v4, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, p2

    const-string v5, "ImageWidth"

    .line 5526
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/media/ExifInterface$ExifAttribute;

    .line 5528
    .local v1, "imageWidthAttribute":Landroid/support/media/ExifInterface$ExifAttribute;
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 5530
    :cond_0
    iget-object v4, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, p2

    const-string v5, "JPEGInterchangeFormat"

    .line 5531
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/media/ExifInterface$ExifAttribute;

    .line 5532
    .local v3, "jpegInterchangeFormatAttribute":Landroid/support/media/ExifInterface$ExifAttribute;
    if-eqz v3, :cond_1

    .line 5533
    iget-object v4, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5534
    invoke-virtual {v3, v4}, Landroid/support/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v2

    .line 5537
    .local v2, "jpegInterchangeFormat":I
    invoke-direct {p0, p1, v2, p2}, Landroid/support/media/ExifInterface;->getJpegAttributes(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;II)V

    .line 5540
    .end local v2    # "jpegInterchangeFormat":I
    .end local v3    # "jpegInterchangeFormatAttribute":Landroid/support/media/ExifInterface$ExifAttribute;
    :cond_1
    return-void
.end method

.method private setThumbnailData(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 4
    .param p1, "in"    # Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5544
    iget-object v2, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v3, 0x4

    aget-object v1, v2, v3

    .line 5546
    .local v1, "thumbnailData":Ljava/util/HashMap;
    const-string v2, "Compression"

    .line 5547
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/media/ExifInterface$ExifAttribute;

    .line 5548
    .local v0, "compressionAttribute":Landroid/support/media/ExifInterface$ExifAttribute;
    if-eqz v0, :cond_1

    .line 5549
    iget-object v2, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Landroid/support/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v2

    iput v2, p0, Landroid/support/media/ExifInterface;->mThumbnailCompression:I

    .line 5550
    iget v2, p0, Landroid/support/media/ExifInterface;->mThumbnailCompression:I

    sparse-switch v2, :sswitch_data_0

    .line 5568
    :cond_0
    :goto_0
    return-void

    .line 5552
    :sswitch_0
    invoke-direct {p0, p1, v1}, Landroid/support/media/ExifInterface;->handleThumbnailFromJfif(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V

    goto :goto_0

    .line 5557
    :sswitch_1
    invoke-direct {p0, v1}, Landroid/support/media/ExifInterface;->isSupportedDataType(Ljava/util/HashMap;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5558
    invoke-direct {p0, p1, v1}, Landroid/support/media/ExifInterface;->handleThumbnailFromStrips(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V

    goto :goto_0

    .line 5565
    :cond_1
    const/4 v2, 0x6

    iput v2, p0, Landroid/support/media/ExifInterface;->mThumbnailCompression:I

    .line 5566
    invoke-direct {p0, p1, v1}, Landroid/support/media/ExifInterface;->handleThumbnailFromJfif(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V

    goto :goto_0

    .line 5550
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x6 -> :sswitch_0
        0x7 -> :sswitch_1
    .end sparse-switch
.end method

.method private swapBasedOnImageSize(II)V
    .locals 11
    .param p1, "firstIfdType"    # I
    .param p2, "secondIfdType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6397
    iget-object v9, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v9, v9, p1

    invoke-virtual {v9}, Ljava/util/HashMap;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v9, v9, p2

    invoke-virtual {v9}, Ljava/util/HashMap;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 6434
    :cond_0
    :goto_0
    return-void

    .line 6404
    :cond_1
    iget-object v9, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v9, v9, p1

    const-string v10, "ImageLength"

    .line 6405
    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/media/ExifInterface$ExifAttribute;

    .line 6406
    .local v0, "firstImageLengthAttribute":Landroid/support/media/ExifInterface$ExifAttribute;
    iget-object v9, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v9, v9, p1

    const-string v10, "ImageWidth"

    .line 6407
    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/media/ExifInterface$ExifAttribute;

    .line 6408
    .local v2, "firstImageWidthAttribute":Landroid/support/media/ExifInterface$ExifAttribute;
    iget-object v9, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v9, v9, p2

    const-string v10, "ImageLength"

    .line 6409
    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/media/ExifInterface$ExifAttribute;

    .line 6410
    .local v4, "secondImageLengthAttribute":Landroid/support/media/ExifInterface$ExifAttribute;
    iget-object v9, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v9, v9, p2

    const-string v10, "ImageWidth"

    .line 6411
    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/media/ExifInterface$ExifAttribute;

    .line 6413
    .local v6, "secondImageWidthAttribute":Landroid/support/media/ExifInterface$ExifAttribute;
    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    .line 6417
    if-eqz v4, :cond_0

    if-eqz v6, :cond_0

    .line 6422
    iget-object v9, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v9}, Landroid/support/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v1

    .line 6423
    .local v1, "firstImageLengthValue":I
    iget-object v9, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v9}, Landroid/support/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v3

    .line 6424
    .local v3, "firstImageWidthValue":I
    iget-object v9, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v9}, Landroid/support/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v5

    .line 6425
    .local v5, "secondImageLengthValue":I
    iget-object v9, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v6, v9}, Landroid/support/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v7

    .line 6427
    .local v7, "secondImageWidthValue":I
    if-ge v1, v5, :cond_0

    if-ge v3, v7, :cond_0

    .line 6429
    iget-object v9, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v8, v9, p1

    .line 6430
    .local v8, "tempMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/support/media/ExifInterface$ExifAttribute;>;"
    iget-object v9, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    iget-object v10, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v10, v10, p2

    aput-object v10, v9, p1

    .line 6431
    iget-object v9, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aput-object v8, v9, p2

    goto :goto_0
.end method

.method private updateImageSizeValues(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;I)V
    .locals 21
    .param p1, "in"    # Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;
    .param p2, "imageType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5771
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v18, v0

    aget-object v18, v18, p2

    const-string v19, "DefaultCropSize"

    .line 5772
    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/media/ExifInterface$ExifAttribute;

    .line 5774
    .local v4, "defaultCropSizeAttribute":Landroid/support/media/ExifInterface$ExifAttribute;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v18, v0

    aget-object v18, v18, p2

    const-string v19, "SensorTopBorder"

    .line 5775
    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/support/media/ExifInterface$ExifAttribute;

    .line 5776
    .local v15, "topBorderAttribute":Landroid/support/media/ExifInterface$ExifAttribute;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v18, v0

    aget-object v18, v18, p2

    const-string v19, "SensorLeftBorder"

    .line 5777
    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/support/media/ExifInterface$ExifAttribute;

    .line 5778
    .local v10, "leftBorderAttribute":Landroid/support/media/ExifInterface$ExifAttribute;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v18, v0

    aget-object v18, v18, p2

    const-string v19, "SensorBottomBorder"

    .line 5779
    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/media/ExifInterface$ExifAttribute;

    .line 5780
    .local v2, "bottomBorderAttribute":Landroid/support/media/ExifInterface$ExifAttribute;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v18, v0

    aget-object v18, v18, p2

    const-string v19, "SensorRightBorder"

    .line 5781
    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/support/media/ExifInterface$ExifAttribute;

    .line 5783
    .local v13, "rightBorderAttribute":Landroid/support/media/ExifInterface$ExifAttribute;
    if-eqz v4, :cond_6

    .line 5786
    iget v0, v4, Landroid/support/media/ExifInterface$ExifAttribute;->format:I

    move/from16 v18, v0

    const/16 v19, 0x5

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    .line 5787
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v18, v0

    .line 5788
    move-object/from16 v0, v18

    invoke-static {v4, v0}, Landroid/support/media/ExifInterface$ExifAttribute;->access$500(Landroid/support/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Landroid/support/media/ExifInterface$Rational;

    move-object/from16 v5, v18

    check-cast v5, [Landroid/support/media/ExifInterface$Rational;

    .line 5789
    .local v5, "defaultCropSizeValue":[Landroid/support/media/ExifInterface$Rational;
    if-eqz v5, :cond_0

    array-length v0, v5

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_2

    .line 5790
    :cond_0
    const-string v18, "ExifInterface"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Invalid crop size values. cropSize="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 5791
    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 5790
    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5833
    .end local v5    # "defaultCropSizeValue":[Landroid/support/media/ExifInterface$Rational;
    :cond_1
    :goto_0
    return-void

    .line 5794
    .restart local v5    # "defaultCropSizeValue":[Landroid/support/media/ExifInterface$Rational;
    :cond_2
    const/16 v18, 0x0

    aget-object v18, v5, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v19, v0

    .line 5795
    invoke-static/range {v18 .. v19}, Landroid/support/media/ExifInterface$ExifAttribute;->createURational(Landroid/support/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object v6

    .line 5796
    .local v6, "defaultCropSizeXAttribute":Landroid/support/media/ExifInterface$ExifAttribute;
    const/16 v18, 0x1

    aget-object v18, v5, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v19, v0

    .line 5797
    invoke-static/range {v18 .. v19}, Landroid/support/media/ExifInterface$ExifAttribute;->createURational(Landroid/support/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object v7

    .line 5811
    .end local v5    # "defaultCropSizeValue":[Landroid/support/media/ExifInterface$Rational;
    .local v7, "defaultCropSizeYAttribute":Landroid/support/media/ExifInterface$ExifAttribute;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v18, v0

    aget-object v18, v18, p2

    const-string v19, "ImageWidth"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5812
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v18, v0

    aget-object v18, v18, p2

    const-string v19, "ImageLength"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 5799
    .end local v6    # "defaultCropSizeXAttribute":Landroid/support/media/ExifInterface$ExifAttribute;
    .end local v7    # "defaultCropSizeYAttribute":Landroid/support/media/ExifInterface$ExifAttribute;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v18, v0

    .line 5800
    move-object/from16 v0, v18

    invoke-static {v4, v0}, Landroid/support/media/ExifInterface$ExifAttribute;->access$500(Landroid/support/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [I

    move-object/from16 v5, v18

    check-cast v5, [I

    .line 5801
    .local v5, "defaultCropSizeValue":[I
    if-eqz v5, :cond_4

    array-length v0, v5

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_5

    .line 5802
    :cond_4
    const-string v18, "ExifInterface"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Invalid crop size values. cropSize="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 5803
    invoke-static {v5}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 5802
    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5806
    :cond_5
    const/16 v18, 0x0

    aget v18, v5, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v19, v0

    .line 5807
    invoke-static/range {v18 .. v19}, Landroid/support/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object v6

    .line 5808
    .restart local v6    # "defaultCropSizeXAttribute":Landroid/support/media/ExifInterface$ExifAttribute;
    const/16 v18, 0x1

    aget v18, v5, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v19, v0

    .line 5809
    invoke-static/range {v18 .. v19}, Landroid/support/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object v7

    .restart local v7    # "defaultCropSizeYAttribute":Landroid/support/media/ExifInterface$ExifAttribute;
    goto :goto_1

    .line 5813
    .end local v5    # "defaultCropSizeValue":[I
    .end local v6    # "defaultCropSizeXAttribute":Landroid/support/media/ExifInterface$ExifAttribute;
    .end local v7    # "defaultCropSizeYAttribute":Landroid/support/media/ExifInterface$ExifAttribute;
    :cond_6
    if-eqz v15, :cond_7

    if-eqz v10, :cond_7

    if-eqz v2, :cond_7

    if-eqz v13, :cond_7

    .line 5816
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/support/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v16

    .line 5817
    .local v16, "topBorderValue":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/support/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v3

    .line 5818
    .local v3, "bottomBorderValue":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/support/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v14

    .line 5819
    .local v14, "rightBorderValue":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/support/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v11

    .line 5820
    .local v11, "leftBorderValue":I
    move/from16 v0, v16

    if-le v3, v0, :cond_1

    if-le v14, v11, :cond_1

    .line 5821
    sub-int v12, v3, v16

    .line 5822
    .local v12, "length":I
    sub-int v17, v14, v11

    .line 5823
    .local v17, "width":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v18, v0

    .line 5824
    move-object/from16 v0, v18

    invoke-static {v12, v0}, Landroid/support/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object v8

    .line 5825
    .local v8, "imageLengthAttribute":Landroid/support/media/ExifInterface$ExifAttribute;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v18, v0

    .line 5826
    invoke-static/range {v17 .. v18}, Landroid/support/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object v9

    .line 5827
    .local v9, "imageWidthAttribute":Landroid/support/media/ExifInterface$ExifAttribute;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v18, v0

    aget-object v18, v18, p2

    const-string v19, "ImageLength"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5828
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v18, v0

    aget-object v18, v18, p2

    const-string v19, "ImageWidth"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 5831
    .end local v3    # "bottomBorderValue":I
    .end local v8    # "imageLengthAttribute":Landroid/support/media/ExifInterface$ExifAttribute;
    .end local v9    # "imageWidthAttribute":Landroid/support/media/ExifInterface$ExifAttribute;
    .end local v11    # "leftBorderValue":I
    .end local v12    # "length":I
    .end local v14    # "rightBorderValue":I
    .end local v16    # "topBorderValue":I
    .end local v17    # "width":I
    :cond_7
    invoke-direct/range {p0 .. p2}, Landroid/support/media/ExifInterface;->retrieveJpegImageSize(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;I)V

    goto/16 :goto_0
.end method

.method private validateImages(Ljava/io/InputStream;)V
    .locals 8
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x5

    const/4 v4, 0x4

    .line 5727
    invoke-direct {p0, v6, v5}, Landroid/support/media/ExifInterface;->swapBasedOnImageSize(II)V

    .line 5728
    invoke-direct {p0, v6, v4}, Landroid/support/media/ExifInterface;->swapBasedOnImageSize(II)V

    .line 5729
    invoke-direct {p0, v5, v4}, Landroid/support/media/ExifInterface;->swapBasedOnImageSize(II)V

    .line 5734
    iget-object v2, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v7

    const-string v3, "PixelXDimension"

    .line 5735
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/media/ExifInterface$ExifAttribute;

    .line 5736
    .local v0, "pixelXDimAttribute":Landroid/support/media/ExifInterface$ExifAttribute;
    iget-object v2, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v7

    const-string v3, "PixelYDimension"

    .line 5737
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/media/ExifInterface$ExifAttribute;

    .line 5738
    .local v1, "pixelYDimAttribute":Landroid/support/media/ExifInterface$ExifAttribute;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 5739
    iget-object v2, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v6

    const-string v3, "ImageWidth"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5740
    iget-object v2, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v6

    const-string v3, "ImageLength"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5745
    :cond_0
    iget-object v2, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5746
    iget-object v2, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v5

    invoke-direct {p0, v2}, Landroid/support/media/ExifInterface;->isThumbnail(Ljava/util/HashMap;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5747
    iget-object v2, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    iget-object v3, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v5

    aput-object v3, v2, v4

    .line 5748
    iget-object v2, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    aput-object v3, v2, v5

    .line 5753
    :cond_1
    iget-object v2, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v4

    invoke-direct {p0, v2}, Landroid/support/media/ExifInterface;->isThumbnail(Ljava/util/HashMap;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 5754
    const-string v2, "ExifInterface"

    const-string v3, "No image meets the size requirements of a thumbnail image."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5756
    :cond_2
    return-void
.end method


# virtual methods
.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v4, 0x0

    .line 3773
    invoke-direct {p0, p1}, Landroid/support/media/ExifInterface;->getExifAttribute(Ljava/lang/String;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object v1

    .line 3774
    .local v1, "attribute":Landroid/support/media/ExifInterface$ExifAttribute;
    if-eqz v1, :cond_5

    .line 3775
    sget-object v3, Landroid/support/media/ExifInterface;->sTagSetForCompatibility:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3776
    iget-object v3, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v3}, Landroid/support/media/ExifInterface$ExifAttribute;->getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;

    move-result-object v3

    .line 3801
    :goto_0
    return-object v3

    .line 3778
    :cond_0
    const-string v3, "GPSTimeStamp"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3780
    iget v3, v1, Landroid/support/media/ExifInterface$ExifAttribute;->format:I

    const/4 v5, 0x5

    if-eq v3, v5, :cond_1

    iget v3, v1, Landroid/support/media/ExifInterface$ExifAttribute;->format:I

    const/16 v5, 0xa

    if-eq v3, v5, :cond_1

    .line 3782
    const-string v3, "ExifInterface"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GPS Timestamp format is not rational. format="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Landroid/support/media/ExifInterface$ExifAttribute;->format:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 3783
    goto :goto_0

    .line 3785
    :cond_1
    iget-object v3, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v1, v3}, Landroid/support/media/ExifInterface$ExifAttribute;->access$500(Landroid/support/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/support/media/ExifInterface$Rational;

    move-object v0, v3

    check-cast v0, [Landroid/support/media/ExifInterface$Rational;

    .line 3786
    .local v0, "array":[Landroid/support/media/ExifInterface$Rational;
    if-eqz v0, :cond_2

    array-length v3, v0

    if-eq v3, v6, :cond_3

    .line 3787
    :cond_2
    const-string v3, "ExifInterface"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid GPS Timestamp array. array="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 3788
    goto :goto_0

    .line 3790
    :cond_3
    const-string v3, "%02d:%02d:%02d"

    new-array v4, v6, [Ljava/lang/Object;

    aget-object v5, v0, v8

    iget-wide v6, v5, Landroid/support/media/ExifInterface$Rational;->numerator:J

    long-to-float v5, v6

    aget-object v6, v0, v8

    iget-wide v6, v6, Landroid/support/media/ExifInterface$Rational;->denominator:J

    long-to-float v6, v6

    div-float/2addr v5, v6

    float-to-int v5, v5

    .line 3791
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    aget-object v5, v0, v9

    iget-wide v6, v5, Landroid/support/media/ExifInterface$Rational;->numerator:J

    long-to-float v5, v6

    aget-object v6, v0, v9

    iget-wide v6, v6, Landroid/support/media/ExifInterface$Rational;->denominator:J

    long-to-float v6, v6

    div-float/2addr v5, v6

    float-to-int v5, v5

    .line 3792
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v9

    aget-object v5, v0, v10

    iget-wide v6, v5, Landroid/support/media/ExifInterface$Rational;->numerator:J

    long-to-float v5, v6

    aget-object v6, v0, v10

    iget-wide v6, v6, Landroid/support/media/ExifInterface$Rational;->denominator:J

    long-to-float v6, v6

    div-float/2addr v5, v6

    float-to-int v5, v5

    .line 3793
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v10

    .line 3790
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 3796
    .end local v0    # "array":[Landroid/support/media/ExifInterface$Rational;
    :cond_4
    :try_start_0
    iget-object v3, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v3}, Landroid/support/media/ExifInterface$ExifAttribute;->getDoubleValue(Ljava/nio/ByteOrder;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->toString(D)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto/16 :goto_0

    .line 3797
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/NumberFormatException;
    move-object v3, v4

    .line 3798
    goto/16 :goto_0

    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_5
    move-object v3, v4

    .line 3801
    goto/16 :goto_0
.end method

.method public getAttributeInt(Ljava/lang/String;I)I
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 3813
    invoke-direct {p0, p1}, Landroid/support/media/ExifInterface;->getExifAttribute(Ljava/lang/String;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object v1

    .line 3814
    .local v1, "exifAttribute":Landroid/support/media/ExifInterface$ExifAttribute;
    if-nez v1, :cond_0

    .line 3821
    .end local p2    # "defaultValue":I
    :goto_0
    return p2

    .line 3819
    .restart local p2    # "defaultValue":I
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Landroid/support/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    goto :goto_0

    .line 3820
    :catch_0
    move-exception v0

    .line 3821
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public getDateTime()J
    .locals 14

    .prologue
    const-wide/16 v10, -0x1

    .line 4586
    const-string v9, "DateTime"

    invoke-virtual {p0, v9}, Landroid/support/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4587
    .local v0, "dateTimeString":Ljava/lang/String;
    if-eqz v0, :cond_0

    sget-object v9, Landroid/support/media/ExifInterface;->sNonZeroTimePattern:Ljava/util/regex/Pattern;

    .line 4588
    invoke-virtual {v9, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-nez v9, :cond_2

    :cond_0
    move-wide v4, v10

    .line 4612
    :cond_1
    :goto_0
    return-wide v4

    .line 4590
    :cond_2
    new-instance v3, Ljava/text/ParsePosition;

    const/4 v9, 0x0

    invoke-direct {v3, v9}, Ljava/text/ParsePosition;-><init>(I)V

    .line 4594
    .local v3, "pos":Ljava/text/ParsePosition;
    :try_start_0
    sget-object v9, Landroid/support/media/ExifInterface;->sFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v9, v0, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v1

    .line 4595
    .local v1, "datetime":Ljava/util/Date;
    if-nez v1, :cond_3

    move-wide v4, v10

    goto :goto_0

    .line 4596
    :cond_3
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 4598
    .local v4, "msecs":J
    const-string v9, "SubSecTime"

    invoke-virtual {p0, v9}, Landroid/support/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 4599
    .local v8, "subSecs":Ljava/lang/String;
    if-eqz v8, :cond_1

    .line 4601
    :try_start_1
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 4602
    .local v6, "sub":J
    :goto_1
    const-wide/16 v12, 0x3e8

    cmp-long v9, v6, v12

    if-lez v9, :cond_4

    .line 4603
    const-wide/16 v12, 0xa

    div-long/2addr v6, v12
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 4605
    :cond_4
    add-long/2addr v4, v6

    goto :goto_0

    .line 4611
    .end local v1    # "datetime":Ljava/util/Date;
    .end local v4    # "msecs":J
    .end local v6    # "sub":J
    .end local v8    # "subSecs":Ljava/lang/String;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/IllegalArgumentException;
    move-wide v4, v10

    .line 4612
    goto :goto_0

    .line 4606
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v1    # "datetime":Ljava/util/Date;
    .restart local v4    # "msecs":J
    .restart local v8    # "subSecs":Ljava/lang/String;
    :catch_1
    move-exception v9

    goto :goto_0
.end method

.method public getGpsDateTime()J
    .locals 10

    .prologue
    const-wide/16 v6, -0x1

    .line 4623
    const-string v8, "GPSDateStamp"

    invoke-virtual {p0, v8}, Landroid/support/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4624
    .local v0, "date":Ljava/lang/String;
    const-string v8, "GPSTimeStamp"

    invoke-virtual {p0, v8}, Landroid/support/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4625
    .local v5, "time":Ljava/lang/String;
    if-eqz v0, :cond_0

    if-eqz v5, :cond_0

    sget-object v8, Landroid/support/media/ExifInterface;->sNonZeroTimePattern:Ljava/util/regex/Pattern;

    .line 4626
    invoke-virtual {v8, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-nez v8, :cond_1

    sget-object v8, Landroid/support/media/ExifInterface;->sNonZeroTimePattern:Ljava/util/regex/Pattern;

    .line 4627
    invoke-virtual {v8, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-nez v8, :cond_1

    .line 4639
    :cond_0
    :goto_0
    return-wide v6

    .line 4631
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x20

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4633
    .local v1, "dateTimeString":Ljava/lang/String;
    new-instance v4, Ljava/text/ParsePosition;

    const/4 v8, 0x0

    invoke-direct {v4, v8}, Ljava/text/ParsePosition;-><init>(I)V

    .line 4635
    .local v4, "pos":Ljava/text/ParsePosition;
    :try_start_0
    sget-object v8, Landroid/support/media/ExifInterface;->sFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v8, v1, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v2

    .line 4636
    .local v2, "datetime":Ljava/util/Date;
    if-eqz v2, :cond_0

    .line 4637
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    goto :goto_0

    .line 4638
    .end local v2    # "datetime":Ljava/util/Date;
    :catch_0
    move-exception v3

    .line 4639
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0
.end method

.method public getLatLong()[D
    .locals 14

    .prologue
    .line 4476
    const-string v7, "GPSLatitude"

    invoke-virtual {p0, v7}, Landroid/support/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4477
    .local v2, "latValue":Ljava/lang/String;
    const-string v7, "GPSLatitudeRef"

    invoke-virtual {p0, v7}, Landroid/support/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4478
    .local v1, "latRef":Ljava/lang/String;
    const-string v7, "GPSLongitude"

    invoke-virtual {p0, v7}, Landroid/support/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4479
    .local v6, "lngValue":Ljava/lang/String;
    const-string v7, "GPSLongitudeRef"

    invoke-virtual {p0, v7}, Landroid/support/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4481
    .local v3, "lngRef":Ljava/lang/String;
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    if-eqz v6, :cond_0

    if-eqz v3, :cond_0

    .line 4483
    :try_start_0
    invoke-static {v2, v1}, Landroid/support/media/ExifInterface;->convertRationalLatLonToDouble(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v4

    .line 4484
    .local v4, "latitude":D
    invoke-static {v6, v3}, Landroid/support/media/ExifInterface;->convertRationalLatLonToDouble(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v8

    .line 4485
    .local v8, "longitude":D
    const/4 v7, 0x2

    new-array v7, v7, [D

    const/4 v10, 0x0

    aput-wide v4, v7, v10

    const/4 v10, 0x1

    aput-wide v8, v7, v10
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4492
    .end local v4    # "latitude":D
    .end local v8    # "longitude":D
    :goto_0
    return-object v7

    .line 4486
    :catch_0
    move-exception v0

    .line 4487
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v7, "ExifInterface"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Latitude/longitude values are not parseable. "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "latValue=%s, latRef=%s, lngValue=%s, lngRef=%s"

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v2, v12, v13

    const/4 v13, 0x1

    aput-object v1, v12, v13

    const/4 v13, 0x2

    aput-object v6, v12, v13

    const/4 v13, 0x3

    aput-object v3, v12, v13

    .line 4488
    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 4487
    invoke-static {v7, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4492
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 23
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 3853
    const-string v3, "ISOSpeedRatings"

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3858
    const-string p1, "PhotographicSensitivity"

    .line 3861
    :cond_0
    if-eqz p2, :cond_3

    sget-object v3, Landroid/support/media/ExifInterface;->sTagSetForCompatibility:Ljava/util/HashSet;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3862
    const-string v3, "GPSTimeStamp"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3863
    sget-object v3, Landroid/support/media/ExifInterface;->sGpsTimestampPattern:Ljava/util/regex/Pattern;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v19

    .line 3864
    .local v19, "m":Ljava/util/regex/Matcher;
    invoke-virtual/range {v19 .. v19}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-nez v3, :cond_2

    .line 3865
    const-string v3, "ExifInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid value for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3991
    .end local v19    # "m":Ljava/util/regex/Matcher;
    :cond_1
    :goto_0
    return-void

    .line 3868
    .restart local v19    # "m":Ljava/util/regex/Matcher;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/1,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x2

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/1,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x3

    .line 3869
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 3881
    .end local v19    # "m":Ljava/util/regex/Matcher;
    :cond_3
    :goto_1
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_2
    sget-object v3, Landroid/support/media/ExifInterface;->EXIF_TAGS:[[Landroid/support/media/ExifInterface$ExifTag;

    array-length v3, v3

    if-ge v15, v3, :cond_1

    .line 3882
    const/4 v3, 0x4

    if-ne v15, v3, :cond_6

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/support/media/ExifInterface;->mHasThumbnail:Z

    if-nez v3, :cond_6

    .line 3881
    :cond_4
    :goto_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 3872
    .end local v15    # "i":I
    :cond_5
    :try_start_0
    invoke-static/range {p2 .. p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    .line 3873
    .local v10, "doubleValue":D
    new-instance v3, Landroid/support/media/ExifInterface$Rational;

    const/4 v4, 0x0

    invoke-direct {v3, v10, v11, v4}, Landroid/support/media/ExifInterface$Rational;-><init>(DLandroid/support/media/ExifInterface$1;)V

    invoke-virtual {v3}, Landroid/support/media/ExifInterface$Rational;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    goto :goto_1

    .line 3874
    .end local v10    # "doubleValue":D
    :catch_0
    move-exception v12

    .line 3875
    .local v12, "e":Ljava/lang/NumberFormatException;
    const-string v3, "ExifInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid value for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3885
    .end local v12    # "e":Ljava/lang/NumberFormatException;
    .restart local v15    # "i":I
    :cond_6
    sget-object v3, Landroid/support/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    aget-object v3, v3, v15

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/support/media/ExifInterface$ExifTag;

    .line 3886
    .local v13, "exifTag":Landroid/support/media/ExifInterface$ExifTag;
    if-eqz v13, :cond_4

    .line 3887
    if-nez p2, :cond_7

    .line 3888
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v15

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 3891
    :cond_7
    invoke-static/range {p2 .. p2}, Landroid/support/media/ExifInterface;->guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v14

    .line 3893
    .local v14, "guess":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget v4, v13, Landroid/support/media/ExifInterface$ExifTag;->primaryFormat:I

    iget-object v3, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v4, v3, :cond_8

    iget v4, v13, Landroid/support/media/ExifInterface$ExifTag;->primaryFormat:I

    iget-object v3, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v4, v3, :cond_9

    .line 3894
    :cond_8
    iget v2, v13, Landroid/support/media/ExifInterface$ExifTag;->primaryFormat:I

    .line 3911
    .local v2, "dataFormat":I
    :goto_4
    packed-switch v2, :pswitch_data_0

    .line 3986
    :pswitch_0
    const-string v3, "ExifInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Data format isn\'t one of expected formats: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 3895
    .end local v2    # "dataFormat":I
    :cond_9
    iget v3, v13, Landroid/support/media/ExifInterface$ExifTag;->secondaryFormat:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_b

    iget v4, v13, Landroid/support/media/ExifInterface$ExifTag;->secondaryFormat:I

    iget-object v3, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v4, v3, :cond_a

    iget v4, v13, Landroid/support/media/ExifInterface$ExifTag;->secondaryFormat:I

    iget-object v3, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    .line 3896
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v4, v3, :cond_b

    .line 3897
    :cond_a
    iget v2, v13, Landroid/support/media/ExifInterface$ExifTag;->secondaryFormat:I

    .restart local v2    # "dataFormat":I
    goto :goto_4

    .line 3898
    .end local v2    # "dataFormat":I
    :cond_b
    iget v3, v13, Landroid/support/media/ExifInterface$ExifTag;->primaryFormat:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_c

    iget v3, v13, Landroid/support/media/ExifInterface$ExifTag;->primaryFormat:I

    const/4 v4, 0x7

    if-eq v3, v4, :cond_c

    iget v3, v13, Landroid/support/media/ExifInterface$ExifTag;->primaryFormat:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_d

    .line 3901
    :cond_c
    iget v2, v13, Landroid/support/media/ExifInterface$ExifTag;->primaryFormat:I

    .restart local v2    # "dataFormat":I
    goto :goto_4

    .line 3903
    .end local v2    # "dataFormat":I
    :cond_d
    const-string v4, "ExifInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Given tag ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ") value didn\'t match with one of expected "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "formats: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Landroid/support/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    iget v6, v13, Landroid/support/media/ExifInterface$ExifTag;->primaryFormat:I

    aget-object v5, v5, v6

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v3, v13, Landroid/support/media/ExifInterface$ExifTag;->secondaryFormat:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_e

    const-string v3, ""

    :goto_5
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " (guess: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/support/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    iget-object v3, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    .line 3907
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v3, v6, v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_f

    const-string v3, ""

    .line 3908
    :goto_6
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3903
    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v6, Landroid/support/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    iget v7, v13, Landroid/support/media/ExifInterface$ExifTag;->secondaryFormat:I

    aget-object v6, v6, v7

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    .line 3907
    :cond_f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Landroid/support/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    iget-object v3, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    .line 3908
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v3, v7, v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    .line 3913
    .restart local v2    # "dataFormat":I
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v15

    invoke-static/range {p2 .. p2}, Landroid/support/media/ExifInterface$ExifAttribute;->createByte(Ljava/lang/String;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 3918
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v15

    invoke-static/range {p2 .. p2}, Landroid/support/media/ExifInterface$ExifAttribute;->createString(Ljava/lang/String;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 3922
    :pswitch_3
    const-string v3, ","

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    .line 3923
    .local v22, "values":[Ljava/lang/String;
    move-object/from16 v0, v22

    array-length v3, v0

    new-array v0, v3, [I

    move-object/from16 v16, v0

    .line 3924
    .local v16, "intArray":[I
    const/16 v17, 0x0

    .local v17, "j":I
    :goto_7
    move-object/from16 v0, v22

    array-length v3, v0

    move/from16 v0, v17

    if-ge v0, v3, :cond_10

    .line 3925
    aget-object v3, v22, v17

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v16, v17

    .line 3924
    add-int/lit8 v17, v17, 0x1

    goto :goto_7

    .line 3927
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v15

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 3928
    move-object/from16 v0, v16

    invoke-static {v0, v4}, Landroid/support/media/ExifInterface$ExifAttribute;->createUShort([ILjava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object v4

    .line 3927
    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 3932
    .end local v16    # "intArray":[I
    .end local v17    # "j":I
    .end local v22    # "values":[Ljava/lang/String;
    :pswitch_4
    const-string v3, ","

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    .line 3933
    .restart local v22    # "values":[Ljava/lang/String;
    move-object/from16 v0, v22

    array-length v3, v0

    new-array v0, v3, [I

    move-object/from16 v16, v0

    .line 3934
    .restart local v16    # "intArray":[I
    const/16 v17, 0x0

    .restart local v17    # "j":I
    :goto_8
    move-object/from16 v0, v22

    array-length v3, v0

    move/from16 v0, v17

    if-ge v0, v3, :cond_11

    .line 3935
    aget-object v3, v22, v17

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v16, v17

    .line 3934
    add-int/lit8 v17, v17, 0x1

    goto :goto_8

    .line 3937
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v15

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 3938
    move-object/from16 v0, v16

    invoke-static {v0, v4}, Landroid/support/media/ExifInterface$ExifAttribute;->createSLong([ILjava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object v4

    .line 3937
    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 3942
    .end local v16    # "intArray":[I
    .end local v17    # "j":I
    .end local v22    # "values":[Ljava/lang/String;
    :pswitch_5
    const-string v3, ","

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    .line 3943
    .restart local v22    # "values":[Ljava/lang/String;
    move-object/from16 v0, v22

    array-length v3, v0

    new-array v0, v3, [J

    move-object/from16 v18, v0

    .line 3944
    .local v18, "longArray":[J
    const/16 v17, 0x0

    .restart local v17    # "j":I
    :goto_9
    move-object/from16 v0, v22

    array-length v3, v0

    move/from16 v0, v17

    if-ge v0, v3, :cond_12

    .line 3945
    aget-object v3, v22, v17

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    aput-wide v4, v18, v17

    .line 3944
    add-int/lit8 v17, v17, 0x1

    goto :goto_9

    .line 3947
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v15

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 3948
    move-object/from16 v0, v18

    invoke-static {v0, v4}, Landroid/support/media/ExifInterface$ExifAttribute;->createULong([JLjava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object v4

    .line 3947
    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 3952
    .end local v17    # "j":I
    .end local v18    # "longArray":[J
    .end local v22    # "values":[Ljava/lang/String;
    :pswitch_6
    const-string v3, ","

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    .line 3953
    .restart local v22    # "values":[Ljava/lang/String;
    move-object/from16 v0, v22

    array-length v3, v0

    new-array v0, v3, [Landroid/support/media/ExifInterface$Rational;

    move-object/from16 v21, v0

    .line 3954
    .local v21, "rationalArray":[Landroid/support/media/ExifInterface$Rational;
    const/16 v17, 0x0

    .restart local v17    # "j":I
    :goto_a
    move-object/from16 v0, v22

    array-length v3, v0

    move/from16 v0, v17

    if-ge v0, v3, :cond_13

    .line 3955
    aget-object v3, v22, v17

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 3956
    .local v20, "numbers":[Ljava/lang/String;
    new-instance v3, Landroid/support/media/ExifInterface$Rational;

    const/4 v4, 0x0

    aget-object v4, v20, v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-long v4, v4

    const/4 v6, 0x1

    aget-object v6, v20, v6

    .line 3957
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    double-to-long v6, v6

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Landroid/support/media/ExifInterface$Rational;-><init>(JJLandroid/support/media/ExifInterface$1;)V

    aput-object v3, v21, v17

    .line 3954
    add-int/lit8 v17, v17, 0x1

    goto :goto_a

    .line 3959
    .end local v20    # "numbers":[Ljava/lang/String;
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v15

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 3960
    move-object/from16 v0, v21

    invoke-static {v0, v4}, Landroid/support/media/ExifInterface$ExifAttribute;->createURational([Landroid/support/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object v4

    .line 3959
    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 3964
    .end local v17    # "j":I
    .end local v21    # "rationalArray":[Landroid/support/media/ExifInterface$Rational;
    .end local v22    # "values":[Ljava/lang/String;
    :pswitch_7
    const-string v3, ","

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    .line 3965
    .restart local v22    # "values":[Ljava/lang/String;
    move-object/from16 v0, v22

    array-length v3, v0

    new-array v0, v3, [Landroid/support/media/ExifInterface$Rational;

    move-object/from16 v21, v0

    .line 3966
    .restart local v21    # "rationalArray":[Landroid/support/media/ExifInterface$Rational;
    const/16 v17, 0x0

    .restart local v17    # "j":I
    :goto_b
    move-object/from16 v0, v22

    array-length v3, v0

    move/from16 v0, v17

    if-ge v0, v3, :cond_14

    .line 3967
    aget-object v3, v22, v17

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 3968
    .restart local v20    # "numbers":[Ljava/lang/String;
    new-instance v3, Landroid/support/media/ExifInterface$Rational;

    const/4 v4, 0x0

    aget-object v4, v20, v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-long v4, v4

    const/4 v6, 0x1

    aget-object v6, v20, v6

    .line 3969
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    double-to-long v6, v6

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Landroid/support/media/ExifInterface$Rational;-><init>(JJLandroid/support/media/ExifInterface$1;)V

    aput-object v3, v21, v17

    .line 3966
    add-int/lit8 v17, v17, 0x1

    goto :goto_b

    .line 3971
    .end local v20    # "numbers":[Ljava/lang/String;
    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v15

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 3972
    move-object/from16 v0, v21

    invoke-static {v0, v4}, Landroid/support/media/ExifInterface$ExifAttribute;->createSRational([Landroid/support/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object v4

    .line 3971
    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 3976
    .end local v17    # "j":I
    .end local v21    # "rationalArray":[Landroid/support/media/ExifInterface$Rational;
    .end local v22    # "values":[Ljava/lang/String;
    :pswitch_8
    const-string v3, ","

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    .line 3977
    .restart local v22    # "values":[Ljava/lang/String;
    move-object/from16 v0, v22

    array-length v3, v0

    new-array v9, v3, [D

    .line 3978
    .local v9, "doubleArray":[D
    const/16 v17, 0x0

    .restart local v17    # "j":I
    :goto_c
    move-object/from16 v0, v22

    array-length v3, v0

    move/from16 v0, v17

    if-ge v0, v3, :cond_15

    .line 3979
    aget-object v3, v22, v17

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    aput-wide v4, v9, v17

    .line 3978
    add-int/lit8 v17, v17, 0x1

    goto :goto_c

    .line 3981
    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v15

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 3982
    invoke-static {v9, v4}, Landroid/support/media/ExifInterface$ExifAttribute;->createDouble([DLjava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object v4

    .line 3981
    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 3911
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_7
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method
