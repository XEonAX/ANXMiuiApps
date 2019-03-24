.class public Lcom/miui/internal/content/res/ThemeFallback;
.super Ljava/lang/Object;
.source "ThemeFallback.java"


# static fields
.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_PACKAGE:Ljava/lang/String; = "package"


# instance fields
.field public mFallbackInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/content/res/ThemeFallback;->mFallbackInfoMap:Ljava/util/HashMap;

    return-void
.end method

.method public static parseThemeFallback(Landroid/content/res/MiuiResources;Ljava/io/InputStream;Ljava/lang/String;)Lcom/miui/internal/content/res/ThemeFallback;
    .locals 20
    .param p0, "resource"    # Landroid/content/res/MiuiResources;
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "defPkgName"    # Ljava/lang/String;

    .line 41
    new-instance v0, Lcom/miui/internal/content/res/ThemeFallback;

    invoke-direct {v0}, Lcom/miui/internal/content/res/ThemeFallback;-><init>()V

    move-object v1, v0

    .line 43
    .local v1, "ret":Lcom/miui/internal/content/res/ThemeFallback;
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 44
    .local v0, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    .line 45
    .local v2, "builder":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v3, Ljava/io/BufferedInputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v4, 0x2000

    move-object/from16 v5, p1

    :try_start_1
    invoke-direct {v3, v5, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-virtual {v2, v3}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v3

    .line 46
    .local v3, "document":Lorg/w3c/dom/Document;
    invoke-interface {v3}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v4

    .line 47
    .local v4, "rootElement":Lorg/w3c/dom/Element;
    invoke-interface {v4}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 48
    .local v6, "list":Lorg/w3c/dom/NodeList;
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    .local v7, "index":I
    :goto_0
    if-ltz v7, :cond_5

    .line 49
    invoke-interface {v6, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    .line 50
    .local v9, "temp":Lorg/w3c/dom/Node;
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v10

    if-eq v10, v8, :cond_0

    .line 48
    .end local v9    # "temp":Lorg/w3c/dom/Node;
    :goto_1
    move-object/from16 v18, v0

    move-object/from16 v17, v2

    goto :goto_2

    .line 52
    .restart local v9    # "temp":Lorg/w3c/dom/Node;
    :cond_0
    move-object v10, v9

    check-cast v10, Lorg/w3c/dom/Element;

    .line 53
    .local v10, "element":Lorg/w3c/dom/Element;
    const-string v11, "name"

    invoke-interface {v10, v11}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 54
    .local v11, "name":Ljava/lang/String;
    invoke-static {v11}, Lcom/miui/internal/content/res/ThemeToolUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .end local v9    # "temp":Lorg/w3c/dom/Node;
    .end local v10    # "element":Lorg/w3c/dom/Element;
    .end local v11    # "name":Ljava/lang/String;
    goto :goto_1

    .line 56
    .restart local v9    # "temp":Lorg/w3c/dom/Node;
    .restart local v10    # "element":Lorg/w3c/dom/Element;
    .restart local v11    # "name":Ljava/lang/String;
    :cond_1
    invoke-interface {v10}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v12

    .line 57
    .local v12, "elementName":Ljava/lang/String;
    invoke-static {v12}, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->getType(Ljava/lang/String;)Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    move-result-object v13

    .line 58
    .local v13, "resType":Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;
    sget-object v14, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->NONE:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    if-ne v13, v14, :cond_2

    .end local v9    # "temp":Lorg/w3c/dom/Node;
    .end local v10    # "element":Lorg/w3c/dom/Element;
    .end local v11    # "name":Ljava/lang/String;
    .end local v12    # "elementName":Ljava/lang/String;
    .end local v13    # "resType":Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;
    goto :goto_1

    .line 60
    .restart local v9    # "temp":Lorg/w3c/dom/Node;
    .restart local v10    # "element":Lorg/w3c/dom/Element;
    .restart local v11    # "name":Ljava/lang/String;
    .restart local v12    # "elementName":Ljava/lang/String;
    .restart local v13    # "resType":Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;
    :cond_2
    const-string v14, "package"

    invoke-interface {v10, v14}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 61
    .local v14, "pkg":Ljava/lang/String;
    invoke-static {v14}, Lcom/miui/internal/content/res/ThemeToolUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 62
    move-object/from16 v14, p2

    .line 65
    :cond_3
    sget-object v15, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->DRAWABLE:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    if-ne v13, v15, :cond_4

    .line 66
    invoke-interface {v10}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v15

    .line 67
    .local v15, "value":Ljava/lang/String;
    invoke-static {v15}, Lcom/miui/internal/content/res/ThemeToolUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_4

    .line 68
    new-instance v8, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;

    invoke-direct {v8}, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;-><init>()V

    .line 69
    .local v8, "f":Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;
    move-object/from16 v17, v2

    move-object/from16 v2, p2

    iput-object v2, v8, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResPkgName:Ljava/lang/String;

    .line 70
    .end local v2    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .local v17, "builder":Ljavax/xml/parsers/DocumentBuilder;
    move-object/from16 v18, v0

    sget-object v0, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->DRAWABLE:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    .end local v0    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .local v18, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    iput-object v0, v8, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResType:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    .line 71
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResOriginalName:Ljava/lang/String;

    .line 72
    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResFallbackName:Ljava/lang/String;

    .line 73
    iput-object v14, v8, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResFallbackPkgName:Ljava/lang/String;

    .line 74
    iget-object v0, v1, Lcom/miui/internal/content/res/ThemeFallback;->mFallbackInfoMap:Ljava/util/HashMap;

    iget-object v2, v8, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResOriginalName:Ljava/lang/String;

    invoke-virtual {v0, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v8    # "f":Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;
    .end local v9    # "temp":Lorg/w3c/dom/Node;
    .end local v10    # "element":Lorg/w3c/dom/Element;
    .end local v11    # "name":Ljava/lang/String;
    .end local v12    # "elementName":Ljava/lang/String;
    .end local v13    # "resType":Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;
    .end local v14    # "pkg":Ljava/lang/String;
    .end local v15    # "value":Ljava/lang/String;
    goto :goto_2

    .line 48
    .end local v17    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v18    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v0    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v2    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    :cond_4
    move-object/from16 v18, v0

    move-object/from16 v17, v2

    .end local v0    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v2    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v17    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v18    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :goto_2
    add-int/lit8 v7, v7, -0x1

    move-object/from16 v2, v17

    move-object/from16 v0, v18

    const/4 v8, 0x1

    goto :goto_0

    .line 78
    .end local v3    # "document":Lorg/w3c/dom/Document;
    .end local v4    # "rootElement":Lorg/w3c/dom/Element;
    .end local v6    # "list":Lorg/w3c/dom/NodeList;
    .end local v7    # "index":I
    .end local v17    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v18    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :catch_0
    move-exception v0

    goto :goto_3

    .line 81
    :catchall_0
    move-exception v0

    move-object/from16 v5, p1

    goto :goto_4

    .line 78
    :catch_1
    move-exception v0

    move-object/from16 v5, p1

    .line 79
    .local v0, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 81
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    invoke-static/range {p1 .. p1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 82
    nop

    .line 83
    return-object v1

    .line 81
    :catchall_1
    move-exception v0

    :goto_4
    invoke-static/range {p1 .. p1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v0
.end method
