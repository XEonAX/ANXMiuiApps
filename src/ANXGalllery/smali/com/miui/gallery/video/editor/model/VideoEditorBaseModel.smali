.class public Lcom/miui/gallery/video/editor/model/VideoEditorBaseModel;
.super Ljava/lang/Object;
.source "VideoEditorBaseModel.java"


# instance fields
.field protected mDownloadState:I

.field protected mExtra:Z

.field protected mID:J

.field protected mIconUrl:Ljava/lang/String;

.field protected mIsTemplate:Z

.field protected mLabel:Ljava/lang/String;

.field protected mNameKey:Ljava/lang/String;

.field protected mType:Ljava/lang/String;

.field protected mUnZipPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/16 v0, 0x13

    iput v0, p0, Lcom/miui/gallery/video/editor/model/VideoEditorBaseModel;->mDownloadState:I

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/gallery/video/editor/model/VideoEditorBaseModel;->mLabel:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDownloadState()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/miui/gallery/video/editor/model/VideoEditorBaseModel;->mDownloadState:I

    return v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/miui/gallery/video/editor/model/VideoEditorBaseModel;->mIconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 25
    iget-wide v0, p0, Lcom/miui/gallery/video/editor/model/VideoEditorBaseModel;->mID:J

    return-wide v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/miui/gallery/video/editor/model/VideoEditorBaseModel;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public isCustom()Z
    .locals 2

    .prologue
    .line 63
    const-string/jumbo v0, "ve_type_custom"

    iget-object v1, p0, Lcom/miui/gallery/video/editor/model/VideoEditorBaseModel;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isDownloadSuccess()Z
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/miui/gallery/video/editor/model/VideoEditorBaseModel;->mDownloadState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDownloaded()Z
    .locals 2

    .prologue
    .line 44
    iget v0, p0, Lcom/miui/gallery/video/editor/model/VideoEditorBaseModel;->mDownloadState:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDownloading()Z
    .locals 2

    .prologue
    .line 47
    iget v0, p0, Lcom/miui/gallery/video/editor/model/VideoEditorBaseModel;->mDownloadState:I

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isExtra()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/miui/gallery/video/editor/model/VideoEditorBaseModel;->mExtra:Z

    return v0
.end method

.method public isLocal()Z
    .locals 2

    .prologue
    .line 60
    const-string/jumbo v0, "ve_type_local"

    iget-object v1, p0, Lcom/miui/gallery/video/editor/model/VideoEditorBaseModel;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isNone()Z
    .locals 2

    .prologue
    .line 66
    const-string/jumbo v0, "ve_type_none"

    iget-object v1, p0, Lcom/miui/gallery/video/editor/model/VideoEditorBaseModel;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isTemplate()Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/miui/gallery/video/editor/model/VideoEditorBaseModel;->mIsTemplate:Z

    return v0
.end method

.method public setDownloadState(I)V
    .locals 0
    .param p1, "downloadState"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/miui/gallery/video/editor/model/VideoEditorBaseModel;->mDownloadState:I

    .line 38
    return-void
.end method

.method public setUnZipPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "unZipPath"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/miui/gallery/video/editor/model/VideoEditorBaseModel;->mUnZipPath:Ljava/lang/String;

    .line 34
    return-void
.end method
