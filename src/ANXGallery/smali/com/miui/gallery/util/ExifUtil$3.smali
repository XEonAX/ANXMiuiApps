.class final Lcom/miui/gallery/util/ExifUtil$3;
.super Ljava/lang/Object;
.source "ExifUtil.java"

# interfaces
.implements Lcom/miui/gallery/util/ExifUtil$ExifCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/util/ExifUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/util/ExifUtil$ExifCreator",
        "<",
        "Lcom/miui/gallery3d/exif/ExifInterface;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Ljava/io/FileDescriptor;)Lcom/miui/gallery3d/exif/ExifInterface;
    .locals 2
    .param p1, "fileDescriptor"    # Ljava/io/FileDescriptor;

    .prologue
    .line 176
    const-string v0, "ExifUtil"

    const-string v1, "Not support create com.miui.gallery3d.exif.ExifInterface from fileDescriptor"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const/4 v0, 0x0

    return-object v0
.end method

.method public create(Ljava/io/InputStream;)Lcom/miui/gallery3d/exif/ExifInterface;
    .locals 5
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .prologue
    const/4 v2, 0x0

    .line 140
    if-nez p1, :cond_0

    move-object v1, v2

    .line 153
    :goto_0
    return-object v1

    .line 144
    :cond_0
    :try_start_0
    new-instance v1, Lcom/miui/gallery3d/exif/ExifInterface;

    invoke-direct {v1}, Lcom/miui/gallery3d/exif/ExifInterface;-><init>()V

    .line 146
    .local v1, "exifInterface":Lcom/miui/gallery3d/exif/ExifInterface;
    invoke-virtual {v1, p1}, Lcom/miui/gallery3d/exif/ExifInterface;->readExif(Ljava/io/InputStream;)V
    :try_end_0
    .catch Lcom/miui/gallery3d/exif/ExifInvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 148
    .end local v1    # "exifInterface":Lcom/miui/gallery3d/exif/ExifInterface;
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Lcom/miui/gallery3d/exif/ExifInvalidFormatException;
    const-string v3, "ExifUtil"

    const-string v4, "failed to create exif interface from %s, %s"

    invoke-static {v3, v4, p1, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .end local v0    # "e":Lcom/miui/gallery3d/exif/ExifInvalidFormatException;
    :goto_1
    move-object v1, v2

    .line 153
    goto :goto_0

    .line 150
    :catch_1
    move-exception v0

    .line 151
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "ExifUtil"

    const-string v4, "failed to create exif interface from %s, %s"

    invoke-static {v3, v4, p1, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public create(Ljava/lang/String;)Lcom/miui/gallery3d/exif/ExifInterface;
    .locals 5
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 158
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v2

    .line 171
    :goto_0
    return-object v1

    .line 162
    :cond_0
    :try_start_0
    new-instance v1, Lcom/miui/gallery3d/exif/ExifInterface;

    invoke-direct {v1}, Lcom/miui/gallery3d/exif/ExifInterface;-><init>()V

    .line 164
    .local v1, "exifInterface":Lcom/miui/gallery3d/exif/ExifInterface;
    invoke-virtual {v1, p1}, Lcom/miui/gallery3d/exif/ExifInterface;->readExif(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/miui/gallery3d/exif/ExifInvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 166
    .end local v1    # "exifInterface":Lcom/miui/gallery3d/exif/ExifInterface;
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Lcom/miui/gallery3d/exif/ExifInvalidFormatException;
    const-string v3, "ExifUtil"

    const-string v4, "failed to create exif interface from %s, %s"

    invoke-static {v3, v4, p1, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .end local v0    # "e":Lcom/miui/gallery3d/exif/ExifInvalidFormatException;
    :goto_1
    move-object v1, v2

    .line 171
    goto :goto_0

    .line 168
    :catch_1
    move-exception v0

    .line 169
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "ExifUtil"

    const-string v4, "failed to create exif interface from %s, %s"

    invoke-static {v3, v4, p1, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public bridge synthetic create(Ljava/io/FileDescriptor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 137
    invoke-virtual {p0, p1}, Lcom/miui/gallery/util/ExifUtil$3;->create(Ljava/io/FileDescriptor;)Lcom/miui/gallery3d/exif/ExifInterface;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic create(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 137
    invoke-virtual {p0, p1}, Lcom/miui/gallery/util/ExifUtil$3;->create(Ljava/io/InputStream;)Lcom/miui/gallery3d/exif/ExifInterface;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic create(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 137
    invoke-virtual {p0, p1}, Lcom/miui/gallery/util/ExifUtil$3;->create(Ljava/lang/String;)Lcom/miui/gallery3d/exif/ExifInterface;

    move-result-object v0

    return-object v0
.end method
