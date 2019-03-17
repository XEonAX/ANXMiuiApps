.class final Lcom/miui/gallery/util/ExifUtil$1;
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
        "Landroid/support/media/ExifInterface;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Ljava/io/FileDescriptor;)Landroid/support/media/ExifInterface;
    .locals 2
    .param p1, "fileDescriptor"    # Ljava/io/FileDescriptor;

    .prologue
    .line 78
    const-string v0, "ExifUtil"

    const-string v1, "Not support create android.support.media.ExifInterface from fileDescriptor"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const/4 v0, 0x0

    return-object v0
.end method

.method public create(Ljava/io/InputStream;)Landroid/support/media/ExifInterface;
    .locals 4
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .prologue
    const/4 v1, 0x0

    .line 52
    if-nez p1, :cond_0

    .line 60
    :goto_0
    return-object v1

    .line 56
    :cond_0
    :try_start_0
    new-instance v2, Landroid/support/media/ExifInterface;

    invoke-direct {v2, p1}, Landroid/support/media/ExifInterface;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "ExifUtil"

    const-string v3, "failed to create exif interface from %s, %s"

    invoke-static {v2, v3, p1, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public create(Ljava/lang/String;)Landroid/support/media/ExifInterface;
    .locals 4
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 73
    :goto_0
    return-object v1

    .line 69
    :cond_0
    :try_start_0
    new-instance v2, Landroid/support/media/ExifInterface;

    invoke-direct {v2, p1}, Landroid/support/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "ExifUtil"

    const-string v3, "failed to create exif interface from %s, %s"

    invoke-static {v2, v3, p1, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public bridge synthetic create(Ljava/io/FileDescriptor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/miui/gallery/util/ExifUtil$1;->create(Ljava/io/FileDescriptor;)Landroid/support/media/ExifInterface;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic create(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/miui/gallery/util/ExifUtil$1;->create(Ljava/io/InputStream;)Landroid/support/media/ExifInterface;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic create(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/miui/gallery/util/ExifUtil$1;->create(Ljava/lang/String;)Landroid/support/media/ExifInterface;

    move-result-object v0

    return-object v0
.end method
