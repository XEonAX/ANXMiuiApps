.class public final Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader;
.super Ljava/lang/Object;
.source "NexImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$a;,
        Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$b;,
        Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$c;,
        Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$d;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "NexImageLoader"

.field private static final MAX_USERSTRINGS:I = 0x3

.field private static final NXT_ALIGNMASK:I = 0xf

.field private static final NXT_ALIGN_CENTER:I = 0x1

.field private static final NXT_ALIGN_LEFT:I = 0x0

.field private static final NXT_ALIGN_RIGHT:I = 0x2

.field private static final NXT_BLUR_INNER:I = 0x2

.field private static final NXT_BLUR_NORMAL:I = 0x0

.field private static final NXT_BLUR_OUTER:I = 0x3

.field private static final NXT_BLUR_SOLID:I = 0x1

.field private static final NXT_LONGTEXT_CROP_END:I = 0x0

.field private static final NXT_LONGTEXT_ELLIPSIZE_END:I = 0x4

.field private static final NXT_LONGTEXT_ELLIPSIZE_MIDDLE:I = 0x3

.field private static final NXT_LONGTEXT_ELLIPSIZE_START:I = 0x2

.field private static final NXT_LONGTEXT_WRAP:I = 0x1

.field private static final NXT_TEXTFLAG_AUTOSIZE:I = 0x400

.field private static final NXT_TEXTFLAG_BOLD:I = 0x1

.field private static final NXT_TEXTFLAG_CUTOUT:I = 0x800

.field private static final NXT_TEXTFLAG_FILL:I = 0x4

.field private static final NXT_TEXTFLAG_ITALIC:I = 0x2

.field private static final NXT_TEXTFLAG_LINEAR:I = 0x200

.field private static final NXT_TEXTFLAG_SHADOW:I = 0x100

.field private static final NXT_TEXTFLAG_STRIKE:I = 0x20

.field private static final NXT_TEXTFLAG_STROKE:I = 0x8

.field private static final NXT_TEXTFLAG_STROKEBACK:I = 0x1000

.field private static final NXT_TEXTFLAG_SUBPIXEL:I = 0x80

.field private static final NXT_TEXTFLAG_UNDERLINE:I = 0x10

.field private static final NXT_VALIGNMASK:I = 0xf0

.field private static final NXT_VALIGN_BOTTOM:I = 0x20

.field private static final NXT_VALIGN_CENTER:I = 0x10

.field private static final NXT_VALIGN_TOP:I = 0x0

.field private static final TAG_Overlay:Ljava/lang/String; = "[Overlay]"

.field private static final TAG_PreviewThemeImage:Ljava/lang/String; = "[PvwThImage]"

.field private static final TAG_Text:Ljava/lang/String; = "[Text]"

.field private static final TAG_ThemeImage:Ljava/lang/String; = "[ThemeImage]"

.field private static final TYPEFACE_ASSET:Ljava/lang/String; = "asset:"

.field private static final TYPEFACE_FILE:Ljava/lang/String; = "file:"

.field private static final TYPEFACE_FONTFILE:Ljava/lang/String; = "fontfile:"

.field private static final TYPEFACE_FONTID:Ljava/lang/String; = "fontid:"

.field private static final TYPEFACE_SYSTEM:Ljava/lang/String; = "android:"

.field private static final TYPEFACE_THEME:Ljava/lang/String; = "theme:"

.field private static sBitmapCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$a;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sBitmapCacheLock:Ljava/lang/Object;

.field private static sCleanCacheCount:I

.field private static sLoadedBitmapCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/graphics/Bitmap;",
            "Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private m_assetManager:Landroid/content/res/AssetManager;

.field private m_effectResourceLoader:Lcom/nexstreaming/kminternal/nexvideoeditor/a;

.field private m_jpegMaxHeight:I

.field private m_jpegMaxSize:I

.field private m_jpegMaxWidth:I

.field private m_overlayPathResolver:Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1359
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader;->sBitmapCache:Ljava/util/Map;

    .line 1360
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader;->sLoadedBitmapCache:Ljava/util/WeakHashMap;

    .line 1361
    const/4 v0, 0x0

    sput v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader;->sCleanCacheCount:I

    .line 1362
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader;->sBitmapCacheLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lcom/nexstreaming/kminternal/nexvideoeditor/a;Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$d;III)V
    .locals 1

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    if-nez p1, :cond_0

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader;->m_assetManager:Landroid/content/res/AssetManager;

    .line 136
    :goto_0
    iput-object p2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader;->m_effectResourceLoader:Lcom/nexstreaming/kminternal/nexvideoeditor/a;

    .line 137
    iput-object p3, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader;->m_overlayPathResolver:Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$d;

    .line 138
    iput p4, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader;->m_jpegMaxWidth:I

    .line 139
    iput p5, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader;->m_jpegMaxHeight:I

    .line 140
    iput p6, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader;->m_jpegMaxSize:I

    .line 141
    return-void

    .line 134
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader;->m_assetManager:Landroid/content/res/AssetManager;

    goto :goto_0
.end method

.method public static calcSampleSize(Landroid/graphics/BitmapFactory$Options;)V
    .locals 3

    .prologue
    .line 1660
    .line 1664
    const/4 v0, 0x1

    .line 1665
    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_2

    iget v1, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v1, v0

    const/16 v2, 0x5a0

    if-le v1, v2, :cond_0

    iget v1, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v1, v0

    const/16 v2, 0x32a

    if-gt v1, v2, :cond_1

    :cond_0
    iget v1, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v1, v0

    iget v2, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    mul-int/2addr v1, v2

    div-int/2addr v1, v0

    const v2, 0x16e360

    if-le v1, v2, :cond_2

    .line 1669
    :cond_1
    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 1672
    :cond_2
    iput v0, p0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1673
    return-void
.end method

.method public static calcSampleSize(Landroid/graphics/BitmapFactory$Options;III)V
    .locals 3

    .prologue
    .line 1677
    const/4 v0, 0x1

    move v1, v0

    .line 1678
    :goto_0
    const/16 v0, 0x8

    if-ge v1, v0, :cond_3

    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v0, v1

    if-le v0, p1, :cond_0

    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v0, v1

    if-gt v0, p2, :cond_1

    :cond_0
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v0, v1

    iget v2, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    mul-int/2addr v0, v2

    div-int v2, v0, v1

    if-lez p3, :cond_2

    move v0, p3

    :goto_1
    if-le v2, v0, :cond_3

    .line 1682
    :cond_1
    mul-int/lit8 v0, v1, 0x2

    move v1, v0

    goto :goto_0

    .line 1678
    :cond_2
    const v0, 0x16e360

    goto :goto_1

    .line 1685
    :cond_3
    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1686
    return-void
.end method

.method private static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1816
    const/16 v0, 0x1000

    new-array v2, v0, [B

    .line 1817
    const-wide/16 v0, 0x0

    .line 1819
    :goto_0
    const/4 v3, -0x1

    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 1820
    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 1821
    int-to-long v4, v4

    add-long/2addr v0, v4

    goto :goto_0

    .line 1823
    :cond_0
    return-void
.end method

.method private static getThumbnail(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 1826
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v7

    const-string v3, "_data=?"

    new-array v4, v6, [Ljava/lang/String;

    aput-object p1, v4, v7

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1828
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1830
    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1831
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1832
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    int-to-long v2, v1

    invoke-static {v0, v2, v3, v6, v5}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1836
    :goto_0
    return-object v5

    .line 1835
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private static getThumbnailOrientation(Landroid/content/Context;Ljava/lang/String;)I
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v5, 0x0

    .line 1840
    .line 1841
    const/4 v8, -0x1

    .line 1842
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v10, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v9

    const-string v3, "_data=?"

    new-array v4, v10, [Ljava/lang/String;

    aput-object p1, v4, v9

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1844
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1846
    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1847
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    int-to-long v6, v1

    invoke-static {v2, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 1848
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1850
    :goto_0
    if-eqz v3, :cond_0

    .line 1851
    new-array v4, v10, [Ljava/lang/String;

    const-string v0, "orientation"

    aput-object v0, v4, v9

    .line 1852
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1853
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1854
    aget-object v1, v4, v9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1857
    :goto_1
    return v0

    :cond_0
    move v0, v8

    goto :goto_1

    :cond_1
    move-object v3, v5

    goto :goto_0
.end method

.method public static loadBitmap(Ljava/io/InputStream;III)Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$b;
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 1278
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1279
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1280
    iput-boolean v1, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1283
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/io/BufferedInputStream;->mark(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1287
    :goto_0
    invoke-static {v2, v8, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1289
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->reset()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1293
    iput-boolean v9, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1294
    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 1295
    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 1298
    :goto_1
    const/16 v0, 0x8

    if-ge v1, v0, :cond_3

    iget v0, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v0, v1

    if-le v0, p1, :cond_0

    iget v0, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v0, v1

    if-gt v0, p2, :cond_1

    :cond_0
    iget v0, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v0, v1

    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    mul-int/2addr v0, v6

    div-int v6, v0, v1

    if-lez p3, :cond_2

    move v0, p3

    :goto_2
    if-le v6, v0, :cond_3

    .line 1302
    :cond_1
    mul-int/lit8 v0, v1, 0x2

    move v1, v0

    goto :goto_1

    .line 1284
    :catch_0
    move-exception v0

    .line 1285
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1290
    :catch_1
    move-exception v0

    .line 1291
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to reset stream"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1298
    :cond_2
    const v0, 0x16e360

    goto :goto_2

    .line 1305
    :cond_3
    iput v1, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1307
    const-string v0, "NexImageLoader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadBitmap from stream width="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " height="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " sampleSize="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    invoke-static {v2, v8, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1311
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1315
    :goto_3
    if-nez v1, :cond_4

    .line 1316
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$b;

    invoke-direct {v0, v8, v9, v9, v8}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$b;-><init>(Landroid/graphics/Bitmap;IILcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$1;)V

    .line 1319
    :goto_4
    return-object v0

    .line 1312
    :catch_2
    move-exception v0

    .line 1313
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 1319
    :cond_4
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$b;

    invoke-direct {v0, v1, v4, v5, v8}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$b;-><init>(Landroid/graphics/Bitmap;IILcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$1;)V

    goto :goto_4
.end method

.method public static loadBitmap(Ljava/lang/String;II)Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$b;
    .locals 2

    .prologue
    .line 1274
    const v0, 0x7fffffff

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader;->loadBitmap(Ljava/lang/String;IIII)Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$b;

    move-result-object v0

    return-object v0
.end method

.method public static loadBitmap(Ljava/lang/String;IIII)Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$b;
    .locals 6

    .prologue
    .line 1323
    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader;->loadBitmap(Ljava/lang/String;IIILandroid/graphics/Bitmap$Config;I)Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$b;

    move-result-object v0

    return-object v0
.end method

.method public static loadBitmap(Ljava/lang/String;IIILandroid/graphics/Bitmap$Config;I)Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$b;
    .locals 11

    .prologue
    .line 1365
    const/4 v1, 0x1

    move/from16 v0, p5

    if-ne v0, v1, :cond_0

    .line 1366
    invoke-static {p0, p1, p2, p3, p4}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader;->loadBitmapThumb(Ljava/lang/String;IIILandroid/graphics/Bitmap$Config;)Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$b;

    move-result-object v2

    .line 1547
    :goto_0
    return-object v2

    .line 1368
    :cond_0
    const-string v1, "NexImageLoader"

    const-string v2, "loadBitmap"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    new-instance v1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$a;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v8}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$a;-><init>(Ljava/lang/String;IIILandroid/graphics/Bitmap$Config;ZLcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$1;)V

    .line 1370
    sget-object v8, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader;->sBitmapCacheLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1372
    const/4 v5, 0x0

    .line 1373
    :try_start_0
    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader;->sBitmapCache:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 1374
    if-eqz v2, :cond_1

    .line 1375
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    .line 1376
    if-eqz v3, :cond_1

    .line 1377
    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader;->sLoadedBitmapCache:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v3}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$c;

    move-object v6, v0

    .line 1378
    if-eqz v6, :cond_1

    .line 1380
    new-instance v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$b;

    invoke-virtual {v6}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$c;->a()I

    move-result v4

    invoke-virtual {v6}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$c;->b()I

    move-result v5

    invoke-virtual {v6}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$c;->c()I

    move-result v6

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$b;-><init>(Landroid/graphics/Bitmap;IIILcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$1;)V

    move-object v5, v2

    .line 1385
    :cond_1
    sget v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader;->sCleanCacheCount:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader;->sCleanCacheCount:I

    .line 1386
    sget v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader;->sCleanCacheCount:I

    const/16 v3, 0x1e

    if-le v2, v3, :cond_3

    .line 1387
    const/4 v2, 0x0

    sput v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader;->sCleanCacheCount:I

    .line 1388
    const/4 v4, 0x0

    .line 1389
    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader;->sBitmapCache:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1390
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_e

    .line 1391
    if-nez v4, :cond_d

    .line 1392
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1394
    :goto_2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v2, v3

    :goto_3
    move-object v4, v2

    .line 1396
    goto :goto_1

    .line 1397
    :cond_2
    if-eqz v4, :cond_3

    .line 1398
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$a;

    .line 1399
    sget-object v4, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader;->sBitmapCache:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 1406
    :catchall_0
    move-exception v1

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1404
    :cond_3
    if-eqz v5, :cond_4

    .line 1405
    :try_start_1
    monitor-exit v8

    move-object v2, v5

    goto/16 :goto_0

    .line 1406
    :cond_4
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1408
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 1409
    const/4 v2, 0x0

    .line 1410
    const-string v4, ".jpeg"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1412
    :cond_5
    :try_start_2
    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 1413
    const-string v3, "Orientation"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v2

    .line 1419
    :cond_6
    :goto_5
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1420
    const/4 v3, 0x1

    iput-boolean v3, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1421
    invoke-static {p0, v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1422
    const/4 v3, 0x0

    iput-boolean v3, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1423
    iput-object p4, v5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 1424
    iget v6, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 1425
    iget v7, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 1427
    const/4 v3, 0x1

    move v4, v3

    .line 1428
    :goto_6
    const/16 v3, 0x8

    if-ge v4, v3, :cond_a

    iget v3, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v3, v4

    if-le v3, p1, :cond_7

    iget v3, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v3, v4

    if-gt v3, p2, :cond_8

    :cond_7
    iget v3, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v3, v4

    iget v8, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    mul-int/2addr v3, v8

    div-int v8, v3, v4

    if-lez p3, :cond_9

    move v3, p3

    :goto_7
    if-le v8, v3, :cond_a

    .line 1432
    :cond_8
    mul-int/lit8 v3, v4, 0x2

    move v4, v3

    goto :goto_6

    .line 1414
    :catch_0
    move-exception v2

    .line 1415
    const/4 v2, 0x0

    goto :goto_5

    .line 1428
    :cond_9
    const v3, 0x16e360

    goto :goto_7

    .line 1435
    :cond_a
    iput v4, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1437
    const-string v3, "NexImageLoader"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loadBitmap width="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " height="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " sampleSize="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " name=\'"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "\'"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    invoke-static {p0, v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1440
    if-nez v3, :cond_b

    .line 1441
    new-instance v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$b;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v1, v3, v4, v5}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$b;-><init>(Landroid/graphics/Bitmap;IILcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$1;)V

    goto/16 :goto_0

    .line 1445
    :cond_b
    packed-switch v2, :pswitch_data_0

    move-object v4, v3

    .line 1522
    :goto_8
    if-eqz p4, :cond_c

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    if-eq v3, p4, :cond_c

    .line 1523
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-static {v3, v5, p4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1524
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1525
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v5, v4, v8, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1526
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 1532
    :goto_9
    packed-switch v2, :pswitch_data_1

    .line 1540
    new-instance v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$b;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v6, v7, v4}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$b;-><init>(Landroid/graphics/Bitmap;IILcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$1;)V

    .line 1544
    :goto_a
    sget-object v4, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader;->sBitmapCache:Ljava/util/Map;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v4, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1545
    new-instance v1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$c;

    invoke-virtual {v2}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$b;->b()I

    move-result v4

    invoke-virtual {v2}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$b;->c()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v1, v4, v5, v6}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$c;-><init>(IILcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$1;)V

    .line 1546
    sget-object v4, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader;->sLoadedBitmapCache:Ljava/util/WeakHashMap;

    invoke-virtual {v4, v3, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1449
    :pswitch_0
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1450
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1451
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 1452
    const/high16 v8, -0x40800000    # -1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v4, v8, v9}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 1453
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1454
    const/4 v8, 0x0

    invoke-virtual {v5, v3, v4, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 1458
    :pswitch_1
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1459
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1460
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 1461
    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, -0x40800000    # -1.0f

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 1462
    const/4 v9, 0x0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1463
    const/4 v9, 0x0

    invoke-virtual {v5, v3, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto/16 :goto_8

    :pswitch_2
    move-object v4, v3

    .line 1469
    goto/16 :goto_8

    .line 1473
    :pswitch_3
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1474
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1475
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 1476
    const/high16 v9, -0x40800000    # -1.0f

    const/high16 v10, -0x40800000    # -1.0f

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 1477
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1478
    const/4 v9, 0x0

    invoke-virtual {v5, v3, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto/16 :goto_8

    .line 1483
    :pswitch_4
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1484
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1485
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 1486
    const/high16 v9, 0x42b40000    # 90.0f

    invoke-virtual {v8, v9}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 1487
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1488
    const/4 v9, 0x0

    invoke-virtual {v5, v3, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto/16 :goto_8

    .line 1493
    :pswitch_5
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1494
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1495
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 1496
    const/high16 v9, 0x43870000    # 270.0f

    invoke-virtual {v8, v9}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 1497
    const/4 v9, 0x0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1498
    const/4 v9, 0x0

    invoke-virtual {v5, v3, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto/16 :goto_8

    :pswitch_6
    move-object v4, v3

    .line 1504
    goto/16 :goto_8

    :pswitch_7
    move-object v4, v3

    .line 1509
    goto/16 :goto_8

    :pswitch_8
    move-object v4, v3

    .line 1514
    goto/16 :goto_8

    .line 1537
    :pswitch_9
    new-instance v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$b;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v7, v6, v4}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$b;-><init>(Landroid/graphics/Bitmap;IILcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$1;)V

    goto/16 :goto_a

    :cond_c
    move-object v3, v4

    goto/16 :goto_9

    :cond_d
    move-object v3, v4

    goto/16 :goto_2

    :cond_e
    move-object v2, v4

    goto/16 :goto_3

    .line 1445
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_6
        :pswitch_4
        :pswitch_7
        :pswitch_5
    .end packed-switch

    .line 1532
    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method public static loadBitmapThumb(Ljava/lang/String;IIILandroid/graphics/Bitmap$Config;)Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$b;
    .locals 9

    .prologue
    .line 1550
    const-string v1, "NexImageLoader"

    const-string v2, "loadBitmapThumb"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1551
    new-instance v1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$a;

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v8}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$a;-><init>(Ljava/lang/String;IIILandroid/graphics/Bitmap$Config;ZLcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$1;)V

    .line 1552
    sget-object v8, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader;->sBitmapCacheLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1554
    const/4 v5, 0x0

    .line 1555
    :try_start_0
    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader;->sBitmapCache:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 1556
    if-eqz v2, :cond_0

    .line 1557
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    .line 1558
    if-eqz v3, :cond_0

    .line 1559
    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader;->sLoadedBitmapCache:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v3}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$c;

    move-object v6, v0

    .line 1560
    if-eqz v6, :cond_0

    .line 1561
    new-instance v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$b;

    invoke-virtual {v6}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$c;->a()I

    move-result v4

    invoke-virtual {v6}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$c;->b()I

    move-result v5

    invoke-virtual {v6}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$c;->c()I

    move-result v6

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$b;-><init>(Landroid/graphics/Bitmap;IIILcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$1;)V

    move-object v5, v2

    .line 1566
    :cond_0
    sget v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader;->sCleanCacheCount:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader;->sCleanCacheCount:I

    .line 1567
    sget v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader;->sCleanCacheCount:I

    const/16 v3, 0x1e

    if-le v2, v3, :cond_2

    .line 1568
    const/4 v2, 0x0

    sput v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader;->sCleanCacheCount:I

    .line 1569
    const/4 v4, 0x0

    .line 1570
    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader;->sBitmapCache:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1571
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_6

    .line 1572
    if-nez v4, :cond_5

    .line 1573
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1575
    :goto_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v2, v3

    :goto_2
    move-object v4, v2

    .line 1577
    goto :goto_0

    .line 1578
    :cond_1
    if-eqz v4, :cond_2

    .line 1579
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$a;

    .line 1580
    sget-object v4, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader;->sBitmapCache:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1587
    :catchall_0
    move-exception v1

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1585
    :cond_2
    if-eqz v5, :cond_3

    .line 1586
    :try_start_1
    monitor-exit v8

    move-object v1, v5

    .line 1618
    :goto_4
    return-object v1

    .line 1587
    :cond_3
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1589
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/config/a;->a()Lcom/nexstreaming/kminternal/kinemaster/config/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nexstreaming/kminternal/kinemaster/config/a;->b()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader;->getThumbnail(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 1590
    if-nez v8, :cond_4

    .line 1591
    new-instance v1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$b;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$b;-><init>(Landroid/graphics/Bitmap;IIILcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$1;)V

    goto :goto_4

    .line 1593
    :cond_4
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/config/a;->a()Lcom/nexstreaming/kminternal/kinemaster/config/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nexstreaming/kminternal/kinemaster/config/a;->b()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader;->getThumbnailOrientation(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 1598
    sparse-switch v2, :sswitch_data_0

    .line 1612
    new-instance v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$b;

    const/16 v4, 0x500

    const/16 v5, 0x2d0

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object v3, v8

    invoke-direct/range {v2 .. v7}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$b;-><init>(Landroid/graphics/Bitmap;IIILcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$1;)V

    .line 1615
    :goto_5
    sget-object v3, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader;->sBitmapCache:Ljava/util/Map;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v8}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1616
    new-instance v1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$c;

    invoke-virtual {v2}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$b;->b()I

    move-result v3

    invoke-virtual {v2}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$b;->c()I

    move-result v4

    invoke-virtual {v2}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$b;->d()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$c;-><init>(IIILcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$1;)V

    .line 1617
    sget-object v3, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader;->sLoadedBitmapCache:Ljava/util/WeakHashMap;

    invoke-virtual {v3, v8, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v2

    .line 1618
    goto :goto_4

    .line 1600
    :sswitch_0
    const/16 v2, 0x5a

    invoke-static {v8, v2}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader;->rotateImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1601
    new-instance v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$b;

    const/16 v4, 0x2d0

    const/16 v5, 0x500

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$b;-><init>(Landroid/graphics/Bitmap;IIILcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$1;)V

    goto :goto_5

    .line 1604
    :sswitch_1
    const/16 v2, 0xb4

    invoke-static {v8, v2}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader;->rotateImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1605
    new-instance v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$b;

    const/16 v4, 0x500

    const/16 v5, 0x2d0

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$b;-><init>(Landroid/graphics/Bitmap;IIILcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$1;)V

    goto :goto_5

    .line 1608
    :sswitch_2
    const/16 v2, 0x10e

    invoke-static {v8, v2}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader;->rotateImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1609
    new-instance v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$b;

    const/16 v4, 0x2d0

    const/16 v5, 0x500

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$b;-><init>(Landroid/graphics/Bitmap;IIILcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$1;)V

    goto :goto_5

    :cond_5
    move-object v3, v4

    goto/16 :goto_1

    :cond_6
    move-object v2, v4

    goto/16 :goto_2

    .line 1598
    nop

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method private pdecode(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, -0x1

    .line 211
    const-string v0, "0123456789ABCDEF"

    .line 213
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v0, v1

    .line 214
    :cond_0
    :goto_0
    const-string v3, "%"

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v3, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 215
    add-int/lit8 v3, v0, 0x2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lt v3, v4, :cond_2

    .line 225
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 217
    :cond_2
    const-string v3, "0123456789ABCDEF"

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 218
    const-string v4, "0123456789ABCDEF"

    add-int/lit8 v5, v0, 0x2

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 219
    if-eq v3, v1, :cond_0

    if-eq v4, v1, :cond_0

    .line 220
    shl-int/lit8 v3, v3, 0x4

    or-int/2addr v3, v4

    int-to-char v3, v3

    invoke-virtual {v2, v0, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 221
    add-int/lit8 v3, v0, 0x1

    add-int/lit8 v4, v0, 0x3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 222
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private static relativePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1803
    const-string v0, ".."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/.."

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1804
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Parent Path References Not Allowed"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1805
    :cond_1
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1806
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1811
    :cond_2
    :goto_0
    return-object p1

    .line 1808
    :cond_3
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1809
    if-ltz v0, :cond_2

    .line 1811
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static rotateAndFlipImage(Landroid/graphics/Bitmap;IZZ)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v6, 0x40000000    # 2.0f

    .line 1639
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    if-eqz p0, :cond_1

    .line 1640
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 1641
    int-to-float v2, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v6

    invoke-virtual {v5, v2, v3, v4}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 1642
    if-eqz p2, :cond_2

    move v2, v0

    :goto_0
    if-eqz p3, :cond_3

    :goto_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v6

    invoke-virtual {v5, v2, v0, v1, v3}, Landroid/graphics/Matrix;->preScale(FFFF)Z

    .line 1644
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1645
    if-eq p0, v0, :cond_1

    move-object p0, v0

    .line 1654
    :cond_1
    :goto_2
    return-object p0

    :cond_2
    move v2, v1

    .line 1642
    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    .line 1649
    :catch_0
    move-exception v0

    .line 1651
    const-string v1, "NexImageLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rotateImage Error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static rotateImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 1621
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    .line 1622
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 1623
    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 1625
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1626
    if-eq p0, v0, :cond_0

    move-object p0, v0

    .line 1635
    :cond_0
    :goto_0
    return-object p0

    .line 1630
    :catch_0
    move-exception v0

    .line 1632
    const-string v1, "NexImageLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rotateImage Error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public callbackReadAssetItemFile(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1769
    invoke-static {}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->a()Lcom/nexstreaming/app/common/nexasset/assetpackage/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->c(Ljava/lang/String;)Lcom/nexstreaming/app/common/nexasset/assetpackage/f;

    move-result-object v0

    .line 1770
    if-nez v0, :cond_0

    .line 1771
    const-string v0, "NexImageLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error get assetItem id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 1798
    :goto_0
    return-object v0

    .line 1776
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/config/a;->a()Lcom/nexstreaming/kminternal/kinemaster/config/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nexstreaming/kminternal/kinemaster/config/a;->b()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getPackageURI()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getAssetPackage()Lcom/nexstreaming/app/common/nexasset/assetpackage/b;

    move-result-object v4

    invoke-interface {v4}, Lcom/nexstreaming/app/common/nexasset/assetpackage/b;->getAssetId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1782
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_2

    .line 1783
    :cond_1
    invoke-interface {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getFilePath()Ljava/lang/String;

    move-result-object v0

    .line 1787
    :goto_1
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1789
    :try_start_1
    invoke-virtual {v2, v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader;->a(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 1791
    :try_start_2
    invoke-static {v0, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1793
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 1795
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v0

    goto :goto_0

    .line 1777
    :catch_0
    move-exception v0

    .line 1778
    const-string v2, "NexImageLoader"

    const-string v3, "Error making reader"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 1779
    goto :goto_0

    .line 1785
    :cond_2
    invoke-interface {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader;->relativePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1793
    :catchall_0
    move-exception v2

    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 1796
    :catch_1
    move-exception v0

    .line 1797
    const-string v2, "NexImageLoader"

    const-string v3, "Error reading file"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 1798
    goto :goto_0
.end method

.method public openFile(Ljava/lang/String;I)Lcom/nexstreaming/kminternal/nexvideoeditor/NexImage;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1691
    const-string v0, "@solid:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ".jpg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1692
    const/4 v0, 0x7

    const/16 v1, 0xf

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    long-to-int v1, v0

    .line 1693
    const/16 v2, 0x20

    .line 1694
    const/16 v3, 0x12

    .line 1695
    const/16 v0, 0x240

    new-array v4, v0, [I

    .line 1696
    const/4 v0, 0x0

    :goto_0
    array-length v5, v4

    if-ge v0, v5, :cond_0

    .line 1697
    aput v1, v4, v0

    .line 1696
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1698
    :cond_0
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImage;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v2, v3, v1}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1, v2, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImage;-><init>(Landroid/graphics/Bitmap;II)V

    .line 1765
    :goto_1
    return-object v0

    .line 1699
    :cond_1
    const-string v0, "@assetItem:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1700
    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1701
    iget-object v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader;->m_effectResourceLoader:Lcom/nexstreaming/kminternal/nexvideoeditor/a;

    if-eqz v2, :cond_2

    .line 1704
    :try_start_0
    iget-object v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader;->m_effectResourceLoader:Lcom/nexstreaming/kminternal/nexvideoeditor/a;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader;->m_jpegMaxWidth:I

    iget v3, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader;->m_jpegMaxHeight:I

    iget v4, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader;->m_jpegMaxSize:I

    invoke-static {v0, v2, v3, v4}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader;->loadBitmap(Ljava/io/InputStream;III)Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$b;->a()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1705
    if-eqz v2, :cond_3

    .line 1706
    const-string v0, "NexImageLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "@assetItem bitmap width="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " height="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1707
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 1708
    and-int/lit8 v3, v0, -0x2

    .line 1709
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 1710
    and-int/lit8 v4, v0, -0x2

    .line 1711
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImage;

    invoke-direct {v0, v2, v3, v4}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImage;-><init>(Landroid/graphics/Bitmap;II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1717
    :catch_0
    move-exception v0

    :cond_2
    move-object v0, v1

    .line 1721
    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 1715
    goto :goto_1

    .line 1746
    :cond_4
    :try_start_1
    iget v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader;->m_jpegMaxWidth:I

    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader;->m_jpegMaxHeight:I

    iget v3, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader;->m_jpegMaxSize:I

    invoke-static {p1, v0, v2, v3, p2}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader;->loadBitmap(Ljava/lang/String;IIII)Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$b;

    move-result-object v0

    .line 1747
    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$b;->a()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1748
    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$b;->d()I

    move-result v3

    .line 1749
    if-eqz v2, :cond_5

    .line 1750
    const-string v0, "NexImageLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Actual bitmap width="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " height="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", loadedtype="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1751
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 1752
    and-int/lit8 v4, v0, -0x2

    .line 1753
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 1754
    and-int/lit8 v5, v0, -0x2

    .line 1755
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImage;

    invoke-direct {v0, v2, v4, v5, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImage;-><init>(Landroid/graphics/Bitmap;III)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 1762
    :catch_1
    move-exception v0

    move-object v0, v1

    .line 1765
    goto/16 :goto_1

    :cond_5
    move-object v0, v1

    .line 1759
    goto/16 :goto_1
.end method

.method public openThemeFile(Ljava/lang/String;)[B
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 230
    .line 234
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 235
    if-ltz v1, :cond_0

    .line 236
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 237
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 243
    :goto_0
    iget-object v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader;->m_effectResourceLoader:Lcom/nexstreaming/kminternal/nexvideoeditor/a;

    if-eqz v1, :cond_5

    .line 246
    :try_start_0
    iget-object v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader;->m_effectResourceLoader:Lcom/nexstreaming/kminternal/nexvideoeditor/a;

    invoke-interface {v1, v0, p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 247
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 249
    iget-object v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader;->m_effectResourceLoader:Lcom/nexstreaming/kminternal/nexvideoeditor/a;

    invoke-interface {v1, v0, p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 250
    const-string v4, "NexImageLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get size begin loading bitmap for effect("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    .line 253
    :goto_1
    const-wide/32 v6, 0x7fffffff

    invoke-virtual {v1, v6, v7}, Ljava/io/InputStream;->skip(J)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    long-to-int v5, v6

    if-lez v5, :cond_1

    .line 255
    add-int/2addr v4, v5

    goto :goto_1

    .line 239
    :cond_0
    const-string v0, ""

    goto :goto_0

    .line 257
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 258
    iget-object v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader;->m_effectResourceLoader:Lcom/nexstreaming/kminternal/nexvideoeditor/a;

    invoke-interface {v1, v0, p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    .line 259
    const-string v1, "NexImageLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get size end loading bitmap for effect("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ") : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " size="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    new-array v1, v4, [B

    move v5, v3

    move v3, v4

    .line 264
    :cond_2
    const/4 v7, -0x1

    invoke-virtual {v6, v1, v5, v3}, Ljava/io/InputStream;->read([BII)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    if-eq v7, v3, :cond_3

    .line 265
    add-int/2addr v5, v3

    .line 266
    sub-int v3, v4, v5

    .line 267
    if-gtz v3, :cond_2

    :cond_3
    move-object v0, v1

    .line 282
    :goto_2
    return-object v0

    .line 273
    :catch_0
    move-exception v1

    .line 275
    const-string v3, "NexImageLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error loading bitmap for effect("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ") : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_4
    move-object v0, v2

    .line 279
    goto :goto_2

    :cond_5
    move-object v0, v2

    .line 282
    goto :goto_2
.end method

.method public openThemeImage(Ljava/lang/String;)Lcom/nexstreaming/kminternal/nexvideoeditor/NexImage;
    .locals 45

    .prologue
    .line 288
    const/4 v4, 0x0

    .line 289
    const/4 v6, 0x0

    .line 290
    const/4 v5, 0x0

    .line 292
    const-string v2, ".force_effect/"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 293
    const-string v2, ".force_effect/"

    const-string v3, "/"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 295
    :cond_0
    const-string v2, "[ThemeImage]/@special:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "[PvwThImage]/@special:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 312
    :cond_1
    const/4 v2, 0x0

    .line 1138
    :goto_0
    return-object v2

    .line 315
    :cond_2
    const-string v2, "[Text]"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 317
    const-string v2, "[Text]"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 318
    const-string v2, ";;"

    invoke-virtual {v6, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 319
    add-int/lit8 v2, v7, 0x2

    invoke-virtual {v6, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 325
    const/4 v2, 0x0

    .line 326
    const/16 v4, 0x1b

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 327
    const/4 v4, -0x1

    if-le v5, v4, :cond_5f

    .line 328
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader;->m_effectResourceLoader:Lcom/nexstreaming/kminternal/nexvideoeditor/a;

    if-eqz v4, :cond_3

    .line 330
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader;->m_effectResourceLoader:Lcom/nexstreaming/kminternal/nexvideoeditor/a;

    const/4 v8, 0x0

    invoke-virtual {v3, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8}, Lcom/nexstreaming/kminternal/nexvideoeditor/a;->a(Ljava/lang/String;)Landroid/graphics/Typeface;
    :try_end_0
    .catch Lcom/nexstreaming/kminternal/kinemaster/fonts/Font$TypefaceLoadException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 335
    :cond_3
    :goto_1
    add-int/lit8 v4, v5, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    move-object v5, v2

    move-object v2, v3

    .line 337
    :goto_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_4

    .line 346
    const-string v2, "Title Text Goes Here"

    .line 348
    :cond_4
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/4 v3, 0x0

    aput-object v2, v19, v3

    .line 349
    const-string v3, "NexImageLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "==== User Text: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    const/4 v2, 0x0

    invoke-virtual {v6, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 351
    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 352
    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    .line 353
    const/4 v2, 0x0

    :goto_3
    array-length v4, v3

    if-ge v2, v4, :cond_6

    .line 354
    aget-object v4, v3, v2

    const-string v6, "="

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 355
    array-length v6, v4

    const/4 v7, 0x2

    if-ge v6, v7, :cond_5

    .line 356
    const/4 v6, 0x0

    aget-object v4, v4, v6

    const-string v6, ""

    move-object/from16 v0, v20

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 331
    :catch_0
    move-exception v4

    .line 332
    const-string v8, "NexImageLoader"

    const-string/jumbo v9, "typeface error"

    invoke-static {v8, v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 358
    :cond_5
    const/4 v6, 0x0

    aget-object v6, v4, v6

    const/4 v7, 0x1

    aget-object v4, v4, v7

    move-object/from16 v0, v20

    invoke-interface {v0, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 362
    :cond_6
    const-string v2, "flags"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    long-to-int v13, v2

    .line 363
    const-string v2, "align"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 364
    const-string v2, "longtext"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 365
    const-string/jumbo v2, "width"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 366
    const-string v2, "height"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 367
    const-string v2, "bgcolor"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    long-to-int v0, v2

    move/from16 v22, v0

    .line 368
    const-string v2, "fillcolor"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    long-to-int v0, v2

    move/from16 v23, v0

    .line 369
    const-string/jumbo v2, "strokecolor"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    long-to-int v0, v2

    move/from16 v24, v0

    .line 370
    const-string/jumbo v2, "shadowcolor"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    long-to-int v0, v2

    move/from16 v25, v0

    .line 371
    const-string v2, "maxlines"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    long-to-int v0, v2

    move/from16 v26, v0

    .line 372
    const-string/jumbo v2, "skewx"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v27

    .line 373
    const-string v2, "scalex"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v28

    .line 374
    const-string/jumbo v2, "size"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v17

    .line 375
    const-string/jumbo v2, "strokewidth"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v29

    .line 376
    const-string/jumbo v2, "spacingmult"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    .line 377
    const-string/jumbo v2, "spacingadd"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    .line 378
    const-string/jumbo v2, "shadowradius"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v30

    .line 379
    const-string/jumbo v2, "textblur"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v31

    .line 380
    const-string v2, "blurtype"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v32

    .line 381
    const-string v2, "margin"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v33

    .line 382
    const-string/jumbo v2, "shadowoffsx"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v34

    .line 383
    const-string/jumbo v2, "shadowoffsy"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v35

    .line 384
    const-string/jumbo v2, "text"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 385
    const-string v3, "baseid"

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    .line 386
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader;->pdecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 389
    and-int/lit16 v0, v6, 0xf0

    move/from16 v36, v0

    .line 390
    and-int/lit8 v37, v6, 0xf

    .line 392
    const/4 v2, 0x0

    move/from16 v16, v2

    :goto_5
    const/4 v2, 0x3

    move/from16 v0, v16

    if-ge v0, v2, :cond_c

    .line 393
    move-object/from16 v0, v19

    array-length v2, v0

    move/from16 v0, v16

    if-ge v0, v2, :cond_b

    .line 394
    aget-object v12, v19, v16

    .line 395
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    .line 398
    const-string v11, ""

    .line 401
    const/4 v2, 0x0

    .line 402
    const/4 v6, 0x0

    move v8, v14

    :goto_6
    if-ge v6, v14, :cond_7

    .line 403
    invoke-virtual {v12, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v38, 0x20

    move/from16 v0, v38

    if-ne v7, v0, :cond_5e

    .line 404
    div-int/lit8 v7, v14, 0x2

    sub-int/2addr v7, v6

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 405
    if-ge v7, v8, :cond_5e

    move v2, v6

    .line 402
    :goto_7
    add-int/lit8 v6, v6, 0x1

    move v8, v7

    goto :goto_6

    .line 411
    :cond_7
    if-lez v2, :cond_5d

    add-int/lit8 v6, v2, 0x1

    if-ge v6, v14, :cond_5d

    .line 412
    const/4 v6, 0x0

    invoke-virtual {v12, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 413
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v12, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 417
    :goto_8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v16, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 418
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "%f"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v16, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 419
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "%b"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v16, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 420
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_9

    .line 421
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%s"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v6, v16, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v12, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 422
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%!s"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v6, v16, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, ""

    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 423
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%e"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v6, v16, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, ""

    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 424
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%!e"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v6, v16, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, ""

    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 425
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%m"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v6, v16, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, ""

    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 392
    :cond_8
    :goto_9
    add-int/lit8 v3, v16, 0x1

    move/from16 v16, v3

    move-object v3, v2

    goto/16 :goto_5

    .line 426
    :cond_9
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v6, 0x1

    if-ge v3, v6, :cond_a

    .line 427
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%s"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v6, v16, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, ""

    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 428
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%!s"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v6, v16, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, ""

    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 429
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%e"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v6, v16, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, ""

    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 430
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%!e"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v6, v16, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, ""

    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 431
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%m"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v6, v16, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, ""

    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_9

    .line 432
    :cond_a
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v6, 0x1

    if-le v3, v6, :cond_8

    .line 433
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%s"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v6, v16, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v12, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 434
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%!s"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v6, v16, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    invoke-virtual {v12, v6, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 435
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%e"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v6, v16, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v6, v14, -0x1

    invoke-virtual {v12, v6, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 436
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%!e"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v6, v16, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    add-int/lit8 v7, v14, -0x1

    invoke-virtual {v12, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 437
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%m"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v6, v16, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    add-int/lit8 v7, v14, -0x1

    invoke-virtual {v12, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_9

    .line 440
    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v6, v16, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, ""

    invoke-virtual {v3, v2, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 441
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%s"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v6, v16, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, ""

    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 442
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%!s"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v6, v16, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, ""

    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 443
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%e"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v6, v16, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, ""

    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 444
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%!e"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v6, v16, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, ""

    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 445
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%m"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v6, v16, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, ""

    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_9

    .line 455
    :cond_c
    const/4 v2, 0x0

    .line 456
    const-string v6, ".*[[\\u0400-\\u052F][\\u2DE0-\\u2DFF][\\uA640-\\uA69F]].*"

    invoke-virtual {v3, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5c

    .line 457
    const/4 v2, 0x1

    move v7, v2

    .line 461
    :goto_a
    new-instance v6, Landroid/text/TextPaint;

    invoke-direct {v6}, Landroid/text/TextPaint;-><init>()V

    .line 462
    const/4 v2, 0x1

    invoke-virtual {v6, v2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 464
    const-string/jumbo v2, "typeface"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 465
    if-eqz v5, :cond_1f

    .line 466
    invoke-virtual {v6, v5}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 557
    :cond_d
    :goto_b
    and-int/lit8 v2, v13, 0x10

    if-eqz v2, :cond_e

    .line 558
    const/4 v2, 0x1

    invoke-virtual {v6, v2}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 560
    :cond_e
    and-int/lit8 v2, v13, 0x20

    if-eqz v2, :cond_f

    .line 561
    const/4 v2, 0x1

    invoke-virtual {v6, v2}, Landroid/text/TextPaint;->setStrikeThruText(Z)V

    .line 563
    :cond_f
    and-int/lit16 v2, v13, 0x80

    if-eqz v2, :cond_10

    .line 564
    const/4 v2, 0x1

    invoke-virtual {v6, v2}, Landroid/text/TextPaint;->setSubpixelText(Z)V

    .line 566
    :cond_10
    and-int/lit16 v2, v13, 0x200

    if-eqz v2, :cond_11

    .line 567
    const/4 v2, 0x1

    invoke-virtual {v6, v2}, Landroid/text/TextPaint;->setLinearText(Z)V

    .line 569
    :cond_11
    and-int/lit16 v2, v13, 0x100

    if-eqz v2, :cond_12

    .line 572
    :cond_12
    move/from16 v0, v28

    float-to-double v4, v0

    const-wide/16 v38, 0x0

    cmpl-double v2, v4, v38

    if-lez v2, :cond_13

    .line 573
    move/from16 v0, v28

    invoke-virtual {v6, v0}, Landroid/text/TextPaint;->setTextScaleX(F)V

    .line 574
    :cond_13
    move/from16 v0, v27

    float-to-double v4, v0

    const-wide/16 v38, 0x0

    cmpl-double v2, v4, v38

    if-lez v2, :cond_14

    .line 575
    move/from16 v0, v27

    invoke-virtual {v6, v0}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 576
    :cond_14
    move/from16 v0, v17

    float-to-double v4, v0

    const-wide/16 v38, 0x0

    cmpl-double v2, v4, v38

    if-lez v2, :cond_30

    .line 577
    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 581
    :goto_c
    and-int/lit8 v2, v13, 0xc

    if-nez v2, :cond_5b

    .line 582
    or-int/lit8 v2, v13, 0x4

    move/from16 v20, v2

    .line 588
    :goto_d
    if-lez v18, :cond_36

    .line 589
    const/4 v12, 0x0

    .line 590
    packed-switch v21, :pswitch_data_0

    .line 609
    :goto_e
    :pswitch_0
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 610
    packed-switch v37, :pswitch_data_1

    .line 619
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 623
    :goto_f
    if-lez v18, :cond_31

    move/from16 v19, v18

    .line 624
    :goto_10
    if-lez v15, :cond_32

    move v14, v15

    :goto_11
    move/from16 v16, v17

    move/from16 v13, v18

    .line 630
    :goto_12
    new-instance v2, Landroid/text/StaticLayout;

    const/4 v4, 0x0

    .line 631
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    mul-int/lit8 v7, v33, 0x2

    sub-int v7, v13, v7

    const/4 v11, 0x1

    mul-int/lit8 v21, v33, 0x2

    sub-int v13, v13, v21

    invoke-direct/range {v2 .. v13}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    .line 637
    invoke-virtual {v2}, Landroid/text/StaticLayout;->getWidth()I

    move-result v4

    mul-int/lit8 v5, v33, 0x2

    add-int/2addr v4, v5

    .line 638
    invoke-virtual {v2}, Landroid/text/StaticLayout;->getHeight()I

    move-result v5

    mul-int/lit8 v7, v33, 0x2

    add-int/2addr v5, v7

    .line 644
    move/from16 v0, v19

    if-gt v4, v0, :cond_33

    if-gt v5, v14, :cond_33

    const/4 v7, 0x1

    move/from16 v0, v26

    if-lt v0, v7, :cond_5a

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v7

    move/from16 v0, v26

    if-gt v7, v0, :cond_33

    move/from16 v44, v5

    move v5, v4

    move/from16 v4, v44

    .line 660
    :goto_13
    const/4 v3, 0x0

    .line 662
    move/from16 v0, v20

    and-int/lit16 v7, v0, 0x400

    if-nez v7, :cond_59

    if-lez v18, :cond_59

    if-lez v15, :cond_59

    .line 663
    const-string v7, "NexImageLoader"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "VAlign="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v36

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " originalWidth="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " originalHeight="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " width="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " height="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    sparse-switch v36, :sswitch_data_0

    :goto_14
    move v8, v3

    move/from16 v4, v18

    move v3, v15

    .line 679
    :goto_15
    const/16 v5, 0x800

    if-le v4, v5, :cond_15

    .line 680
    const/16 v4, 0x800

    .line 681
    :cond_15
    const/16 v5, 0x800

    if-le v3, v5, :cond_16

    .line 682
    const/16 v3, 0x800

    .line 684
    :cond_16
    const/4 v5, 0x1

    if-ge v4, v5, :cond_17

    const/4 v4, 0x1

    .line 685
    :cond_17
    const/4 v5, 0x1

    if-ge v3, v5, :cond_18

    const/4 v3, 0x1

    .line 687
    :cond_18
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v3, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 689
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 690
    and-int/lit8 v5, v3, -0x2

    .line 691
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 692
    and-int/lit8 v4, v3, -0x2

    .line 694
    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 696
    move/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 704
    invoke-virtual {v9}, Landroid/graphics/Canvas;->save()I

    .line 705
    move/from16 v0, v33

    int-to-float v3, v0

    move/from16 v0, v33

    int-to-float v10, v0

    invoke-virtual {v9, v3, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 706
    const/4 v3, 0x0

    int-to-float v8, v8

    invoke-virtual {v9, v3, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 710
    move/from16 v0, v20

    and-int/lit16 v3, v0, 0x100

    if-eqz v3, :cond_19

    .line 712
    const/4 v3, 0x0

    cmpl-float v3, v30, v3

    if-lez v3, :cond_19

    .line 714
    invoke-virtual {v9}, Landroid/graphics/Canvas;->save()I

    .line 715
    move/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v9, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 716
    new-instance v3, Landroid/graphics/BlurMaskFilter;

    sget-object v8, Landroid/graphics/BlurMaskFilter$Blur;->SOLID:Landroid/graphics/BlurMaskFilter$Blur;

    move/from16 v0, v30

    invoke-direct {v3, v0, v8}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v6, v3}, Landroid/text/TextPaint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 717
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v3}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 718
    move/from16 v0, v25

    invoke-virtual {v6, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 719
    invoke-virtual {v2, v9}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 720
    const/4 v3, 0x0

    invoke-virtual {v6, v3}, Landroid/text/TextPaint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 721
    invoke-virtual {v9}, Landroid/graphics/Canvas;->restore()V

    .line 726
    :cond_19
    move/from16 v0, v20

    and-int/lit16 v3, v0, 0x1000

    if-eqz v3, :cond_1a

    .line 730
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v3}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 731
    move/from16 v0, v24

    invoke-virtual {v6, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 732
    move/from16 v0, v29

    invoke-virtual {v6, v0}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 735
    invoke-virtual {v2, v9}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 742
    :cond_1a
    move/from16 v0, v31

    float-to-double v10, v0

    const-wide v12, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpl-double v3, v10, v12

    if-lez v3, :cond_1b

    .line 743
    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    .line 744
    packed-switch v32, :pswitch_data_2

    .line 758
    :goto_16
    new-instance v8, Landroid/graphics/BlurMaskFilter;

    move/from16 v0, v31

    invoke-direct {v8, v0, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v6, v8}, Landroid/text/TextPaint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 761
    :cond_1b
    and-int/lit8 v3, v20, 0x4

    if-eqz v3, :cond_1d

    .line 762
    move/from16 v0, v20

    and-int/lit16 v3, v0, 0x800

    if-eqz v3, :cond_1c

    .line 763
    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v8}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, v3}, Landroid/text/TextPaint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 765
    :cond_1c
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v3}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 766
    move/from16 v0, v23

    invoke-virtual {v6, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 767
    invoke-virtual {v2, v9}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 768
    const/4 v3, 0x0

    invoke-virtual {v6, v3}, Landroid/text/TextPaint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 771
    :cond_1d
    and-int/lit8 v3, v20, 0x8

    if-eqz v3, :cond_1e

    .line 775
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v3}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 776
    move/from16 v0, v24

    invoke-virtual {v6, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 777
    move/from16 v0, v29

    invoke-virtual {v6, v0}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 780
    invoke-virtual {v2, v9}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 786
    :cond_1e
    const/4 v2, 0x0

    invoke-virtual {v6, v2}, Landroid/text/TextPaint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 788
    invoke-virtual {v9}, Landroid/graphics/Canvas;->restore()V

    move v2, v4

    move v3, v5

    move-object v4, v7

    :goto_17
    move-object v5, v4

    move v4, v3

    move v3, v2

    .line 1135
    :goto_18
    if-eqz v5, :cond_55

    if-lez v4, :cond_55

    if-lez v3, :cond_55

    .line 1136
    new-instance v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImage;

    invoke-direct {v2, v5, v4, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImage;-><init>(Landroid/graphics/Bitmap;II)V

    goto/16 :goto_0

    .line 467
    :cond_1f
    if-eqz v7, :cond_22

    .line 468
    const/4 v2, 0x0

    .line 469
    and-int/lit8 v4, v13, 0x1

    if-eqz v4, :cond_20

    .line 470
    const/4 v2, 0x1

    .line 471
    :cond_20
    and-int/lit8 v4, v13, 0x2

    if-eqz v4, :cond_21

    .line 472
    or-int/lit8 v2, v2, 0x2

    .line 473
    :cond_21
    invoke-static {v2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto/16 :goto_b

    .line 474
    :cond_22
    const-string v5, "android:"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 475
    const-string v4, "android:"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 476
    const/4 v2, 0x0

    .line 477
    and-int/lit8 v5, v13, 0x1

    if-eqz v5, :cond_23

    .line 478
    const/4 v2, 0x1

    .line 479
    :cond_23
    and-int/lit8 v5, v13, 0x2

    if-eqz v5, :cond_24

    .line 480
    or-int/lit8 v2, v2, 0x2

    .line 481
    :cond_24
    invoke-static {v4, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto/16 :goto_b

    .line 482
    :cond_25
    const-string v5, "file:"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 483
    const-string v4, "file:"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 484
    invoke-static {v2}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto/16 :goto_b

    .line 485
    :cond_26
    const-string v5, "asset:"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 486
    const-string v4, "asset:"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 488
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader;->m_assetManager:Landroid/content/res/AssetManager;

    if-eqz v4, :cond_d

    .line 489
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader;->m_assetManager:Landroid/content/res/AssetManager;

    invoke-static {v4, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto/16 :goto_b

    .line 491
    :cond_27
    const-string/jumbo v5, "theme:"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 495
    const-string/jumbo v4, "theme:"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 496
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader;->m_effectResourceLoader:Lcom/nexstreaming/kminternal/nexvideoeditor/a;

    if-eqz v4, :cond_d

    .line 500
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader;->m_effectResourceLoader:Lcom/nexstreaming/kminternal/nexvideoeditor/a;

    invoke-interface {v4, v2}, Lcom/nexstreaming/kminternal/nexvideoeditor/a;->a(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    :try_end_1
    .catch Lcom/nexstreaming/kminternal/kinemaster/fonts/Font$TypefaceLoadException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_b

    .line 502
    :catch_1
    move-exception v2

    .line 504
    invoke-virtual {v2}, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font$TypefaceLoadException;->printStackTrace()V

    goto/16 :goto_b

    .line 509
    :cond_28
    const-string v5, "fontid:"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 511
    const-string v4, "fontid:"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 513
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/fonts/c;->a()Lcom/nexstreaming/kminternal/kinemaster/fonts/c;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/nexstreaming/kminternal/kinemaster/fonts/c;->b(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto/16 :goto_b

    .line 515
    :cond_29
    const-string v5, "fontfile:"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 517
    const/4 v5, 0x0

    .line 518
    const-string v7, "fontfile:"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 519
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader;->m_effectResourceLoader:Lcom/nexstreaming/kminternal/nexvideoeditor/a;

    if-eqz v2, :cond_2a

    .line 521
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader;->m_effectResourceLoader:Lcom/nexstreaming/kminternal/nexvideoeditor/a;

    invoke-interface {v2, v4, v7}, Lcom/nexstreaming/kminternal/nexvideoeditor/a;->c(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/nexstreaming/kminternal/kinemaster/fonts/Font$TypefaceLoadException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v2

    .line 531
    :goto_19
    if-eqz v2, :cond_2b

    .line 532
    invoke-virtual {v6, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto/16 :goto_b

    .line 522
    :catch_2
    move-exception v2

    .line 523
    const/4 v5, 0x0

    .line 524
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v5

    .line 528
    goto :goto_19

    .line 525
    :catch_3
    move-exception v2

    .line 526
    const/4 v5, 0x0

    .line 527
    invoke-virtual {v2}, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font$TypefaceLoadException;->printStackTrace()V

    :cond_2a
    move-object v2, v5

    goto :goto_19

    .line 534
    :cond_2b
    const-string v2, "NexImageLoader"

    const-string v5, "TYPEFACE NOT FOUND : base_id=%s, font=%s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v4, v8, v11

    const/4 v4, 0x1

    aput-object v7, v8, v4

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 537
    :cond_2c
    const/4 v5, 0x0

    .line 538
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader;->m_effectResourceLoader:Lcom/nexstreaming/kminternal/nexvideoeditor/a;

    if-eqz v7, :cond_2d

    .line 540
    :try_start_3
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader;->m_effectResourceLoader:Lcom/nexstreaming/kminternal/nexvideoeditor/a;

    invoke-interface {v7, v4, v2}, Lcom/nexstreaming/kminternal/nexvideoeditor/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v2

    .line 546
    :goto_1a
    if-eqz v2, :cond_2f

    .line 547
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2e

    .line 548
    const-string v5, "NexImageLoader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TYPEFACE FILE DOES NOT EXIST : base_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "; f="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 541
    :catch_4
    move-exception v2

    .line 542
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_2d
    move-object v2, v5

    goto :goto_1a

    .line 550
    :cond_2e
    invoke-static {v2}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto/16 :goto_b

    .line 553
    :cond_2f
    const-string v2, "NexImageLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TYPEFACE NOT FOUND : base_id="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 579
    :cond_30
    invoke-virtual {v6}, Landroid/text/TextPaint;->getTextSize()F

    move-result v17

    goto/16 :goto_c

    .line 595
    :pswitch_1
    sget-object v12, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    goto/16 :goto_e

    .line 598
    :pswitch_2
    sget-object v12, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    goto/16 :goto_e

    .line 601
    :pswitch_3
    sget-object v12, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    goto/16 :goto_e

    .line 612
    :pswitch_4
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto/16 :goto_f

    .line 615
    :pswitch_5
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto/16 :goto_f

    .line 623
    :cond_31
    const/16 v19, 0x800

    goto/16 :goto_10

    .line 624
    :cond_32
    const/16 v2, 0x800

    move v14, v2

    goto/16 :goto_11

    .line 647
    :cond_33
    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v38, v0

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v40, v0

    const-wide/high16 v42, 0x4014000000000000L    # 5.0

    div-double v40, v40, v42

    cmpl-double v7, v38, v40

    if-lez v7, :cond_34

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v38, v0

    const-wide/high16 v40, 0x4018000000000000L    # 6.0

    cmpl-double v7, v38, v40

    if-lez v7, :cond_34

    .line 648
    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v5, 0x41400000    # 12.0f

    div-float v5, v17, v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v2

    sub-float v2, v16, v2

    .line 649
    invoke-virtual {v6, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    move/from16 v16, v2

    move v13, v4

    goto/16 :goto_12

    .line 651
    :cond_34
    move/from16 v0, v19

    if-le v4, v0, :cond_35

    move/from16 v4, v19

    .line 653
    :cond_35
    if-le v5, v14, :cond_5a

    move v5, v4

    move v4, v14

    .line 654
    goto/16 :goto_13

    .line 666
    :sswitch_0
    sub-int v3, v15, v4

    .line 667
    goto/16 :goto_14

    .line 669
    :sswitch_1
    sub-int v3, v15, v4

    div-int/lit8 v3, v3, 0x2

    goto/16 :goto_14

    .line 746
    :pswitch_6
    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    goto/16 :goto_16

    .line 749
    :pswitch_7
    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->INNER:Landroid/graphics/BlurMaskFilter$Blur;

    goto/16 :goto_16

    .line 752
    :pswitch_8
    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    goto/16 :goto_16

    .line 755
    :pswitch_9
    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->SOLID:Landroid/graphics/BlurMaskFilter$Blur;

    goto/16 :goto_16

    .line 792
    :cond_36
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 793
    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v6, v3, v4, v5, v2}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 794
    iget v4, v2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v4, v4, 0x14

    iput v4, v2, Landroid/graphics/Rect;->right:I

    .line 795
    move/from16 v0, v30

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v7, v4

    .line 797
    invoke-virtual {v6}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v8

    .line 798
    iget v4, v8, Landroid/graphics/Paint$FontMetrics;->bottom:F

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    iget v5, v8, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v4, v5

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    float-to-int v5, v4

    .line 800
    const/4 v4, 0x1

    move/from16 v0, v18

    if-lt v0, v4, :cond_37

    const/4 v4, 0x1

    if-ge v15, v4, :cond_58

    .line 802
    :cond_37
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    mul-int/lit8 v4, v7, 0x2

    add-int/2addr v2, v4

    invoke-static/range {v34 .. v34}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-int v4, v4

    add-int/2addr v4, v2

    .line 803
    mul-int/lit8 v2, v7, 0x2

    add-int/2addr v2, v5

    invoke-static/range {v35 .. v35}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v2, v5

    .line 804
    const/16 v5, 0x800

    if-le v4, v5, :cond_38

    .line 805
    const/16 v4, 0x800

    .line 806
    :cond_38
    const/16 v5, 0x800

    if-le v2, v5, :cond_39

    .line 807
    const/16 v2, 0x800

    .line 810
    :cond_39
    :goto_1b
    const/4 v5, 0x1

    if-ge v4, v5, :cond_3d

    const/4 v4, 0x1

    move v5, v4

    .line 811
    :goto_1c
    const/4 v4, 0x1

    if-ge v2, v4, :cond_3e

    const/4 v2, 0x1

    move v4, v2

    .line 813
    :goto_1d
    packed-switch v37, :pswitch_data_3

    .line 824
    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v2}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 825
    const/high16 v2, 0x41a00000    # 20.0f

    .line 829
    :goto_1e
    int-to-float v9, v4

    iget v8, v8, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float v8, v9, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float v11, v8, v9

    .line 831
    int-to-float v7, v7

    const/4 v8, 0x0

    move/from16 v0, v34

    invoke-static {v8, v0}, Ljava/lang/Math;->min(FF)F

    move-result v8

    sub-float/2addr v7, v8

    add-float v10, v2, v7

    .line 833
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v4, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 835
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 836
    and-int/lit8 v4, v2, -0x2

    .line 837
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 838
    and-int/lit8 v2, v2, -0x2

    .line 840
    new-instance v13, Landroid/graphics/Canvas;

    invoke-direct {v13, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 848
    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 850
    and-int/lit8 v7, v20, 0x4

    if-eqz v7, :cond_3a

    .line 851
    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 852
    move/from16 v0, v23

    invoke-virtual {v6, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 853
    invoke-virtual {v13, v3, v10, v11, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 856
    :cond_3a
    and-int/lit8 v7, v20, 0x8

    if-eqz v7, :cond_3c

    .line 857
    and-int/lit8 v7, v20, 0x4

    if-eqz v7, :cond_3b

    move/from16 v0, v20

    and-int/lit16 v7, v0, 0x100

    if-eqz v7, :cond_3b

    .line 858
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    invoke-virtual {v6, v7, v8, v9, v12}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 860
    :cond_3b
    sget-object v7, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 861
    move/from16 v0, v24

    invoke-virtual {v6, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 862
    move/from16 v0, v29

    invoke-virtual {v6, v0}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 863
    new-instance v12, Landroid/graphics/Path;

    invoke-direct {v12}, Landroid/graphics/Path;-><init>()V

    .line 864
    const/4 v8, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    move-object v7, v3

    invoke-virtual/range {v6 .. v12}, Landroid/text/TextPaint;->getTextPath(Ljava/lang/String;IIFFLandroid/graphics/Path;)V

    .line 865
    invoke-virtual {v13, v12, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_3c
    move v3, v4

    move-object v4, v5

    goto/16 :goto_17

    :cond_3d
    move v5, v4

    .line 810
    goto/16 :goto_1c

    :cond_3e
    move v4, v2

    .line 811
    goto/16 :goto_1d

    .line 815
    :pswitch_a
    sget-object v2, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v2}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 816
    int-to-float v2, v5

    .line 817
    goto/16 :goto_1e

    .line 819
    :pswitch_b
    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v2}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 820
    div-int/lit8 v2, v5, 0x2

    int-to-float v2, v2

    .line 821
    goto/16 :goto_1e

    .line 870
    :cond_3f
    const-string v2, "[ThemeImage]"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 872
    const-string v2, "[ThemeImage]"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 876
    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 877
    if-ltz v4, :cond_42

    .line 878
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 879
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 885
    :goto_1f
    const/4 v4, 0x0

    .line 887
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader;->m_effectResourceLoader:Lcom/nexstreaming/kminternal/nexvideoeditor/a;

    if-eqz v7, :cond_40

    .line 890
    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader;->m_effectResourceLoader:Lcom/nexstreaming/kminternal/nexvideoeditor/a;

    invoke-interface {v4, v3, v2}, Lcom/nexstreaming/kminternal/nexvideoeditor/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    move-result-object v4

    .line 924
    :cond_40
    :goto_20
    if-nez v4, :cond_41

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader;->m_assetManager:Landroid/content/res/AssetManager;

    if-eqz v7, :cond_41

    .line 926
    :try_start_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader;->m_assetManager:Landroid/content/res/AssetManager;

    invoke-virtual {v4, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    move-result-object v4

    .line 933
    :cond_41
    :goto_21
    if-eqz v4, :cond_43

    .line 934
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 935
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 936
    new-instance v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImage;

    invoke-direct {v2, v4, v3, v5}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImage;-><init>(Landroid/graphics/Bitmap;II)V

    goto/16 :goto_0

    .line 881
    :cond_42
    const-string v3, ""

    goto :goto_1f

    .line 891
    :catch_5
    move-exception v4

    .line 892
    const/4 v7, 0x0

    .line 893
    const-string v8, "NexImageLoader"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error loading bitmap for effect("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v7

    goto :goto_20

    .line 927
    :catch_6
    move-exception v4

    .line 928
    const/4 v7, 0x0

    .line 929
    const-string v8, "NexImageLoader"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error loading bitmap (general asset mode) for effect("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v7

    goto :goto_21

    .line 938
    :cond_43
    const-string v7, "NexImageLoader"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Bitmap failed to load for effect("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ") : "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v5

    move-object v5, v4

    move v4, v6

    .line 940
    goto/16 :goto_18

    :cond_44
    const-string v2, "[Overlay]"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 941
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader;->m_overlayPathResolver:Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$d;

    if-nez v2, :cond_45

    .line 942
    const/16 v2, 0x8

    const/16 v3, 0x8

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 943
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 944
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 945
    new-instance v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImage;

    invoke-direct {v2, v3, v4, v5}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImage;-><init>(Landroid/graphics/Bitmap;II)V

    goto/16 :goto_0

    .line 947
    :cond_45
    const-string v2, "[Overlay]"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 948
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader;->m_overlayPathResolver:Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$d;

    invoke-virtual {v3, v2}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 949
    if-nez v2, :cond_46

    .line 950
    const/16 v2, 0x8

    const/16 v3, 0x8

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 951
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 952
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 953
    new-instance v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImage;

    invoke-direct {v2, v3, v4, v5}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImage;-><init>(Landroid/graphics/Bitmap;II)V

    goto/16 :goto_0

    .line 957
    :cond_46
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 958
    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 959
    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 960
    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 961
    const/4 v4, 0x1

    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 962
    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 964
    if-eqz v4, :cond_47

    .line 965
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 966
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 986
    new-instance v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImage;

    invoke-direct {v2, v4, v3, v5}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImage;-><init>(Landroid/graphics/Bitmap;II)V

    goto/16 :goto_0

    :cond_47
    move v3, v5

    move-object v5, v4

    move v4, v6

    .line 988
    goto/16 :goto_18

    :cond_48
    const-string v2, "[PvwThImage]"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 996
    const-string v2, "[ThemeImage]"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1000
    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 1001
    if-ltz v4, :cond_4b

    .line 1002
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1003
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1009
    :goto_22
    const/4 v4, 0x0

    .line 1011
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1014
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader;->m_effectResourceLoader:Lcom/nexstreaming/kminternal/nexvideoeditor/a;

    if-eqz v7, :cond_49

    .line 1017
    :try_start_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader;->m_effectResourceLoader:Lcom/nexstreaming/kminternal/nexvideoeditor/a;

    invoke-interface {v4, v3, v2}, Lcom/nexstreaming/kminternal/nexvideoeditor/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    const/4 v7, 0x0

    invoke-static {v4, v7, v8}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    move-result-object v4

    .line 1051
    :cond_49
    :goto_23
    if-nez v4, :cond_4a

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader;->m_assetManager:Landroid/content/res/AssetManager;

    if-eqz v7, :cond_4a

    .line 1053
    :try_start_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader;->m_assetManager:Landroid/content/res/AssetManager;

    invoke-virtual {v4, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    const/4 v7, 0x0

    invoke-static {v4, v7, v8}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8

    move-result-object v4

    .line 1060
    :cond_4a
    :goto_24
    if-eqz v4, :cond_4c

    .line 1061
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 1062
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 1063
    new-instance v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImage;

    invoke-direct {v2, v4, v3, v5}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImage;-><init>(Landroid/graphics/Bitmap;II)V

    goto/16 :goto_0

    .line 1005
    :cond_4b
    const-string v3, ""

    goto :goto_22

    .line 1018
    :catch_7
    move-exception v4

    .line 1019
    const/4 v7, 0x0

    .line 1020
    const-string v9, "NexImageLoader"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error loading bitmap for effect("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v7

    goto :goto_23

    .line 1054
    :catch_8
    move-exception v4

    .line 1055
    const/4 v7, 0x0

    .line 1056
    const-string v8, "NexImageLoader"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error loading bitmap (general asset mode) for effect("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v7

    goto :goto_24

    .line 1065
    :cond_4c
    const-string v7, "NexImageLoader"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Bitmap failed to load for effect("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ") : "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v5

    move-object v5, v4

    move v4, v6

    .line 1067
    goto/16 :goto_18

    :cond_4d
    const-string v2, "[Overlay]"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 1068
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader;->m_overlayPathResolver:Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$d;

    if-nez v2, :cond_4e

    .line 1069
    const/16 v2, 0x8

    const/16 v3, 0x8

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1070
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 1071
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 1072
    new-instance v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImage;

    invoke-direct {v2, v3, v4, v5}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImage;-><init>(Landroid/graphics/Bitmap;II)V

    goto/16 :goto_0

    .line 1074
    :cond_4e
    const-string v2, "[Overlay]"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1075
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader;->m_overlayPathResolver:Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$d;

    invoke-virtual {v3, v2}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1076
    if-nez v2, :cond_4f

    .line 1077
    const/16 v2, 0x8

    const/16 v3, 0x8

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1078
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 1079
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 1080
    new-instance v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImage;

    invoke-direct {v2, v3, v4, v5}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImage;-><init>(Landroid/graphics/Bitmap;II)V

    goto/16 :goto_0

    .line 1084
    :cond_4f
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1085
    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1086
    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1087
    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1088
    const/4 v4, 0x1

    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1089
    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1091
    if-eqz v4, :cond_50

    .line 1092
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 1093
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 1113
    new-instance v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImage;

    invoke-direct {v2, v4, v3, v5}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImage;-><init>(Landroid/graphics/Bitmap;II)V

    goto/16 :goto_0

    :cond_50
    move v3, v5

    move-object v5, v4

    move v4, v6

    .line 1115
    goto/16 :goto_18

    :cond_51
    const-string v2, "["

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_57

    .line 1116
    const/4 v4, 0x0

    .line 1117
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader;->m_assetManager:Landroid/content/res/AssetManager;

    if-eqz v2, :cond_53

    .line 1120
    :try_start_8
    const-string v2, "placeholder1.jpg"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_52

    const-string v2, "placeholder2.jpg"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_54

    .line 1121
    :cond_52
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader;->m_assetManager:Landroid/content/res/AssetManager;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_9

    move-result-object v2

    :goto_25
    move-object v4, v2

    .line 1129
    :cond_53
    :goto_26
    if-eqz v4, :cond_56

    .line 1130
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 1131
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 1132
    new-instance v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImage;

    invoke-direct {v2, v4, v3, v5}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImage;-><init>(Landroid/graphics/Bitmap;II)V

    goto/16 :goto_0

    .line 1123
    :cond_54
    :try_start_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader;->m_assetManager:Landroid/content/res/AssetManager;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_9

    move-result-object v2

    goto :goto_25

    .line 1125
    :catch_9
    move-exception v2

    .line 1126
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_26

    .line 1138
    :cond_55
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_56
    move v3, v5

    move-object v5, v4

    move v4, v6

    goto/16 :goto_18

    :cond_57
    move v3, v5

    move-object v5, v4

    move v4, v6

    goto/16 :goto_18

    :cond_58
    move v2, v15

    move/from16 v4, v18

    goto/16 :goto_1b

    :cond_59
    move v8, v3

    move v3, v4

    move v4, v5

    goto/16 :goto_15

    :cond_5a
    move/from16 v44, v5

    move v5, v4

    move/from16 v4, v44

    goto/16 :goto_13

    :cond_5b
    move/from16 v20, v13

    goto/16 :goto_d

    :cond_5c
    move v7, v2

    goto/16 :goto_a

    :cond_5d
    move-object v2, v11

    move-object v6, v12

    goto/16 :goto_8

    :cond_5e
    move v7, v8

    goto/16 :goto_7

    :cond_5f
    move-object v5, v2

    move-object v2, v3

    goto/16 :goto_2

    .line 590
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 610
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
    .end packed-switch

    .line 664
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x20 -> :sswitch_0
    .end sparse-switch

    .line 744
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_9
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 813
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method

.method public setResources(Landroid/content/res/Resources;)V
    .locals 1

    .prologue
    .line 201
    if-nez p1, :cond_0

    .line 203
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader;->m_assetManager:Landroid/content/res/AssetManager;

    .line 208
    :goto_0
    return-void

    .line 206
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader;->m_assetManager:Landroid/content/res/AssetManager;

    goto :goto_0
.end method
