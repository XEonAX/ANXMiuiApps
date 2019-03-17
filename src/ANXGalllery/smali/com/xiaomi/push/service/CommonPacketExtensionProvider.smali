.class public Lcom/xiaomi/push/service/CommonPacketExtensionProvider;
.super Ljava/lang/Object;
.source "CommonPacketExtensionProvider.java"

# interfaces
.implements Lcom/xiaomi/smack/provider/PacketExtensionProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseExtensionFromStartTag(Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/smack/packet/CommonPacketExtension;
    .locals 12
    .param p0, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x2

    .line 30
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v8

    .line 31
    .local v8, "eventType":I
    if-eq v8, v11, :cond_0

    .line 32
    const/4 v0, 0x0

    .line 68
    :goto_0
    return-object v0

    .line 34
    :cond_0
    const/4 v1, 0x0

    .line 35
    .local v1, "extensionName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 36
    .local v2, "namespace":Ljava/lang/String;
    const/4 v3, 0x0

    .line 37
    .local v3, "attributeNames":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 38
    .local v4, "attributeValues":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 39
    .local v5, "text":Ljava/lang/String;
    const/4 v6, 0x0

    .line 41
    .local v6, "children":Ljava/util/List;, "Ljava/util/List<Lcom/xiaomi/smack/packet/CommonPacketExtension;>;"
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 42
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v2

    .line 44
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 45
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    new-array v3, v0, [Ljava/lang/String;

    .line 46
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    new-array v4, v0, [Ljava/lang/String;

    .line 47
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    if-ge v9, v0, :cond_1

    .line 48
    invoke-interface {p0, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v9

    .line 50
    invoke-interface {p0, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/smack/util/StringUtils;->unescapeFromXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    .line 47
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 55
    .end local v9    # "i":I
    :cond_1
    :goto_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    .local v10, "nextEventType":I
    const/4 v0, 0x3

    if-eq v10, v0, :cond_4

    .line 56
    const/4 v0, 0x4

    if-ne v10, v0, :cond_2

    .line 57
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 58
    :cond_2
    if-ne v10, v11, :cond_1

    .line 59
    if-nez v6, :cond_3

    .line 60
    new-instance v6, Ljava/util/ArrayList;

    .end local v6    # "children":Ljava/util/List;, "Ljava/util/List<Lcom/xiaomi/smack/packet/CommonPacketExtension;>;"
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .restart local v6    # "children":Ljava/util/List;, "Ljava/util/List<Lcom/xiaomi/smack/packet/CommonPacketExtension;>;"
    :cond_3
    invoke-static {p0}, Lcom/xiaomi/push/service/CommonPacketExtensionProvider;->parseExtensionFromStartTag(Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/smack/packet/CommonPacketExtension;

    move-result-object v7

    .line 63
    .local v7, "child":Lcom/xiaomi/smack/packet/CommonPacketExtension;
    if-eqz v7, :cond_1

    .line 64
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 68
    .end local v7    # "child":Lcom/xiaomi/smack/packet/CommonPacketExtension;
    :cond_4
    new-instance v0, Lcom/xiaomi/smack/packet/CommonPacketExtension;

    invoke-direct/range {v0 .. v6}, Lcom/xiaomi/smack/packet/CommonPacketExtension;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0
.end method


# virtual methods
.method public parseExtension(Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/smack/packet/CommonPacketExtension;
    .locals 3
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 78
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 79
    .local v0, "eventType":I
    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    if-eq v0, v2, :cond_0

    .line 81
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    .line 83
    :cond_0
    if-ne v0, v2, :cond_1

    .line 84
    invoke-static {p1}, Lcom/xiaomi/push/service/CommonPacketExtensionProvider;->parseExtensionFromStartTag(Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/smack/packet/CommonPacketExtension;

    move-result-object v1

    .line 86
    :goto_1
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public register()V
    .locals 3

    .prologue
    .line 21
    invoke-static {}, Lcom/xiaomi/smack/provider/ProviderManager;->getInstance()Lcom/xiaomi/smack/provider/ProviderManager;

    move-result-object v0

    const-string v1, "all"

    const-string/jumbo v2, "xm:chat"

    invoke-virtual {v0, v1, v2, p0}, Lcom/xiaomi/smack/provider/ProviderManager;->addExtensionProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 24
    return-void
.end method
