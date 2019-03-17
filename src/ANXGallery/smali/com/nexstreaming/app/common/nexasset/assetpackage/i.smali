.class public Lcom/nexstreaming/app/common/nexasset/assetpackage/i;
.super Ljava/lang/Object;
.source "XMLItemDefReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nexstreaming/app/common/nexasset/assetpackage/i$a;,
        Lcom/nexstreaming/app/common/nexasset/assetpackage/i$c;,
        Lcom/nexstreaming/app/common/nexasset/assetpackage/i$b;
    }
.end annotation


# static fields
.field private static a:Lcom/nexstreaming/app/common/nexasset/assetpackage/h;

.field private static b:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/nexstreaming/app/common/nexasset/assetpackage/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    new-instance v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/i$1;

    invoke-direct {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/i$1;-><init>()V

    sput-object v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/i;->a:Lcom/nexstreaming/app/common/nexasset/assetpackage/h;

    .line 50
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/i;->b:Landroid/util/LruCache;

    return-void
.end method

.method private static a(Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 392
    if-nez p0, :cond_0

    .line 397
    :goto_0
    return p1

    .line 395
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    goto :goto_0

    .line 396
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 6

    .prologue
    .line 402
    if-nez p0, :cond_1

    .line 410
    :cond_0
    :goto_0
    return-object p1

    .line 405
    :cond_1
    :try_start_0
    const-string v0, " +"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 406
    array-length v0, v1

    const/4 v2, 0x4

    if-lt v0, v2, :cond_0

    .line 408
    new-instance v0, Landroid/graphics/RectF;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    const/4 v4, 0x2

    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    const/4 v5, 0x3

    aget-object v1, v1, v5

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-direct {v0, v2, v3, v4, v1}, Landroid/graphics/RectF;-><init>(FFFF)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    goto :goto_0

    .line 409
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/nexstreaming/app/common/nexasset/assetpackage/h;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    if-nez p1, :cond_1

    .line 54
    sget-object v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/i;->a:Lcom/nexstreaming/app/common/nexasset/assetpackage/h;

    .line 70
    :cond_0
    :goto_0
    return-object v0

    .line 55
    :cond_1
    sget-object v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/i;->b:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/h;

    .line 56
    if-nez v0, :cond_0

    .line 58
    invoke-static {p0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->a(Landroid/content/Context;)Lcom/nexstreaming/app/common/nexasset/assetpackage/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->c(Ljava/lang/String;)Lcom/nexstreaming/app/common/nexasset/assetpackage/f;

    move-result-object v0

    .line 59
    if-nez v0, :cond_2

    .line 60
    sget-object v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/i;->a:Lcom/nexstreaming/app/common/nexasset/assetpackage/h;

    goto :goto_0

    .line 61
    :cond_2
    sget-object v1, Lcom/nexstreaming/app/common/nexasset/assetpackage/i$2;->a:[I

    invoke-interface {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getType()Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 70
    sget-object v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/i;->a:Lcom/nexstreaming/app/common/nexasset/assetpackage/h;

    goto :goto_0

    .line 65
    :pswitch_0
    invoke-interface {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getPackageURI()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getAssetPackage()Lcom/nexstreaming/app/common/nexasset/assetpackage/b;

    move-result-object v2

    invoke-interface {v2}, Lcom/nexstreaming/app/common/nexasset/assetpackage/b;->getAssetId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader;

    move-result-object v1

    .line 66
    invoke-interface {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/i;->a(Ljava/io/InputStream;)Lcom/nexstreaming/app/common/nexasset/assetpackage/h;

    move-result-object v0

    .line 67
    sget-object v1, Lcom/nexstreaming/app/common/nexasset/assetpackage/i;->b:Landroid/util/LruCache;

    invoke-virtual {v1, p1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 61
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Ljava/io/InputStream;)Lcom/nexstreaming/app/common/nexasset/assetpackage/h;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 88
    const-string v1, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 89
    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 90
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 91
    invoke-static {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/i;->a(Lorg/xmlpull/v1/XmlPullParser;)Lcom/nexstreaming/app/common/nexasset/assetpackage/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 93
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 91
    return-object v0

    .line 93
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    throw v0
.end method

.method public static a(Lorg/xmlpull/v1/XmlPullParser;)Lcom/nexstreaming/app/common/nexasset/assetpackage/h;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/16 v4, 0x64

    const/4 v3, 0x0

    .line 99
    new-instance v1, Lcom/nexstreaming/app/common/nexasset/assetpackage/i$c;

    invoke-direct {v1, v3}, Lcom/nexstreaming/app/common/nexasset/assetpackage/i$c;-><init>(Lcom/nexstreaming/app/common/nexasset/assetpackage/i$1;)V

    .line 101
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 102
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    if-ne v2, v6, :cond_0

    const-string v2, "effect"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "renderitem"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "overlay"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 103
    :cond_0
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected <effect>, <overlay> or <renderitem>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_1
    const-string v2, "effect"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 107
    const-string/jumbo v0, "transition"

    const-string/jumbo v2, "type"

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 108
    const-string v0, "effectoffset"

    invoke-interface {p0, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/nexstreaming/app/common/nexasset/assetpackage/i;->a(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v1, v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/i$c;->a(Lcom/nexstreaming/app/common/nexasset/assetpackage/i$c;I)I

    .line 109
    const-string v0, "effectoverlap"

    invoke-interface {p0, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    if-nez v0, :cond_2

    .line 111
    const-string/jumbo v0, "videooverlap"

    invoke-interface {p0, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    :cond_2
    invoke-static {v0, v4}, Lcom/nexstreaming/app/common/nexasset/assetpackage/i;->a(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v1, v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/i$c;->b(Lcom/nexstreaming/app/common/nexasset/assetpackage/i$c;I)I

    .line 123
    :cond_3
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/i$c;->a(Lcom/nexstreaming/app/common/nexasset/assetpackage/i$c;Ljava/util/List;)Ljava/util/List;

    .line 125
    :cond_4
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_9

    .line 126
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-ne v0, v6, :cond_4

    .line 128
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 129
    const-string v2, "parameter"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 130
    invoke-static {v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/i$c;->a(Lcom/nexstreaming/app/common/nexasset/assetpackage/i$c;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/i;->c(Lorg/xmlpull/v1/XmlPullParser;)Lcom/nexstreaming/app/common/nexasset/assetpackage/g;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 114
    :cond_5
    const-string v2, "renderitem"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 115
    const-string/jumbo v0, "transition"

    const-string/jumbo v2, "type"

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 116
    const-string/jumbo v0, "transitionoffset"

    invoke-interface {p0, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/nexstreaming/app/common/nexasset/assetpackage/i;->a(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v1, v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/i$c;->a(Lcom/nexstreaming/app/common/nexasset/assetpackage/i$c;I)I

    .line 117
    const-string/jumbo v0, "transitionoverlap"

    invoke-interface {p0, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/nexstreaming/app/common/nexasset/assetpackage/i;->a(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v1, v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/i$c;->b(Lcom/nexstreaming/app/common/nexasset/assetpackage/i$c;I)I

    .line 119
    :cond_6
    const-string/jumbo v0, "width"

    invoke-interface {p0, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/nexstreaming/app/common/nexasset/assetpackage/i;->a(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v1, v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/i$c;->c(Lcom/nexstreaming/app/common/nexasset/assetpackage/i$c;I)I

    .line 120
    const-string v0, "height"

    invoke-interface {p0, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/nexstreaming/app/common/nexasset/assetpackage/i;->a(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v1, v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/i$c;->d(Lcom/nexstreaming/app/common/nexasset/assetpackage/i$c;I)I

    goto :goto_0

    .line 131
    :cond_7
    const-string/jumbo v2, "userfield"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 132
    invoke-static {p0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/i;->b(Lorg/xmlpull/v1/XmlPullParser;)Lcom/nexstreaming/app/common/nexasset/assetpackage/g;

    move-result-object v0

    .line 133
    if-eqz v0, :cond_4

    .line 134
    invoke-static {v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/i$c;->a(Lcom/nexstreaming/app/common/nexasset/assetpackage/i$c;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 136
    :cond_8
    invoke-static {p0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/i;->f(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1

    .line 140
    :cond_9
    return-object v1
.end method

.method private static a(Ljava/lang/String;Z)Z
    .locals 1

    .prologue
    .line 415
    if-nez p0, :cond_1

    .line 422
    :cond_0
    :goto_0
    return p1

    .line 417
    :cond_1
    const-string/jumbo v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 418
    const/4 p1, 0x1

    goto :goto_0

    .line 419
    :cond_2
    const-string v0, "false"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 420
    const/4 p1, 0x0

    goto :goto_0
.end method

.method private static b(Lorg/xmlpull/v1/XmlPullParser;)Lcom/nexstreaming/app/common/nexasset/assetpackage/g;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 144
    const-string/jumbo v0, "userfield"

    invoke-interface {p0, v7, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 145
    new-instance v4, Lcom/nexstreaming/app/common/nexasset/assetpackage/i$a;

    invoke-direct {v4, v3}, Lcom/nexstreaming/app/common/nexasset/assetpackage/i$a;-><init>(Lcom/nexstreaming/app/common/nexasset/assetpackage/i$1;)V

    .line 146
    const-string v0, "id"

    invoke-interface {p0, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/nexstreaming/app/common/nexasset/assetpackage/i$a;->e:Ljava/lang/String;

    .line 147
    const-string v0, "default"

    invoke-interface {p0, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/nexstreaming/app/common/nexasset/assetpackage/i$a;->b:Ljava/lang/String;

    .line 148
    const v0, 0x7fffffff

    iput v0, v4, Lcom/nexstreaming/app/common/nexasset/assetpackage/i$a;->f:I

    .line 149
    const-string v0, "maxlines"

    invoke-interface {p0, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/i;->a(Ljava/lang/String;I)I

    move-result v0

    if-le v0, v1, :cond_4

    move v0, v1

    :goto_0
    iput-boolean v0, v4, Lcom/nexstreaming/app/common/nexasset/assetpackage/i$a;->g:Z

    .line 150
    iput-boolean v2, v4, Lcom/nexstreaming/app/common/nexasset/assetpackage/i$a;->h:Z

    .line 151
    iput v2, v4, Lcom/nexstreaming/app/common/nexasset/assetpackage/i$a;->i:I

    .line 152
    const/16 v0, 0x64

    iput v0, v4, Lcom/nexstreaming/app/common/nexasset/assetpackage/i$a;->j:I

    .line 153
    iput v1, v4, Lcom/nexstreaming/app/common/nexasset/assetpackage/i$a;->k:I

    .line 154
    const-string/jumbo v0, "step"

    invoke-interface {p0, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/nexstreaming/app/common/nexasset/assetpackage/i;->a(Ljava/lang/String;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    iput-object v0, v4, Lcom/nexstreaming/app/common/nexasset/assetpackage/i$a;->l:Landroid/graphics/RectF;

    .line 156
    const-string v0, "label"

    invoke-interface {p0, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 157
    if-eqz v1, :cond_0

    .line 158
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v4, Lcom/nexstreaming/app/common/nexasset/assetpackage/i$a;->m:Ljava/util/Map;

    .line 159
    iget-object v0, v4, Lcom/nexstreaming/app/common/nexasset/assetpackage/i$a;->m:Ljava/util/Map;

    const-string v2, "label"

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iget-object v0, v4, Lcom/nexstreaming/app/common/nexasset/assetpackage/i$a;->m:Ljava/util/Map;

    const-string v2, "label"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, ""

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    :cond_0
    const-string/jumbo v0, "type"

    invoke-interface {p0, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 165
    const-string v1, "selection"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 166
    sget-object v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;->CHOICE:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;

    iput-object v0, v4, Lcom/nexstreaming/app/common/nexasset/assetpackage/i$a;->a:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;

    .line 180
    :cond_1
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_f

    .line 181
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-ne v0, v7, :cond_1

    .line 183
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 184
    const-string v1, "fieldlabel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 185
    iget-object v0, v4, Lcom/nexstreaming/app/common/nexasset/assetpackage/i$a;->m:Ljava/util/Map;

    if-nez v0, :cond_2

    .line 186
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v4, Lcom/nexstreaming/app/common/nexasset/assetpackage/i$a;->m:Ljava/util/Map;

    .line 187
    :cond_2
    const-string v1, "label"

    .line 188
    const-string v0, "locale"

    invoke-interface {p0, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 189
    const-string/jumbo v0, "value"

    invoke-interface {p0, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 190
    invoke-static {p0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/i;->f(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 191
    if-eqz v2, :cond_1

    if-eqz v5, :cond_1

    .line 192
    iget-object v0, v4, Lcom/nexstreaming/app/common/nexasset/assetpackage/i$a;->m:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 193
    if-nez v0, :cond_3

    .line 194
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 195
    iget-object v6, v4, Lcom/nexstreaming/app/common/nexasset/assetpackage/i$a;->m:Ljava/util/Map;

    invoke-interface {v6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    :cond_3
    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    move v0, v2

    .line 149
    goto/16 :goto_0

    .line 167
    :cond_5
    const-string v1, "color"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 168
    sget-object v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;->RGB:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;

    iput-object v0, v4, Lcom/nexstreaming/app/common/nexasset/assetpackage/i$a;->a:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;

    goto :goto_1

    .line 169
    :cond_6
    const-string/jumbo v1, "text"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 170
    sget-object v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;->TEXT:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;

    iput-object v0, v4, Lcom/nexstreaming/app/common/nexasset/assetpackage/i$a;->a:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;

    goto :goto_1

    .line 171
    :cond_7
    const-string v1, "overlay"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 172
    sget-object v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;->IMAGE:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;

    iput-object v0, v4, Lcom/nexstreaming/app/common/nexasset/assetpackage/i$a;->a:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;

    goto :goto_1

    .line 173
    :cond_8
    const-string/jumbo v1, "undefined"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 174
    invoke-static {p0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/i;->f(Lorg/xmlpull/v1/XmlPullParser;)V

    move-object v0, v3

    .line 214
    :goto_2
    return-object v0

    .line 177
    :cond_9
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unrecognized parameter type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_a
    const-string v1, "option"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 200
    iget-object v0, v4, Lcom/nexstreaming/app/common/nexasset/assetpackage/i$a;->n:Ljava/util/List;

    if-nez v0, :cond_b

    .line 201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v4, Lcom/nexstreaming/app/common/nexasset/assetpackage/i$a;->n:Ljava/util/List;

    .line 203
    :cond_b
    iget-object v0, v4, Lcom/nexstreaming/app/common/nexasset/assetpackage/i$a;->n:Ljava/util/List;

    invoke-static {p0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/i;->e(Lorg/xmlpull/v1/XmlPullParser;)Lcom/nexstreaming/app/common/nexasset/assetpackage/g$a;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 204
    :cond_c
    const-string v1, "icon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 205
    iget-object v0, v4, Lcom/nexstreaming/app/common/nexasset/assetpackage/i$a;->o:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 206
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "multiple <icon> tags not allowed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_d
    const-string/jumbo v0, "src"

    invoke-interface {p0, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/nexstreaming/app/common/nexasset/assetpackage/i$a;->o:Ljava/lang/String;

    goto/16 :goto_1

    .line 210
    :cond_e
    invoke-static {p0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/i;->f(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1

    :cond_f
    move-object v0, v4

    .line 214
    goto :goto_2
.end method

.method private static c(Lorg/xmlpull/v1/XmlPullParser;)Lcom/nexstreaming/app/common/nexasset/assetpackage/g;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 427
    const-string v0, "parameter"

    invoke-interface {p0, v7, v6, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 428
    new-instance v1, Lcom/nexstreaming/app/common/nexasset/assetpackage/i$a;

    invoke-direct {v1, v6}, Lcom/nexstreaming/app/common/nexasset/assetpackage/i$a;-><init>(Lcom/nexstreaming/app/common/nexasset/assetpackage/i$1;)V

    .line 429
    const-string v0, "id"

    invoke-interface {p0, v6, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/nexstreaming/app/common/nexasset/assetpackage/i$a;->e:Ljava/lang/String;

    .line 430
    const-string v0, "default"

    invoke-interface {p0, v6, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/nexstreaming/app/common/nexasset/assetpackage/i$a;->b:Ljava/lang/String;

    .line 431
    const-string v0, "maxlen"

    invoke-interface {p0, v6, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v2, 0x7fffffff

    invoke-static {v0, v2}, Lcom/nexstreaming/app/common/nexasset/assetpackage/i;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/nexstreaming/app/common/nexasset/assetpackage/i$a;->f:I

    .line 432
    const-string v0, "multiline"

    invoke-interface {p0, v6, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/nexstreaming/app/common/nexasset/assetpackage/i;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lcom/nexstreaming/app/common/nexasset/assetpackage/i$a;->g:Z

    .line 433
    const-string v0, "private"

    invoke-interface {p0, v6, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/nexstreaming/app/common/nexasset/assetpackage/i;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lcom/nexstreaming/app/common/nexasset/assetpackage/i$a;->h:Z

    .line 434
    const-string v0, "minvalue"

    invoke-interface {p0, v6, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/nexstreaming/app/common/nexasset/assetpackage/i;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/nexstreaming/app/common/nexasset/assetpackage/i$a;->i:I

    .line 435
    const-string v0, "maxvalue"

    invoke-interface {p0, v6, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x64

    invoke-static {v0, v2}, Lcom/nexstreaming/app/common/nexasset/assetpackage/i;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/nexstreaming/app/common/nexasset/assetpackage/i$a;->j:I

    .line 436
    const-string/jumbo v0, "step"

    invoke-interface {p0, v6, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/nexstreaming/app/common/nexasset/assetpackage/i;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/nexstreaming/app/common/nexasset/assetpackage/i$a;->k:I

    .line 437
    const-string v0, "bounds"

    invoke-interface {p0, v6, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/nexstreaming/app/common/nexasset/assetpackage/i;->a(Ljava/lang/String;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    iput-object v0, v1, Lcom/nexstreaming/app/common/nexasset/assetpackage/i$a;->l:Landroid/graphics/RectF;

    .line 438
    const-string/jumbo v0, "type"

    invoke-interface {p0, v6, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 439
    const-string v2, "choice"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 440
    sget-object v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;->CHOICE:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;

    iput-object v0, v1, Lcom/nexstreaming/app/common/nexasset/assetpackage/i$a;->a:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;

    .line 471
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-eq v0, v8, :cond_13

    .line 472
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-ne v0, v7, :cond_0

    .line 474
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 475
    const-string/jumbo v2, "string"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 476
    iget-object v0, v1, Lcom/nexstreaming/app/common/nexasset/assetpackage/i$a;->m:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 477
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lcom/nexstreaming/app/common/nexasset/assetpackage/i$a;->m:Ljava/util/Map;

    .line 478
    :cond_1
    const-string v0, "name"

    invoke-interface {p0, v6, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 479
    const-string v0, "lang"

    invoke-interface {p0, v6, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 480
    invoke-static {p0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/i;->g(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v4

    .line 481
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    .line 482
    iget-object v0, v1, Lcom/nexstreaming/app/common/nexasset/assetpackage/i$a;->m:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 483
    if-nez v0, :cond_2

    .line 484
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 485
    iget-object v5, v1, Lcom/nexstreaming/app/common/nexasset/assetpackage/i$a;->m:Ljava/util/Map;

    invoke-interface {v5, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    :cond_2
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 441
    :cond_3
    const-string v2, "point"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 442
    const-string v0, "dimensions"

    invoke-interface {p0, v6, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/nexstreaming/app/common/nexasset/assetpackage/i;->a(Ljava/lang/String;I)I

    move-result v0

    .line 443
    if-ne v0, v7, :cond_4

    .line 444
    sget-object v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;->XY:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;

    iput-object v0, v1, Lcom/nexstreaming/app/common/nexasset/assetpackage/i$a;->a:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;

    goto :goto_0

    .line 445
    :cond_4
    if-ne v0, v8, :cond_5

    .line 446
    sget-object v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;->XYZ:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;

    iput-object v0, v1, Lcom/nexstreaming/app/common/nexasset/assetpackage/i$a;->a:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;

    goto :goto_0

    .line 448
    :cond_5
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unsupported number of parameter dimensions: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 450
    :cond_6
    const-string v2, "color"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 451
    const-string v0, "alpha"

    invoke-interface {p0, v6, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/nexstreaming/app/common/nexasset/assetpackage/i;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 452
    sget-object v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;->RGBA:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;

    iput-object v0, v1, Lcom/nexstreaming/app/common/nexasset/assetpackage/i$a;->a:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;

    goto/16 :goto_0

    .line 454
    :cond_7
    sget-object v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;->RGB:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;

    iput-object v0, v1, Lcom/nexstreaming/app/common/nexasset/assetpackage/i$a;->a:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;

    goto/16 :goto_0

    .line 456
    :cond_8
    const-string v2, "range"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 457
    sget-object v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;->RANGE:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;

    iput-object v0, v1, Lcom/nexstreaming/app/common/nexasset/assetpackage/i$a;->a:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;

    goto/16 :goto_0

    .line 458
    :cond_9
    const-string v2, "rect"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 459
    sget-object v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;->RECT:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;

    iput-object v0, v1, Lcom/nexstreaming/app/common/nexasset/assetpackage/i$a;->a:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;

    goto/16 :goto_0

    .line 460
    :cond_a
    const-string/jumbo v2, "text"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 461
    sget-object v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;->TEXT:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;

    iput-object v0, v1, Lcom/nexstreaming/app/common/nexasset/assetpackage/i$a;->a:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;

    goto/16 :goto_0

    .line 462
    :cond_b
    const-string/jumbo v2, "switch"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 463
    sget-object v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;->SWITCH:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;

    iput-object v0, v1, Lcom/nexstreaming/app/common/nexasset/assetpackage/i$a;->a:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;

    .line 464
    const-string v0, "off"

    invoke-interface {p0, v6, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/nexstreaming/app/common/nexasset/assetpackage/i$a;->c:Ljava/lang/String;

    .line 465
    const-string v0, "on"

    invoke-interface {p0, v6, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/nexstreaming/app/common/nexasset/assetpackage/i$a;->d:Ljava/lang/String;

    goto/16 :goto_0

    .line 466
    :cond_c
    const-string v2, "image"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 467
    sget-object v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;->IMAGE:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;

    iput-object v0, v1, Lcom/nexstreaming/app/common/nexasset/assetpackage/i$a;->a:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;

    goto/16 :goto_0

    .line 469
    :cond_d
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unrecognized parameter type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 489
    :cond_e
    const-string v2, "option"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 490
    iget-object v0, v1, Lcom/nexstreaming/app/common/nexasset/assetpackage/i$a;->n:Ljava/util/List;

    if-nez v0, :cond_f

    .line 491
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/nexstreaming/app/common/nexasset/assetpackage/i$a;->n:Ljava/util/List;

    .line 493
    :cond_f
    iget-object v0, v1, Lcom/nexstreaming/app/common/nexasset/assetpackage/i$a;->n:Ljava/util/List;

    invoke-static {p0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/i;->d(Lorg/xmlpull/v1/XmlPullParser;)Lcom/nexstreaming/app/common/nexasset/assetpackage/g$a;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 494
    :cond_10
    const-string v2, "icon"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 495
    iget-object v0, v1, Lcom/nexstreaming/app/common/nexasset/assetpackage/i$a;->o:Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 496
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "multiple <icon> tags not allowed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 498
    :cond_11
    const-string/jumbo v0, "src"

    invoke-interface {p0, v6, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/nexstreaming/app/common/nexasset/assetpackage/i$a;->o:Ljava/lang/String;

    goto/16 :goto_0

    .line 500
    :cond_12
    invoke-static {p0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/i;->f(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 504
    :cond_13
    return-object v1
.end method

.method private static d(Lorg/xmlpull/v1/XmlPullParser;)Lcom/nexstreaming/app/common/nexasset/assetpackage/g$a;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 508
    const-string v0, "option"

    invoke-interface {p0, v7, v6, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 509
    new-instance v1, Lcom/nexstreaming/app/common/nexasset/assetpackage/i$b;

    invoke-direct {v1, v6}, Lcom/nexstreaming/app/common/nexasset/assetpackage/i$b;-><init>(Lcom/nexstreaming/app/common/nexasset/assetpackage/i$1;)V

    .line 510
    const-string/jumbo v0, "value"

    invoke-interface {p0, v6, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/nexstreaming/app/common/nexasset/assetpackage/i$b;->c:Ljava/lang/String;

    .line 511
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_6

    .line 512
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-ne v0, v7, :cond_0

    .line 514
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 515
    const-string/jumbo v2, "string"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 516
    const-string v0, "name"

    invoke-interface {p0, v6, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 517
    const-string v0, "lang"

    invoke-interface {p0, v6, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 518
    invoke-static {p0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/i;->g(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v4

    .line 519
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    .line 520
    iget-object v0, v1, Lcom/nexstreaming/app/common/nexasset/assetpackage/i$b;->a:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 521
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lcom/nexstreaming/app/common/nexasset/assetpackage/i$b;->a:Ljava/util/Map;

    .line 522
    :cond_1
    iget-object v0, v1, Lcom/nexstreaming/app/common/nexasset/assetpackage/i$b;->a:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 523
    if-nez v0, :cond_2

    .line 524
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 525
    iget-object v5, v1, Lcom/nexstreaming/app/common/nexasset/assetpackage/i$b;->a:Ljava/util/Map;

    invoke-interface {v5, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    :cond_2
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 529
    :cond_3
    const-string v2, "icon"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 530
    iget-object v0, v1, Lcom/nexstreaming/app/common/nexasset/assetpackage/i$b;->b:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 531
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "multiple <icon> tags not allowed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 533
    :cond_4
    const-string/jumbo v0, "src"

    invoke-interface {p0, v6, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/nexstreaming/app/common/nexasset/assetpackage/i$b;->b:Ljava/lang/String;

    goto/16 :goto_0

    .line 535
    :cond_5
    invoke-static {p0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/i;->f(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 538
    :cond_6
    return-object v1
.end method

.method private static e(Lorg/xmlpull/v1/XmlPullParser;)Lcom/nexstreaming/app/common/nexasset/assetpackage/g$a;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 542
    const-string v0, "option"

    invoke-interface {p0, v7, v6, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 543
    new-instance v1, Lcom/nexstreaming/app/common/nexasset/assetpackage/i$b;

    invoke-direct {v1, v6}, Lcom/nexstreaming/app/common/nexasset/assetpackage/i$b;-><init>(Lcom/nexstreaming/app/common/nexasset/assetpackage/i$1;)V

    .line 544
    const-string/jumbo v0, "value"

    invoke-interface {p0, v6, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/nexstreaming/app/common/nexasset/assetpackage/i$b;->c:Ljava/lang/String;

    .line 545
    const-string v0, "icon"

    invoke-interface {p0, v6, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/nexstreaming/app/common/nexasset/assetpackage/i$b;->b:Ljava/lang/String;

    .line 546
    const-string v0, "label"

    invoke-interface {p0, v6, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 547
    if-eqz v2, :cond_0

    .line 548
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lcom/nexstreaming/app/common/nexasset/assetpackage/i$b;->a:Ljava/util/Map;

    .line 549
    iget-object v0, v1, Lcom/nexstreaming/app/common/nexasset/assetpackage/i$b;->a:Ljava/util/Map;

    const-string v3, "label"

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    iget-object v0, v1, Lcom/nexstreaming/app/common/nexasset/assetpackage/i$b;->a:Ljava/util/Map;

    const-string v3, "label"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v3, ""

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_4

    .line 553
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-ne v0, v7, :cond_0

    .line 555
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 556
    const-string v2, "fieldlabel"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 557
    iget-object v0, v1, Lcom/nexstreaming/app/common/nexasset/assetpackage/i$b;->a:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 558
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lcom/nexstreaming/app/common/nexasset/assetpackage/i$b;->a:Ljava/util/Map;

    .line 559
    :cond_1
    const-string v2, "label"

    .line 560
    const-string v0, "locale"

    invoke-interface {p0, v6, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 561
    const-string/jumbo v0, "value"

    invoke-interface {p0, v6, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 562
    invoke-static {p0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/i;->f(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 563
    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    .line 564
    iget-object v0, v1, Lcom/nexstreaming/app/common/nexasset/assetpackage/i$b;->a:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 565
    if-nez v0, :cond_2

    .line 566
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 567
    iget-object v5, v1, Lcom/nexstreaming/app/common/nexasset/assetpackage/i$b;->a:Ljava/util/Map;

    invoke-interface {v5, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    :cond_2
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 572
    :cond_3
    invoke-static {p0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/i;->f(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 575
    :cond_4
    return-object v1
.end method

.method private static f(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 580
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 581
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 583
    :cond_0
    const/4 v0, 0x1

    .line 584
    :goto_0
    if-eqz v0, :cond_1

    .line 585
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 590
    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 587
    :pswitch_1
    add-int/lit8 v0, v0, -0x1

    .line 588
    goto :goto_0

    .line 594
    :cond_1
    return-void

    .line 585
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static g(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 597
    const/4 v1, 0x0

    .line 598
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 599
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 601
    :cond_0
    const/4 v0, 0x1

    .line 602
    :goto_0
    if-eqz v0, :cond_2

    .line 603
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 614
    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 605
    :pswitch_1
    if-nez v1, :cond_1

    .line 606
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 608
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 611
    :pswitch_2
    add-int/lit8 v0, v0, -0x1

    .line 612
    goto :goto_0

    .line 618
    :cond_2
    return-object v1

    .line 603
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
