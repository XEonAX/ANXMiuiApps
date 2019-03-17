.class public final Lcom/xiaomi/smack/SmackConfiguration;
.super Ljava/lang/Object;
.source "SmackConfiguration.java"


# static fields
.field private static defaultMechs:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static keepAliveInterval:I

.field private static packetReplyTimeout:I

.field private static pingInterval:I

.field private static serverShutdownTimeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const v9, 0x50910

    const/4 v12, 0x1

    .line 49
    const/16 v8, 0x1388

    sput v8, Lcom/xiaomi/smack/SmackConfiguration;->packetReplyTimeout:I

    .line 51
    sput v9, Lcom/xiaomi/smack/SmackConfiguration;->keepAliveInterval:I

    .line 54
    const v8, 0x927c0

    sput v8, Lcom/xiaomi/smack/SmackConfiguration;->pingInterval:I

    .line 57
    sput v9, Lcom/xiaomi/smack/SmackConfiguration;->serverShutdownTimeout:I

    .line 59
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    sput-object v8, Lcom/xiaomi/smack/SmackConfiguration;->defaultMechs:Ljava/util/Vector;

    .line 75
    :try_start_0
    invoke-static {}, Lcom/xiaomi/smack/SmackConfiguration;->getClassLoaders()[Ljava/lang/ClassLoader;

    move-result-object v1

    .line 76
    .local v1, "classLoaders":[Ljava/lang/ClassLoader;
    array-length v9, v1

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v9, :cond_4

    aget-object v0, v1, v8

    .line 77
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    const-string v10, "META-INF/smack-config.xml"

    .line 78
    invoke-virtual {v0, v10}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v2

    .line 79
    .local v2, "configEnum":Ljava/util/Enumeration;
    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 80
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/net/URL;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 81
    .local v7, "url":Ljava/net/URL;
    const/4 v6, 0x0

    .line 83
    .local v6, "systemStream":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v7}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v6

    .line 85
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v10

    invoke-virtual {v10}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 86
    .local v5, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v10, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v11, 0x1

    invoke-interface {v5, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 88
    const-string v10, "UTF-8"

    invoke-interface {v5, v6, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 89
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    .line 91
    .local v4, "eventType":I
    :cond_0
    const/4 v10, 0x2

    if-ne v4, v10, :cond_1

    .line 92
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "className"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 95
    invoke-static {v5}, Lcom/xiaomi/smack/SmackConfiguration;->parseClassToLoad(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 110
    :cond_1
    :goto_2
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    .line 111
    if-ne v4, v12, :cond_0

    .line 116
    :try_start_2
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 117
    .end local v4    # "eventType":I
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v10

    goto :goto_1

    .line 96
    .restart local v4    # "eventType":I
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_2
    :try_start_3
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "packetReplyTimeout"

    .line 97
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 98
    sget v10, Lcom/xiaomi/smack/SmackConfiguration;->packetReplyTimeout:I

    invoke-static {v5, v10}, Lcom/xiaomi/smack/SmackConfiguration;->parseIntProperty(Lorg/xmlpull/v1/XmlPullParser;I)I

    move-result v10

    sput v10, Lcom/xiaomi/smack/SmackConfiguration;->packetReplyTimeout:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 112
    .end local v4    # "eventType":I
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_1
    move-exception v3

    .line 113
    .local v3, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 116
    :try_start_5
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    .line 101
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v4    # "eventType":I
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_3
    :try_start_6
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "keepAliveInterval"

    .line 102
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 103
    sget v10, Lcom/xiaomi/smack/SmackConfiguration;->keepAliveInterval:I

    invoke-static {v5, v10}, Lcom/xiaomi/smack/SmackConfiguration;->parseIntProperty(Lorg/xmlpull/v1/XmlPullParser;I)I

    move-result v10

    sput v10, Lcom/xiaomi/smack/SmackConfiguration;->keepAliveInterval:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 115
    .end local v4    # "eventType":I
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catchall_0
    move-exception v8

    .line 116
    :try_start_7
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 115
    :goto_3
    :try_start_8
    throw v8
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 123
    .end local v0    # "classLoader":Ljava/lang/ClassLoader;
    .end local v2    # "configEnum":Ljava/util/Enumeration;
    .end local v6    # "systemStream":Ljava/io/InputStream;
    .end local v7    # "url":Ljava/net/URL;
    :catch_2
    move-exception v3

    .line 124
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 126
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_4
    return-void

    .line 105
    .restart local v0    # "classLoader":Ljava/lang/ClassLoader;
    .restart local v2    # "configEnum":Ljava/util/Enumeration;
    .restart local v4    # "eventType":I
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "systemStream":Ljava/io/InputStream;
    .restart local v7    # "url":Ljava/net/URL;
    :cond_5
    :try_start_9
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "mechName"

    .line 106
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 107
    sget-object v10, Lcom/xiaomi/smack/SmackConfiguration;->defaultMechs:Ljava/util/Vector;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_2

    .line 76
    .end local v4    # "eventType":I
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "systemStream":Ljava/io/InputStream;
    .end local v7    # "url":Ljava/net/URL;
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 117
    .restart local v6    # "systemStream":Ljava/io/InputStream;
    .restart local v7    # "url":Ljava/net/URL;
    :catch_3
    move-exception v9

    goto :goto_3
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method public static getCheckAliveInterval()I
    .locals 1

    .prologue
    .line 173
    sget v0, Lcom/xiaomi/smack/SmackConfiguration;->keepAliveInterval:I

    return v0
.end method

.method private static getClassLoaders()[Ljava/lang/ClassLoader;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 280
    const/4 v4, 0x2

    new-array v1, v4, [Ljava/lang/ClassLoader;

    .line 281
    .local v1, "classLoaders":[Ljava/lang/ClassLoader;
    const-class v4, Lcom/xiaomi/smack/SmackConfiguration;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    aput-object v4, v1, v3

    .line 282
    const/4 v4, 0x1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    aput-object v5, v1, v4

    .line 285
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 286
    .local v2, "loaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ClassLoader;>;"
    array-length v4, v1

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v1, v3

    .line 287
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    if-eqz v0, :cond_0

    .line 288
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 291
    .end local v0    # "classLoader":Ljava/lang/ClassLoader;
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/ClassLoader;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/ClassLoader;

    return-object v3
.end method

.method public static getPingInteval()I
    .locals 1

    .prologue
    .line 177
    sget v0, Lcom/xiaomi/smack/SmackConfiguration;->pingInterval:I

    return v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    const-string v0, "3.1.0"

    return-object v0
.end method

.method private static parseClassToLoad(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 5
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 253
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, "className":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    :goto_0
    return-void

    .line 257
    :catch_0
    move-exception v1

    .line 258
    .local v1, "cnfe":Ljava/lang/ClassNotFoundException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error! A startup class specified in smack-config.xml could not be loaded: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static parseIntProperty(Lorg/xmlpull/v1/XmlPullParser;I)I
    .locals 2
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "defaultValue"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 267
    :try_start_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    .line 270
    .end local p1    # "defaultValue":I
    :goto_0
    return p1

    .line 268
    .restart local p1    # "defaultValue":I
    :catch_0
    move-exception v0

    .line 269
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method
