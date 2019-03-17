.class public Lcom/miui/gallery/util/MediaFile;
.super Ljava/lang/Object;
.source "MediaFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/util/MediaFile$MediaFileType;
    }
.end annotation


# static fields
.field private static final sFileTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/gallery/util/MediaFile$MediaFileType;",
            ">;"
        }
    .end annotation
.end field

.field private static final sFileTypeToFormatMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sFormatToMimeTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sMimeTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sMimeTypeToFormatMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0x15

    const/4 v7, 0x7

    const v6, 0xb984

    const/16 v5, 0x300b

    const/16 v4, 0xb

    .line 145
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/gallery/util/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    .line 147
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/gallery/util/MediaFile;->sMimeTypeMap:Ljava/util/HashMap;

    .line 150
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/gallery/util/MediaFile;->sFileTypeToFormatMap:Ljava/util/HashMap;

    .line 153
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/gallery/util/MediaFile;->sMimeTypeToFormatMap:Ljava/util/HashMap;

    .line 156
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/gallery/util/MediaFile;->sFormatToMimeTypeMap:Ljava/util/HashMap;

    .line 172
    const-string v0, "MP3"

    const/4 v1, 0x1

    const-string v2, "audio/mpeg"

    const/16 v3, 0x3009

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/util/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 173
    const-string v0, "MPGA"

    const/4 v1, 0x1

    const-string v2, "audio/mpeg"

    const/16 v3, 0x3009

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/util/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 174
    const-string v0, "M4A"

    const/4 v1, 0x2

    const-string v2, "audio/mp4"

    invoke-static {v0, v1, v2, v5}, Lcom/miui/gallery/util/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 175
    const-string v0, "WAV"

    const/4 v1, 0x3

    const-string v2, "audio/x-wav"

    const/16 v3, 0x3008

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/util/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 176
    const-string v0, "AMR"

    const/4 v1, 0x4

    const-string v2, "audio/amr"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 177
    const-string v0, "AWB"

    const/4 v1, 0x5

    const-string v2, "audio/amr-wb"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 178
    const-string v0, "WMA"

    const/4 v1, 0x6

    const-string v2, "audio/x-ms-wma"

    const v3, 0xb901

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/util/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 179
    const-string v0, "OGG"

    const-string v1, "audio/ogg"

    const v2, 0xb902

    invoke-static {v0, v7, v1, v2}, Lcom/miui/gallery/util/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 180
    const-string v0, "OGG"

    const-string v1, "application/ogg"

    const v2, 0xb902

    invoke-static {v0, v7, v1, v2}, Lcom/miui/gallery/util/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 181
    const-string v0, "OGA"

    const-string v1, "application/ogg"

    const v2, 0xb902

    invoke-static {v0, v7, v1, v2}, Lcom/miui/gallery/util/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 182
    const-string v0, "AAC"

    const/16 v1, 0x8

    const-string v2, "audio/aac"

    const v3, 0xb903

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/util/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 183
    const-string v0, "AAC"

    const/16 v1, 0x8

    const-string v2, "audio/aac-adts"

    const v3, 0xb903

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/util/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 184
    const-string v0, "MKA"

    const/16 v1, 0x9

    const-string v2, "audio/x-matroska"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 186
    const-string v0, "MID"

    const-string v1, "audio/midi"

    invoke-static {v0, v4, v1}, Lcom/miui/gallery/util/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 187
    const-string v0, "MIDI"

    const-string v1, "audio/midi"

    invoke-static {v0, v4, v1}, Lcom/miui/gallery/util/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 188
    const-string v0, "XMF"

    const-string v1, "audio/midi"

    invoke-static {v0, v4, v1}, Lcom/miui/gallery/util/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 189
    const-string v0, "RTTTL"

    const-string v1, "audio/midi"

    invoke-static {v0, v4, v1}, Lcom/miui/gallery/util/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 190
    const-string v0, "SMF"

    const/16 v1, 0xc

    const-string v2, "audio/sp-midi"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 191
    const-string v0, "IMY"

    const/16 v1, 0xd

    const-string v2, "audio/imelody"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 192
    const-string v0, "RTX"

    const-string v1, "audio/midi"

    invoke-static {v0, v4, v1}, Lcom/miui/gallery/util/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 193
    const-string v0, "OTA"

    const-string v1, "audio/midi"

    invoke-static {v0, v4, v1}, Lcom/miui/gallery/util/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 194
    const-string v0, "MXMF"

    const-string v1, "audio/midi"

    invoke-static {v0, v4, v1}, Lcom/miui/gallery/util/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 196
    const-string v0, "MPEG"

    const-string/jumbo v1, "video/mpeg"

    invoke-static {v0, v8, v1, v5}, Lcom/miui/gallery/util/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 197
    const-string v0, "MPG"

    const-string/jumbo v1, "video/mpeg"

    invoke-static {v0, v8, v1, v5}, Lcom/miui/gallery/util/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 198
    const-string v0, "MP4"

    const-string/jumbo v1, "video/mp4"

    invoke-static {v0, v8, v1, v5}, Lcom/miui/gallery/util/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 199
    const-string v0, "M4V"

    const/16 v1, 0x16

    const-string/jumbo v2, "video/mp4"

    invoke-static {v0, v1, v2, v5}, Lcom/miui/gallery/util/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 200
    const-string v0, "3GP"

    const/16 v1, 0x17

    const-string/jumbo v2, "video/3gpp"

    invoke-static {v0, v1, v2, v6}, Lcom/miui/gallery/util/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 201
    const-string v0, "3GPP"

    const/16 v1, 0x17

    const-string/jumbo v2, "video/3gpp"

    invoke-static {v0, v1, v2, v6}, Lcom/miui/gallery/util/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 202
    const-string v0, "3G2"

    const/16 v1, 0x18

    const-string/jumbo v2, "video/3gpp2"

    invoke-static {v0, v1, v2, v6}, Lcom/miui/gallery/util/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 203
    const-string v0, "3GPP2"

    const/16 v1, 0x18

    const-string/jumbo v2, "video/3gpp2"

    invoke-static {v0, v1, v2, v6}, Lcom/miui/gallery/util/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 204
    const-string v0, "MKV"

    const/16 v1, 0x1b

    const-string/jumbo v2, "video/x-matroska"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 205
    const-string v0, "WEBM"

    const/16 v1, 0x1e

    const-string/jumbo v2, "video/webm"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 206
    const-string v0, "TS"

    const/16 v1, 0x1c

    const-string/jumbo v2, "video/mp2ts"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 207
    const-string v0, "AVI"

    const/16 v1, 0x1d

    const-string/jumbo v2, "video/avi"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 209
    const-string v0, "WMV"

    const/16 v1, 0x19

    const-string/jumbo v2, "video/x-ms-wmv"

    const v3, 0xb981

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/util/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 210
    const-string v0, "ASF"

    const/16 v1, 0x1a

    const-string/jumbo v2, "video/x-ms-asf"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 212
    const-string v0, "JPG"

    const/16 v1, 0x1f

    const-string v2, "image/jpeg"

    const/16 v3, 0x3801

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/util/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 213
    const-string v0, "JPEG"

    const/16 v1, 0x1f

    const-string v2, "image/jpeg"

    const/16 v3, 0x3801

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/util/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 214
    const-string v0, "GIF"

    const/16 v1, 0x20

    const-string v2, "image/gif"

    const/16 v3, 0x3807

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/util/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 215
    const-string v0, "PNG"

    const/16 v1, 0x21

    const-string v2, "image/png"

    const/16 v3, 0x380b

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/util/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 216
    const-string v0, "BMP"

    const/16 v1, 0x22

    const-string v2, "image/x-ms-bmp"

    const/16 v3, 0x3804

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/util/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 217
    const-string v0, "WBMP"

    const/16 v1, 0x23

    const-string v2, "image/vnd.wap.wbmp"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 218
    const-string v0, "WEBP"

    const/16 v1, 0x24

    const-string v2, "image/webp"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 220
    const-string v0, "M3U"

    const/16 v1, 0x29

    const-string v2, "audio/x-mpegurl"

    const v3, 0xba11

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/util/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 221
    const-string v0, "M3U"

    const/16 v1, 0x29

    const-string v2, "application/x-mpegurl"

    const v3, 0xba11

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/util/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 222
    const-string v0, "PLS"

    const/16 v1, 0x2a

    const-string v2, "audio/x-scpls"

    const v3, 0xba14

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/util/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 223
    const-string v0, "WPL"

    const/16 v1, 0x2b

    const-string v2, "application/vnd.ms-wpl"

    const v3, 0xba10

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/util/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 224
    const-string v0, "M3U8"

    const/16 v1, 0x2c

    const-string v2, "application/vnd.apple.mpegurl"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 225
    const-string v0, "M3U8"

    const/16 v1, 0x2c

    const-string v2, "audio/mpegurl"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 226
    const-string v0, "M3U8"

    const/16 v1, 0x2c

    const-string v2, "audio/x-mpegurl"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 228
    const-string v0, "FL"

    const/16 v1, 0x33

    const-string v2, "application/x-android-drm-fl"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 229
    const-string v0, "DCF"

    const/16 v1, 0x34

    const-string v2, "application/vnd.oma.drm.content"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 231
    const-string v0, "TXT"

    const/16 v1, 0x64

    const-string/jumbo v2, "text/plain"

    const/16 v3, 0x3004

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/util/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 232
    const-string v0, "HTM"

    const/16 v1, 0x65

    const-string/jumbo v2, "text/html"

    const/16 v3, 0x3005

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/util/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 233
    const-string v0, "HTML"

    const/16 v1, 0x65

    const-string/jumbo v2, "text/html"

    const/16 v3, 0x3005

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/util/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 234
    const-string v0, "PDF"

    const/16 v1, 0x66

    const-string v2, "application/pdf"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 235
    const-string v0, "DOC"

    const/16 v1, 0x68

    const-string v2, "application/msword"

    const v3, 0xba83

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/util/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 236
    const-string v0, "XLS"

    const/16 v1, 0x69

    const-string v2, "application/vnd.ms-excel"

    const v3, 0xba85

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/util/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 237
    const-string v0, "PPT"

    const/16 v1, 0x6a

    const-string v2, "application/mspowerpoint"

    const v3, 0xba86

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/util/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 238
    const-string v0, "FLAC"

    const/16 v1, 0xa

    const-string v2, "audio/flac"

    const v3, 0xb906

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/util/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 239
    const-string v0, "ZIP"

    const/16 v1, 0x6b

    const-string v2, "application/zip"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 240
    const-string v0, "MPG"

    const/16 v1, 0xc8

    const-string/jumbo v2, "video/mp2p"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 241
    const-string v0, "MPEG"

    const/16 v1, 0xc8

    const-string/jumbo v2, "video/mp2p"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 242
    const-string v0, "DIVX"

    const/16 v1, 0xc9

    const-string/jumbo v2, "video/divx"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 243
    const-string v0, "FLV"

    const/16 v1, 0xca

    const-string/jumbo v2, "video/flv"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 244
    const-string v0, "MPD"

    const/16 v1, 0x2d

    const-string v2, "application/dash+xml"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 245
    const-string v0, "QCP"

    const/16 v1, 0x12f

    const-string v2, "audio/qcelp"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 246
    const-string v0, "AC3"

    const/16 v1, 0x12e

    const-string v2, "audio/ac3"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 247
    const-string v0, "EC3"

    const/16 v1, 0x131

    const-string v2, "audio/eac3"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 248
    const-string v0, "AIF"

    const/16 v1, 0x132

    const-string v2, "audio/x-aiff"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 249
    const-string v0, "AIFF"

    const/16 v1, 0x132

    const-string v2, "audio/x-aiff"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 250
    const-string v0, "APE"

    const/16 v1, 0x133

    const-string v2, "audio/x-ape"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 253
    invoke-static {}, Lcom/miui/gallery/util/MediaFile;->addMiuiFileType()V

    .line 255
    return-void
.end method

.method static addFileType(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .param p0, "extension"    # Ljava/lang/String;
    .param p1, "fileType"    # I
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 160
    sget-object v0, Lcom/miui/gallery/util/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    new-instance v1, Lcom/miui/gallery/util/MediaFile$MediaFileType;

    invoke-direct {v1, p1, p2}, Lcom/miui/gallery/util/MediaFile$MediaFileType;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v0, Lcom/miui/gallery/util/MediaFile;->sMimeTypeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    return-void
.end method

.method static addFileType(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 2
    .param p0, "extension"    # Ljava/lang/String;
    .param p1, "fileType"    # I
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "mtpFormatCode"    # I

    .prologue
    .line 165
    invoke-static {p0, p1, p2}, Lcom/miui/gallery/util/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 166
    sget-object v0, Lcom/miui/gallery/util/MediaFile;->sFileTypeToFormatMap:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v0, Lcom/miui/gallery/util/MediaFile;->sMimeTypeToFormatMap:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object v0, Lcom/miui/gallery/util/MediaFile;->sFormatToMimeTypeMap:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    return-void
.end method

.method private static addMiuiFileType()V
    .locals 3

    .prologue
    .line 261
    const-string v0, "FLV"

    const/16 v1, 0x7d0

    const-string/jumbo v2, "video/x-flv"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 262
    const-string v0, "RM"

    const/16 v1, 0x7d1

    const-string/jumbo v2, "video/x-pn-realvideo"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 263
    const-string v0, "RMVB"

    const/16 v1, 0x7d2

    const-string/jumbo v2, "video/x-pn-realvideo"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 264
    const-string v0, "MOV"

    const/16 v1, 0x7d3

    const-string/jumbo v2, "video/quicktime"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 265
    const-string v0, "VOB"

    const/16 v1, 0x7d4

    const-string/jumbo v2, "video/mpeg"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 266
    const-string v0, "F4V"

    const/16 v1, 0x7d5

    const-string/jumbo v2, "video/mp4"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 267
    const-string v0, "3G2B"

    const/16 v1, 0x7d6

    const-string/jumbo v2, "video/3gpp"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 268
    return-void
.end method

.method public static getFileType(Ljava/lang/String;)Lcom/miui/gallery/util/MediaFile$MediaFileType;
    .locals 4
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 312
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 313
    .local v0, "lastDot":I
    if-gez v0, :cond_0

    .line 314
    const/4 v1, 0x0

    .line 315
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/miui/gallery/util/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/util/MediaFile$MediaFileType;

    goto :goto_0
.end method

.method public static getMimeTypeForFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 348
    invoke-static {p0}, Lcom/miui/gallery/util/MediaFile;->getFileType(Ljava/lang/String;)Lcom/miui/gallery/util/MediaFile$MediaFileType;

    move-result-object v0

    .line 349
    .local v0, "mediaFileType":Lcom/miui/gallery/util/MediaFile$MediaFileType;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/miui/gallery/util/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    goto :goto_0
.end method
