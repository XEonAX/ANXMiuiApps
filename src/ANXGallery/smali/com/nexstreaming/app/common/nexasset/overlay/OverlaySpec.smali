.class public Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec;
.super Ljava/lang/Object;
.source "OverlaySpec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$Frame;,
        Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$Layer;,
        Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$AnimDirection;
    }
.end annotation


# instance fields
.field public duration:I

.field public fps:I

.field public height:I

.field public layers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$Layer;",
            ">;"
        }
    .end annotation
.end field

.field public minFps:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromInputStream(Ljava/io/InputStream;)Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 44
    const-string v1, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 45
    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 46
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 47
    invoke-static {v0}, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec;->parseSpec(Lorg/xmlpull/v1/XmlPullParser;)Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 49
    invoke-static {p0}, Lcom/nexstreaming/app/common/util/b;->a(Ljava/io/Closeable;)V

    .line 47
    return-object v0

    .line 49
    :catchall_0
    move-exception v0

    invoke-static {p0}, Lcom/nexstreaming/app/common/util/b;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method private static parseBoolean(Ljava/lang/String;Z)Z
    .locals 1

    .prologue
    .line 158
    if-nez p0, :cond_1

    .line 164
    :cond_0
    :goto_0
    return p1

    .line 160
    :cond_1
    const-string/jumbo v0, "true"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 161
    const/4 p1, 0x1

    goto :goto_0

    .line 162
    :cond_2
    const-string v0, "false"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    const/4 p1, 0x0

    goto :goto_0
.end method

.method private static parseFrame(Lorg/xmlpull/v1/XmlPullParser;)Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$Frame;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 119
    const/4 v0, 0x2

    const-string v1, "frame"

    invoke-interface {p0, v0, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 120
    new-instance v0, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$Frame;

    invoke-direct {v0}, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$Frame;-><init>()V

    .line 121
    const-string/jumbo v1, "src"

    invoke-interface {p0, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$Frame;->src:Ljava/lang/String;

    .line 122
    const-string v1, "blank"

    invoke-interface {p0, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec;->parseBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$Frame;->blank:Z

    .line 123
    const-string v1, "hold"

    invoke-interface {p0, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec;->parseInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$Frame;->hold:I

    .line 125
    invoke-static {p0}, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 126
    return-object v0
.end method

.method private static parseInt(Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 148
    if-nez p0, :cond_0

    .line 153
    :goto_0
    return p1

    .line 151
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    goto :goto_0

    .line 152
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static parseLayer(Lorg/xmlpull/v1/XmlPullParser;)Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$Layer;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 81
    const-string v0, "layer"

    invoke-interface {p0, v3, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 82
    new-instance v0, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$Layer;

    invoke-direct {v0}, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$Layer;-><init>()V

    .line 83
    const-string v1, "iteration-count"

    invoke-interface {p0, v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec;->parseInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$Layer;->iterationCount:I

    .line 84
    const-string v1, "direction"

    invoke-interface {p0, v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 85
    if-nez v1, :cond_1

    .line 97
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$Layer;->frames:Ljava/util/List;

    .line 99
    :cond_0
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_7

    .line 100
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 102
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 103
    const-string v2, "frame"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 104
    invoke-static {p0}, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec;->parseFrame(Lorg/xmlpull/v1/XmlPullParser;)Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$Frame;

    move-result-object v1

    .line 105
    if-eqz v1, :cond_0

    .line 106
    iget-object v2, v0, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$Layer;->frames:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    iget v2, v0, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$Layer;->duration:I

    iget v1, v1, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$Frame;->hold:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$Layer;->duration:I

    goto :goto_1

    .line 86
    :cond_1
    const-string v2, "normal"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 87
    sget-object v1, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$AnimDirection;->NORMAL:Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$AnimDirection;

    iput-object v1, v0, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$Layer;->direction:Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$AnimDirection;

    goto :goto_0

    .line 88
    :cond_2
    const-string v2, "reverse"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 89
    sget-object v1, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$AnimDirection;->REVERSE:Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$AnimDirection;

    iput-object v1, v0, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$Layer;->direction:Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$AnimDirection;

    goto :goto_0

    .line 90
    :cond_3
    const-string v2, "alternate"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 91
    sget-object v1, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$AnimDirection;->ALTERNATE:Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$AnimDirection;

    iput-object v1, v0, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$Layer;->direction:Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$AnimDirection;

    goto :goto_0

    .line 92
    :cond_4
    const-string v2, "alternate-reverse"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 93
    sget-object v1, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$AnimDirection;->ALTERNATE_REVERSE:Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$AnimDirection;

    iput-object v1, v0, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$Layer;->direction:Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$AnimDirection;

    goto :goto_0

    .line 95
    :cond_5
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized direction: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 110
    :cond_6
    invoke-static {p0}, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    .line 114
    :cond_7
    return-object v0
.end method

.method private static parseSpec(Lorg/xmlpull/v1/XmlPullParser;)Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 54
    const-string v0, "overlay"

    invoke-interface {p0, v5, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 55
    new-instance v0, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec;

    invoke-direct {v0}, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec;-><init>()V

    .line 56
    const-string/jumbo v1, "width"

    invoke-interface {p0, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec;->parseInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec;->width:I

    .line 57
    const-string v1, "height"

    invoke-interface {p0, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec;->parseInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec;->height:I

    .line 58
    const-string v1, "fps"

    invoke-interface {p0, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xf

    invoke-static {v1, v2}, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec;->parseInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec;->fps:I

    .line 59
    const-string v1, "min-fps"

    invoke-interface {p0, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget v2, v0, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec;->fps:I

    invoke-static {v1, v2}, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec;->parseInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec;->minFps:I

    .line 60
    const-string v1, "duration"

    invoke-interface {p0, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec;->parseInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec;->duration:I

    .line 61
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec;->layers:Ljava/util/List;

    .line 63
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    .line 64
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    if-ne v1, v5, :cond_0

    .line 66
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 67
    const-string v2, "layer"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 68
    invoke-static {p0}, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec;->parseLayer(Lorg/xmlpull/v1/XmlPullParser;)Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$Layer;

    move-result-object v1

    .line 69
    if-eqz v1, :cond_0

    .line 70
    iget-object v2, v0, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec;->layers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 72
    :cond_1
    invoke-static {p0}, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 76
    :cond_2
    return-object v0
.end method

.method private static skip(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 132
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 134
    :cond_0
    const/4 v0, 0x1

    .line 135
    :goto_0
    if-eqz v0, :cond_1

    .line 136
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 141
    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 138
    :pswitch_1
    add-int/lit8 v0, v0, -0x1

    .line 139
    goto :goto_0

    .line 145
    :cond_1
    return-void

    .line 136
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
