.class public Lcom/nexstreaming/app/common/nexasset/overlay/OverlayAssetFactory;
.super Ljava/lang/Object;
.source "OverlayAssetFactory.java"


# static fields
.field private static cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/nexstreaming/app/common/nexasset/overlay/OverlayAsset;",
            ">;>;"
        }
    .end annotation
.end field

.field private static deadRefCheck:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/nexstreaming/app/common/nexasset/overlay/OverlayAssetFactory;->cache:Ljava/util/Map;

    .line 23
    const/4 v0, 0x0

    sput v0, Lcom/nexstreaming/app/common/nexasset/overlay/OverlayAssetFactory;->deadRefCheck:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static forItem(Ljava/lang/String;)Lcom/nexstreaming/app/common/nexasset/overlay/OverlayAsset;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 26
    sget-object v0, Lcom/nexstreaming/app/common/nexasset/overlay/OverlayAssetFactory;->cache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 27
    if-eqz v0, :cond_1

    .line 28
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/app/common/nexasset/overlay/OverlayAsset;

    .line 29
    if-eqz v0, :cond_1

    .line 61
    :cond_0
    :goto_0
    return-object v0

    .line 32
    :cond_1
    const/4 v0, 0x0

    .line 33
    invoke-static {}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->a()Lcom/nexstreaming/app/common/nexasset/assetpackage/c;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->c(Ljava/lang/String;)Lcom/nexstreaming/app/common/nexasset/assetpackage/f;

    move-result-object v1

    .line 34
    if-nez v1, :cond_2

    .line 35
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Asset not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_2
    sget-object v2, Lcom/nexstreaming/app/common/nexasset/overlay/OverlayAssetFactory$1;->$SwitchMap$com$nexstreaming$app$common$nexasset$assetpackage$ItemType:[I

    invoke-interface {v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getType()Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 54
    :goto_1
    if-eqz v0, :cond_0

    .line 55
    sget-object v1, Lcom/nexstreaming/app/common/nexasset/overlay/OverlayAssetFactory;->cache:Ljava/util/Map;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget v1, Lcom/nexstreaming/app/common/nexasset/overlay/OverlayAssetFactory;->deadRefCheck:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/nexstreaming/app/common/nexasset/overlay/OverlayAssetFactory;->deadRefCheck:I

    const/16 v2, 0x20

    if-le v1, v2, :cond_0

    .line 57
    sget-object v1, Lcom/nexstreaming/app/common/nexasset/overlay/OverlayAssetFactory;->cache:Ljava/util/Map;

    invoke-static {v1}, Lcom/nexstreaming/app/common/util/j;->a(Ljava/util/Map;)V

    .line 58
    const/4 v1, 0x0

    sput v1, Lcom/nexstreaming/app/common/nexasset/overlay/OverlayAssetFactory;->deadRefCheck:I

    goto :goto_0

    .line 38
    :pswitch_0
    invoke-interface {v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getFilePath()Ljava/lang/String;

    move-result-object v0

    .line 39
    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 40
    const-string v3, "png"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "jpeg"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "jpg"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "webp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 41
    :cond_3
    new-instance v0, Lcom/nexstreaming/app/common/nexasset/overlay/impl/BitmapOverlayAsset;

    invoke-direct {v0, v1}, Lcom/nexstreaming/app/common/nexasset/overlay/impl/BitmapOverlayAsset;-><init>(Lcom/nexstreaming/app/common/nexasset/assetpackage/f;)V

    goto :goto_1

    .line 42
    :cond_4
    const-string/jumbo v3, "svg"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 43
    new-instance v0, Lcom/nexstreaming/app/common/nexasset/overlay/impl/SVGOverlayAsset;

    invoke-direct {v0, v1}, Lcom/nexstreaming/app/common/nexasset/overlay/impl/SVGOverlayAsset;-><init>(Lcom/nexstreaming/app/common/nexasset/assetpackage/f;)V

    goto :goto_1

    .line 44
    :cond_5
    const-string/jumbo v3, "xml"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 45
    new-instance v0, Lcom/nexstreaming/app/common/nexasset/overlay/impl/AnimatedOverlayAsset;

    invoke-direct {v0, v1}, Lcom/nexstreaming/app/common/nexasset/overlay/impl/AnimatedOverlayAsset;-><init>(Lcom/nexstreaming/app/common/nexasset/assetpackage/f;)V

    goto :goto_1

    .line 47
    :cond_6
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Asset load error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (unknown overlay type for \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\')"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 52
    :pswitch_1
    new-instance v0, Lcom/nexstreaming/app/common/nexasset/overlay/impl/RenderItemOverlayAsset;

    invoke-direct {v0, v1}, Lcom/nexstreaming/app/common/nexasset/overlay/impl/RenderItemOverlayAsset;-><init>(Lcom/nexstreaming/app/common/nexasset/assetpackage/f;)V

    goto/16 :goto_0

    .line 36
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
