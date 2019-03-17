.class public Lcom/xiaomi/slim/PacketParser;
.super Ljava/lang/Object;
.source "PacketParser.java"


# instance fields
.field private mParser:Lorg/xmlpull/v1/XmlPullParser;


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/slim/PacketParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    .line 23
    iget-object v0, p0, Lcom/xiaomi/slim/PacketParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v1, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    :goto_0
    return-void

    .line 24
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method parse([BLcom/xiaomi/smack/Connection;)Lcom/xiaomi/smack/packet/Packet;
    .locals 5
    .param p1, "data"    # [B
    .param p2, "conn"    # Lcom/xiaomi/smack/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 29
    iget-object v2, p0, Lcom/xiaomi/slim/PacketParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 30
    iget-object v2, p0, Lcom/xiaomi/slim/PacketParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 31
    iget-object v2, p0, Lcom/xiaomi/slim/PacketParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 32
    .local v1, "eventType":I
    iget-object v2, p0, Lcom/xiaomi/slim/PacketParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, "eleName":Ljava/lang/String;
    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 34
    const-string v2, "message"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 35
    iget-object v2, p0, Lcom/xiaomi/slim/PacketParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v2}, Lcom/xiaomi/smack/util/PacketParserUtils;->parseMessage(Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/smack/packet/Packet;

    move-result-object v2

    .line 56
    :goto_0
    return-object v2

    .line 36
    :cond_0
    const-string v2, "iq"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 37
    iget-object v2, p0, Lcom/xiaomi/slim/PacketParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v2, p2}, Lcom/xiaomi/smack/util/PacketParserUtils;->parseIQ(Lorg/xmlpull/v1/XmlPullParser;Lcom/xiaomi/smack/Connection;)Lcom/xiaomi/smack/packet/IQ;

    move-result-object v2

    goto :goto_0

    .line 38
    :cond_1
    const-string v2, "presence"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 39
    iget-object v2, p0, Lcom/xiaomi/slim/PacketParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v2}, Lcom/xiaomi/smack/util/PacketParserUtils;->parsePresence(Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/smack/packet/Presence;

    move-result-object v2

    goto :goto_0

    .line 40
    :cond_2
    iget-object v2, p0, Lcom/xiaomi/slim/PacketParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "stream"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 56
    :cond_3
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 42
    :cond_4
    iget-object v2, p0, Lcom/xiaomi/slim/PacketParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "error"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 43
    new-instance v2, Lcom/xiaomi/smack/XMPPException;

    iget-object v3, p0, Lcom/xiaomi/slim/PacketParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v3}, Lcom/xiaomi/smack/util/PacketParserUtils;->parseStreamError(Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/smack/packet/StreamError;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/xiaomi/smack/XMPPException;-><init>(Lcom/xiaomi/smack/packet/StreamError;)V

    throw v2

    .line 44
    :cond_5
    iget-object v2, p0, Lcom/xiaomi/slim/PacketParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "warning"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 45
    iget-object v2, p0, Lcom/xiaomi/slim/PacketParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 46
    iget-object v2, p0, Lcom/xiaomi/slim/PacketParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "multi-login"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    .line 51
    :cond_6
    iget-object v2, p0, Lcom/xiaomi/slim/PacketParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "bind"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1
.end method
