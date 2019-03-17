.class public Lcom/miui/gallery/util/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final IS_DEBUG_BUILD:Z

.field private static final SHARE_ALBUM_ID_PATTERN:Lcom/miui/gallery/util/LazyValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/util/LazyValue",
            "<",
            "Ljava/lang/Void;",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field private static sCrcTable:[J


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/16 v10, 0x100

    const/4 v7, 0x1

    .line 56
    new-array v6, v10, [J

    sput-object v6, Lcom/miui/gallery/util/Utils;->sCrcTable:[J

    .line 58
    sget-object v6, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v8, "eng"

    .line 59
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    sget-object v6, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v8, "userdebug"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    move v6, v7

    :goto_0
    sput-boolean v6, Lcom/miui/gallery/util/Utils;->IS_DEBUG_BUILD:Z

    .line 64
    new-instance v6, Lcom/miui/gallery/util/Utils$1;

    invoke-direct {v6}, Lcom/miui/gallery/util/Utils$1;-><init>()V

    sput-object v6, Lcom/miui/gallery/util/Utils;->SHARE_ALBUM_ID_PATTERN:Lcom/miui/gallery/util/LazyValue;

    .line 188
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v10, :cond_4

    .line 189
    int-to-long v2, v0

    .line 190
    .local v2, "part":J
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    const/16 v6, 0x8

    if-ge v1, v6, :cond_3

    .line 191
    long-to-int v6, v2

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_2

    const-wide v4, -0x6a536cd653b4364bL    # -2.848111467964452E-204

    .line 192
    .local v4, "x":J
    :goto_3
    shr-long v8, v2, v7

    xor-long v2, v8, v4

    .line 190
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 59
    .end local v0    # "i":I
    .end local v1    # "j":I
    .end local v2    # "part":J
    .end local v4    # "x":J
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 191
    .restart local v0    # "i":I
    .restart local v1    # "j":I
    .restart local v2    # "part":J
    :cond_2
    const-wide/16 v4, 0x0

    goto :goto_3

    .line 194
    :cond_3
    sget-object v6, Lcom/miui/gallery/util/Utils;->sCrcTable:[J

    aput-wide v2, v6, v0

    .line 188
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 196
    .end local v1    # "j":I
    .end local v2    # "part":J
    :cond_4
    return-void
.end method

.method public static assertTrue(Z)V
    .locals 1
    .param p0, "cond"    # Z

    .prologue
    .line 73
    if-nez p0, :cond_0

    .line 74
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 76
    :cond_0
    return-void
.end method

.method public static varargs assertTrue(ZLjava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "cond"    # Z
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 80
    if-nez p0, :cond_1

    .line 81
    new-instance v0, Ljava/lang/AssertionError;

    array-length v1, p2

    if-nez v1, :cond_0

    .line 82
    .end local p1    # "message":Ljava/lang/String;
    :goto_0
    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .restart local p1    # "message":Ljava/lang/String;
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 84
    :cond_1
    return-void
.end method

.method public static clamp(JJJ)J
    .locals 2
    .param p0, "x"    # J
    .param p2, "min"    # J
    .param p4, "max"    # J

    .prologue
    .line 151
    cmp-long v0, p0, p4

    if-lez v0, :cond_0

    .line 153
    .end local p4    # "max":J
    :goto_0
    return-wide p4

    .line 152
    .restart local p4    # "max":J
    :cond_0
    cmp-long v0, p0, p2

    if-gez v0, :cond_1

    move-wide p4, p2

    goto :goto_0

    :cond_1
    move-wide p4, p0

    .line 153
    goto :goto_0
.end method

.method public static closeSilently(Landroid/database/Cursor;)V
    .locals 3
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 255
    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 256
    :catch_0
    move-exception v0

    .line 257
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Utils"

    const-string v2, "fail to close"

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static closeSilently(Landroid/os/ParcelFileDescriptor;)V
    .locals 3
    .param p0, "fd"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    .line 247
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 248
    :catch_0
    move-exception v0

    .line 249
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Utils"

    const-string v2, "fail to close"

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static closeSilently(Ljava/io/Closeable;)V
    .locals 3
    .param p0, "c"    # Ljava/io/Closeable;

    .prologue
    .line 217
    if-nez p0, :cond_0

    .line 223
    :goto_0
    return-void

    .line 219
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 220
    :catch_0
    move-exception v0

    .line 221
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Utils"

    const-string v2, "close fail"

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static desensitizeShareAlbumId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "albumId"    # Ljava/lang/String;

    .prologue
    .line 605
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/miui/os/Rom;->IS_DEBUGGABLE:Z

    if-nez v0, :cond_0

    .line 606
    sget-object v0, Lcom/miui/gallery/util/Utils;->SHARE_ALBUM_ID_PATTERN:Lcom/miui/gallery/util/LazyValue;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/util/LazyValue;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "******$2"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 608
    .end local p0    # "albumId":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public static doubleEquals(DD)Z
    .locals 6
    .param p0, "f1"    # D
    .param p2, "f2"    # D

    .prologue
    .line 490
    const-wide v4, 0x3e7ad7f29abcaf48L    # 1.0E-7

    move-wide v0, p0

    move-wide v2, p2

    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/util/Utils;->doubleNear(DDD)Z

    move-result v0

    return v0
.end method

.method public static doubleNear(DDD)Z
    .locals 4
    .param p0, "f1"    # D
    .param p2, "f2"    # D
    .param p4, "eps"    # D

    .prologue
    .line 498
    sub-double v0, p0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    invoke-static {p4, p5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static ensureNotNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 280
    if-nez p0, :cond_0

    const-string p0, ""

    .end local p0    # "value":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .prologue
    .line 95
    if-eq p0, p1, :cond_2

    if-nez p0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static floatNear(FFF)Z
    .locals 2
    .param p0, "f1"    # F
    .param p1, "f2"    # F
    .param p2, "eps"    # F

    .prologue
    .line 494
    sub-float v0, p0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNullOrEmpty(Ljava/lang/String;)Z
    .locals 1
    .param p0, "exifMake"    # Ljava/lang/String;

    .prologue
    .line 311
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static prevPowerOf2(I)I
    .locals 1
    .param p0, "n"    # I

    .prologue
    .line 124
    if-gtz p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 125
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    return v0
.end method

.method public static setPermissions(Ljava/lang/String;III)I
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "mode"    # I
    .param p2, "uid"    # I
    .param p3, "gid"    # I

    .prologue
    .line 601
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/FilesCompat;->setPermissions(Ljava/lang/String;III)I

    move-result v0

    return v0
.end method
