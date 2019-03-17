.class public Lcom/xiaomi/smack/util/PacketParserUtils;
.super Ljava/lang/Object;
.source "PacketParserUtils.java"


# static fields
.field private static sDecryptedMsgParser:Lorg/xmlpull/v1/XmlPullParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaomi/smack/util/PacketParserUtils;->sDecryptedMsgParser:Lorg/xmlpull/v1/XmlPullParser;

    return-void
.end method

.method private static getLanguageAttribute(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 4
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 564
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 565
    invoke-interface {p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    .line 566
    .local v0, "attributeName":Ljava/lang/String;
    const-string/jumbo v2, "xml:lang"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "lang"

    .line 567
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "xml"

    invoke-interface {p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributePrefix(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 568
    :cond_0
    invoke-interface {p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    .line 571
    .end local v0    # "attributeName":Ljava/lang/String;
    :goto_1
    return-object v2

    .line 564
    .restart local v0    # "attributeName":Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 571
    .end local v0    # "attributeName":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static parseContent(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 4
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 285
    const-string v0, ""

    .line 286
    .local v0, "content":Ljava/lang/String;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 287
    .local v1, "parserDepth":I
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-eq v2, v1, :cond_1

    .line 288
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 290
    :cond_1
    return-object v0
.end method

.method public static parseError(Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/smack/packet/XMPPError;
    .locals 15
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 488
    const-string/jumbo v10, "urn:ietf:params:xml:ns:xmpp-stanzas"

    .line 489
    .local v10, "errorNamespace":Ljava/lang/String;
    const-string v9, "-1"

    .line 490
    .local v9, "errorCode":Ljava/lang/String;
    const/4 v14, 0x0

    .line 491
    .local v14, "type":Ljava/lang/String;
    const/4 v5, 0x0

    .line 492
    .local v5, "message":Ljava/lang/String;
    const/4 v4, 0x0

    .line 493
    .local v4, "condition":Ljava/lang/String;
    const/4 v3, 0x0

    .line 494
    .local v3, "reason":Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 497
    .local v6, "extensions":Ljava/util/List;, "Ljava/util/List<Lcom/xiaomi/smack/packet/CommonPacketExtension;>;"
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    if-ge v12, v0, :cond_3

    .line 498
    invoke-interface {p0, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "code"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 499
    const-string v0, ""

    const-string v1, "code"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 501
    :cond_0
    invoke-interface {p0, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 502
    const-string v0, ""

    const-string/jumbo v1, "type"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 504
    :cond_1
    invoke-interface {p0, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "reason"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 505
    const-string v0, ""

    const-string v1, "reason"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 497
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 508
    :cond_3
    const/4 v7, 0x0

    .line 510
    .local v7, "done":Z
    :cond_4
    :goto_1
    if-nez v7, :cond_9

    .line 511
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    .line 512
    .local v11, "eventType":I
    const/4 v0, 0x2

    if-ne v11, v0, :cond_7

    .line 513
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "text"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 514
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 518
    :cond_5
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 519
    .local v8, "elementName":Ljava/lang/String;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v13

    .line 520
    .local v13, "namespace":Ljava/lang/String;
    const-string/jumbo v0, "urn:ietf:params:xml:ns:xmpp-stanzas"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 521
    move-object v4, v8

    goto :goto_1

    .line 523
    :cond_6
    invoke-static {v8, v13, p0}, Lcom/xiaomi/smack/util/PacketParserUtils;->parsePacketExtension(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/smack/packet/CommonPacketExtension;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 526
    .end local v8    # "elementName":Ljava/lang/String;
    .end local v13    # "namespace":Ljava/lang/String;
    :cond_7
    const/4 v0, 0x3

    if-ne v11, v0, :cond_8

    .line 527
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "error"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 528
    const/4 v7, 0x1

    goto :goto_1

    .line 530
    :cond_8
    const/4 v0, 0x4

    if-ne v11, v0, :cond_4

    .line 531
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 535
    .end local v11    # "eventType":I
    :cond_9
    if-nez v14, :cond_a

    const-string v2, "cancel"

    .line 536
    .local v2, "errorType":Ljava/lang/String;
    :goto_2
    new-instance v0, Lcom/xiaomi/smack/packet/XMPPError;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct/range {v0 .. v6}, Lcom/xiaomi/smack/packet/XMPPError;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v0

    .end local v2    # "errorType":Ljava/lang/String;
    :cond_a
    move-object v2, v14

    .line 535
    goto :goto_2
.end method

.method public static parseIQ(Lorg/xmlpull/v1/XmlPullParser;Lcom/xiaomi/smack/Connection;)Lcom/xiaomi/smack/packet/IQ;
    .locals 20
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "connection"    # Lcom/xiaomi/smack/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 369
    const/4 v12, 0x0

    .line 371
    .local v12, "iqPacket":Lcom/xiaomi/smack/packet/IQ;
    const-string v18, ""

    const-string v19, "id"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 372
    .local v11, "id":Ljava/lang/String;
    const-string v18, ""

    const-string/jumbo v19, "to"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 373
    .local v15, "to":Ljava/lang/String;
    const-string v18, ""

    const-string v19, "from"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 374
    .local v9, "from":Ljava/lang/String;
    const-string v18, ""

    const-string v19, "chid"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 375
    .local v4, "channelId":Ljava/lang/String;
    const-string v18, ""

    const-string/jumbo v19, "type"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/xiaomi/smack/packet/IQ$Type;->fromString(Ljava/lang/String;)Lcom/xiaomi/smack/packet/IQ$Type;

    move-result-object v16

    .line 377
    .local v16, "type":Lcom/xiaomi/smack/packet/IQ$Type;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 378
    .local v3, "attributes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v18

    move/from16 v0, v18

    if-ge v10, v0, :cond_0

    .line 379
    move-object/from16 v0, p0

    invoke-interface {v0, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v13

    .line 380
    .local v13, "key":Ljava/lang/String;
    const-string v18, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-interface {v0, v1, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 381
    .local v17, "value":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v3, v13, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 384
    .end local v13    # "key":Ljava/lang/String;
    .end local v17    # "value":Ljava/lang/String;
    :cond_0
    const/4 v7, 0x0

    .line 386
    .local v7, "error":Lcom/xiaomi/smack/packet/XMPPError;
    const/4 v5, 0x0

    .line 387
    .local v5, "done":Z
    :cond_1
    :goto_1
    if-nez v5, :cond_4

    .line 388
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    .line 390
    .local v8, "eventType":I
    const/16 v18, 0x2

    move/from16 v0, v18

    if-ne v8, v0, :cond_3

    .line 391
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 392
    .local v6, "elementName":Ljava/lang/String;
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v14

    .line 393
    .local v14, "namespace":Ljava/lang/String;
    const-string v18, "error"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 394
    invoke-static/range {p0 .. p0}, Lcom/xiaomi/smack/util/PacketParserUtils;->parseError(Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/smack/packet/XMPPError;

    move-result-object v7

    goto :goto_1

    .line 399
    :cond_2
    new-instance v12, Lcom/xiaomi/smack/packet/IQ;

    .end local v12    # "iqPacket":Lcom/xiaomi/smack/packet/IQ;
    invoke-direct {v12}, Lcom/xiaomi/smack/packet/IQ;-><init>()V

    .line 400
    .restart local v12    # "iqPacket":Lcom/xiaomi/smack/packet/IQ;
    move-object/from16 v0, p0

    invoke-static {v6, v14, v0}, Lcom/xiaomi/smack/util/PacketParserUtils;->parsePacketExtension(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/smack/packet/CommonPacketExtension;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/xiaomi/smack/packet/IQ;->addExtension(Lcom/xiaomi/smack/packet/CommonPacketExtension;)V

    goto :goto_1

    .line 403
    .end local v6    # "elementName":Ljava/lang/String;
    .end local v14    # "namespace":Ljava/lang/String;
    :cond_3
    const/16 v18, 0x3

    move/from16 v0, v18

    if-ne v8, v0, :cond_1

    .line 404
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v18

    const-string v19, "iq"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 405
    const/4 v5, 0x1

    goto :goto_1

    .line 410
    .end local v8    # "eventType":I
    :cond_4
    if-nez v12, :cond_7

    .line 411
    sget-object v18, Lcom/xiaomi/smack/packet/IQ$Type;->GET:Lcom/xiaomi/smack/packet/IQ$Type;

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    if-eq v0, v1, :cond_5

    sget-object v18, Lcom/xiaomi/smack/packet/IQ$Type;->SET:Lcom/xiaomi/smack/packet/IQ$Type;

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_6

    .line 417
    :cond_5
    new-instance v12, Lcom/xiaomi/smack/util/PacketParserUtils$1;

    .end local v12    # "iqPacket":Lcom/xiaomi/smack/packet/IQ;
    invoke-direct {v12}, Lcom/xiaomi/smack/util/PacketParserUtils$1;-><init>()V

    .line 422
    .restart local v12    # "iqPacket":Lcom/xiaomi/smack/packet/IQ;
    invoke-virtual {v12, v11}, Lcom/xiaomi/smack/packet/IQ;->setPacketID(Ljava/lang/String;)V

    .line 423
    invoke-virtual {v12, v9}, Lcom/xiaomi/smack/packet/IQ;->setTo(Ljava/lang/String;)V

    .line 424
    invoke-virtual {v12, v15}, Lcom/xiaomi/smack/packet/IQ;->setFrom(Ljava/lang/String;)V

    .line 425
    sget-object v18, Lcom/xiaomi/smack/packet/IQ$Type;->ERROR:Lcom/xiaomi/smack/packet/IQ$Type;

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/xiaomi/smack/packet/IQ;->setType(Lcom/xiaomi/smack/packet/IQ$Type;)V

    .line 426
    invoke-virtual {v12, v4}, Lcom/xiaomi/smack/packet/IQ;->setChannelId(Ljava/lang/String;)V

    .line 427
    new-instance v18, Lcom/xiaomi/smack/packet/XMPPError;

    sget-object v19, Lcom/xiaomi/smack/packet/XMPPError$Condition;->feature_not_implemented:Lcom/xiaomi/smack/packet/XMPPError$Condition;

    invoke-direct/range {v18 .. v19}, Lcom/xiaomi/smack/packet/XMPPError;-><init>(Lcom/xiaomi/smack/packet/XMPPError$Condition;)V

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/xiaomi/smack/packet/IQ;->setError(Lcom/xiaomi/smack/packet/XMPPError;)V

    .line 428
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/xiaomi/smack/Connection;->sendPacket(Lcom/xiaomi/smack/packet/Packet;)V

    .line 429
    const-string v18, "iq usage error. send packet in packet parser."

    invoke-static/range {v18 .. v18}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V

    .line 430
    const/16 v18, 0x0

    .line 452
    :goto_2
    return-object v18

    .line 434
    :cond_6
    new-instance v12, Lcom/xiaomi/smack/util/PacketParserUtils$2;

    .end local v12    # "iqPacket":Lcom/xiaomi/smack/packet/IQ;
    invoke-direct {v12}, Lcom/xiaomi/smack/util/PacketParserUtils$2;-><init>()V

    .line 443
    .restart local v12    # "iqPacket":Lcom/xiaomi/smack/packet/IQ;
    :cond_7
    invoke-virtual {v12, v11}, Lcom/xiaomi/smack/packet/IQ;->setPacketID(Ljava/lang/String;)V

    .line 444
    invoke-virtual {v12, v15}, Lcom/xiaomi/smack/packet/IQ;->setTo(Ljava/lang/String;)V

    .line 445
    invoke-virtual {v12, v4}, Lcom/xiaomi/smack/packet/IQ;->setChannelId(Ljava/lang/String;)V

    .line 446
    invoke-virtual {v12, v9}, Lcom/xiaomi/smack/packet/IQ;->setFrom(Ljava/lang/String;)V

    .line 447
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/xiaomi/smack/packet/IQ;->setType(Lcom/xiaomi/smack/packet/IQ$Type;)V

    .line 448
    invoke-virtual {v12, v7}, Lcom/xiaomi/smack/packet/IQ;->setError(Lcom/xiaomi/smack/packet/XMPPError;)V

    .line 450
    invoke-virtual {v12, v3}, Lcom/xiaomi/smack/packet/IQ;->setAttributes(Ljava/util/Map;)V

    move-object/from16 v18, v12

    .line 452
    goto :goto_2
.end method

.method public static parseMessage(Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/smack/packet/Packet;
    .locals 39
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 79
    const-string v35, "1"

    const-string v36, ""

    const-string v37, "s"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 81
    .local v11, "encrypted":Z
    if-eqz v11, :cond_a

    .line 82
    const-string v35, ""

    const-string v36, "chid"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 84
    .local v5, "chid":Ljava/lang/String;
    const-string v35, ""

    const-string v36, "id"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 85
    .local v25, "pktId":Ljava/lang/String;
    const-string v35, ""

    const-string v36, "from"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 86
    .local v15, "from":Ljava/lang/String;
    const-string v35, ""

    const-string/jumbo v36, "to"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 87
    .local v32, "to":Ljava/lang/String;
    const-string v35, ""

    const-string/jumbo v36, "type"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 88
    .local v33, "type":Ljava/lang/String;
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->getInstance()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v32

    invoke-virtual {v0, v5, v1}, Lcom/xiaomi/push/service/PushClientsManager;->getClientLoginInfoByChidAndUserId(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    move-result-object v18

    .line 90
    .local v18, "info":Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    if-nez v18, :cond_0

    .line 92
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->getInstance()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v5, v15}, Lcom/xiaomi/push/service/PushClientsManager;->getClientLoginInfoByChidAndUserId(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    move-result-object v18

    .line 94
    :cond_0
    const/16 v27, 0x0

    .line 95
    .local v27, "resultPkt":Lcom/xiaomi/smack/packet/Packet;
    if-nez v18, :cond_1

    .line 96
    new-instance v35, Lcom/xiaomi/smack/XMPPException;

    const-string/jumbo v36, "the channel id is wrong while receiving a encrypted message"

    invoke-direct/range {v35 .. v36}, Lcom/xiaomi/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v35

    .line 98
    :cond_1
    const/4 v8, 0x0

    .line 99
    .local v8, "done":Z
    :cond_2
    :goto_0
    if-nez v8, :cond_8

    .line 100
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v13

    .line 101
    .local v13, "eventType":I
    const/16 v35, 0x2

    move/from16 v0, v35

    if-ne v13, v0, :cond_7

    .line 102
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 103
    .local v9, "elementName":Ljava/lang/String;
    const-string v35, "s"

    move-object/from16 v0, v35

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_3

    .line 104
    new-instance v35, Lcom/xiaomi/smack/XMPPException;

    const-string v36, "error while receiving a encrypted message with wrong format"

    invoke-direct/range {v35 .. v36}, Lcom/xiaomi/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v35

    .line 106
    :cond_3
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v13

    .line 107
    const/16 v35, 0x4

    move/from16 v0, v35

    if-eq v13, v0, :cond_4

    .line 108
    new-instance v35, Lcom/xiaomi/smack/XMPPException;

    const-string v36, "error while receiving a encrypted message with wrong format"

    invoke-direct/range {v35 .. v36}, Lcom/xiaomi/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v35

    .line 111
    :cond_4
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v12

    .line 112
    .local v12, "encryptedContent":Ljava/lang/String;
    const-string v35, "5"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_5

    const-string v35, "6"

    .line 113
    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_6

    .line 114
    :cond_5
    new-instance v22, Lcom/xiaomi/smack/packet/Message;

    invoke-direct/range {v22 .. v22}, Lcom/xiaomi/smack/packet/Message;-><init>()V

    .line 115
    .local v22, "message":Lcom/xiaomi/smack/packet/Message;
    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lcom/xiaomi/smack/packet/Message;->setChannelId(Ljava/lang/String;)V

    .line 116
    const/16 v35, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/xiaomi/smack/packet/Message;->setEncrypted(Z)V

    .line 117
    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Lcom/xiaomi/smack/packet/Message;->setFrom(Ljava/lang/String;)V

    .line 118
    move-object/from16 v0, v22

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/xiaomi/smack/packet/Message;->setTo(Ljava/lang/String;)V

    .line 119
    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/xiaomi/smack/packet/Message;->setPacketID(Ljava/lang/String;)V

    .line 120
    move-object/from16 v0, v22

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/xiaomi/smack/packet/Message;->setType(Ljava/lang/String;)V

    .line 121
    new-instance v14, Lcom/xiaomi/smack/packet/CommonPacketExtension;

    const-string v37, "s"

    const/16 v38, 0x0

    const/16 v35, 0x0

    check-cast v35, [Ljava/lang/String;

    const/16 v36, 0x0

    check-cast v36, [Ljava/lang/String;

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-direct {v14, v0, v1, v2, v3}, Lcom/xiaomi/smack/packet/CommonPacketExtension;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 123
    .local v14, "extension":Lcom/xiaomi/smack/packet/CommonPacketExtension;
    invoke-virtual {v14, v12}, Lcom/xiaomi/smack/packet/CommonPacketExtension;->setText(Ljava/lang/String;)V

    .line 124
    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Lcom/xiaomi/smack/packet/Message;->addExtension(Lcom/xiaomi/smack/packet/CommonPacketExtension;)V

    .line 260
    .end local v5    # "chid":Ljava/lang/String;
    .end local v9    # "elementName":Ljava/lang/String;
    .end local v12    # "encryptedContent":Ljava/lang/String;
    .end local v13    # "eventType":I
    .end local v14    # "extension":Lcom/xiaomi/smack/packet/CommonPacketExtension;
    .end local v15    # "from":Ljava/lang/String;
    .end local v18    # "info":Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    .end local v22    # "message":Lcom/xiaomi/smack/packet/Message;
    .end local v25    # "pktId":Ljava/lang/String;
    .end local v27    # "resultPkt":Lcom/xiaomi/smack/packet/Packet;
    .end local v32    # "to":Ljava/lang/String;
    .end local v33    # "type":Ljava/lang/String;
    :goto_1
    return-object v22

    .line 127
    .restart local v5    # "chid":Ljava/lang/String;
    .restart local v9    # "elementName":Ljava/lang/String;
    .restart local v12    # "encryptedContent":Ljava/lang/String;
    .restart local v13    # "eventType":I
    .restart local v15    # "from":Ljava/lang/String;
    .restart local v18    # "info":Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    .restart local v25    # "pktId":Ljava/lang/String;
    .restart local v27    # "resultPkt":Lcom/xiaomi/smack/packet/Packet;
    .restart local v32    # "to":Ljava/lang/String;
    .restart local v33    # "type":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->security:Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/xiaomi/push/service/RC4Cryption;->generateKeyForRC4(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v20

    .line 128
    .local v20, "key":[B
    move-object/from16 v0, v20

    invoke-static {v0, v12}, Lcom/xiaomi/push/service/RC4Cryption;->decrypt([BLjava/lang/String;)[B

    move-result-object v6

    .line 129
    .local v6, "decryptedContent":[B
    invoke-static {v6}, Lcom/xiaomi/smack/util/PacketParserUtils;->resetDecryptedMsgParser([B)V

    .line 130
    sget-object v35, Lcom/xiaomi/smack/util/PacketParserUtils;->sDecryptedMsgParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface/range {v35 .. v35}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 131
    sget-object v35, Lcom/xiaomi/smack/util/PacketParserUtils;->sDecryptedMsgParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static/range {v35 .. v35}, Lcom/xiaomi/smack/util/PacketParserUtils;->parseMessage(Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/smack/packet/Packet;

    move-result-object v27

    .line 133
    goto/16 :goto_0

    .end local v6    # "decryptedContent":[B
    .end local v9    # "elementName":Ljava/lang/String;
    .end local v12    # "encryptedContent":Ljava/lang/String;
    .end local v20    # "key":[B
    :cond_7
    const/16 v35, 0x3

    move/from16 v0, v35

    if-ne v13, v0, :cond_2

    .line 134
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v35

    const-string v36, "message"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_2

    .line 135
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 139
    .end local v13    # "eventType":I
    :cond_8
    if-eqz v27, :cond_9

    move-object/from16 v22, v27

    .line 140
    goto :goto_1

    .line 142
    :cond_9
    new-instance v35, Lcom/xiaomi/smack/XMPPException;

    const-string v36, "error while receiving a encrypted message with wrong format"

    invoke-direct/range {v35 .. v36}, Lcom/xiaomi/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v35

    .line 145
    .end local v5    # "chid":Ljava/lang/String;
    .end local v8    # "done":Z
    .end local v15    # "from":Ljava/lang/String;
    .end local v18    # "info":Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    .end local v25    # "pktId":Ljava/lang/String;
    .end local v27    # "resultPkt":Lcom/xiaomi/smack/packet/Packet;
    .end local v32    # "to":Ljava/lang/String;
    .end local v33    # "type":Ljava/lang/String;
    :cond_a
    new-instance v22, Lcom/xiaomi/smack/packet/Message;

    invoke-direct/range {v22 .. v22}, Lcom/xiaomi/smack/packet/Message;-><init>()V

    .line 146
    .restart local v22    # "message":Lcom/xiaomi/smack/packet/Message;
    const-string v35, ""

    const-string v36, "id"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 147
    .local v17, "id":Ljava/lang/String;
    if-nez v17, :cond_b

    const-string v17, "ID_NOT_AVAILABLE"

    .end local v17    # "id":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/xiaomi/smack/packet/Message;->setPacketID(Ljava/lang/String;)V

    .line 148
    const-string v35, ""

    const-string/jumbo v36, "to"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v22

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/xiaomi/smack/packet/Message;->setTo(Ljava/lang/String;)V

    .line 149
    const-string v35, ""

    const-string v36, "from"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v22

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/xiaomi/smack/packet/Message;->setFrom(Ljava/lang/String;)V

    .line 150
    const-string v35, ""

    const-string v36, "chid"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v22

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/xiaomi/smack/packet/Message;->setChannelId(Ljava/lang/String;)V

    .line 151
    const-string v35, ""

    const-string v36, "appid"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v22

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/xiaomi/smack/packet/Message;->setAppId(Ljava/lang/String;)V

    .line 152
    const/16 v19, 0x0

    .line 154
    .local v19, "isTransient":Ljava/lang/String;
    :try_start_0
    const-string v35, ""

    const-string/jumbo v36, "transient"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v19

    .line 158
    :goto_2
    :try_start_1
    const-string v35, ""

    const-string v36, "seq"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 159
    .local v28, "seq":Ljava/lang/String;
    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v35

    if-nez v35, :cond_c

    .line 160
    move-object/from16 v0, v22

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/xiaomi/smack/packet/Message;->setSeq(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 165
    .end local v28    # "seq":Ljava/lang/String;
    :cond_c
    :goto_3
    :try_start_2
    const-string v35, ""

    const-string v36, "mseq"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 166
    .local v23, "mseq":Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v35

    if-nez v35, :cond_d

    .line 167
    invoke-virtual/range {v22 .. v23}, Lcom/xiaomi/smack/packet/Message;->setMSeq(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 172
    .end local v23    # "mseq":Ljava/lang/String;
    :cond_d
    :goto_4
    :try_start_3
    const-string v35, ""

    const-string v36, "fseq"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 173
    .local v16, "fseq":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v35

    if-nez v35, :cond_e

    .line 174
    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/xiaomi/smack/packet/Message;->setFSeq(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 180
    .end local v16    # "fseq":Ljava/lang/String;
    :cond_e
    :goto_5
    :try_start_4
    const-string v35, ""

    const-string/jumbo v36, "status"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 181
    .local v29, "status":Ljava/lang/String;
    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v35

    if-nez v35, :cond_f

    .line 182
    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/xiaomi/smack/packet/Message;->setStatus(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 187
    .end local v29    # "status":Ljava/lang/String;
    :cond_f
    :goto_6
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v35

    if-nez v35, :cond_13

    const-string/jumbo v35, "true"

    .line 188
    move-object/from16 v0, v19

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_13

    const/16 v35, 0x1

    .line 187
    :goto_7
    move-object/from16 v0, v22

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/xiaomi/smack/packet/Message;->setIsTransient(Z)V

    .line 189
    const-string v35, ""

    const-string/jumbo v36, "type"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v22

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/xiaomi/smack/packet/Message;->setType(Ljava/lang/String;)V

    .line 190
    invoke-static/range {p0 .. p0}, Lcom/xiaomi/smack/util/PacketParserUtils;->getLanguageAttribute(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v21

    .line 193
    .local v21, "language":Ljava/lang/String;
    const/4 v7, 0x0

    .line 194
    .local v7, "defaultLanguage":Ljava/lang/String;
    if-eqz v21, :cond_14

    const-string v35, ""

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_14

    .line 195
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/xiaomi/smack/packet/Message;->setLanguage(Ljava/lang/String;)V

    .line 196
    move-object/from16 v7, v21

    .line 205
    :goto_8
    const/4 v8, 0x0

    .line 206
    .restart local v8    # "done":Z
    const/16 v31, 0x0

    .line 207
    .local v31, "thread":Ljava/lang/String;
    const/16 v26, 0x0

    .line 208
    .local v26, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_10
    :goto_9
    if-nez v8, :cond_1b

    .line 209
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v13

    .line 210
    .restart local v13    # "eventType":I
    const/16 v35, 0x2

    move/from16 v0, v35

    if-ne v13, v0, :cond_1a

    .line 211
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 212
    .restart local v9    # "elementName":Ljava/lang/String;
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v24

    .line 213
    .local v24, "namespace":Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v35

    if-eqz v35, :cond_11

    .line 214
    const-string/jumbo v24, "xm"

    .line 216
    :cond_11
    const-string/jumbo v35, "subject"

    move-object/from16 v0, v35

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_15

    .line 217
    invoke-static/range {p0 .. p0}, Lcom/xiaomi/smack/util/PacketParserUtils;->getLanguageAttribute(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v34

    .line 218
    .local v34, "xmlLang":Ljava/lang/String;
    if-nez v34, :cond_12

    .line 219
    move-object/from16 v34, v7

    .line 222
    :cond_12
    invoke-static/range {p0 .. p0}, Lcom/xiaomi/smack/util/PacketParserUtils;->parseContent(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v30

    .line 223
    .local v30, "subject":Ljava/lang/String;
    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/xiaomi/smack/packet/Message;->setSubject(Ljava/lang/String;)V

    goto :goto_9

    .line 188
    .end local v7    # "defaultLanguage":Ljava/lang/String;
    .end local v8    # "done":Z
    .end local v9    # "elementName":Ljava/lang/String;
    .end local v13    # "eventType":I
    .end local v21    # "language":Ljava/lang/String;
    .end local v24    # "namespace":Ljava/lang/String;
    .end local v26    # "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v30    # "subject":Ljava/lang/String;
    .end local v31    # "thread":Ljava/lang/String;
    .end local v34    # "xmlLang":Ljava/lang/String;
    :cond_13
    const/16 v35, 0x0

    goto :goto_7

    .line 198
    .restart local v7    # "defaultLanguage":Ljava/lang/String;
    .restart local v21    # "language":Ljava/lang/String;
    :cond_14
    invoke-static {}, Lcom/xiaomi/smack/packet/Packet;->getDefaultLanguage()Ljava/lang/String;

    move-result-object v7

    goto :goto_8

    .line 225
    .restart local v8    # "done":Z
    .restart local v9    # "elementName":Ljava/lang/String;
    .restart local v13    # "eventType":I
    .restart local v24    # "namespace":Ljava/lang/String;
    .restart local v26    # "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v31    # "thread":Ljava/lang/String;
    :cond_15
    const-string v35, "body"

    move-object/from16 v0, v35

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_17

    .line 226
    const-string v35, ""

    const-string v36, "encode"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 227
    .local v10, "encode":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/xiaomi/smack/util/PacketParserUtils;->parseContent(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v4

    .line 228
    .local v4, "body":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v35

    if-nez v35, :cond_16

    .line 229
    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v10}, Lcom/xiaomi/smack/packet/Message;->setBody(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 231
    :cond_16
    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lcom/xiaomi/smack/packet/Message;->setBody(Ljava/lang/String;)V

    goto :goto_9

    .line 233
    .end local v4    # "body":Ljava/lang/String;
    .end local v10    # "encode":Ljava/lang/String;
    :cond_17
    const-string/jumbo v35, "thread"

    move-object/from16 v0, v35

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_18

    .line 234
    if-nez v31, :cond_10

    .line 235
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v31

    goto/16 :goto_9

    .line 237
    :cond_18
    const-string v35, "error"

    move-object/from16 v0, v35

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_19

    .line 238
    invoke-static/range {p0 .. p0}, Lcom/xiaomi/smack/util/PacketParserUtils;->parseError(Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/smack/packet/XMPPError;

    move-result-object v35

    move-object/from16 v0, v22

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/xiaomi/smack/packet/Message;->setError(Lcom/xiaomi/smack/packet/XMPPError;)V

    goto/16 :goto_9

    .line 242
    :cond_19
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-static {v9, v0, v1}, Lcom/xiaomi/smack/util/PacketParserUtils;->parsePacketExtension(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/smack/packet/CommonPacketExtension;

    move-result-object v35

    move-object/from16 v0, v22

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/xiaomi/smack/packet/Message;->addExtension(Lcom/xiaomi/smack/packet/CommonPacketExtension;)V

    goto/16 :goto_9

    .line 245
    .end local v9    # "elementName":Ljava/lang/String;
    .end local v24    # "namespace":Ljava/lang/String;
    :cond_1a
    const/16 v35, 0x3

    move/from16 v0, v35

    if-ne v13, v0, :cond_10

    .line 246
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v35

    const-string v36, "message"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_10

    .line 247
    const/4 v8, 0x1

    goto/16 :goto_9

    .line 252
    .end local v13    # "eventType":I
    :cond_1b
    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/xiaomi/smack/packet/Message;->setThread(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 184
    .end local v7    # "defaultLanguage":Ljava/lang/String;
    .end local v8    # "done":Z
    .end local v21    # "language":Ljava/lang/String;
    .end local v26    # "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v31    # "thread":Ljava/lang/String;
    :catch_0
    move-exception v35

    goto/16 :goto_6

    .line 176
    :catch_1
    move-exception v35

    goto/16 :goto_5

    .line 169
    :catch_2
    move-exception v35

    goto/16 :goto_4

    .line 162
    :catch_3
    move-exception v35

    goto/16 :goto_3

    .line 155
    :catch_4
    move-exception v35

    goto/16 :goto_2
.end method

.method public static parsePacketExtension(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/smack/packet/CommonPacketExtension;
    .locals 4
    .param p0, "elementName"    # Ljava/lang/String;
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 552
    invoke-static {}, Lcom/xiaomi/smack/provider/ProviderManager;->getInstance()Lcom/xiaomi/smack/provider/ProviderManager;

    move-result-object v1

    const-string v2, "all"

    const-string/jumbo v3, "xm:chat"

    .line 553
    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/smack/provider/ProviderManager;->getExtensionProvider(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 555
    .local v0, "provider":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 556
    instance-of v1, v0, Lcom/xiaomi/push/service/CommonPacketExtensionProvider;

    if-eqz v1, :cond_0

    .line 557
    check-cast v0, Lcom/xiaomi/push/service/CommonPacketExtensionProvider;

    .end local v0    # "provider":Ljava/lang/Object;
    invoke-virtual {v0, p2}, Lcom/xiaomi/push/service/CommonPacketExtensionProvider;->parseExtension(Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/smack/packet/CommonPacketExtension;

    move-result-object v1

    .line 560
    :goto_0
    return-object v1

    .restart local v0    # "provider":Ljava/lang/Object;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parsePresence(Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/smack/packet/Presence;
    .locals 14
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 301
    sget-object v9, Lcom/xiaomi/smack/packet/Presence$Type;->available:Lcom/xiaomi/smack/packet/Presence$Type;

    .line 302
    .local v9, "type":Lcom/xiaomi/smack/packet/Presence$Type;
    const-string v11, ""

    const-string/jumbo v12, "type"

    invoke-interface {p0, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 303
    .local v10, "typeString":Ljava/lang/String;
    if-eqz v10, :cond_0

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 305
    :try_start_0
    invoke-static {v10}, Lcom/xiaomi/smack/packet/Presence$Type;->valueOf(Ljava/lang/String;)Lcom/xiaomi/smack/packet/Presence$Type;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 310
    :cond_0
    :goto_0
    new-instance v7, Lcom/xiaomi/smack/packet/Presence;

    invoke-direct {v7, v9}, Lcom/xiaomi/smack/packet/Presence;-><init>(Lcom/xiaomi/smack/packet/Presence$Type;)V

    .line 311
    .local v7, "presence":Lcom/xiaomi/smack/packet/Presence;
    const-string v11, ""

    const-string/jumbo v12, "to"

    invoke-interface {p0, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Lcom/xiaomi/smack/packet/Presence;->setTo(Ljava/lang/String;)V

    .line 312
    const-string v11, ""

    const-string v12, "from"

    invoke-interface {p0, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Lcom/xiaomi/smack/packet/Presence;->setFrom(Ljava/lang/String;)V

    .line 313
    const-string v11, ""

    const-string v12, "chid"

    invoke-interface {p0, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Lcom/xiaomi/smack/packet/Presence;->setChannelId(Ljava/lang/String;)V

    .line 314
    const-string v11, ""

    const-string v12, "id"

    invoke-interface {p0, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 315
    .local v4, "id":Ljava/lang/String;
    if-nez v4, :cond_1

    const-string v4, "ID_NOT_AVAILABLE"

    .end local v4    # "id":Ljava/lang/String;
    :cond_1
    invoke-virtual {v7, v4}, Lcom/xiaomi/smack/packet/Presence;->setPacketID(Ljava/lang/String;)V

    .line 318
    const/4 v0, 0x0

    .line 319
    .local v0, "done":Z
    :cond_2
    :goto_1
    if-nez v0, :cond_8

    .line 320
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 321
    .local v2, "eventType":I
    const/4 v11, 0x2

    if-ne v2, v11, :cond_7

    .line 322
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 323
    .local v1, "elementName":Ljava/lang/String;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v6

    .line 324
    .local v6, "namespace":Ljava/lang/String;
    const-string/jumbo v11, "status"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 325
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Lcom/xiaomi/smack/packet/Presence;->setStatus(Ljava/lang/String;)V

    goto :goto_1

    .line 306
    .end local v0    # "done":Z
    .end local v1    # "elementName":Ljava/lang/String;
    .end local v2    # "eventType":I
    .end local v6    # "namespace":Ljava/lang/String;
    .end local v7    # "presence":Lcom/xiaomi/smack/packet/Presence;
    :catch_0
    move-exception v3

    .line 307
    .local v3, "iae":Ljava/lang/IllegalArgumentException;
    sget-object v11, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Found invalid presence type "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 326
    .end local v3    # "iae":Ljava/lang/IllegalArgumentException;
    .restart local v0    # "done":Z
    .restart local v1    # "elementName":Ljava/lang/String;
    .restart local v2    # "eventType":I
    .restart local v6    # "namespace":Ljava/lang/String;
    .restart local v7    # "presence":Lcom/xiaomi/smack/packet/Presence;
    :cond_3
    const-string v11, "priority"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 328
    :try_start_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 329
    .local v8, "priority":I
    invoke-virtual {v7, v8}, Lcom/xiaomi/smack/packet/Presence;->setPriority(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 330
    .end local v8    # "priority":I
    :catch_1
    move-exception v11

    goto :goto_1

    .line 332
    :catch_2
    move-exception v3

    .line 335
    .restart local v3    # "iae":Ljava/lang/IllegalArgumentException;
    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Lcom/xiaomi/smack/packet/Presence;->setPriority(I)V

    goto :goto_1

    .line 337
    .end local v3    # "iae":Ljava/lang/IllegalArgumentException;
    :cond_4
    const-string/jumbo v11, "show"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 338
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    .line 340
    .local v5, "modeText":Ljava/lang/String;
    :try_start_2
    invoke-static {v5}, Lcom/xiaomi/smack/packet/Presence$Mode;->valueOf(Ljava/lang/String;)Lcom/xiaomi/smack/packet/Presence$Mode;

    move-result-object v11

    invoke-virtual {v7, v11}, Lcom/xiaomi/smack/packet/Presence;->setMode(Lcom/xiaomi/smack/packet/Presence$Mode;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_1

    .line 341
    :catch_3
    move-exception v3

    .line 342
    .restart local v3    # "iae":Ljava/lang/IllegalArgumentException;
    sget-object v11, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Found invalid presence mode "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 344
    .end local v3    # "iae":Ljava/lang/IllegalArgumentException;
    .end local v5    # "modeText":Ljava/lang/String;
    :cond_5
    const-string v11, "error"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 345
    invoke-static {p0}, Lcom/xiaomi/smack/util/PacketParserUtils;->parseError(Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/smack/packet/XMPPError;

    move-result-object v11

    invoke-virtual {v7, v11}, Lcom/xiaomi/smack/packet/Presence;->setError(Lcom/xiaomi/smack/packet/XMPPError;)V

    goto/16 :goto_1

    .line 349
    :cond_6
    invoke-static {v1, v6, p0}, Lcom/xiaomi/smack/util/PacketParserUtils;->parsePacketExtension(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/smack/packet/CommonPacketExtension;

    move-result-object v11

    invoke-virtual {v7, v11}, Lcom/xiaomi/smack/packet/Presence;->addExtension(Lcom/xiaomi/smack/packet/CommonPacketExtension;)V

    goto/16 :goto_1

    .line 352
    .end local v1    # "elementName":Ljava/lang/String;
    .end local v6    # "namespace":Ljava/lang/String;
    :cond_7
    const/4 v11, 0x3

    if-ne v2, v11, :cond_2

    .line 353
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "presence"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 354
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 358
    .end local v2    # "eventType":I
    :cond_8
    return-object v7
.end method

.method public static parseStreamError(Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/smack/packet/StreamError;
    .locals 5
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 464
    const/4 v2, 0x0

    .line 465
    .local v2, "streamError":Lcom/xiaomi/smack/packet/StreamError;
    const/4 v0, 0x0

    .line 466
    .local v0, "done":Z
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 467
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 469
    .local v1, "eventType":I
    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 470
    new-instance v2, Lcom/xiaomi/smack/packet/StreamError;

    .end local v2    # "streamError":Lcom/xiaomi/smack/packet/StreamError;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/xiaomi/smack/packet/StreamError;-><init>(Ljava/lang/String;)V

    .restart local v2    # "streamError":Lcom/xiaomi/smack/packet/StreamError;
    goto :goto_0

    .line 471
    :cond_1
    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    .line 472
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "error"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 473
    const/4 v0, 0x1

    goto :goto_0

    .line 477
    .end local v1    # "eventType":I
    :cond_2
    return-object v2
.end method

.method private static resetDecryptedMsgParser([B)V
    .locals 4
    .param p0, "input"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 264
    sget-object v1, Lcom/xiaomi/smack/util/PacketParserUtils;->sDecryptedMsgParser:Lorg/xmlpull/v1/XmlPullParser;

    if-nez v1, :cond_0

    .line 266
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    sput-object v1, Lcom/xiaomi/smack/util/PacketParserUtils;->sDecryptedMsgParser:Lorg/xmlpull/v1/XmlPullParser;

    .line 267
    sget-object v1, Lcom/xiaomi/smack/util/PacketParserUtils;->sDecryptedMsgParser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v2, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    :cond_0
    :goto_0
    sget-object v1, Lcom/xiaomi/smack/util/PacketParserUtils;->sDecryptedMsgParser:Lorg/xmlpull/v1/XmlPullParser;

    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 273
    return-void

    .line 268
    :catch_0
    move-exception v0

    .line 269
    .local v0, "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_0
.end method
