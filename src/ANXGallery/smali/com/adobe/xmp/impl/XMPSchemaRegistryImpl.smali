.class public final Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;
.super Ljava/lang/Object;
.source "XMPSchemaRegistryImpl.java"

# interfaces
.implements Lcom/adobe/xmp/XMPSchemaRegistry;


# instance fields
.field private aliasMap:Ljava/util/Map;

.field private namespaceToPrefixMap:Ljava/util/Map;

.field private p:Ljava/util/regex/Pattern;

.field private prefixToNamespaceMap:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->namespaceToPrefixMap:Ljava/util/Map;

    .line 41
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->prefixToNamespaceMap:Ljava/util/Map;

    .line 45
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->aliasMap:Ljava/util/Map;

    .line 47
    const-string v1, "[/*?\\[\\]]"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->p:Ljava/util/regex/Pattern;

    .line 58
    :try_start_0
    invoke-direct {p0}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerStandardNamespaces()V

    .line 59
    invoke-direct {p0}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerStandardAliases()V
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Lcom/adobe/xmp/XMPException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "The XMPSchemaRegistry cannot be initialized!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private registerStandardAliases()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 442
    new-instance v0, Lcom/adobe/xmp/options/AliasOptions;

    invoke-direct {v0}, Lcom/adobe/xmp/options/AliasOptions;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/adobe/xmp/options/AliasOptions;->setArrayOrdered(Z)Lcom/adobe/xmp/options/AliasOptions;

    move-result-object v5

    .line 443
    .local v5, "aliasToArrayOrdered":Lcom/adobe/xmp/options/AliasOptions;
    new-instance v0, Lcom/adobe/xmp/options/AliasOptions;

    invoke-direct {v0}, Lcom/adobe/xmp/options/AliasOptions;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/adobe/xmp/options/AliasOptions;->setArrayAltText(Z)Lcom/adobe/xmp/options/AliasOptions;

    move-result-object v12

    .line 447
    .local v12, "aliasToArrayAltText":Lcom/adobe/xmp/options/AliasOptions;
    const-string v1, "http://ns.adobe.com/xap/1.0/"

    const-string v2, "Author"

    const-string v3, "http://purl.org/dc/elements/1.1/"

    const-string v4, "creator"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    .line 448
    const-string v7, "http://ns.adobe.com/xap/1.0/"

    const-string v8, "Authors"

    const-string v9, "http://purl.org/dc/elements/1.1/"

    const-string v10, "creator"

    const/4 v11, 0x0

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    .line 449
    const-string v7, "http://ns.adobe.com/xap/1.0/"

    const-string v8, "Description"

    const-string v9, "http://purl.org/dc/elements/1.1/"

    const-string v10, "description"

    const/4 v11, 0x0

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    .line 450
    const-string v7, "http://ns.adobe.com/xap/1.0/"

    const-string v8, "Format"

    const-string v9, "http://purl.org/dc/elements/1.1/"

    const-string v10, "format"

    const/4 v11, 0x0

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    .line 451
    const-string v7, "http://ns.adobe.com/xap/1.0/"

    const-string v8, "Keywords"

    const-string v9, "http://purl.org/dc/elements/1.1/"

    const-string/jumbo v10, "subject"

    const/4 v11, 0x0

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    .line 452
    const-string v7, "http://ns.adobe.com/xap/1.0/"

    const-string v8, "Locale"

    const-string v9, "http://purl.org/dc/elements/1.1/"

    const-string v10, "language"

    const/4 v11, 0x0

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    .line 453
    const-string v7, "http://ns.adobe.com/xap/1.0/"

    const-string v8, "Title"

    const-string v9, "http://purl.org/dc/elements/1.1/"

    const-string/jumbo v10, "title"

    const/4 v11, 0x0

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    .line 454
    const-string v7, "http://ns.adobe.com/xap/1.0/rights/"

    const-string v8, "Copyright"

    const-string v9, "http://purl.org/dc/elements/1.1/"

    const-string v10, "rights"

    const/4 v11, 0x0

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    .line 457
    const-string v1, "http://ns.adobe.com/pdf/1.3/"

    const-string v2, "Author"

    const-string v3, "http://purl.org/dc/elements/1.1/"

    const-string v4, "creator"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    .line 458
    const-string v7, "http://ns.adobe.com/pdf/1.3/"

    const-string v8, "BaseURL"

    const-string v9, "http://ns.adobe.com/xap/1.0/"

    const-string v10, "BaseURL"

    const/4 v11, 0x0

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    .line 459
    const-string v7, "http://ns.adobe.com/pdf/1.3/"

    const-string v8, "CreationDate"

    const-string v9, "http://ns.adobe.com/xap/1.0/"

    const-string v10, "CreateDate"

    const/4 v11, 0x0

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    .line 460
    const-string v7, "http://ns.adobe.com/pdf/1.3/"

    const-string v8, "Creator"

    const-string v9, "http://ns.adobe.com/xap/1.0/"

    const-string v10, "CreatorTool"

    const/4 v11, 0x0

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    .line 461
    const-string v7, "http://ns.adobe.com/pdf/1.3/"

    const-string v8, "ModDate"

    const-string v9, "http://ns.adobe.com/xap/1.0/"

    const-string v10, "ModifyDate"

    const/4 v11, 0x0

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    .line 462
    const-string v7, "http://ns.adobe.com/pdf/1.3/"

    const-string v8, "Subject"

    const-string v9, "http://purl.org/dc/elements/1.1/"

    const-string v10, "description"

    move-object v6, p0

    move-object v11, v12

    invoke-virtual/range {v6 .. v11}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    .line 463
    const-string v7, "http://ns.adobe.com/pdf/1.3/"

    const-string v8, "Title"

    const-string v9, "http://purl.org/dc/elements/1.1/"

    const-string/jumbo v10, "title"

    move-object v6, p0

    move-object v11, v12

    invoke-virtual/range {v6 .. v11}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    .line 466
    const-string v1, "http://ns.adobe.com/photoshop/1.0/"

    const-string v2, "Author"

    const-string v3, "http://purl.org/dc/elements/1.1/"

    const-string v4, "creator"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    .line 467
    const-string v7, "http://ns.adobe.com/photoshop/1.0/"

    const-string v8, "Caption"

    const-string v9, "http://purl.org/dc/elements/1.1/"

    const-string v10, "description"

    move-object v6, p0

    move-object v11, v12

    invoke-virtual/range {v6 .. v11}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    .line 468
    const-string v7, "http://ns.adobe.com/photoshop/1.0/"

    const-string v8, "Copyright"

    const-string v9, "http://purl.org/dc/elements/1.1/"

    const-string v10, "rights"

    move-object v6, p0

    move-object v11, v12

    invoke-virtual/range {v6 .. v11}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    .line 469
    const-string v7, "http://ns.adobe.com/photoshop/1.0/"

    const-string v8, "Keywords"

    const-string v9, "http://purl.org/dc/elements/1.1/"

    const-string/jumbo v10, "subject"

    const/4 v11, 0x0

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    .line 470
    const-string v7, "http://ns.adobe.com/photoshop/1.0/"

    const-string v8, "Marked"

    const-string v9, "http://ns.adobe.com/xap/1.0/rights/"

    const-string v10, "Marked"

    const/4 v11, 0x0

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    .line 471
    const-string v7, "http://ns.adobe.com/photoshop/1.0/"

    const-string v8, "Title"

    const-string v9, "http://purl.org/dc/elements/1.1/"

    const-string/jumbo v10, "title"

    move-object v6, p0

    move-object v11, v12

    invoke-virtual/range {v6 .. v11}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    .line 472
    const-string v7, "http://ns.adobe.com/photoshop/1.0/"

    const-string v8, "WebStatement"

    const-string v9, "http://ns.adobe.com/xap/1.0/rights/"

    const-string v10, "WebStatement"

    const/4 v11, 0x0

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    .line 475
    const-string v1, "http://ns.adobe.com/tiff/1.0/"

    const-string v2, "Artist"

    const-string v3, "http://purl.org/dc/elements/1.1/"

    const-string v4, "creator"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    .line 476
    const-string v7, "http://ns.adobe.com/tiff/1.0/"

    const-string v8, "Copyright"

    const-string v9, "http://purl.org/dc/elements/1.1/"

    const-string v10, "rights"

    const/4 v11, 0x0

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    .line 477
    const-string v7, "http://ns.adobe.com/tiff/1.0/"

    const-string v8, "DateTime"

    const-string v9, "http://ns.adobe.com/xap/1.0/"

    const-string v10, "ModifyDate"

    const/4 v11, 0x0

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    .line 478
    const-string v7, "http://ns.adobe.com/tiff/1.0/"

    const-string v8, "ImageDescription"

    const-string v9, "http://purl.org/dc/elements/1.1/"

    const-string v10, "description"

    const/4 v11, 0x0

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    .line 479
    const-string v7, "http://ns.adobe.com/tiff/1.0/"

    const-string v8, "Software"

    const-string v9, "http://ns.adobe.com/xap/1.0/"

    const-string v10, "CreatorTool"

    const/4 v11, 0x0

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    .line 482
    const-string v1, "http://ns.adobe.com/png/1.0/"

    const-string v2, "Author"

    const-string v3, "http://purl.org/dc/elements/1.1/"

    const-string v4, "creator"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    .line 483
    const-string v7, "http://ns.adobe.com/png/1.0/"

    const-string v8, "Copyright"

    const-string v9, "http://purl.org/dc/elements/1.1/"

    const-string v10, "rights"

    move-object v6, p0

    move-object v11, v12

    invoke-virtual/range {v6 .. v11}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    .line 484
    const-string v7, "http://ns.adobe.com/png/1.0/"

    const-string v8, "CreationTime"

    const-string v9, "http://ns.adobe.com/xap/1.0/"

    const-string v10, "CreateDate"

    const/4 v11, 0x0

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    .line 485
    const-string v7, "http://ns.adobe.com/png/1.0/"

    const-string v8, "Description"

    const-string v9, "http://purl.org/dc/elements/1.1/"

    const-string v10, "description"

    move-object v6, p0

    move-object v11, v12

    invoke-virtual/range {v6 .. v11}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    .line 486
    const-string v7, "http://ns.adobe.com/png/1.0/"

    const-string v8, "ModificationTime"

    const-string v9, "http://ns.adobe.com/xap/1.0/"

    const-string v10, "ModifyDate"

    const/4 v11, 0x0

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    .line 487
    const-string v7, "http://ns.adobe.com/png/1.0/"

    const-string v8, "Software"

    const-string v9, "http://ns.adobe.com/xap/1.0/"

    const-string v10, "CreatorTool"

    const/4 v11, 0x0

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    .line 488
    const-string v7, "http://ns.adobe.com/png/1.0/"

    const-string v8, "Title"

    const-string v9, "http://purl.org/dc/elements/1.1/"

    const-string/jumbo v10, "title"

    move-object v6, p0

    move-object v11, v12

    invoke-virtual/range {v6 .. v11}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    .line 489
    return-void
.end method

.method private registerStandardNamespaces()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 187
    const-string v0, "http://www.w3.org/XML/1998/namespace"

    const-string/jumbo v1, "xml"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 188
    const-string v0, "http://www.w3.org/1999/02/22-rdf-syntax-ns#"

    const-string v1, "rdf"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 189
    const-string v0, "http://purl.org/dc/elements/1.1/"

    const-string v1, "dc"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 190
    const-string v0, "http://iptc.org/std/Iptc4xmpCore/1.0/xmlns/"

    const-string v1, "Iptc4xmpCore"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 193
    const-string v0, "adobe:ns:meta/"

    const-string/jumbo v1, "x"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 194
    const-string v0, "http://ns.adobe.com/iX/1.0/"

    const-string v1, "iX"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 196
    const-string v0, "http://ns.adobe.com/xap/1.0/"

    const-string/jumbo v1, "xmp"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 197
    const-string v0, "http://ns.adobe.com/xap/1.0/rights/"

    const-string/jumbo v1, "xmpRights"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 198
    const-string v0, "http://ns.adobe.com/xap/1.0/mm/"

    const-string/jumbo v1, "xmpMM"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 199
    const-string v0, "http://ns.adobe.com/xap/1.0/bj/"

    const-string/jumbo v1, "xmpBJ"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 200
    const-string v0, "http://ns.adobe.com/xmp/note/"

    const-string/jumbo v1, "xmpNote"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 202
    const-string v0, "http://ns.adobe.com/pdf/1.3/"

    const-string v1, "pdf"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 203
    const-string v0, "http://ns.adobe.com/pdfx/1.3/"

    const-string v1, "pdfx"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 204
    const-string v0, "http://www.npes.org/pdfx/ns/id/"

    const-string v1, "pdfxid"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 205
    const-string v0, "http://www.aiim.org/pdfa/ns/schema#"

    const-string v1, "pdfaSchema"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 206
    const-string v0, "http://www.aiim.org/pdfa/ns/property#"

    const-string v1, "pdfaProperty"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 207
    const-string v0, "http://www.aiim.org/pdfa/ns/type#"

    const-string v1, "pdfaType"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 208
    const-string v0, "http://www.aiim.org/pdfa/ns/field#"

    const-string v1, "pdfaField"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 209
    const-string v0, "http://www.aiim.org/pdfa/ns/id/"

    const-string v1, "pdfaid"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 210
    const-string v0, "http://www.aiim.org/pdfa/ns/extension/"

    const-string v1, "pdfaExtension"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 211
    const-string v0, "http://ns.adobe.com/photoshop/1.0/"

    const-string v1, "photoshop"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 212
    const-string v0, "http://ns.adobe.com/album/1.0/"

    const-string v1, "album"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 213
    const-string v0, "http://ns.adobe.com/exif/1.0/"

    const-string v1, "exif"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 214
    const-string v0, "http://ns.adobe.com/exif/1.0/aux/"

    const-string v1, "aux"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 215
    const-string v0, "http://ns.adobe.com/tiff/1.0/"

    const-string/jumbo v1, "tiff"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 216
    const-string v0, "http://ns.adobe.com/png/1.0/"

    const-string v1, "png"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 217
    const-string v0, "http://ns.adobe.com/jpeg/1.0/"

    const-string v1, "jpeg"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 218
    const-string v0, "http://ns.adobe.com/jp2k/1.0/"

    const-string v1, "jp2k"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 219
    const-string v0, "http://ns.adobe.com/camera-raw-settings/1.0/"

    const-string v1, "crs"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 220
    const-string v0, "http://ns.adobe.com/StockPhoto/1.0/"

    const-string v1, "bmsp"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 221
    const-string v0, "http://ns.adobe.com/creatorAtom/1.0/"

    const-string v1, "creatorAtom"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 222
    const-string v0, "http://ns.adobe.com/asf/1.0/"

    const-string v1, "asf"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 223
    const-string v0, "http://ns.adobe.com/xmp/wav/1.0/"

    const-string/jumbo v1, "wav"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 226
    const-string v0, "http://ns.adobe.com/xmp/1.0/DynamicMedia/"

    const-string/jumbo v1, "xmpDM"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 227
    const-string v0, "http://ns.adobe.com/xmp/transient/1.0/"

    const-string/jumbo v1, "xmpx"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 230
    const-string v0, "http://ns.adobe.com/xap/1.0/t/"

    const-string/jumbo v1, "xmpT"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 231
    const-string v0, "http://ns.adobe.com/xap/1.0/t/pg/"

    const-string/jumbo v1, "xmpTPg"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 232
    const-string v0, "http://ns.adobe.com/xap/1.0/g/"

    const-string/jumbo v1, "xmpG"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 233
    const-string v0, "http://ns.adobe.com/xap/1.0/g/img/"

    const-string/jumbo v1, "xmpGImg"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 234
    const-string v0, "http://ns.adobe.com/xap/1.0/sType/Font#"

    const-string/jumbo v1, "stFNT"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 235
    const-string v0, "http://ns.adobe.com/xap/1.0/sType/Dimensions#"

    const-string/jumbo v1, "stDim"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 236
    const-string v0, "http://ns.adobe.com/xap/1.0/sType/ResourceEvent#"

    const-string/jumbo v1, "stEvt"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 237
    const-string v0, "http://ns.adobe.com/xap/1.0/sType/ResourceRef#"

    const-string/jumbo v1, "stRef"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 238
    const-string v0, "http://ns.adobe.com/xap/1.0/sType/Version#"

    const-string/jumbo v1, "stVer"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 239
    const-string v0, "http://ns.adobe.com/xap/1.0/sType/Job#"

    const-string/jumbo v1, "stJob"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 240
    const-string v0, "http://ns.adobe.com/xap/1.0/sType/ManifestItem#"

    const-string/jumbo v1, "stMfs"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 241
    const-string v0, "http://ns.adobe.com/xmp/Identifier/qual/1.0/"

    const-string/jumbo v1, "xmpidq"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 242
    return-void
.end method


# virtual methods
.method public declared-synchronized findAlias(Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPAliasInfo;
    .locals 1
    .param p1, "qname"    # Ljava/lang/String;

    .prologue
    .line 270
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->aliasMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/xmp/properties/XMPAliasInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNamespacePrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "namespaceURI"    # Ljava/lang/String;

    .prologue
    .line 142
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->namespaceToPrefixMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "namespacePrefix"    # Ljava/lang/String;

    .prologue
    .line 151
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->prefixToNamespaceMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V
    .locals 8
    .param p1, "aliasNS"    # Ljava/lang/String;
    .param p2, "aliasProp"    # Ljava/lang/String;
    .param p3, "actualNS"    # Ljava/lang/String;
    .param p4, "actualProp"    # Ljava/lang/String;
    .param p5, "aliasForm"    # Lcom/adobe/xmp/options/AliasOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 336
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    .line 337
    invoke-static {p2}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertPropName(Ljava/lang/String;)V

    .line 338
    invoke-static {p3}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    .line 339
    invoke-static {p4}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertPropName(Ljava/lang/String;)V

    .line 342
    if-eqz p5, :cond_1

    new-instance v5, Lcom/adobe/xmp/options/AliasOptions;

    .line 344
    invoke-virtual {p5}, Lcom/adobe/xmp/options/AliasOptions;->toPropertyOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v1

    const/4 v2, 0x0

    .line 343
    invoke-static {v1, v2}, Lcom/adobe/xmp/impl/XMPNodeUtils;->verifySetOptions(Lcom/adobe/xmp/options/PropertyOptions;Ljava/lang/Object;)Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v1

    .line 344
    invoke-virtual {v1}, Lcom/adobe/xmp/options/PropertyOptions;->getOptions()I

    move-result v1

    invoke-direct {v5, v1}, Lcom/adobe/xmp/options/AliasOptions;-><init>(I)V

    .line 347
    .local v5, "aliasOpts":Lcom/adobe/xmp/options/AliasOptions;
    :goto_0
    iget-object v1, p0, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->p:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->p:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 349
    :cond_0
    new-instance v1, Lcom/adobe/xmp/XMPException;

    const-string v2, "Alias and actual property names must be simple"

    const/16 v4, 0x66

    invoke-direct {v1, v2, v4}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    .end local v5    # "aliasOpts":Lcom/adobe/xmp/options/AliasOptions;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 344
    :cond_1
    :try_start_1
    new-instance v5, Lcom/adobe/xmp/options/AliasOptions;

    invoke-direct {v5}, Lcom/adobe/xmp/options/AliasOptions;-><init>()V

    goto :goto_0

    .line 354
    .restart local v5    # "aliasOpts":Lcom/adobe/xmp/options/AliasOptions;
    :cond_2
    invoke-virtual {p0, p1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->getNamespacePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 355
    .local v6, "aliasPrefix":Ljava/lang/String;
    invoke-virtual {p0, p3}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->getNamespacePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 356
    .local v3, "actualPrefix":Ljava/lang/String;
    if-nez v6, :cond_3

    .line 358
    new-instance v1, Lcom/adobe/xmp/XMPException;

    const-string v2, "Alias namespace is not registered"

    const/16 v4, 0x65

    invoke-direct {v1, v2, v4}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 360
    :cond_3
    if-nez v3, :cond_4

    .line 362
    new-instance v1, Lcom/adobe/xmp/XMPException;

    const-string v2, "Actual namespace is not registered"

    const/16 v4, 0x65

    invoke-direct {v1, v2, v4}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 366
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 369
    .local v7, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->aliasMap:Ljava/util/Map;

    invoke-interface {v1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 371
    new-instance v1, Lcom/adobe/xmp/XMPException;

    const-string v2, "Alias is already existing"

    const/4 v4, 0x4

    invoke-direct {v1, v2, v4}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 373
    :cond_5
    iget-object v1, p0, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->aliasMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 375
    new-instance v1, Lcom/adobe/xmp/XMPException;

    const-string v2, "Actual property is already an alias, use the base property"

    const/4 v4, 0x4

    invoke-direct {v1, v2, v4}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 380
    :cond_6
    new-instance v0, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl$1;

    move-object v1, p0

    move-object v2, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl$1;-><init>(Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    .line 421
    .local v0, "aliasInfo":Lcom/adobe/xmp/properties/XMPAliasInfo;
    iget-object v1, p0, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->aliasMap:Ljava/util/Map;

    invoke-interface {v1, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 422
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "suggestedPrefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x3a

    .line 78
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    .line 79
    invoke-static {p2}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertPrefix(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v5, :cond_0

    .line 83
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 86
    :cond_0
    const/4 v4, 0x0

    .line 87
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .line 86
    invoke-virtual {p2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/adobe/xmp/impl/Utils;->isXMLNameNS(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 89
    new-instance v4, Lcom/adobe/xmp/XMPException;

    const-string v5, "The prefix is a bad XML name"

    const/16 v6, 0xc9

    invoke-direct {v4, v5, v6}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 92
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->namespaceToPrefixMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 93
    .local v3, "registeredPrefix":Ljava/lang/String;
    iget-object v4, p0, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->prefixToNamespaceMap:Ljava/util/Map;

    invoke-interface {v4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    .local v2, "registeredNS":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 118
    .end local v3    # "registeredPrefix":Ljava/lang/String;
    :goto_0
    monitor-exit p0

    return-object v3

    .line 101
    .restart local v3    # "registeredPrefix":Ljava/lang/String;
    :cond_2
    if-eqz v2, :cond_4

    .line 105
    move-object v0, p2

    .line 106
    .local v0, "generatedPrefix":Ljava/lang/String;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    :try_start_2
    iget-object v4, p0, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->prefixToNamespaceMap:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 108
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    .line 109
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 106
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 112
    :cond_3
    move-object p2, v0

    .line 114
    .end local v0    # "generatedPrefix":Ljava/lang/String;
    .end local v1    # "i":I
    :cond_4
    iget-object v4, p0, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->prefixToNamespaceMap:Ljava/util/Map;

    invoke-interface {v4, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v4, p0, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->namespaceToPrefixMap:Ljava/util/Map;

    invoke-interface {v4, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v3, p2

    .line 118
    goto :goto_0
.end method
