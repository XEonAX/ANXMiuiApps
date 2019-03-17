.class public Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;
.super Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$c;
.source "nexTemplateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Template"
.end annotation


# instance fields
.field private aspect:[F

.field private bgmId:Ljava/lang/String;

.field private ids:[Ljava/lang/String;

.field private internalSourceCount:I

.field private maxAspect:I

.field private maxExtendCount:I

.field private maxRecommendCount:I

.field private maxSourceCount:I

.field private parsed:Z

.field private selectAspect:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 84
    invoke-direct {p0}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$c;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;->parsed:Z

    .line 80
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;->maxExtendCount:I

    .line 82
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;->internalSourceCount:I

    .line 86
    return-void
.end method

.method private constructor <init>(Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Item;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 89
    invoke-direct {p0, p1}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$c;-><init>(Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Item;)V

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;->parsed:Z

    .line 80
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;->maxExtendCount:I

    .line 82
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;->internalSourceCount:I

    .line 90
    return-void
.end method

.method private parseTemplate()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 108
    iget-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;->parsed:Z

    if-nez v0, :cond_4

    .line 109
    iput-boolean v2, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;->parsed:Z

    .line 110
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;->id()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->AssetPackageTemplateJsonToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    if-eqz v0, :cond_4

    .line 112
    new-instance v3, Lcom/google/gson_nex/Gson;

    invoke-direct {v3}, Lcom/google/gson_nex/Gson;-><init>()V

    .line 113
    const-class v4, Lcom/nexstreaming/kminternal/json/TemplateMetaData$Music;

    invoke-virtual {v3, v0, v4}, Lcom/google/gson_nex/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/kminternal/json/TemplateMetaData$Music;

    .line 114
    if-eqz v0, :cond_4

    .line 115
    iget-object v3, v0, Lcom/nexstreaming/kminternal/json/TemplateMetaData$Music;->string_audio_id:Ljava/lang/String;

    iput-object v3, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;->bgmId:Ljava/lang/String;

    .line 116
    const/4 v3, -0x1

    .line 120
    iget-object v0, v0, Lcom/nexstreaming/kminternal/json/TemplateMetaData$Music;->list_effectEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v4, v3

    move v3, v2

    move v2, v1

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;

    .line 121
    add-int/lit8 v4, v4, 0x1

    .line 122
    iget-boolean v6, v0, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;->b_source_change:Z

    if-nez v6, :cond_0

    iget v6, v0, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;->int_priority:I

    if-lez v6, :cond_5

    .line 123
    :cond_0
    iget v6, v0, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;->int_priority:I

    if-lez v6, :cond_1

    .line 124
    add-int/lit8 v2, v2, 0x1

    move v0, v1

    move v1, v2

    move v2, v3

    :goto_1
    move v3, v2

    move v2, v1

    move v1, v0

    .line 133
    goto :goto_0

    .line 126
    :cond_1
    iget-object v0, v0, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;->internal_clip_id:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 127
    add-int/lit8 v1, v1, 0x1

    move v0, v1

    move v1, v2

    move v2, v3

    goto :goto_1

    .line 129
    :cond_2
    add-int/lit8 v3, v3, 0x1

    move v0, v1

    move v1, v2

    move v2, v3

    goto :goto_1

    .line 134
    :cond_3
    iput v4, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;->maxSourceCount:I

    .line 135
    iput v3, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;->maxRecommendCount:I

    .line 136
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;->maxExtendCount:I

    .line 137
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;->internalSourceCount:I

    .line 141
    :cond_4
    return-void

    :cond_5
    move v0, v1

    move v1, v2

    move v2, v3

    goto :goto_1
.end method

.method public static promote(Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Item;)Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;
    .locals 5

    .prologue
    .line 99
    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->access$000()[Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 100
    invoke-interface {p0}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Item;->category()Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;

    move-result-object v4

    if-ne v4, v3, :cond_0

    .line 101
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;

    invoke-direct {v0, p0}, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;-><init>(Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Item;)V

    .line 104
    :goto_1
    return-object v0

    .line 99
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private selectAspect()V
    .locals 5

    .prologue
    .line 204
    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->getAspectRatio()F

    move-result v3

    .line 205
    const/high16 v1, 0x40400000    # 3.0f

    .line 206
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;->maxAspect:I

    if-ge v0, v2, :cond_2

    .line 207
    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;->aspect:[F

    aget v2, v2, v0

    sub-float v2, v3, v2

    .line 208
    const/4 v4, 0x0

    cmpg-float v4, v2, v4

    if-gez v4, :cond_0

    const/high16 v4, -0x40800000    # -1.0f

    mul-float/2addr v2, v4

    .line 209
    :cond_0
    cmpl-float v4, v1, v2

    if-lez v4, :cond_1

    .line 211
    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;->selectAspect:I

    move v1, v2

    .line 206
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 214
    :cond_2
    return-void
.end method


# virtual methods
.method public aspect()F
    .locals 2

    .prologue
    .line 164
    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    invoke-direct {p0}, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;->selectAspect()V

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;->aspect:[F

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;->selectAspect:I

    aget v0, v0, v1

    return v0
.end method

.method public bridge synthetic category()Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;
    .locals 1

    .prologue
    .line 72
    invoke-super {p0}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$c;->category()Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;

    move-result-object v0

    return-object v0
.end method

.method public defaultBGMId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;->category()Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;

    move-result-object v0

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;->beattemplate:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;

    if-ne v0, v1, :cond_0

    .line 252
    invoke-direct {p0}, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;->parseTemplate()V

    .line 253
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;->bgmId:Ljava/lang/String;

    .line 267
    :goto_0
    return-object v0

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;->bgmId:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 257
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;->id()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->AssetPackageTemplateJsonToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 258
    if-eqz v0, :cond_1

    .line 260
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 261
    const-string/jumbo v0, "template_bgm"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;->bgmId:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;->bgmId:Ljava/lang/String;

    goto :goto_0

    .line 262
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public getSupportedAspects()[F
    .locals 3

    .prologue
    .line 176
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;->maxAspect:I

    new-array v1, v0, [F

    .line 177
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 178
    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;->aspect:[F

    aget v2, v2, v0

    aput v2, v1, v0

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 180
    :cond_0
    return-object v1
.end method

.method public getSupportedLocales()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 277
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;->packageInfo()Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Asset;

    move-result-object v0

    if-nez v0, :cond_0

    .line 278
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 280
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;->packageInfo()Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Asset;

    move-result-object v0

    invoke-interface {v0}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Asset;->getSupportedLocales()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 4

    .prologue
    .line 196
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;->id:Ljava/lang/String;

    const-string v1, ".ver_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;->id:Ljava/lang/String;

    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;->id:Ljava/lang/String;

    const-string v2, ".ver_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;->id:Ljava/lang/String;

    const-string v3, ".ver_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 200
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "200"

    goto :goto_0
.end method

.method public bridge synthetic hidden()Z
    .locals 1

    .prologue
    .line 72
    invoke-super {p0}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$c;->hidden()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic icon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 72
    invoke-super {p0}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$c;->icon()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public id()Ljava/lang/String;
    .locals 2

    .prologue
    .line 145
    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    invoke-direct {p0}, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;->selectAspect()V

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;->ids:[Ljava/lang/String;

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;->selectAspect:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public bridge synthetic isDelete()Z
    .locals 1

    .prologue
    .line 72
    invoke-super {p0}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$c;->isDelete()Z

    move-result v0

    return v0
.end method

.method public name(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;->packageInfo()Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Asset;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Asset;->assetName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 154
    if-eqz v0, :cond_0

    .line 156
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$c;->name(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic packageInfo()Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Asset;
    .locals 1

    .prologue
    .line 72
    invoke-super {p0}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$c;->packageInfo()Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Asset;

    move-result-object v0

    return-object v0
.end method

.method public selectAspect(I)V
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;->maxAspect:I

    if-gt v0, p1, :cond_0

    .line 193
    :goto_0
    return-void

    .line 192
    :cond_0
    iput p1, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;->selectAspect:I

    goto :goto_0
.end method

.method setAspect(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v1, 0x5

    .line 217
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;->maxAspect:I

    if-lt v0, v1, :cond_0

    .line 243
    :goto_0
    return-void

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;->aspect:[F

    if-nez v0, :cond_1

    .line 222
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;->aspect:[F

    .line 223
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;->ids:[Ljava/lang/String;

    .line 226
    :cond_1
    const-string v0, "9v16"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 227
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;->aspect:[F

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;->maxAspect:I

    const/high16 v2, 0x3f100000    # 0.5625f

    aput v2, v0, v1

    .line 238
    :goto_1
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;->ids:[Ljava/lang/String;

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;->maxAspect:I

    aput-object p1, v0, v1

    .line 240
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;->maxAspect:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;->maxAspect:I

    .line 242
    invoke-direct {p0}, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;->selectAspect()V

    goto :goto_0

    .line 228
    :cond_2
    const-string v0, "2v1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 229
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;->aspect:[F

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;->maxAspect:I

    const/high16 v2, 0x40000000    # 2.0f

    aput v2, v0, v1

    goto :goto_1

    .line 230
    :cond_3
    const-string v0, "1v2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 231
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;->aspect:[F

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;->maxAspect:I

    const/high16 v2, 0x3f000000    # 0.5f

    aput v2, v0, v1

    goto :goto_1

    .line 232
    :cond_4
    const-string v0, "1v1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 233
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;->aspect:[F

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;->maxAspect:I

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    goto :goto_1

    .line 235
    :cond_5
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;->aspect:[F

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;->maxAspect:I

    const v2, 0x3fe38e39

    aput v2, v0, v1

    goto :goto_1
.end method

.method public bridge synthetic thumbnail()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 72
    invoke-super {p0}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$c;->thumbnail()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic type()Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;
    .locals 1

    .prologue
    .line 72
    invoke-super {p0}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$c;->type()Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic validate()Z
    .locals 1

    .prologue
    .line 72
    invoke-super {p0}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$c;->validate()Z

    move-result v0

    return v0
.end method
