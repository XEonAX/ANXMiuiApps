.class public Lcom/miui/gallery/util/FileMimeUtil;
.super Lcom/miui/gallery/util/BaseFileMimeUtil;
.source "FileMimeUtil.java"


# static fields
.field private static sSupportUploadMimeTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static getSupportUploadMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 28
    invoke-static {p0}, Lcom/miui/gallery/util/MediaFile;->getMimeTypeForFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 29
    .local v2, "mimeType":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v2}, Lcom/miui/gallery/util/FileMimeUtil;->isImageFromMimeType(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v2}, Lcom/miui/gallery/util/FileMimeUtil;->isVideoFromMimeType(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 30
    :cond_0
    const/16 v4, 0x2e

    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 31
    .local v1, "lastDot":I
    if-ltz v1, :cond_3

    .line 33
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/gallery/util/FileMimeUtil;->getSupportedMimeTypeByExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 34
    .local v3, "supportUploadMimeType":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 49
    .end local v1    # "lastDot":I
    .end local v2    # "mimeType":Ljava/lang/String;
    .end local v3    # "supportUploadMimeType":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v3

    .line 36
    .restart local v1    # "lastDot":I
    .restart local v2    # "mimeType":Ljava/lang/String;
    .restart local v3    # "supportUploadMimeType":Ljava/lang/String;
    :cond_2
    invoke-static {v2}, Lcom/miui/gallery/util/FileMimeUtil;->isVideoFromMimeType(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 38
    :try_start_0
    sget-object v4, Lcom/miui/gallery/util/FileMimeUtil;->VIDEO_MIMES:[Lcom/miui/gallery/util/BaseFileMimeUtil$Mime;

    invoke-static {p0, v4}, Lcom/miui/gallery/util/FileMimeUtil;->rawGetMimeType(Ljava/lang/String;[Lcom/miui/gallery/util/BaseFileMimeUtil$Mime;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 42
    :goto_1
    if-nez v3, :cond_1

    .line 49
    .end local v1    # "lastDot":I
    .end local v2    # "mimeType":Ljava/lang/String;
    .end local v3    # "supportUploadMimeType":Ljava/lang/String;
    :cond_3
    const-string v3, "*/*"

    goto :goto_0

    .line 39
    .restart local v1    # "lastDot":I
    .restart local v2    # "mimeType":Ljava/lang/String;
    .restart local v3    # "supportUploadMimeType":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 40
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "BaseFileMimeUtil"

    invoke-static {v4, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private static getSupportedMimeTypeByExt(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "extension"    # Ljava/lang/String;

    .prologue
    .line 16
    sget-object v0, Lcom/miui/gallery/util/FileMimeUtil;->sSupportUploadMimeTypeMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 17
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/CloudControlStrategyHelper;->getUploadSupportedFileTypes()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/util/FileMimeUtil;->sSupportUploadMimeTypeMap:Ljava/util/HashMap;

    .line 20
    :cond_0
    sget-object v0, Lcom/miui/gallery/util/FileMimeUtil;->sSupportUploadMimeTypeMap:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 21
    const/4 v0, 0x0

    .line 23
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/miui/gallery/util/FileMimeUtil;->sSupportUploadMimeTypeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method
