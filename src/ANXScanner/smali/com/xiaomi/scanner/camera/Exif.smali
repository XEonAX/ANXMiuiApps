.class public Lcom/xiaomi/scanner/camera/Exif;
.super Ljava/lang/Object;
.source "Exif.java"


# static fields
.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "Exif"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/camera/Exif;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExif(Ljava/lang/String;)Lcom/xiaomi/scanner/camera/exif/ExifInterface;
    .locals 5
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 39
    new-instance v1, Lcom/xiaomi/scanner/camera/exif/ExifInterface;

    invoke-direct {v1}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;-><init>()V

    .line 41
    .local v1, "exif":Lcom/xiaomi/scanner/camera/exif/ExifInterface;
    :try_start_0
    invoke-virtual {v1, p0}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->readExif(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 47
    :goto_0
    return-object v1

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Ljava/io/FileNotFoundException;
    sget-object v2, Lcom/xiaomi/scanner/camera/Exif;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to find file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 44
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 45
    .local v0, "e":Ljava/io/IOException;
    sget-object v2, Lcom/xiaomi/scanner/camera/Exif;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to read EXIF from file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getExif([B)Lcom/xiaomi/scanner/camera/exif/ExifInterface;
    .locals 4
    .param p0, "jpegData"    # [B

    .prologue
    .line 29
    new-instance v1, Lcom/xiaomi/scanner/camera/exif/ExifInterface;

    invoke-direct {v1}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;-><init>()V

    .line 31
    .local v1, "exif":Lcom/xiaomi/scanner/camera/exif/ExifInterface;
    :try_start_0
    invoke-virtual {v1, p0}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->readExif([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :goto_0
    return-object v1

    .line 32
    :catch_0
    move-exception v0

    .line 33
    .local v0, "e":Ljava/io/IOException;
    sget-object v2, Lcom/xiaomi/scanner/camera/Exif;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v3, "Failed to read EXIF data"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getOrientation(Lcom/xiaomi/scanner/camera/exif/ExifInterface;)I
    .locals 2
    .param p0, "exif"    # Lcom/xiaomi/scanner/camera/exif/ExifInterface;

    .prologue
    .line 57
    sget v1, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_ORIENTATION:I

    invoke-virtual {p0, v1}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getTagIntValue(I)Ljava/lang/Integer;

    move-result-object v0

    .line 58
    .local v0, "val":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 59
    const/4 v1, 0x0

    .line 61
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->shortValue()S

    move-result v1

    invoke-static {v1}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getRotationForOrientationValue(S)I

    move-result v1

    goto :goto_0
.end method

.method public static getOrientation(Ljava/lang/String;)I
    .locals 8
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 75
    if-nez p0, :cond_0

    .line 76
    const/4 v1, 0x0

    .line 83
    :goto_0
    return v1

    .line 79
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 80
    .local v2, "startTime":J
    invoke-static {p0}, Lcom/xiaomi/scanner/camera/Exif;->getExif(Ljava/lang/String;)Lcom/xiaomi/scanner/camera/exif/ExifInterface;

    move-result-object v0

    .line 81
    .local v0, "exif":Lcom/xiaomi/scanner/camera/exif/ExifInterface;
    invoke-static {v0}, Lcom/xiaomi/scanner/camera/Exif;->getOrientation(Lcom/xiaomi/scanner/camera/exif/ExifInterface;)I

    move-result v1

    .line 82
    .local v1, "orientation":I
    sget-object v4, Lcom/xiaomi/scanner/camera/Exif;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cost:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaomi/scanner/debug/Log;->t(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getOrientation([B)I
    .locals 2
    .param p0, "jpegData"    # [B

    .prologue
    .line 66
    if-nez p0, :cond_0

    .line 67
    const/4 v1, 0x0

    .line 71
    :goto_0
    return v1

    .line 70
    :cond_0
    invoke-static {p0}, Lcom/xiaomi/scanner/camera/Exif;->getExif([B)Lcom/xiaomi/scanner/camera/exif/ExifInterface;

    move-result-object v0

    .line 71
    .local v0, "exif":Lcom/xiaomi/scanner/camera/exif/ExifInterface;
    invoke-static {v0}, Lcom/xiaomi/scanner/camera/Exif;->getOrientation(Lcom/xiaomi/scanner/camera/exif/ExifInterface;)I

    move-result v1

    goto :goto_0
.end method
