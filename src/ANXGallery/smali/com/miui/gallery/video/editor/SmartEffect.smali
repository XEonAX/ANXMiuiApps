.class public Lcom/miui/gallery/video/editor/SmartEffect;
.super Lcom/miui/gallery/video/editor/model/VideoEditorBaseModel;
.source "SmartEffect.java"


# static fields
.field private static smartEffectNames:Ljava/util/HashMap;
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
.field public final TAG:Ljava/lang/String;

.field private mAssetId:I

.field private mAssetName:Ljava/lang/String;

.field private mEnName:Ljava/lang/String;

.field private mHasSpeedChange:Z

.field private mIconResId:I

.field private mLongTime:I

.field private mNameResid:I

.field private mShortTime:I

.field private mTemplate:Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/miui/gallery/video/editor/SmartEffect$1;

    invoke-direct {v0}, Lcom/miui/gallery/video/editor/SmartEffect$1;-><init>()V

    sput-object v0, Lcom/miui/gallery/video/editor/SmartEffect;->smartEffectNames:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Lcom/miui/gallery/video/editor/model/LocalResource;)V
    .locals 4
    .param p1, "data"    # Lcom/miui/gallery/video/editor/model/LocalResource;

    .prologue
    const/4 v1, 0x1

    .line 40
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/model/VideoEditorBaseModel;-><init>()V

    .line 13
    const-string v2, "SmartEffect"

    iput-object v2, p0, Lcom/miui/gallery/video/editor/SmartEffect;->TAG:Ljava/lang/String;

    .line 41
    if-eqz p1, :cond_2

    .line 42
    iget-wide v2, p1, Lcom/miui/gallery/video/editor/model/LocalResource;->id:J

    iput-wide v2, p0, Lcom/miui/gallery/video/editor/SmartEffect;->mID:J

    .line 43
    iget-object v2, p1, Lcom/miui/gallery/video/editor/model/LocalResource;->nameKey:Ljava/lang/String;

    iput-object v2, p0, Lcom/miui/gallery/video/editor/SmartEffect;->mNameKey:Ljava/lang/String;

    .line 44
    iget-object v2, p1, Lcom/miui/gallery/video/editor/model/LocalResource;->label:Ljava/lang/String;

    iput-object v2, p0, Lcom/miui/gallery/video/editor/SmartEffect;->mLabel:Ljava/lang/String;

    .line 45
    iget v2, p1, Lcom/miui/gallery/video/editor/model/LocalResource;->imageId:I

    iput v2, p0, Lcom/miui/gallery/video/editor/SmartEffect;->mIconResId:I

    .line 46
    iget-object v2, p1, Lcom/miui/gallery/video/editor/model/LocalResource;->icon:Ljava/lang/String;

    iput-object v2, p0, Lcom/miui/gallery/video/editor/SmartEffect;->mIconUrl:Ljava/lang/String;

    .line 47
    iget-object v2, p1, Lcom/miui/gallery/video/editor/model/LocalResource;->type:Ljava/lang/String;

    iput-object v2, p0, Lcom/miui/gallery/video/editor/SmartEffect;->mType:Ljava/lang/String;

    .line 48
    const-string/jumbo v2, "ve_type_extra"

    iget-object v3, p1, Lcom/miui/gallery/video/editor/model/LocalResource;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/miui/gallery/video/editor/SmartEffect;->mExtra:Z

    .line 49
    iget-boolean v2, p0, Lcom/miui/gallery/video/editor/SmartEffect;->mExtra:Z

    if-nez v2, :cond_0

    .line 50
    const/16 v2, 0x11

    iput v2, p0, Lcom/miui/gallery/video/editor/SmartEffect;->mDownloadState:I

    .line 52
    :cond_0
    instance-of v2, p1, Lcom/miui/gallery/video/editor/model/SmartEffectLocalResource;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 53
    check-cast v0, Lcom/miui/gallery/video/editor/model/SmartEffectLocalResource;

    .line 54
    .local v0, "localResource":Lcom/miui/gallery/video/editor/model/SmartEffectLocalResource;
    iget-object v2, v0, Lcom/miui/gallery/video/editor/model/SmartEffectLocalResource;->assetId:Ljava/lang/String;

    invoke-static {v2}, Lcom/miui/gallery/video/editor/util/ToolsUtil;->parseIntFromStr(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/miui/gallery/video/editor/SmartEffect;->mAssetId:I

    .line 55
    iget-object v2, v0, Lcom/miui/gallery/video/editor/model/SmartEffectLocalResource;->assetName:Ljava/lang/String;

    iput-object v2, p0, Lcom/miui/gallery/video/editor/SmartEffect;->mAssetName:Ljava/lang/String;

    .line 56
    iget-object v2, v0, Lcom/miui/gallery/video/editor/model/SmartEffectLocalResource;->enName:Ljava/lang/String;

    iput-object v2, p0, Lcom/miui/gallery/video/editor/SmartEffect;->mEnName:Ljava/lang/String;

    .line 57
    iget-object v2, v0, Lcom/miui/gallery/video/editor/model/SmartEffectLocalResource;->longTime:Ljava/lang/String;

    invoke-static {v2}, Lcom/miui/gallery/video/editor/util/ToolsUtil;->parseIntFromStr(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/miui/gallery/video/editor/SmartEffect;->mLongTime:I

    .line 58
    iget-object v2, v0, Lcom/miui/gallery/video/editor/model/SmartEffectLocalResource;->shortTime:Ljava/lang/String;

    invoke-static {v2}, Lcom/miui/gallery/video/editor/util/ToolsUtil;->parseIntFromStr(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/miui/gallery/video/editor/SmartEffect;->mShortTime:I

    .line 59
    iget-object v2, v0, Lcom/miui/gallery/video/editor/model/SmartEffectLocalResource;->hasSpeedChange:Ljava/lang/String;

    invoke-static {v2}, Lcom/miui/gallery/video/editor/util/ToolsUtil;->parseIntFromStr(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v1, :cond_3

    :goto_0
    iput-boolean v1, p0, Lcom/miui/gallery/video/editor/SmartEffect;->mHasSpeedChange:Z

    .line 61
    .end local v0    # "localResource":Lcom/miui/gallery/video/editor/model/SmartEffectLocalResource;
    :cond_1
    iget-boolean v1, p0, Lcom/miui/gallery/video/editor/SmartEffect;->mExtra:Z

    iput-boolean v1, p0, Lcom/miui/gallery/video/editor/SmartEffect;->mIsTemplate:Z

    .line 63
    :cond_2
    return-void

    .line 59
    .restart local v0    # "localResource":Lcom/miui/gallery/video/editor/model/SmartEffectLocalResource;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 1
    .param p1, "nameKey"    # Ljava/lang/String;
    .param p2, "mIconResId"    # I
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "extra"    # Z

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/model/VideoEditorBaseModel;-><init>()V

    .line 13
    const-string v0, "SmartEffect"

    iput-object v0, p0, Lcom/miui/gallery/video/editor/SmartEffect;->TAG:Ljava/lang/String;

    .line 69
    iput-object p1, p0, Lcom/miui/gallery/video/editor/SmartEffect;->mNameKey:Ljava/lang/String;

    .line 70
    iput p2, p0, Lcom/miui/gallery/video/editor/SmartEffect;->mIconResId:I

    .line 71
    iput-object p3, p0, Lcom/miui/gallery/video/editor/SmartEffect;->mType:Ljava/lang/String;

    .line 72
    const-string/jumbo v0, "ve_type_extra"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gallery/video/editor/SmartEffect;->mExtra:Z

    .line 73
    iget-boolean v0, p0, Lcom/miui/gallery/video/editor/SmartEffect;->mExtra:Z

    if-nez v0, :cond_0

    .line 74
    const/16 v0, 0x11

    iput v0, p0, Lcom/miui/gallery/video/editor/SmartEffect;->mDownloadState:I

    .line 76
    :cond_0
    return-void
.end method


# virtual methods
.method public getAssetId()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/miui/gallery/video/editor/SmartEffect;->mAssetId:I

    return v0
.end method

.method public getAssetName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/miui/gallery/video/editor/SmartEffect;->mAssetName:Ljava/lang/String;

    return-object v0
.end method

.method public getEnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/miui/gallery/video/editor/SmartEffect;->mEnName:Ljava/lang/String;

    return-object v0
.end method

.method public getIconResId()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/miui/gallery/video/editor/SmartEffect;->mIconResId:I

    return v0
.end method

.method public getLongTime()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/miui/gallery/video/editor/SmartEffect;->mLongTime:I

    return v0
.end method

.method public getNameResId()I
    .locals 2

    .prologue
    .line 91
    iget v0, p0, Lcom/miui/gallery/video/editor/SmartEffect;->mNameResid:I

    if-nez v0, :cond_0

    sget-object v0, Lcom/miui/gallery/video/editor/SmartEffect;->smartEffectNames:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/gallery/video/editor/SmartEffect;->smartEffectNames:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/SmartEffect;->mNameKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    sget-object v0, Lcom/miui/gallery/video/editor/SmartEffect;->smartEffectNames:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/SmartEffect;->mNameKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/video/editor/SmartEffect;->mNameResid:I

    .line 94
    :cond_0
    iget v0, p0, Lcom/miui/gallery/video/editor/SmartEffect;->mNameResid:I

    return v0
.end method

.method public getShortTime()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/miui/gallery/video/editor/SmartEffect;->mShortTime:I

    return v0
.end method

.method public getTemplate()Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/miui/gallery/video/editor/SmartEffect;->mTemplate:Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;

    return-object v0
.end method

.method public isHasSpeedChange()Z
    .locals 1

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/miui/gallery/video/editor/SmartEffect;->mHasSpeedChange:Z

    return v0
.end method

.method public isLimitFourtySeconds()Z
    .locals 2

    .prologue
    .line 110
    iget v0, p0, Lcom/miui/gallery/video/editor/SmartEffect;->mLongTime:I

    const v1, 0x9c40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLimitSixtySeconds()Z
    .locals 2

    .prologue
    .line 106
    iget v0, p0, Lcom/miui/gallery/video/editor/SmartEffect;->mLongTime:I

    const v1, 0xea60

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTemplate(Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;)V
    .locals 0
    .param p1, "template"    # Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/miui/gallery/video/editor/SmartEffect;->mTemplate:Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;

    .line 84
    return-void
.end method
