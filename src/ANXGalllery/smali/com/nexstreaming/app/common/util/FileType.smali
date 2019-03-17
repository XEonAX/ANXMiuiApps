.class public final enum Lcom/nexstreaming/app/common/util/FileType;
.super Ljava/lang/Enum;
.source "FileType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nexstreaming/app/common/util/FileType$a;,
        Lcom/nexstreaming/app/common/util/FileType$FileCategory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nexstreaming/app/common/util/FileType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nexstreaming/app/common/util/FileType;

.field public static final enum AAC:Lcom/nexstreaming/app/common/util/FileType;

.field public static final enum ACC:Lcom/nexstreaming/app/common/util/FileType;

.field public static final enum AVI:Lcom/nexstreaming/app/common/util/FileType;

.field public static final enum BMP:Lcom/nexstreaming/app/common/util/FileType;

.field private static final CHECK_SIZE:I = 0x20

.field public static final enum F_3GP:Lcom/nexstreaming/app/common/util/FileType;

.field public static final enum GIF:Lcom/nexstreaming/app/common/util/FileType;

.field public static final enum JPEG:Lcom/nexstreaming/app/common/util/FileType;

.field public static final enum K3G:Lcom/nexstreaming/app/common/util/FileType;

.field private static final LOG_TAG:Ljava/lang/String; = "FileType"

.field public static final enum M4A:Lcom/nexstreaming/app/common/util/FileType;

.field public static final enum M4V:Lcom/nexstreaming/app/common/util/FileType;

.field public static final enum MOV:Lcom/nexstreaming/app/common/util/FileType;

.field public static final enum MP3:Lcom/nexstreaming/app/common/util/FileType;

.field public static final enum MP4:Lcom/nexstreaming/app/common/util/FileType;

.field public static final enum PNG:Lcom/nexstreaming/app/common/util/FileType;

.field public static final enum SVG:Lcom/nexstreaming/app/common/util/FileType;

.field public static final enum TTF:Lcom/nexstreaming/app/common/util/FileType;

.field public static final enum WBMP:Lcom/nexstreaming/app/common/util/FileType;

.field public static final enum WEBP:Lcom/nexstreaming/app/common/util/FileType;

.field private static final WEBP_HEADER:[B

.field public static final enum WMV:Lcom/nexstreaming/app/common/util/FileType;

.field private static final extensionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nexstreaming/app/common/util/FileType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final category:Lcom/nexstreaming/app/common/util/FileType$FileCategory;

.field private final extensionOnly:Z

.field private final extensions:[Ljava/lang/String;

.field private final imp:Lcom/nexstreaming/app/common/util/FileType$a;

.field private final isSupportedFormat:Z


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/16 v11, 0xc

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 16
    new-instance v0, Lcom/nexstreaming/app/common/util/FileType;

    const-string v1, "JPEG"

    sget-object v3, Lcom/nexstreaming/app/common/util/FileType$FileCategory;->Image:Lcom/nexstreaming/app/common/util/FileType$FileCategory;

    new-array v4, v10, [Ljava/lang/String;

    const-string v5, "jpeg"

    aput-object v5, v4, v2

    const-string v5, "jpg"

    aput-object v5, v4, v9

    new-array v5, v9, [[I

    new-array v6, v12, [I

    fill-array-data v6, :array_0

    aput-object v6, v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/nexstreaming/app/common/util/FileType;-><init>(Ljava/lang/String;ILcom/nexstreaming/app/common/util/FileType$FileCategory;[Ljava/lang/String;[[I)V

    sput-object v0, Lcom/nexstreaming/app/common/util/FileType;->JPEG:Lcom/nexstreaming/app/common/util/FileType;

    .line 17
    new-instance v3, Lcom/nexstreaming/app/common/util/FileType;

    const-string v4, "PNG"

    sget-object v6, Lcom/nexstreaming/app/common/util/FileType$FileCategory;->Image:Lcom/nexstreaming/app/common/util/FileType$FileCategory;

    new-array v7, v9, [Ljava/lang/String;

    const-string v0, "png"

    aput-object v0, v7, v2

    new-array v8, v9, [[I

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    aput-object v0, v8, v2

    move v5, v9

    invoke-direct/range {v3 .. v8}, Lcom/nexstreaming/app/common/util/FileType;-><init>(Ljava/lang/String;ILcom/nexstreaming/app/common/util/FileType$FileCategory;[Ljava/lang/String;[[I)V

    sput-object v3, Lcom/nexstreaming/app/common/util/FileType;->PNG:Lcom/nexstreaming/app/common/util/FileType;

    .line 18
    new-instance v3, Lcom/nexstreaming/app/common/util/FileType;

    const-string v4, "SVG"

    sget-object v6, Lcom/nexstreaming/app/common/util/FileType$FileCategory;->Image:Lcom/nexstreaming/app/common/util/FileType$FileCategory;

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v0, "svg"

    aput-object v0, v7, v2

    new-array v8, v10, [[I

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    aput-object v0, v8, v2

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    aput-object v0, v8, v9

    move v5, v10

    invoke-direct/range {v3 .. v8}, Lcom/nexstreaming/app/common/util/FileType;-><init>(Ljava/lang/String;ILcom/nexstreaming/app/common/util/FileType$FileCategory;[Ljava/lang/String;[[I)V

    sput-object v3, Lcom/nexstreaming/app/common/util/FileType;->SVG:Lcom/nexstreaming/app/common/util/FileType;

    .line 19
    new-instance v3, Lcom/nexstreaming/app/common/util/FileType;

    const-string v4, "WEBP"

    sget-object v6, Lcom/nexstreaming/app/common/util/FileType$FileCategory;->Image:Lcom/nexstreaming/app/common/util/FileType$FileCategory;

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v0, "webp"

    aput-object v0, v7, v2

    new-array v8, v9, [[I

    new-array v0, v11, [I

    fill-array-data v0, :array_4

    aput-object v0, v8, v2

    move v5, v12

    invoke-direct/range {v3 .. v8}, Lcom/nexstreaming/app/common/util/FileType;-><init>(Ljava/lang/String;ILcom/nexstreaming/app/common/util/FileType$FileCategory;[Ljava/lang/String;[[I)V

    sput-object v3, Lcom/nexstreaming/app/common/util/FileType;->WEBP:Lcom/nexstreaming/app/common/util/FileType;

    .line 20
    new-instance v3, Lcom/nexstreaming/app/common/util/FileType;

    const-string v4, "GIF"

    const/4 v5, 0x4

    sget-object v6, Lcom/nexstreaming/app/common/util/FileType$FileCategory;->Image:Lcom/nexstreaming/app/common/util/FileType$FileCategory;

    new-array v7, v9, [Ljava/lang/String;

    const-string v0, "gif"

    aput-object v0, v7, v2

    new-array v8, v10, [[I

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_5

    aput-object v0, v8, v2

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_6

    aput-object v0, v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/nexstreaming/app/common/util/FileType;-><init>(Ljava/lang/String;ILcom/nexstreaming/app/common/util/FileType$FileCategory;[Ljava/lang/String;[[I)V

    sput-object v3, Lcom/nexstreaming/app/common/util/FileType;->GIF:Lcom/nexstreaming/app/common/util/FileType;

    .line 21
    new-instance v3, Lcom/nexstreaming/app/common/util/FileType;

    const-string v4, "M4A"

    const/4 v5, 0x5

    sget-object v6, Lcom/nexstreaming/app/common/util/FileType$FileCategory;->Audio:Lcom/nexstreaming/app/common/util/FileType$FileCategory;

    new-array v7, v9, [Ljava/lang/String;

    const-string v0, "m4a"

    aput-object v0, v7, v2

    new-array v8, v10, [[I

    new-array v0, v11, [I

    fill-array-data v0, :array_7

    aput-object v0, v8, v2

    new-array v0, v11, [I

    fill-array-data v0, :array_8

    aput-object v0, v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/nexstreaming/app/common/util/FileType;-><init>(Ljava/lang/String;ILcom/nexstreaming/app/common/util/FileType$FileCategory;[Ljava/lang/String;[[I)V

    sput-object v3, Lcom/nexstreaming/app/common/util/FileType;->M4A:Lcom/nexstreaming/app/common/util/FileType;

    .line 25
    new-instance v3, Lcom/nexstreaming/app/common/util/FileType;

    const-string v4, "M4V"

    const/4 v5, 0x6

    sget-object v6, Lcom/nexstreaming/app/common/util/FileType$FileCategory;->Video:Lcom/nexstreaming/app/common/util/FileType$FileCategory;

    new-array v7, v9, [Ljava/lang/String;

    const-string v0, "m4v"

    aput-object v0, v7, v2

    new-array v8, v10, [[I

    new-array v0, v11, [I

    fill-array-data v0, :array_9

    aput-object v0, v8, v2

    new-array v0, v11, [I

    fill-array-data v0, :array_a

    aput-object v0, v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/nexstreaming/app/common/util/FileType;-><init>(Ljava/lang/String;ILcom/nexstreaming/app/common/util/FileType$FileCategory;[Ljava/lang/String;[[I)V

    sput-object v3, Lcom/nexstreaming/app/common/util/FileType;->M4V:Lcom/nexstreaming/app/common/util/FileType;

    .line 29
    new-instance v3, Lcom/nexstreaming/app/common/util/FileType;

    const-string v4, "MP4"

    const/4 v5, 0x7

    sget-object v6, Lcom/nexstreaming/app/common/util/FileType$FileCategory;->Video:Lcom/nexstreaming/app/common/util/FileType$FileCategory;

    new-array v7, v9, [Ljava/lang/String;

    const-string v0, "mp4"

    aput-object v0, v7, v2

    const/16 v0, 0x8

    new-array v8, v0, [[I

    new-array v0, v11, [I

    fill-array-data v0, :array_b

    aput-object v0, v8, v2

    new-array v0, v11, [I

    fill-array-data v0, :array_c

    aput-object v0, v8, v9

    new-array v0, v11, [I

    fill-array-data v0, :array_d

    aput-object v0, v8, v10

    const/16 v0, 0x18

    new-array v0, v0, [I

    fill-array-data v0, :array_e

    aput-object v0, v8, v12

    const/4 v0, 0x4

    new-array v1, v11, [I

    fill-array-data v1, :array_f

    aput-object v1, v8, v0

    const/4 v0, 0x5

    new-array v1, v11, [I

    fill-array-data v1, :array_10

    aput-object v1, v8, v0

    const/4 v0, 0x6

    new-array v1, v11, [I

    fill-array-data v1, :array_11

    aput-object v1, v8, v0

    const/4 v0, 0x7

    new-array v1, v11, [I

    fill-array-data v1, :array_12

    aput-object v1, v8, v0

    invoke-direct/range {v3 .. v8}, Lcom/nexstreaming/app/common/util/FileType;-><init>(Ljava/lang/String;ILcom/nexstreaming/app/common/util/FileType$FileCategory;[Ljava/lang/String;[[I)V

    sput-object v3, Lcom/nexstreaming/app/common/util/FileType;->MP4:Lcom/nexstreaming/app/common/util/FileType;

    .line 39
    new-instance v3, Lcom/nexstreaming/app/common/util/FileType;

    const-string v4, "F_3GP"

    const/16 v5, 0x8

    sget-object v6, Lcom/nexstreaming/app/common/util/FileType$FileCategory;->VideoOrAudio:Lcom/nexstreaming/app/common/util/FileType$FileCategory;

    new-array v7, v12, [Ljava/lang/String;

    const-string v0, "3gp"

    aput-object v0, v7, v2

    const-string v0, "3gpp"

    aput-object v0, v7, v9

    const-string v0, "3g2"

    aput-object v0, v7, v10

    new-array v8, v10, [[I

    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_13

    aput-object v0, v8, v2

    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_14

    aput-object v0, v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/nexstreaming/app/common/util/FileType;-><init>(Ljava/lang/String;ILcom/nexstreaming/app/common/util/FileType$FileCategory;[Ljava/lang/String;[[I)V

    sput-object v3, Lcom/nexstreaming/app/common/util/FileType;->F_3GP:Lcom/nexstreaming/app/common/util/FileType;

    .line 43
    new-instance v0, Lcom/nexstreaming/app/common/util/FileType;

    const-string v1, "K3G"

    const/16 v3, 0x9

    sget-object v4, Lcom/nexstreaming/app/common/util/FileType$FileCategory;->Video:Lcom/nexstreaming/app/common/util/FileType$FileCategory;

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "k3g"

    aput-object v6, v5, v2

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/nexstreaming/app/common/util/FileType;-><init>(Ljava/lang/String;ILcom/nexstreaming/app/common/util/FileType$FileCategory;[Ljava/lang/String;)V

    sput-object v0, Lcom/nexstreaming/app/common/util/FileType;->K3G:Lcom/nexstreaming/app/common/util/FileType;

    .line 44
    new-instance v0, Lcom/nexstreaming/app/common/util/FileType;

    const-string v1, "ACC"

    const/16 v3, 0xa

    sget-object v4, Lcom/nexstreaming/app/common/util/FileType$FileCategory;->Video:Lcom/nexstreaming/app/common/util/FileType$FileCategory;

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "acc"

    aput-object v6, v5, v2

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/nexstreaming/app/common/util/FileType;-><init>(Ljava/lang/String;ILcom/nexstreaming/app/common/util/FileType$FileCategory;[Ljava/lang/String;)V

    sput-object v0, Lcom/nexstreaming/app/common/util/FileType;->ACC:Lcom/nexstreaming/app/common/util/FileType;

    .line 45
    new-instance v3, Lcom/nexstreaming/app/common/util/FileType;

    const-string v4, "AVI"

    const/16 v5, 0xb

    sget-object v6, Lcom/nexstreaming/app/common/util/FileType$FileCategory;->Video:Lcom/nexstreaming/app/common/util/FileType$FileCategory;

    new-array v7, v9, [Ljava/lang/String;

    const-string v0, "avi"

    aput-object v0, v7, v2

    new-array v8, v9, [[I

    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_15

    aput-object v0, v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/nexstreaming/app/common/util/FileType;-><init>(Ljava/lang/String;ILcom/nexstreaming/app/common/util/FileType$FileCategory;[Ljava/lang/String;[[I)V

    sput-object v3, Lcom/nexstreaming/app/common/util/FileType;->AVI:Lcom/nexstreaming/app/common/util/FileType;

    .line 46
    new-instance v3, Lcom/nexstreaming/app/common/util/FileType;

    const-string v4, "MOV"

    sget-object v6, Lcom/nexstreaming/app/common/util/FileType$FileCategory;->Video:Lcom/nexstreaming/app/common/util/FileType$FileCategory;

    new-array v7, v9, [Ljava/lang/String;

    const-string v0, "mov"

    aput-object v0, v7, v2

    new-array v8, v12, [[I

    new-array v0, v11, [I

    fill-array-data v0, :array_16

    aput-object v0, v8, v2

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_17

    aput-object v0, v8, v9

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_18

    aput-object v0, v8, v10

    move v5, v11

    invoke-direct/range {v3 .. v8}, Lcom/nexstreaming/app/common/util/FileType;-><init>(Ljava/lang/String;ILcom/nexstreaming/app/common/util/FileType$FileCategory;[Ljava/lang/String;[[I)V

    sput-object v3, Lcom/nexstreaming/app/common/util/FileType;->MOV:Lcom/nexstreaming/app/common/util/FileType;

    .line 51
    new-instance v3, Lcom/nexstreaming/app/common/util/FileType;

    const-string v4, "WMV"

    const/16 v5, 0xd

    sget-object v6, Lcom/nexstreaming/app/common/util/FileType$FileCategory;->Video:Lcom/nexstreaming/app/common/util/FileType$FileCategory;

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v0, "wmv"

    aput-object v0, v7, v2

    new-array v8, v9, [[I

    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_19

    aput-object v0, v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/nexstreaming/app/common/util/FileType;-><init>(Ljava/lang/String;ILcom/nexstreaming/app/common/util/FileType$FileCategory;[Ljava/lang/String;[[I)V

    sput-object v3, Lcom/nexstreaming/app/common/util/FileType;->WMV:Lcom/nexstreaming/app/common/util/FileType;

    .line 52
    new-instance v3, Lcom/nexstreaming/app/common/util/FileType;

    const-string v4, "MP3"

    const/16 v5, 0xe

    sget-object v6, Lcom/nexstreaming/app/common/util/FileType$FileCategory;->Audio:Lcom/nexstreaming/app/common/util/FileType$FileCategory;

    new-array v7, v9, [Ljava/lang/String;

    const-string v0, "mp3"

    aput-object v0, v7, v2

    new-array v8, v10, [[I

    new-array v0, v12, [I

    fill-array-data v0, :array_1a

    aput-object v0, v8, v2

    new-array v0, v10, [I

    fill-array-data v0, :array_1b

    aput-object v0, v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/nexstreaming/app/common/util/FileType;-><init>(Ljava/lang/String;ILcom/nexstreaming/app/common/util/FileType$FileCategory;[Ljava/lang/String;[[I)V

    sput-object v3, Lcom/nexstreaming/app/common/util/FileType;->MP3:Lcom/nexstreaming/app/common/util/FileType;

    .line 53
    new-instance v3, Lcom/nexstreaming/app/common/util/FileType;

    const-string v4, "AAC"

    const/16 v5, 0xf

    sget-object v6, Lcom/nexstreaming/app/common/util/FileType$FileCategory;->Audio:Lcom/nexstreaming/app/common/util/FileType$FileCategory;

    new-array v7, v9, [Ljava/lang/String;

    const-string v0, "aac"

    aput-object v0, v7, v2

    new-array v8, v10, [[I

    new-array v0, v10, [I

    fill-array-data v0, :array_1c

    aput-object v0, v8, v2

    new-array v0, v10, [I

    fill-array-data v0, :array_1d

    aput-object v0, v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/nexstreaming/app/common/util/FileType;-><init>(Ljava/lang/String;ILcom/nexstreaming/app/common/util/FileType$FileCategory;[Ljava/lang/String;[[I)V

    sput-object v3, Lcom/nexstreaming/app/common/util/FileType;->AAC:Lcom/nexstreaming/app/common/util/FileType;

    .line 54
    new-instance v3, Lcom/nexstreaming/app/common/util/FileType;

    const-string v4, "BMP"

    const/16 v5, 0x10

    sget-object v6, Lcom/nexstreaming/app/common/util/FileType$FileCategory;->Image:Lcom/nexstreaming/app/common/util/FileType$FileCategory;

    new-array v7, v9, [Ljava/lang/String;

    const-string v0, "bmp"

    aput-object v0, v7, v2

    new-array v8, v9, [[I

    new-array v0, v10, [I

    fill-array-data v0, :array_1e

    aput-object v0, v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/nexstreaming/app/common/util/FileType;-><init>(Ljava/lang/String;ILcom/nexstreaming/app/common/util/FileType$FileCategory;[Ljava/lang/String;[[I)V

    sput-object v3, Lcom/nexstreaming/app/common/util/FileType;->BMP:Lcom/nexstreaming/app/common/util/FileType;

    .line 55
    new-instance v0, Lcom/nexstreaming/app/common/util/FileType;

    const-string v1, "TTF"

    const/16 v3, 0x11

    sget-object v4, Lcom/nexstreaming/app/common/util/FileType$FileCategory;->Font:Lcom/nexstreaming/app/common/util/FileType$FileCategory;

    new-array v5, v10, [Ljava/lang/String;

    const-string/jumbo v6, "ttf"

    aput-object v6, v5, v2

    const-string v6, "otf"

    aput-object v6, v5, v9

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/nexstreaming/app/common/util/FileType;-><init>(Ljava/lang/String;ILcom/nexstreaming/app/common/util/FileType$FileCategory;[Ljava/lang/String;)V

    sput-object v0, Lcom/nexstreaming/app/common/util/FileType;->TTF:Lcom/nexstreaming/app/common/util/FileType;

    .line 56
    new-instance v3, Lcom/nexstreaming/app/common/util/FileType;

    const-string v4, "WBMP"

    const/16 v5, 0x12

    sget-object v6, Lcom/nexstreaming/app/common/util/FileType$FileCategory;->Image:Lcom/nexstreaming/app/common/util/FileType$FileCategory;

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v0, "wbmp"

    aput-object v0, v7, v2

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/nexstreaming/app/common/util/FileType;-><init>(Ljava/lang/String;ILcom/nexstreaming/app/common/util/FileType$FileCategory;[Ljava/lang/String;Z)V

    sput-object v3, Lcom/nexstreaming/app/common/util/FileType;->WBMP:Lcom/nexstreaming/app/common/util/FileType;

    .line 14
    const/16 v0, 0x13

    new-array v0, v0, [Lcom/nexstreaming/app/common/util/FileType;

    sget-object v1, Lcom/nexstreaming/app/common/util/FileType;->JPEG:Lcom/nexstreaming/app/common/util/FileType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nexstreaming/app/common/util/FileType;->PNG:Lcom/nexstreaming/app/common/util/FileType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/nexstreaming/app/common/util/FileType;->SVG:Lcom/nexstreaming/app/common/util/FileType;

    aput-object v1, v0, v10

    sget-object v1, Lcom/nexstreaming/app/common/util/FileType;->WEBP:Lcom/nexstreaming/app/common/util/FileType;

    aput-object v1, v0, v12

    const/4 v1, 0x4

    sget-object v2, Lcom/nexstreaming/app/common/util/FileType;->GIF:Lcom/nexstreaming/app/common/util/FileType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/nexstreaming/app/common/util/FileType;->M4A:Lcom/nexstreaming/app/common/util/FileType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nexstreaming/app/common/util/FileType;->M4V:Lcom/nexstreaming/app/common/util/FileType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/nexstreaming/app/common/util/FileType;->MP4:Lcom/nexstreaming/app/common/util/FileType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/nexstreaming/app/common/util/FileType;->F_3GP:Lcom/nexstreaming/app/common/util/FileType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/nexstreaming/app/common/util/FileType;->K3G:Lcom/nexstreaming/app/common/util/FileType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/nexstreaming/app/common/util/FileType;->ACC:Lcom/nexstreaming/app/common/util/FileType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/nexstreaming/app/common/util/FileType;->AVI:Lcom/nexstreaming/app/common/util/FileType;

    aput-object v2, v0, v1

    sget-object v1, Lcom/nexstreaming/app/common/util/FileType;->MOV:Lcom/nexstreaming/app/common/util/FileType;

    aput-object v1, v0, v11

    const/16 v1, 0xd

    sget-object v2, Lcom/nexstreaming/app/common/util/FileType;->WMV:Lcom/nexstreaming/app/common/util/FileType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/nexstreaming/app/common/util/FileType;->MP3:Lcom/nexstreaming/app/common/util/FileType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/nexstreaming/app/common/util/FileType;->AAC:Lcom/nexstreaming/app/common/util/FileType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/nexstreaming/app/common/util/FileType;->BMP:Lcom/nexstreaming/app/common/util/FileType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/nexstreaming/app/common/util/FileType;->TTF:Lcom/nexstreaming/app/common/util/FileType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/nexstreaming/app/common/util/FileType;->WBMP:Lcom/nexstreaming/app/common/util/FileType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nexstreaming/app/common/util/FileType;->$VALUES:[Lcom/nexstreaming/app/common/util/FileType;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/nexstreaming/app/common/util/FileType;->extensionMap:Ljava/util/Map;

    .line 68
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_1f

    sput-object v0, Lcom/nexstreaming/app/common/util/FileType;->WEBP_HEADER:[B

    return-void

    .line 16
    nop

    :array_0
    .array-data 4
        0xff
        0xd8
        0xff
    .end array-data

    .line 17
    :array_1
    .array-data 4
        0x89
        0x50
        0x4e
        0x47
        0xd
        0xa
        0x1a
        0xa
    .end array-data

    .line 18
    :array_2
    .array-data 4
        0x3c
        0x73
        0x76
        0x67
    .end array-data

    :array_3
    .array-data 4
        0x3c
        0x53
        0x56
        0x47
    .end array-data

    .line 19
    :array_4
    .array-data 4
        0x52
        0x49
        0x46
        0x46
        -0x1
        -0x1
        -0x1
        -0x1
        0x57
        0x45
        0x42
        0x50
    .end array-data

    .line 20
    :array_5
    .array-data 4
        0x47
        0x49
        0x46
        0x38
        0x37
        0x61
    .end array-data

    :array_6
    .array-data 4
        0x47
        0x49
        0x46
        0x38
        0x39
        0x61
    .end array-data

    .line 21
    :array_7
    .array-data 4
        0x0
        0x0
        0x0
        0x20
        0x66
        0x74
        0x79
        0x70
        0x4d
        0x34
        0x41
        0x20
    .end array-data

    :array_8
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        0x66
        0x74
        0x79
        0x70
        0x4d
        0x34
        0x41
        0x20
    .end array-data

    .line 25
    :array_9
    .array-data 4
        0x0
        0x0
        0x0
        0x18
        0x66
        0x74
        0x79
        0x70
        0x6d
        0x70
        0x34
        0x32
    .end array-data

    :array_a
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        0x66
        0x74
        0x79
        0x70
        0x6d
        0x70
        0x34
        0x32
    .end array-data

    .line 29
    :array_b
    .array-data 4
        0x0
        0x0
        0x0
        0x14
        0x66
        0x74
        0x79
        0x70
        0x69
        0x73
        0x6f
        0x6d
    .end array-data

    :array_c
    .array-data 4
        0x0
        0x0
        0x0
        0x18
        0x66
        0x74
        0x79
        0x70
        0x69
        0x73
        0x6f
        0x6d
    .end array-data

    :array_d
    .array-data 4
        0x0
        0x0
        0x0
        0x18
        0x66
        0x74
        0x79
        0x70
        0x33
        0x67
        0x70
        0x35
    .end array-data

    :array_e
    .array-data 4
        0x0
        0x0
        0x0
        0x1c
        0x66
        0x74
        0x79
        0x70
        0x4d
        0x53
        0x4e
        0x56
        0x1
        0x29
        0x0
        0x46
        0x4d
        0x53
        0x4e
        0x56
        0x6d
        0x70
        0x34
        0x32
    .end array-data

    :array_f
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        0x66
        0x74
        0x79
        0x70
        0x33
        0x67
        0x70
        0x35
    .end array-data

    :array_10
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        0x66
        0x74
        0x79
        0x70
        0x4d
        0x53
        0x4e
        0x56
    .end array-data

    :array_11
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        0x66
        0x74
        0x79
        0x70
        0x69
        0x73
        0x6f
        0x6d
    .end array-data

    :array_12
    .array-data 4
        0x0
        0x0
        0x0
        0x18
        0x66
        0x74
        0x79
        0x70
        0x6d
        0x70
        0x34
        0x31
    .end array-data

    .line 39
    :array_13
    .array-data 4
        0x0
        0x0
        0x0
        -0x1
        0x66
        0x74
        0x79
        0x70
        0x33
        0x67
        0x70
    .end array-data

    :array_14
    .array-data 4
        0x0
        0x0
        0x0
        -0x1
        0x66
        0x74
        0x79
        0x70
        0x33
        0x67
        0x32
    .end array-data

    .line 45
    :array_15
    .array-data 4
        0x52
        0x49
        0x46
        0x46
        -0x1
        -0x1
        -0x1
        -0x1
        0x41
        0x56
        0x49
        0x20
        0x4c
        0x49
        0x53
        0x54
    .end array-data

    .line 46
    :array_16
    .array-data 4
        0x0
        0x0
        0x0
        0x14
        0x66
        0x74
        0x79
        0x70
        0x71
        0x74
        0x20
        0x20
    .end array-data

    :array_17
    .array-data 4
        0x66
        0x74
        0x79
        0x70
        0x71
        0x74
        0x20
        0x20
    .end array-data

    :array_18
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        0x6d
        0x6f
        0x6f
        0x76
    .end array-data

    .line 51
    :array_19
    .array-data 4
        0x30
        0x26
        0xb2
        0x75
        0x8e
        0x66
        0xcf
        0x11
        0xa6
        0xd9
        0x0
        0xaa
        0x0
        0x62
        0xce
        0x6c
    .end array-data

    .line 52
    :array_1a
    .array-data 4
        0x49
        0x44
        0x33
    .end array-data

    :array_1b
    .array-data 4
        0xff
        0xfb
    .end array-data

    .line 53
    :array_1c
    .array-data 4
        0xff
        0xf1
    .end array-data

    :array_1d
    .array-data 4
        0xff
        0xf9
    .end array-data

    .line 54
    :array_1e
    .array-data 4
        0x42
        0x4d
    .end array-data

    .line 68
    :array_1f
    .array-data 1
        0x52t
        0x49t
        0x46t
        0x46t
        0x57t
        0x45t
        0x42t
        0x50t
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/nexstreaming/app/common/util/FileType$FileCategory;[Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nexstreaming/app/common/util/FileType$FileCategory;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 92
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 93
    new-instance v0, Lcom/nexstreaming/app/common/util/FileType$2;

    invoke-direct {v0, p0}, Lcom/nexstreaming/app/common/util/FileType$2;-><init>(Lcom/nexstreaming/app/common/util/FileType;)V

    iput-object v0, p0, Lcom/nexstreaming/app/common/util/FileType;->imp:Lcom/nexstreaming/app/common/util/FileType$a;

    .line 99
    iput-object p3, p0, Lcom/nexstreaming/app/common/util/FileType;->category:Lcom/nexstreaming/app/common/util/FileType$FileCategory;

    .line 100
    iput-object p4, p0, Lcom/nexstreaming/app/common/util/FileType;->extensions:[Ljava/lang/String;

    .line 101
    iput-boolean v1, p0, Lcom/nexstreaming/app/common/util/FileType;->extensionOnly:Z

    .line 102
    iput-boolean v1, p0, Lcom/nexstreaming/app/common/util/FileType;->isSupportedFormat:Z

    .line 103
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/nexstreaming/app/common/util/FileType$FileCategory;[Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nexstreaming/app/common/util/FileType$FileCategory;",
            "[",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 79
    new-instance v0, Lcom/nexstreaming/app/common/util/FileType$1;

    invoke-direct {v0, p0}, Lcom/nexstreaming/app/common/util/FileType$1;-><init>(Lcom/nexstreaming/app/common/util/FileType;)V

    iput-object v0, p0, Lcom/nexstreaming/app/common/util/FileType;->imp:Lcom/nexstreaming/app/common/util/FileType$a;

    .line 85
    iput-object p3, p0, Lcom/nexstreaming/app/common/util/FileType;->category:Lcom/nexstreaming/app/common/util/FileType$FileCategory;

    .line 86
    iput-object p4, p0, Lcom/nexstreaming/app/common/util/FileType;->extensions:[Ljava/lang/String;

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nexstreaming/app/common/util/FileType;->extensionOnly:Z

    .line 88
    iput-boolean p5, p0, Lcom/nexstreaming/app/common/util/FileType;->isSupportedFormat:Z

    .line 89
    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;ILcom/nexstreaming/app/common/util/FileType$FileCategory;[Ljava/lang/String;[[I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nexstreaming/app/common/util/FileType$FileCategory;",
            "[",
            "Ljava/lang/String;",
            "[[I)V"
        }
    .end annotation

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 106
    new-instance v0, Lcom/nexstreaming/app/common/util/FileType$3;

    invoke-direct {v0, p0, p5}, Lcom/nexstreaming/app/common/util/FileType$3;-><init>(Lcom/nexstreaming/app/common/util/FileType;[[I)V

    iput-object v0, p0, Lcom/nexstreaming/app/common/util/FileType;->imp:Lcom/nexstreaming/app/common/util/FileType$a;

    .line 124
    iput-object p3, p0, Lcom/nexstreaming/app/common/util/FileType;->category:Lcom/nexstreaming/app/common/util/FileType$FileCategory;

    .line 125
    iput-object p4, p0, Lcom/nexstreaming/app/common/util/FileType;->extensions:[Ljava/lang/String;

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nexstreaming/app/common/util/FileType;->extensionOnly:Z

    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nexstreaming/app/common/util/FileType;->isSupportedFormat:Z

    .line 128
    return-void
.end method

.method private static a()V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 131
    sget-object v0, Lcom/nexstreaming/app/common/util/FileType;->extensionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 139
    :cond_0
    return-void

    .line 133
    :cond_1
    invoke-static {}, Lcom/nexstreaming/app/common/util/FileType;->values()[Lcom/nexstreaming/app/common/util/FileType;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v5, v3, v2

    .line 134
    iget-object v6, v5, Lcom/nexstreaming/app/common/util/FileType;->extensions:[Ljava/lang/String;

    array-length v7, v6

    move v0, v1

    :goto_1
    if-ge v0, v7, :cond_2

    aget-object v8, v6, v0

    .line 135
    sget-object v9, Lcom/nexstreaming/app/common/util/FileType;->extensionMap:Ljava/util/Map;

    invoke-interface {v9, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 133
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method

.method public static fromExtension(Ljava/io/File;)Lcom/nexstreaming/app/common/util/FileType;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 189
    if-nez p0, :cond_1

    .line 218
    :cond_0
    :goto_0
    return-object v0

    .line 193
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 194
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 195
    if-ltz v2, :cond_3

    .line 196
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 204
    :goto_1
    if-eqz v1, :cond_0

    .line 205
    sget-object v0, Lcom/nexstreaming/app/common/util/FileType;->extensionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 206
    invoke-static {}, Lcom/nexstreaming/app/common/util/FileType;->a()V

    .line 207
    :cond_2
    sget-object v0, Lcom/nexstreaming/app/common/util/FileType;->extensionMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/app/common/util/FileType;

    goto :goto_0

    :cond_3
    move-object v1, v0

    .line 198
    goto :goto_1
.end method

.method public static fromExtension(Ljava/lang/String;)Lcom/nexstreaming/app/common/util/FileType;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 174
    if-nez p0, :cond_1

    .line 185
    :cond_0
    :goto_0
    return-object v0

    .line 176
    :cond_1
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 177
    if-ltz v1, :cond_0

    .line 179
    const/16 v2, 0x2f

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 180
    if-lt v1, v2, :cond_0

    .line 182
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 183
    sget-object v1, Lcom/nexstreaming/app/common/util/FileType;->extensionMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 184
    invoke-static {}, Lcom/nexstreaming/app/common/util/FileType;->a()V

    .line 185
    :cond_2
    sget-object v1, Lcom/nexstreaming/app/common/util/FileType;->extensionMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/app/common/util/FileType;

    goto :goto_0
.end method

.method public static fromFile(Ljava/io/File;)Lcom/nexstreaming/app/common/util/FileType;
    .locals 13

    .prologue
    const/16 v12, 0x20

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 229
    if-nez p0, :cond_1

    move-object v0, v2

    .line 301
    :cond_0
    :goto_0
    return-object v0

    .line 233
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 234
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 235
    if-ltz v1, :cond_2

    .line 236
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 243
    :goto_1
    if-eqz v6, :cond_5

    .line 244
    invoke-static {}, Lcom/nexstreaming/app/common/util/FileType;->values()[Lcom/nexstreaming/app/common/util/FileType;

    move-result-object v5

    array-length v7, v5

    move v4, v3

    :goto_2
    if-ge v4, v7, :cond_5

    aget-object v0, v5, v4

    .line 245
    iget-object v8, v0, Lcom/nexstreaming/app/common/util/FileType;->extensions:[Ljava/lang/String;

    array-length v9, v8

    move v1, v3

    :goto_3
    if-ge v1, v9, :cond_4

    aget-object v10, v8, v1

    .line 246
    iget-boolean v11, v0, Lcom/nexstreaming/app/common/util/FileType;->extensionOnly:Z

    if-eqz v11, :cond_3

    invoke-virtual {v10, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 247
    const-string v1, "FileType"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FileType extension match: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/nexstreaming/app/common/util/FileType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move-object v6, v2

    .line 238
    goto :goto_1

    .line 245
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 244
    :cond_4
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_2

    .line 258
    :cond_5
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v4, 0x20

    cmp-long v0, v0, v4

    if-ltz v0, :cond_e

    .line 259
    new-array v4, v12, [B

    .line 262
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    :try_start_1
    invoke-virtual {v1, v4}, Ljava/io/FileInputStream;->read([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 266
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 271
    :goto_4
    if-eqz v4, :cond_6

    if-lt v0, v12, :cond_6

    .line 273
    invoke-static {}, Lcom/nexstreaming/app/common/util/FileType;->values()[Lcom/nexstreaming/app/common/util/FileType;

    move-result-object v7

    array-length v8, v7

    move v5, v3

    move-object v1, v2

    :goto_5
    if-ge v5, v8, :cond_d

    aget-object v0, v7, v5

    .line 274
    iget-object v9, v0, Lcom/nexstreaming/app/common/util/FileType;->imp:Lcom/nexstreaming/app/common/util/FileType$a;

    invoke-virtual {v9, v4}, Lcom/nexstreaming/app/common/util/FileType$a;->a([B)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 275
    const-string v9, "FileType"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "FileType analysis match: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Lcom/nexstreaming/app/common/util/FileType;->name()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    if-eqz v1, :cond_8

    .line 277
    const-string v1, "FileType"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FileType analysis MULTIPLE match: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/nexstreaming/app/common/util/FileType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " (fall back to file extension)"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    .line 284
    :goto_6
    if-nez v0, :cond_0

    :cond_6
    move-object v5, v4

    .line 291
    :goto_7
    if-eqz v6, :cond_c

    .line 292
    invoke-static {}, Lcom/nexstreaming/app/common/util/FileType;->values()[Lcom/nexstreaming/app/common/util/FileType;

    move-result-object v7

    array-length v8, v7

    move v4, v3

    :goto_8
    if-ge v4, v8, :cond_c

    aget-object v1, v7, v4

    .line 293
    iget-object v9, v1, Lcom/nexstreaming/app/common/util/FileType;->extensions:[Ljava/lang/String;

    array-length v10, v9

    move v0, v3

    :goto_9
    if-ge v0, v10, :cond_b

    aget-object v11, v9, v0

    .line 294
    invoke-virtual {v11, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 295
    const-string v2, "FileType"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FileType extension match: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/nexstreaming/app/common/util/FileType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " ["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v5, :cond_9

    const-string v0, "null"

    :goto_a
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 296
    goto/16 :goto_0

    .line 266
    :catchall_0
    move-exception v0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 268
    :catch_0
    move-exception v0

    move v0, v3

    :goto_b
    move-object v4, v2

    .line 269
    goto/16 :goto_4

    :cond_7
    move-object v0, v1

    .line 273
    :cond_8
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move-object v1, v0

    goto/16 :goto_5

    .line 295
    :cond_9
    invoke-static {v5}, Lcom/nexstreaming/app/common/util/n;->a([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 293
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 292
    :cond_b
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_8

    :cond_c
    move-object v0, v2

    .line 301
    goto/16 :goto_0

    .line 268
    :catch_1
    move-exception v1

    goto :goto_b

    :cond_d
    move-object v0, v1

    goto :goto_6

    :cond_e
    move-object v5, v2

    goto :goto_7
.end method

.method public static fromFile(Ljava/lang/String;)Lcom/nexstreaming/app/common/util/FileType;
    .locals 1

    .prologue
    .line 222
    if-nez p0, :cond_0

    .line 223
    const/4 v0, 0x0

    .line 224
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/nexstreaming/app/common/util/FileType;->fromFile(Ljava/io/File;)Lcom/nexstreaming/app/common/util/FileType;

    move-result-object v0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nexstreaming/app/common/util/FileType;
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/nexstreaming/app/common/util/FileType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/app/common/util/FileType;

    return-object v0
.end method

.method public static values()[Lcom/nexstreaming/app/common/util/FileType;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/nexstreaming/app/common/util/FileType;->$VALUES:[Lcom/nexstreaming/app/common/util/FileType;

    invoke-virtual {v0}, [Lcom/nexstreaming/app/common/util/FileType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nexstreaming/app/common/util/FileType;

    return-object v0
.end method


# virtual methods
.method public getCategory()Lcom/nexstreaming/app/common/util/FileType$FileCategory;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/nexstreaming/app/common/util/FileType;->category:Lcom/nexstreaming/app/common/util/FileType$FileCategory;

    return-object v0
.end method

.method public isAudio()Z
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/nexstreaming/app/common/util/FileType;->category:Lcom/nexstreaming/app/common/util/FileType$FileCategory;

    sget-object v1, Lcom/nexstreaming/app/common/util/FileType$FileCategory;->Audio:Lcom/nexstreaming/app/common/util/FileType$FileCategory;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/nexstreaming/app/common/util/FileType;->category:Lcom/nexstreaming/app/common/util/FileType$FileCategory;

    sget-object v1, Lcom/nexstreaming/app/common/util/FileType$FileCategory;->VideoOrAudio:Lcom/nexstreaming/app/common/util/FileType$FileCategory;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isImage()Z
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/nexstreaming/app/common/util/FileType;->category:Lcom/nexstreaming/app/common/util/FileType$FileCategory;

    sget-object v1, Lcom/nexstreaming/app/common/util/FileType$FileCategory;->Image:Lcom/nexstreaming/app/common/util/FileType$FileCategory;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportedFormat()Z
    .locals 1

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/nexstreaming/app/common/util/FileType;->isSupportedFormat:Z

    return v0
.end method

.method public isVideo()Z
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/nexstreaming/app/common/util/FileType;->category:Lcom/nexstreaming/app/common/util/FileType$FileCategory;

    sget-object v1, Lcom/nexstreaming/app/common/util/FileType$FileCategory;->Video:Lcom/nexstreaming/app/common/util/FileType$FileCategory;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/nexstreaming/app/common/util/FileType;->category:Lcom/nexstreaming/app/common/util/FileType$FileCategory;

    sget-object v1, Lcom/nexstreaming/app/common/util/FileType$FileCategory;->VideoOrAudio:Lcom/nexstreaming/app/common/util/FileType$FileCategory;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
