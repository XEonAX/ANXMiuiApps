.class public Lcom/nexstreaming/app/common/nexasset/overlay/impl/RenderItemOverlayAsset;
.super Lcom/nexstreaming/app/common/nexasset/overlay/impl/AbstractOverlayAsset;
.source "RenderItemOverlayAsset.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RenderItemOverlayAsset"


# instance fields
.field private effect_id_:[I

.field private height:I

.field private width:I


# direct methods
.method public constructor <init>(Lcom/nexstreaming/app/common/nexasset/assetpackage/f;)V
    .locals 4

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/nexstreaming/app/common/nexasset/overlay/impl/AbstractOverlayAsset;-><init>(Lcom/nexstreaming/app/common/nexasset/assetpackage/f;)V

    .line 30
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/nexstreaming/app/common/nexasset/overlay/impl/RenderItemOverlayAsset;->effect_id_:[I

    .line 38
    :try_start_0
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/config/a;->a()Lcom/nexstreaming/kminternal/kinemaster/config/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/kinemaster/config/a;->b()Landroid/content/Context;

    move-result-object v0

    invoke-interface {p1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/i;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/nexstreaming/app/common/nexasset/assetpackage/h;

    move-result-object v0

    .line 39
    invoke-interface {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/h;->d()I

    move-result v1

    iput v1, p0, Lcom/nexstreaming/app/common/nexasset/overlay/impl/RenderItemOverlayAsset;->width:I

    .line 40
    invoke-interface {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/h;->e()I

    move-result v1

    iput v1, p0, Lcom/nexstreaming/app/common/nexasset/overlay/impl/RenderItemOverlayAsset;->height:I

    .line 41
    const-string v1, "RenderItemOverlayAsset"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read itemdef: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : w,h="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/h;->d()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/h;->e()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 47
    :goto_0
    return-void

    .line 42
    :catch_0
    move-exception v0

    .line 43
    const-string v1, "RenderItemOverlayAsset"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error reading itemdef: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 44
    :catch_1
    move-exception v0

    .line 45
    const-string v1, "RenderItemOverlayAsset"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error reading itemdef: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 30
    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method static synthetic access$000(Lcom/nexstreaming/app/common/nexasset/overlay/impl/RenderItemOverlayAsset;)[I
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/overlay/impl/RenderItemOverlayAsset;->effect_id_:[I

    return-object v0
.end method


# virtual methods
.method public getDefaultDuration()I
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/nexstreaming/app/common/nexasset/overlay/impl/RenderItemOverlayAsset;->width:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/nexstreaming/app/common/nexasset/overlay/impl/RenderItemOverlayAsset;->height:I

    if-gtz v0, :cond_1

    .line 59
    :cond_0
    const/16 v0, 0x2bc

    .line 60
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/nexstreaming/app/common/nexasset/overlay/impl/RenderItemOverlayAsset;->height:I

    goto :goto_0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/nexstreaming/app/common/nexasset/overlay/impl/RenderItemOverlayAsset;->width:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/nexstreaming/app/common/nexasset/overlay/impl/RenderItemOverlayAsset;->height:I

    if-gtz v0, :cond_1

    .line 52
    :cond_0
    const/16 v0, 0x2bc

    .line 53
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/nexstreaming/app/common/nexasset/overlay/impl/RenderItemOverlayAsset;->width:I

    goto :goto_0
.end method

.method public onAwake(Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;Landroid/graphics/RectF;Ljava/lang/String;Ljava/util/Map;)Lcom/nexstreaming/app/common/nexasset/overlay/AwakeAsset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;",
            "Landroid/graphics/RectF;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/nexstreaming/app/common/nexasset/overlay/AwakeAsset;"
        }
    .end annotation

    .prologue
    .line 71
    new-instance v0, Lcom/nexstreaming/app/common/nexasset/overlay/impl/RenderItemOverlayAsset$1;

    invoke-direct {v0, p0, p3, p2}, Lcom/nexstreaming/app/common/nexasset/overlay/impl/RenderItemOverlayAsset$1;-><init>(Lcom/nexstreaming/app/common/nexasset/overlay/impl/RenderItemOverlayAsset;Ljava/lang/String;Landroid/graphics/RectF;)V

    return-object v0
.end method
