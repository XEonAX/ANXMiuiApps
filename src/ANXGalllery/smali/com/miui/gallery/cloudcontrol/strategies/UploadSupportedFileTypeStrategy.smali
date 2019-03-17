.class public Lcom/miui/gallery/cloudcontrol/strategies/UploadSupportedFileTypeStrategy;
.super Lcom/miui/gallery/cloudcontrol/strategies/BaseStrategy;
.source "UploadSupportedFileTypeStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/cloudcontrol/strategies/UploadSupportedFileTypeStrategy$FileType;
    }
.end annotation


# instance fields
.field private mImageFileTypes:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "image"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/cloudcontrol/strategies/UploadSupportedFileTypeStrategy$FileType;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoFileTypes:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "video"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/cloudcontrol/strategies/UploadSupportedFileTypeStrategy$FileType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/miui/gallery/cloudcontrol/strategies/BaseStrategy;-><init>()V

    .line 52
    return-void
.end method

.method public static createDefault()Lcom/miui/gallery/cloudcontrol/strategies/UploadSupportedFileTypeStrategy;
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 65
    new-instance v0, Lcom/miui/gallery/cloudcontrol/strategies/UploadSupportedFileTypeStrategy;

    invoke-direct {v0}, Lcom/miui/gallery/cloudcontrol/strategies/UploadSupportedFileTypeStrategy;-><init>()V

    .line 66
    .local v0, "strategy":Lcom/miui/gallery/cloudcontrol/strategies/UploadSupportedFileTypeStrategy;
    const/4 v1, 0x7

    new-array v1, v1, [Lcom/miui/gallery/cloudcontrol/strategies/UploadSupportedFileTypeStrategy$FileType;

    new-instance v2, Lcom/miui/gallery/cloudcontrol/strategies/UploadSupportedFileTypeStrategy$FileType;

    const-string v3, "JPG"

    const-string v4, "image/jpeg"

    invoke-direct {v2, v3, v4}, Lcom/miui/gallery/cloudcontrol/strategies/UploadSupportedFileTypeStrategy$FileType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v6

    new-instance v2, Lcom/miui/gallery/cloudcontrol/strategies/UploadSupportedFileTypeStrategy$FileType;

    const-string v3, "JPEG"

    const-string v4, "image/jpeg"

    invoke-direct {v2, v3, v4}, Lcom/miui/gallery/cloudcontrol/strategies/UploadSupportedFileTypeStrategy$FileType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v7

    new-instance v2, Lcom/miui/gallery/cloudcontrol/strategies/UploadSupportedFileTypeStrategy$FileType;

    const-string v3, "GIF"

    const-string v4, "image/gif"

    invoke-direct {v2, v3, v4}, Lcom/miui/gallery/cloudcontrol/strategies/UploadSupportedFileTypeStrategy$FileType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v8

    new-instance v2, Lcom/miui/gallery/cloudcontrol/strategies/UploadSupportedFileTypeStrategy$FileType;

    const-string v3, "PNG"

    const-string v4, "image/png"

    invoke-direct {v2, v3, v4}, Lcom/miui/gallery/cloudcontrol/strategies/UploadSupportedFileTypeStrategy$FileType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v9

    const/4 v2, 0x4

    new-instance v3, Lcom/miui/gallery/cloudcontrol/strategies/UploadSupportedFileTypeStrategy$FileType;

    const-string v4, "BMP"

    const-string v5, "image/x-ms-bmp"

    invoke-direct {v3, v4, v5}, Lcom/miui/gallery/cloudcontrol/strategies/UploadSupportedFileTypeStrategy$FileType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x5

    new-instance v3, Lcom/miui/gallery/cloudcontrol/strategies/UploadSupportedFileTypeStrategy$FileType;

    const-string v4, "WEBP"

    const-string v5, "image/webp"

    invoke-direct {v3, v4, v5}, Lcom/miui/gallery/cloudcontrol/strategies/UploadSupportedFileTypeStrategy$FileType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x6

    new-instance v3, Lcom/miui/gallery/cloudcontrol/strategies/UploadSupportedFileTypeStrategy$FileType;

    const-string v4, "WBMP"

    const-string v5, "image/vnd.wap.wbmp"

    invoke-direct {v3, v4, v5}, Lcom/miui/gallery/cloudcontrol/strategies/UploadSupportedFileTypeStrategy$FileType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/gallery/cloudcontrol/strategies/UploadSupportedFileTypeStrategy;->mImageFileTypes:Ljava/util/List;

    .line 75
    new-array v1, v9, [Lcom/miui/gallery/cloudcontrol/strategies/UploadSupportedFileTypeStrategy$FileType;

    new-instance v2, Lcom/miui/gallery/cloudcontrol/strategies/UploadSupportedFileTypeStrategy$FileType;

    const-string v3, "MP4"

    const-string/jumbo v4, "video/mp4"

    invoke-direct {v2, v3, v4}, Lcom/miui/gallery/cloudcontrol/strategies/UploadSupportedFileTypeStrategy$FileType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v6

    new-instance v2, Lcom/miui/gallery/cloudcontrol/strategies/UploadSupportedFileTypeStrategy$FileType;

    const-string v3, "MOV"

    const-string/jumbo v4, "video/quicktime"

    invoke-direct {v2, v3, v4}, Lcom/miui/gallery/cloudcontrol/strategies/UploadSupportedFileTypeStrategy$FileType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v7

    new-instance v2, Lcom/miui/gallery/cloudcontrol/strategies/UploadSupportedFileTypeStrategy$FileType;

    const-string v3, "3GP"

    const-string/jumbo v4, "video/3gpp"

    invoke-direct {v2, v3, v4}, Lcom/miui/gallery/cloudcontrol/strategies/UploadSupportedFileTypeStrategy$FileType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v8

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/gallery/cloudcontrol/strategies/UploadSupportedFileTypeStrategy;->mVideoFileTypes:Ljava/util/List;

    .line 80
    return-object v0
.end method


# virtual methods
.method public getSupportedFileTypeMap()Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 35
    .local v1, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/miui/gallery/cloudcontrol/strategies/UploadSupportedFileTypeStrategy;->mImageFileTypes:Ljava/util/List;

    invoke-static {v2}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 36
    iget-object v2, p0, Lcom/miui/gallery/cloudcontrol/strategies/UploadSupportedFileTypeStrategy;->mImageFileTypes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cloudcontrol/strategies/UploadSupportedFileTypeStrategy$FileType;

    .line 37
    .local v0, "fileType":Lcom/miui/gallery/cloudcontrol/strategies/UploadSupportedFileTypeStrategy$FileType;
    iget-object v3, v0, Lcom/miui/gallery/cloudcontrol/strategies/UploadSupportedFileTypeStrategy$FileType;->extension:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v0, Lcom/miui/gallery/cloudcontrol/strategies/UploadSupportedFileTypeStrategy$FileType;->mimeType:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 38
    iget-object v3, v0, Lcom/miui/gallery/cloudcontrol/strategies/UploadSupportedFileTypeStrategy$FileType;->extension:Ljava/lang/String;

    iget-object v4, v0, Lcom/miui/gallery/cloudcontrol/strategies/UploadSupportedFileTypeStrategy$FileType;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 42
    .end local v0    # "fileType":Lcom/miui/gallery/cloudcontrol/strategies/UploadSupportedFileTypeStrategy$FileType;
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/cloudcontrol/strategies/UploadSupportedFileTypeStrategy;->mVideoFileTypes:Ljava/util/List;

    invoke-static {v2}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 43
    iget-object v2, p0, Lcom/miui/gallery/cloudcontrol/strategies/UploadSupportedFileTypeStrategy;->mVideoFileTypes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cloudcontrol/strategies/UploadSupportedFileTypeStrategy$FileType;

    .line 44
    .restart local v0    # "fileType":Lcom/miui/gallery/cloudcontrol/strategies/UploadSupportedFileTypeStrategy$FileType;
    iget-object v3, v0, Lcom/miui/gallery/cloudcontrol/strategies/UploadSupportedFileTypeStrategy$FileType;->extension:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v0, Lcom/miui/gallery/cloudcontrol/strategies/UploadSupportedFileTypeStrategy$FileType;->mimeType:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 45
    iget-object v3, v0, Lcom/miui/gallery/cloudcontrol/strategies/UploadSupportedFileTypeStrategy$FileType;->extension:Ljava/lang/String;

    iget-object v4, v0, Lcom/miui/gallery/cloudcontrol/strategies/UploadSupportedFileTypeStrategy$FileType;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 49
    .end local v0    # "fileType":Lcom/miui/gallery/cloudcontrol/strategies/UploadSupportedFileTypeStrategy$FileType;
    :cond_3
    return-object v1
.end method
