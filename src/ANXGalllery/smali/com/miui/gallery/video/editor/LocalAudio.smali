.class public Lcom/miui/gallery/video/editor/LocalAudio;
.super Lcom/miui/gallery/video/editor/model/VideoEditorBaseModel;
.source "LocalAudio.java"


# static fields
.field private static audioNames:Ljava/util/HashMap;
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


# instance fields
.field private mIconResId:I

.field private mNameResId:I

.field private mSrcPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/miui/gallery/video/editor/LocalAudio$1;

    invoke-direct {v0}, Lcom/miui/gallery/video/editor/LocalAudio$1;-><init>()V

    sput-object v0, Lcom/miui/gallery/video/editor/LocalAudio;->audioNames:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Lcom/miui/gallery/video/editor/model/LocalResource;)V
    .locals 2
    .param p1, "data"    # Lcom/miui/gallery/video/editor/model/LocalResource;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/model/VideoEditorBaseModel;-><init>()V

    .line 32
    if-eqz p1, :cond_0

    .line 33
    iget-wide v0, p1, Lcom/miui/gallery/video/editor/model/LocalResource;->id:J

    iput-wide v0, p0, Lcom/miui/gallery/video/editor/LocalAudio;->mID:J

    .line 34
    iget-object v0, p1, Lcom/miui/gallery/video/editor/model/LocalResource;->nameKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/gallery/video/editor/LocalAudio;->mNameKey:Ljava/lang/String;

    .line 35
    iget-object v0, p1, Lcom/miui/gallery/video/editor/model/LocalResource;->label:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/gallery/video/editor/LocalAudio;->mLabel:Ljava/lang/String;

    .line 36
    iget v0, p1, Lcom/miui/gallery/video/editor/model/LocalResource;->imageId:I

    iput v0, p0, Lcom/miui/gallery/video/editor/LocalAudio;->mIconResId:I

    .line 37
    iget-object v0, p1, Lcom/miui/gallery/video/editor/model/LocalResource;->icon:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/gallery/video/editor/LocalAudio;->mIconUrl:Ljava/lang/String;

    .line 38
    iget-object v0, p1, Lcom/miui/gallery/video/editor/model/LocalResource;->type:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/gallery/video/editor/LocalAudio;->mType:Ljava/lang/String;

    .line 39
    const-string/jumbo v0, "ve_type_extra"

    iget-object v1, p1, Lcom/miui/gallery/video/editor/model/LocalResource;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gallery/video/editor/LocalAudio;->mExtra:Z

    .line 40
    iget-boolean v0, p0, Lcom/miui/gallery/video/editor/LocalAudio;->mExtra:Z

    if-nez v0, :cond_0

    .line 41
    const/16 v0, 0x11

    iput v0, p0, Lcom/miui/gallery/video/editor/LocalAudio;->mDownloadState:I

    .line 44
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 1
    .param p1, "nameKey"    # Ljava/lang/String;
    .param p2, "mIconResId"    # I
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "extra"    # Z

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/model/VideoEditorBaseModel;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/miui/gallery/video/editor/LocalAudio;->mNameKey:Ljava/lang/String;

    .line 48
    iput p2, p0, Lcom/miui/gallery/video/editor/LocalAudio;->mIconResId:I

    .line 49
    iput-object p3, p0, Lcom/miui/gallery/video/editor/LocalAudio;->mType:Ljava/lang/String;

    .line 50
    const-string/jumbo v0, "ve_type_extra"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gallery/video/editor/LocalAudio;->mExtra:Z

    .line 51
    iget-boolean v0, p0, Lcom/miui/gallery/video/editor/LocalAudio;->mExtra:Z

    if-nez v0, :cond_0

    .line 52
    const/16 v0, 0x11

    iput v0, p0, Lcom/miui/gallery/video/editor/LocalAudio;->mDownloadState:I

    .line 54
    :cond_0
    return-void
.end method


# virtual methods
.method public getFileName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/gallery/video/editor/LocalAudio;->mNameKey:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".aac"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIconResId()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/miui/gallery/video/editor/LocalAudio;->mIconResId:I

    return v0
.end method

.method public getNameResId()I
    .locals 2

    .prologue
    .line 61
    iget v0, p0, Lcom/miui/gallery/video/editor/LocalAudio;->mNameResId:I

    if-nez v0, :cond_0

    sget-object v0, Lcom/miui/gallery/video/editor/LocalAudio;->audioNames:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/gallery/video/editor/LocalAudio;->audioNames:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/LocalAudio;->mNameKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    sget-object v0, Lcom/miui/gallery/video/editor/LocalAudio;->audioNames:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/LocalAudio;->mNameKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/video/editor/LocalAudio;->mNameResId:I

    .line 64
    :cond_0
    iget v0, p0, Lcom/miui/gallery/video/editor/LocalAudio;->mNameResId:I

    return v0
.end method

.method public getSrcPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/miui/gallery/video/editor/LocalAudio;->mUnZipPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/gallery/video/editor/LocalAudio;->mUnZipPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/LocalAudio;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/video/editor/LocalAudio;->mSrcPath:Ljava/lang/String;

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/video/editor/LocalAudio;->mSrcPath:Ljava/lang/String;

    return-object v0
.end method

.method public setSrcPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "srcPath"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/miui/gallery/video/editor/LocalAudio;->mSrcPath:Ljava/lang/String;

    .line 80
    return-void
.end method
