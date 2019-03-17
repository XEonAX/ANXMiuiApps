.class public Lcom/xiaomi/smack/provider/ProviderManager;
.super Ljava/lang/Object;
.source "ProviderManager.java"


# static fields
.field private static instance:Lcom/xiaomi/smack/provider/ProviderManager;


# instance fields
.field private extensionProviders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private iqProviders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/smack/provider/ProviderManager;->extensionProviders:Ljava/util/Map;

    .line 133
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/smack/provider/ProviderManager;->iqProviders:Ljava/util/Map;

    .line 485
    invoke-virtual {p0}, Lcom/xiaomi/smack/provider/ProviderManager;->initialize()V

    .line 486
    return-void
.end method

.method private getClassLoaders()[Ljava/lang/ClassLoader;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 469
    const/4 v4, 0x2

    new-array v1, v4, [Ljava/lang/ClassLoader;

    .line 470
    .local v1, "classLoaders":[Ljava/lang/ClassLoader;
    const-class v4, Lcom/xiaomi/smack/provider/ProviderManager;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    aput-object v4, v1, v3

    .line 471
    const/4 v4, 0x1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    aput-object v5, v1, v4

    .line 474
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 475
    .local v2, "loaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ClassLoader;>;"
    array-length v4, v1

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v1, v3

    .line 476
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    if-eqz v0, :cond_0

    .line 477
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 475
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 480
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

.method public static declared-synchronized getInstance()Lcom/xiaomi/smack/provider/ProviderManager;
    .locals 2

    .prologue
    .line 144
    const-class v1, Lcom/xiaomi/smack/provider/ProviderManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/smack/provider/ProviderManager;->instance:Lcom/xiaomi/smack/provider/ProviderManager;

    if-nez v0, :cond_0

    .line 145
    new-instance v0, Lcom/xiaomi/smack/provider/ProviderManager;

    invoke-direct {v0}, Lcom/xiaomi/smack/provider/ProviderManager;-><init>()V

    sput-object v0, Lcom/xiaomi/smack/provider/ProviderManager;->instance:Lcom/xiaomi/smack/provider/ProviderManager;

    .line 147
    :cond_0
    sget-object v0, Lcom/xiaomi/smack/provider/ProviderManager;->instance:Lcom/xiaomi/smack/provider/ProviderManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getProviderKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "elementName"    # Ljava/lang/String;
    .param p2, "namespace"    # Ljava/lang/String;

    .prologue
    .line 454
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 455
    .local v0, "buf":Ljava/lang/StringBuilder;
    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    if-eqz p1, :cond_0

    .line 458
    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public addExtensionProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "elementName"    # Ljava/lang/String;
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "provider"    # Ljava/lang/Object;

    .prologue
    .line 410
    instance-of v1, p3, Lcom/xiaomi/smack/provider/PacketExtensionProvider;

    if-nez v1, :cond_0

    instance-of v1, p3, Ljava/lang/Class;

    if-nez v1, :cond_0

    .line 412
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Provider must be a PacketExtensionProvider or a Class instance."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 416
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/smack/provider/ProviderManager;->getProviderKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 417
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/xiaomi/smack/provider/ProviderManager;->extensionProviders:Ljava/util/Map;

    invoke-interface {v1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    return-void
.end method

.method public getExtensionProvider(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "elementName"    # Ljava/lang/String;
    .param p2, "namespace"    # Ljava/lang/String;

    .prologue
    .line 394
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/smack/provider/ProviderManager;->getProviderKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 395
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/xiaomi/smack/provider/ProviderManager;->extensionProviders:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method protected initialize()V
    .locals 20

    .prologue
    .line 175
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/xiaomi/smack/provider/ProviderManager;->getClassLoaders()[Ljava/lang/ClassLoader;

    move-result-object v3

    .line 176
    .local v3, "classLoaders":[Ljava/lang/ClassLoader;
    array-length v0, v3

    move/from16 v17, v0

    const/16 v16, 0x0

    :goto_0
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_3

    aget-object v2, v3, v16

    .line 177
    .local v2, "classLoader":Ljava/lang/ClassLoader;
    const-string v18, "META-INF/smack.providers"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v13

    .line 179
    .local v13, "providerEnum":Ljava/util/Enumeration;
    :goto_1
    invoke-interface {v13}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v18

    if-eqz v18, :cond_6

    .line 180
    invoke-interface {v13}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/net/URL;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 181
    .local v15, "url":Ljava/net/URL;
    const/4 v14, 0x0

    .line 183
    .local v14, "providerStream":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v15}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v14

    .line 185
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v11

    .line 186
    .local v11, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v18, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v11, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 188
    const-string v18, "UTF-8"

    move-object/from16 v0, v18

    invoke-interface {v11, v14, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 189
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v8

    .line 191
    .local v8, "eventType":I
    :cond_0
    const/16 v18, 0x2

    move/from16 v0, v18

    if-ne v8, v0, :cond_1

    .line 192
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v18

    const-string v19, "iqProvider"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 193
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 194
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 195
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    .line 196
    .local v7, "elementName":Ljava/lang/String;
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 197
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 198
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v10

    .line 199
    .local v10, "namespace":Ljava/lang/String;
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 200
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 201
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    .line 205
    .local v4, "className":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v10}, Lcom/xiaomi/smack/provider/ProviderManager;->getProviderKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 207
    .local v9, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/smack/provider/ProviderManager;->iqProviders:Ljava/util/Map;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v18

    if-nez v18, :cond_1

    .line 219
    :try_start_2
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    .line 220
    .local v12, "provider":Ljava/lang/Class;
    const-class v18, Lcom/xiaomi/smack/provider/IQProvider;

    .line 221
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/smack/provider/ProviderManager;->iqProviders:Ljava/util/Map;

    move-object/from16 v18, v0

    .line 224
    invoke-virtual {v12}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v19

    .line 223
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 281
    .end local v4    # "className":Ljava/lang/String;
    .end local v7    # "elementName":Ljava/lang/String;
    .end local v9    # "key":Ljava/lang/String;
    .end local v10    # "namespace":Ljava/lang/String;
    .end local v12    # "provider":Ljava/lang/Class;
    :cond_1
    :goto_2
    :try_start_3
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v8

    .line 282
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v8, v0, :cond_0

    .line 285
    :try_start_4
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_1

    .line 286
    :catch_0
    move-exception v18

    goto/16 :goto_1

    .line 225
    .restart local v4    # "className":Ljava/lang/String;
    .restart local v7    # "elementName":Ljava/lang/String;
    .restart local v9    # "key":Ljava/lang/String;
    .restart local v10    # "namespace":Ljava/lang/String;
    .restart local v12    # "provider":Ljava/lang/Class;
    :cond_2
    :try_start_5
    const-class v18, Lcom/xiaomi/smack/packet/IQ;

    .line 226
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/smack/provider/ProviderManager;->iqProviders:Ljava/util/Map;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v9, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 230
    .end local v12    # "provider":Ljava/lang/Class;
    :catch_1
    move-exception v5

    .line 231
    .local v5, "cnfe":Ljava/lang/ClassNotFoundException;
    :try_start_6
    invoke-virtual {v5}, Ljava/lang/ClassNotFoundException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 284
    .end local v4    # "className":Ljava/lang/String;
    .end local v5    # "cnfe":Ljava/lang/ClassNotFoundException;
    .end local v7    # "elementName":Ljava/lang/String;
    .end local v8    # "eventType":I
    .end local v9    # "key":Ljava/lang/String;
    .end local v10    # "namespace":Ljava/lang/String;
    .end local v11    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catchall_0
    move-exception v16

    .line 285
    :try_start_7
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 284
    :goto_3
    :try_start_8
    throw v16
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 292
    .end local v2    # "classLoader":Ljava/lang/ClassLoader;
    .end local v3    # "classLoaders":[Ljava/lang/ClassLoader;
    .end local v13    # "providerEnum":Ljava/util/Enumeration;
    .end local v14    # "providerStream":Ljava/io/InputStream;
    .end local v15    # "url":Ljava/net/URL;
    :catch_2
    move-exception v6

    .line 293
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 295
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_3
    return-void

    .line 234
    .restart local v2    # "classLoader":Ljava/lang/ClassLoader;
    .restart local v3    # "classLoaders":[Ljava/lang/ClassLoader;
    .restart local v8    # "eventType":I
    .restart local v11    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v13    # "providerEnum":Ljava/util/Enumeration;
    .restart local v14    # "providerStream":Ljava/io/InputStream;
    .restart local v15    # "url":Ljava/net/URL;
    :cond_4
    :try_start_9
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v18

    const-string v19, "extensionProvider"

    .line 235
    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 236
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 237
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 238
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    .line 239
    .restart local v7    # "elementName":Ljava/lang/String;
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 240
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 241
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v10

    .line 242
    .restart local v10    # "namespace":Ljava/lang/String;
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 243
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 244
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    .line 248
    .restart local v4    # "className":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v10}, Lcom/xiaomi/smack/provider/ProviderManager;->getProviderKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 250
    .restart local v9    # "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/smack/provider/ProviderManager;->extensionProviders:Ljava/util/Map;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result v18

    if-nez v18, :cond_1

    .line 263
    :try_start_a
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    .line 264
    .restart local v12    # "provider":Ljava/lang/Class;
    const-class v18, Lcom/xiaomi/smack/provider/PacketExtensionProvider;

    .line 265
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/smack/provider/ProviderManager;->extensionProviders:Ljava/util/Map;

    move-object/from16 v18, v0

    .line 268
    invoke-virtual {v12}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v19

    .line 267
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_2

    .line 275
    .end local v12    # "provider":Ljava/lang/Class;
    :catch_3
    move-exception v5

    .line 276
    .restart local v5    # "cnfe":Ljava/lang/ClassNotFoundException;
    :try_start_b
    invoke-virtual {v5}, Ljava/lang/ClassNotFoundException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_2

    .line 269
    .end local v5    # "cnfe":Ljava/lang/ClassNotFoundException;
    .restart local v12    # "provider":Ljava/lang/Class;
    :cond_5
    :try_start_c
    const-class v18, Lcom/xiaomi/smack/packet/PacketExtension;

    .line 270
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/smack/provider/ProviderManager;->extensionProviders:Ljava/util/Map;

    move-object/from16 v18, v0

    .line 273
    move-object/from16 v0, v18

    invoke-interface {v0, v9, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_2

    .line 176
    .end local v4    # "className":Ljava/lang/String;
    .end local v7    # "elementName":Ljava/lang/String;
    .end local v8    # "eventType":I
    .end local v9    # "key":Ljava/lang/String;
    .end local v10    # "namespace":Ljava/lang/String;
    .end local v11    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "provider":Ljava/lang/Class;
    .end local v14    # "providerStream":Ljava/io/InputStream;
    .end local v15    # "url":Ljava/net/URL;
    :cond_6
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_0

    .line 286
    .restart local v14    # "providerStream":Ljava/io/InputStream;
    .restart local v15    # "url":Ljava/net/URL;
    :catch_4
    move-exception v17

    goto/16 :goto_3
.end method
