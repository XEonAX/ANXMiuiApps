.class public Lcom/miui/gallery/video/editor/TextStyle;
.super Lcom/miui/gallery/video/editor/model/VideoEditorBaseModel;
.source "TextStyle.java"


# instance fields
.field private mAssetId:I

.field private mAssetName:Ljava/lang/String;

.field private mIconResId:I

.field private mTemplateId:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "iconResId"    # I
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/model/VideoEditorBaseModel;-><init>()V

    .line 40
    iput p1, p0, Lcom/miui/gallery/video/editor/TextStyle;->mIconResId:I

    .line 41
    iput-object p2, p0, Lcom/miui/gallery/video/editor/TextStyle;->mType:Ljava/lang/String;

    .line 42
    const-string/jumbo v0, "ve_type_extra"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gallery/video/editor/TextStyle;->mExtra:Z

    .line 43
    iget-boolean v0, p0, Lcom/miui/gallery/video/editor/TextStyle;->mExtra:Z

    if-nez v0, :cond_0

    .line 44
    const/16 v0, 0x11

    iput v0, p0, Lcom/miui/gallery/video/editor/TextStyle;->mDownloadState:I

    .line 46
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/miui/gallery/video/editor/model/LocalResource;)V
    .locals 4
    .param p1, "data"    # Lcom/miui/gallery/video/editor/model/LocalResource;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/model/VideoEditorBaseModel;-><init>()V

    .line 18
    if-eqz p1, :cond_2

    .line 19
    iget-wide v2, p1, Lcom/miui/gallery/video/editor/model/LocalResource;->id:J

    iput-wide v2, p0, Lcom/miui/gallery/video/editor/TextStyle;->mID:J

    .line 20
    iget-object v1, p1, Lcom/miui/gallery/video/editor/model/LocalResource;->nameKey:Ljava/lang/String;

    iput-object v1, p0, Lcom/miui/gallery/video/editor/TextStyle;->mNameKey:Ljava/lang/String;

    .line 21
    iget-object v1, p1, Lcom/miui/gallery/video/editor/model/LocalResource;->label:Ljava/lang/String;

    iput-object v1, p0, Lcom/miui/gallery/video/editor/TextStyle;->mLabel:Ljava/lang/String;

    .line 22
    iget v1, p1, Lcom/miui/gallery/video/editor/model/LocalResource;->imageId:I

    iput v1, p0, Lcom/miui/gallery/video/editor/TextStyle;->mIconResId:I

    .line 23
    iget-object v1, p1, Lcom/miui/gallery/video/editor/model/LocalResource;->icon:Ljava/lang/String;

    iput-object v1, p0, Lcom/miui/gallery/video/editor/TextStyle;->mIconUrl:Ljava/lang/String;

    .line 24
    iget-object v1, p1, Lcom/miui/gallery/video/editor/model/LocalResource;->type:Ljava/lang/String;

    iput-object v1, p0, Lcom/miui/gallery/video/editor/TextStyle;->mType:Ljava/lang/String;

    .line 25
    const-string/jumbo v1, "ve_type_extra"

    iget-object v2, p1, Lcom/miui/gallery/video/editor/model/LocalResource;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/gallery/video/editor/TextStyle;->mExtra:Z

    .line 26
    iget-boolean v1, p0, Lcom/miui/gallery/video/editor/TextStyle;->mExtra:Z

    iput-boolean v1, p0, Lcom/miui/gallery/video/editor/TextStyle;->mIsTemplate:Z

    .line 27
    instance-of v1, p1, Lcom/miui/gallery/video/editor/model/WaterMarkLocalResource;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 28
    check-cast v0, Lcom/miui/gallery/video/editor/model/WaterMarkLocalResource;

    .line 29
    .local v0, "localResource":Lcom/miui/gallery/video/editor/model/WaterMarkLocalResource;
    iget-object v1, v0, Lcom/miui/gallery/video/editor/model/WaterMarkLocalResource;->assetId:Ljava/lang/String;

    invoke-static {v1}, Lcom/miui/gallery/video/editor/util/ToolsUtil;->parseIntFromStr(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/video/editor/TextStyle;->mAssetId:I

    .line 30
    iget-object v1, v0, Lcom/miui/gallery/video/editor/model/WaterMarkLocalResource;->assetName:Ljava/lang/String;

    iput-object v1, p0, Lcom/miui/gallery/video/editor/TextStyle;->mAssetName:Ljava/lang/String;

    .line 32
    .end local v0    # "localResource":Lcom/miui/gallery/video/editor/model/WaterMarkLocalResource;
    :cond_0
    iget-boolean v1, p0, Lcom/miui/gallery/video/editor/TextStyle;->mExtra:Z

    if-nez v1, :cond_1

    .line 33
    const/16 v1, 0x11

    iput v1, p0, Lcom/miui/gallery/video/editor/TextStyle;->mDownloadState:I

    .line 35
    :cond_1
    iget-object v1, p1, Lcom/miui/gallery/video/editor/model/LocalResource;->label:Ljava/lang/String;

    iput-object v1, p0, Lcom/miui/gallery/video/editor/TextStyle;->mLabel:Ljava/lang/String;

    .line 37
    :cond_2
    return-void
.end method


# virtual methods
.method public getAssetId()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/miui/gallery/video/editor/TextStyle;->mAssetId:I

    return v0
.end method

.method public getAssetName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/miui/gallery/video/editor/TextStyle;->mAssetName:Ljava/lang/String;

    return-object v0
.end method

.method public getIconResId()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/miui/gallery/video/editor/TextStyle;->mIconResId:I

    return v0
.end method

.method public getTemplateId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/miui/gallery/video/editor/TextStyle;->mTemplateId:Ljava/lang/String;

    return-object v0
.end method

.method public setTemplateId(Ljava/lang/String;)V
    .locals 0
    .param p1, "templateId"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/miui/gallery/video/editor/TextStyle;->mTemplateId:Ljava/lang/String;

    .line 58
    return-void
.end method
