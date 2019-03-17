.class public Lcom/nexstreaming/app/common/util/h;
.super Ljava/lang/Object;
.source "NexEDLConverter.java"


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 13

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 13
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    .line 14
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 15
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    .line 16
    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v8, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 17
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v9

    .line 18
    new-instance v10, Ljava/io/StringWriter;

    invoke-direct {v10}, Ljava/io/StringWriter;-><init>()V

    .line 19
    invoke-interface {v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 21
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    .line 22
    if-ne v5, v3, :cond_1

    move v2, v3

    .line 25
    :goto_0
    const-string/jumbo v1, "video2"

    const-string/jumbo v0, "video1"

    move v6, v5

    move v5, v2

    move v2, v4

    .line 27
    :goto_1
    if-nez v5, :cond_d

    .line 28
    if-nez v6, :cond_2

    .line 86
    :cond_0
    :goto_2
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    goto :goto_1

    :cond_1
    move v2, v4

    .line 22
    goto :goto_0

    .line 30
    :cond_2
    if-ne v6, v3, :cond_3

    .line 31
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    move v5, v3

    .line 32
    goto :goto_2

    .line 33
    :cond_3
    const/4 v7, 0x2

    if-ne v6, v7, :cond_a

    .line 35
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "texture"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_6

    move v6, v4

    .line 36
    :goto_3
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v7

    if-ge v6, v7, :cond_6

    .line 37
    invoke-interface {v8, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v11, "video"

    invoke-virtual {v7, v11}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_4

    .line 38
    invoke-interface {v8, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    const-string v11, "2"

    invoke-virtual {v7, v11}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_5

    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    const-string v7, "id"

    invoke-interface {v8, v2, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move v2, v3

    .line 36
    :cond_4
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 43
    :cond_5
    invoke-interface {v8, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    const-string v11, "1"

    invoke-virtual {v7, v11}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_4

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "@"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v7, 0x0

    const-string v11, "id"

    invoke-interface {v8, v7, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 50
    :cond_6
    if-nez v2, :cond_0

    .line 51
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v9, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move v7, v4

    .line 53
    :goto_5
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v6

    if-ge v7, v6, :cond_0

    .line 56
    invoke-interface {v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v11, "texture"

    invoke-virtual {v6, v11}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_e

    .line 57
    invoke-interface {v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_e

    .line 59
    invoke-interface {v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v6, v11, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move v6, v3

    .line 62
    :goto_6
    invoke-interface {v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "type"

    invoke-virtual {v11, v12}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_7

    .line 63
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "effect"

    invoke-virtual {v11, v12}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_7

    .line 65
    invoke-interface {v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "title"

    invoke-interface {v9, v6, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move v6, v3

    .line 68
    :cond_7
    invoke-interface {v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "id"

    invoke-virtual {v11, v12}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_8

    .line 69
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "effect"

    invoke-virtual {v11, v12}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_8

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_8

    .line 71
    invoke-interface {v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v6, v11, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move v6, v3

    .line 74
    :cond_8
    if-nez v6, :cond_9

    .line 75
    invoke-interface {v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v9, v6, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 53
    :cond_9
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto/16 :goto_5

    .line 78
    :cond_a
    const/4 v7, 0x3

    if-ne v6, v7, :cond_c

    .line 79
    if-ne v2, v3, :cond_b

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "texture"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_b

    move v2, v4

    .line 80
    goto/16 :goto_2

    .line 82
    :cond_b
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v9, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 90
    :catch_0
    move-exception v0

    .line 91
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 83
    :cond_c
    const/4 v7, 0x4

    if-ne v6, v7, :cond_0

    .line 84
    :try_start_1
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v9, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_2

    .line 88
    :cond_d
    invoke-virtual {v10}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    return-object v0

    :cond_e
    move v6, v4

    goto/16 :goto_6
.end method
