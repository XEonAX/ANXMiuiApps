.class public Lmiui/content/res/ThemeCompatibilityLoader;
.super Ljava/lang/Object;
.source "ThemeCompatibilityLoader.java"


# static fields
.field private static final COMPATIBILITY_FILE_NAME:Ljava/lang/String; = "theme_compatibility.xml"

.field public static final DATA_THEME_COMPATIBILITY_PATH:Ljava/lang/String; = "/data/system/theme_config/theme_compatibility.xml"

.field public static final SYSTEM_THEME_COMPATIBILITY_PATH:Ljava/lang/String; = "/system/media/theme/theme_compatibility.xml"

.field private static final TAG:Ljava/lang/String; = "ThemeCompatibility"

.field private static final TAG_ITEM:Ljava/lang/String; = "item"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "package"

.field private static final TAG_PROPERTY1:Ljava/lang/String; = "property1"

.field private static final TAG_PROPERTY2:Ljava/lang/String; = "property2"

.field private static final TAG_PROPERTY3:Ljava/lang/String; = "property3"

.field private static final TAG_PROPERTYEXTRA:Ljava/lang/String; = "propertyExtra"

.field private static final TAG_RESOURCE_TYPE:Ljava/lang/String; = "resourceType"

.field private static final TAG_VERSION:Ljava/lang/String; = "version"

.field private static sVersionInt:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    const/4 v0, -0x1

    sput v0, Lmiui/content/res/ThemeCompatibilityLoader;->sVersionInt:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getConfigDocumentTree()Lorg/w3c/dom/Document;
    .locals 12

    .line 126
    const-string v0, "/data/system/theme_config/theme_compatibility.xml"

    invoke-static {v0}, Lmiui/content/res/ThemeCompatibilityLoader;->getVersion(Ljava/lang/String;)I

    move-result v0

    .line 127
    .local v0, "updateVersion":I
    const-string v1, "/system/media/theme/theme_compatibility.xml"

    invoke-static {v1}, Lmiui/content/res/ThemeCompatibilityLoader;->getVersion(Ljava/lang/String;)I

    move-result v1

    .line 129
    .local v1, "romVersion":I
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    .line 130
    .local v2, "prefPath":[Ljava/lang/String;
    const/4 v3, 0x0

    if-le v0, v1, :cond_0

    .line 131
    const-string v4, "/data/system/theme_config/theme_compatibility.xml"

    aput-object v4, v2, v3

    .line 132
    const-string v4, "/system/media/theme/theme_compatibility.xml"

    const/4 v5, 0x1

    aput-object v4, v2, v5

    goto :goto_0

    .line 134
    :cond_0
    const-string v4, "/system/media/theme/theme_compatibility.xml"

    aput-object v4, v2, v3

    .line 137
    :goto_0
    const-string v4, "ThemeCompatibility"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getConfigDocumentTree(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " vs "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    array-length v4, v2

    :goto_1
    const/4 v5, 0x0

    if-ge v3, v4, :cond_1

    aget-object v6, v2, v3

    .line 139
    .local v6, "path":Ljava/lang/String;
    nop

    .line 141
    .local v5, "is":Ljava/io/InputStream;
    :try_start_0
    const-string v7, "ThemeCompatibility"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "    parse file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v7

    .line 143
    .local v7, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v7}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v8

    .line 144
    .local v8, "builder":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v9, Ljava/io/BufferedInputStream;

    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const/16 v11, 0x2000

    invoke-direct {v9, v10, v11}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object v5, v9

    .line 145
    invoke-virtual {v8, v5}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    invoke-static {v5}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 145
    return-object v9

    .line 150
    .end local v7    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v8    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 146
    :catch_0
    move-exception v7

    .line 147
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v8, "ThemeCompatibility"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "    invalid file format: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " -- "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    .end local v7    # "e":Ljava/lang/Exception;
    invoke-static {v5}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 151
    nop

    .line 138
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v6    # "path":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 150
    .restart local v5    # "is":Ljava/io/InputStream;
    .restart local v6    # "path":Ljava/lang/String;
    :goto_2
    invoke-static {v5}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v3

    .line 153
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v6    # "path":Ljava/lang/String;
    :cond_1
    return-object v5
.end method

.method public static getVersion(Ljava/lang/String;)I
    .locals 7
    .param p0, "path"    # Ljava/lang/String;

    .line 104
    const/4 v0, 0x0

    move-object v1, v0

    .line 106
    .local v1, "cin":Ljava/io/BufferedReader;
    :try_start_0
    const-string v2, "<version>"

    .line 107
    .local v2, "sTag":Ljava/lang/String;
    const-string v3, "</version>"

    .line 108
    .local v3, "eTag":Ljava/lang/String;
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v4

    .line 109
    nop

    .line 110
    .local v0, "line":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    if-eqz v4, :cond_1

    .line 111
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 112
    const-string v4, "<version>"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "</version>"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 113
    const-string v4, "<version>"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const-string v6, "</version>"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Reader;)V

    .line 113
    return v4

    .line 120
    .end local v0    # "line":Ljava/lang/String;
    .end local v2    # "sTag":Ljava/lang/String;
    .end local v3    # "eTag":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Reader;)V

    .line 121
    goto :goto_1

    .line 120
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "ThemeCompatibility"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVersion(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 122
    :goto_1
    const/4 v0, -0x1

    return v0

    .line 120
    :goto_2
    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Reader;)V

    throw v0
.end method

.method static loadConfig()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityInfo;",
            ">;"
        }
    .end annotation

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityInfo;>;"
    const-string v1, "ThemeCompatibility"

    const-string v2, "START loading theme compatibility config."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :try_start_0
    invoke-static {}, Lmiui/content/res/ThemeCompatibilityLoader;->getConfigDocumentTree()Lorg/w3c/dom/Document;

    move-result-object v1

    .line 60
    .local v1, "document":Lorg/w3c/dom/Document;
    if-eqz v1, :cond_5

    .line 61
    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v2

    .line 62
    .local v2, "rootElement":Lorg/w3c/dom/Element;
    invoke-interface {v2}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 64
    .local v3, "list":Lorg/w3c/dom/NodeList;
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    .local v4, "index":I
    :goto_0
    if-ltz v4, :cond_5

    .line 65
    invoke-interface {v3, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 66
    .local v6, "temp":Lorg/w3c/dom/Node;
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v7

    if-eq v7, v5, :cond_0

    .end local v6    # "temp":Lorg/w3c/dom/Node;
    goto :goto_2

    .line 68
    .restart local v6    # "temp":Lorg/w3c/dom/Node;
    :cond_0
    move-object v7, v6

    check-cast v7, Lorg/w3c/dom/Element;

    .line 69
    .local v7, "element":Lorg/w3c/dom/Element;
    invoke-interface {v7}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v8

    .line 70
    .local v8, "eleName":Ljava/lang/String;
    const-string v9, "version"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 71
    invoke-interface {v7}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v9

    const/4 v10, -0x1

    invoke-static {v9, v10}, Lcom/android/internal/util/XmlUtils;->convertValueToUnsignedInt(Ljava/lang/String;I)I

    move-result v9

    sput v9, Lmiui/content/res/ThemeCompatibilityLoader;->sVersionInt:I

    .line 72
    sget v9, Lmiui/content/res/ThemeCompatibilityLoader;->sVersionInt:I

    if-gez v9, :cond_4

    .end local v1    # "document":Lorg/w3c/dom/Document;
    .end local v2    # "rootElement":Lorg/w3c/dom/Element;
    .end local v3    # "list":Lorg/w3c/dom/NodeList;
    .end local v4    # "index":I
    goto :goto_3

    .line 74
    .restart local v1    # "document":Lorg/w3c/dom/Document;
    .restart local v2    # "rootElement":Lorg/w3c/dom/Element;
    .restart local v3    # "list":Lorg/w3c/dom/NodeList;
    .restart local v4    # "index":I
    :cond_1
    invoke-static {v8}, Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;->getType(Ljava/lang/String;)Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;

    move-result-object v9

    .line 75
    .local v9, "type":Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;
    sget-object v10, Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;->NONE:Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;

    if-ne v9, v10, :cond_2

    .end local v6    # "temp":Lorg/w3c/dom/Node;
    .end local v7    # "element":Lorg/w3c/dom/Element;
    .end local v8    # "eleName":Ljava/lang/String;
    .end local v9    # "type":Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;
    goto :goto_2

    .line 77
    .restart local v6    # "temp":Lorg/w3c/dom/Node;
    .restart local v7    # "element":Lorg/w3c/dom/Element;
    .restart local v8    # "eleName":Ljava/lang/String;
    .restart local v9    # "type":Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;
    :cond_2
    const-string v10, "item"

    invoke-interface {v7, v10}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v10

    .line 78
    .local v10, "nodeList":Lorg/w3c/dom/NodeList;
    if-eqz v10, :cond_4

    .line 79
    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    .line 80
    .local v11, "size":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    if-ge v12, v11, :cond_4

    .line 81
    invoke-interface {v10, v12}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v13

    invoke-static {v9, v13}, Lmiui/content/res/ThemeCompatibilityLoader;->parseCompatibilityInfo(Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;Lorg/w3c/dom/Node;)Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityInfo;

    move-result-object v13

    .line 82
    .local v13, "info":Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityInfo;
    if-eqz v13, :cond_3

    .line 83
    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .end local v13    # "info":Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityInfo;
    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 64
    .end local v6    # "temp":Lorg/w3c/dom/Node;
    .end local v7    # "element":Lorg/w3c/dom/Element;
    .end local v8    # "eleName":Ljava/lang/String;
    .end local v9    # "type":Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;
    .end local v10    # "nodeList":Lorg/w3c/dom/NodeList;
    .end local v11    # "size":I
    .end local v12    # "i":I
    :cond_4
    :goto_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 93
    .end local v1    # "document":Lorg/w3c/dom/Document;
    .end local v2    # "rootElement":Lorg/w3c/dom/Element;
    .end local v3    # "list":Lorg/w3c/dom/NodeList;
    .end local v4    # "index":I
    :cond_5
    :goto_3
    goto :goto_4

    .line 90
    :catch_0
    move-exception v1

    .line 91
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "ThemeCompatibility"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid item format: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 94
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_4
    sget v1, Lmiui/content/res/ThemeCompatibilityLoader;->sVersionInt:I

    if-gez v1, :cond_6

    .line 95
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 97
    :cond_6
    const-string v1, "ThemeCompatibility"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "END loading: version="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lmiui/content/res/ThemeCompatibilityLoader;->sVersionInt:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    return-object v0
.end method

.method private static parseCompatibilityInfo(Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;Lorg/w3c/dom/Node;)Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityInfo;
    .locals 13
    .param p0, "type"    # Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;
    .param p1, "item"    # Lorg/w3c/dom/Node;

    .line 157
    const/4 v0, 0x0

    .local v0, "pkg":Ljava/lang/String;
    const/4 v1, 0x0

    .line 158
    .local v1, "resourceType":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "property1":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "property2":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "property3":Ljava/lang/String;
    const/4 v5, 0x0

    .line 160
    .local v5, "propertyExtra":Ljava/lang/String;
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v6

    .line 161
    .local v6, "attrMap":Lorg/w3c/dom/NamedNodeMap;
    invoke-interface {v6}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    .local v7, "i":I
    :goto_0
    if-ltz v7, :cond_6

    .line 162
    invoke-interface {v6, v7}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    .line 163
    .local v8, "tmp":Lorg/w3c/dom/Node;
    const-string v9, "package"

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 164
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 165
    :cond_0
    const-string v9, "resourceType"

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 166
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 167
    :cond_1
    const-string v9, "property1"

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 168
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 169
    :cond_2
    const-string v9, "property2"

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 170
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 171
    :cond_3
    const-string v9, "property3"

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 172
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 173
    :cond_4
    const-string v9, "propertyExtra"

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 174
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    .line 161
    .end local v8    # "tmp":Lorg/w3c/dom/Node;
    :cond_5
    :goto_1
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 178
    .end local v7    # "i":I
    :cond_6
    const/4 v7, 0x0

    .line 179
    .local v7, "ret":Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityInfo;
    sget-object v8, Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;->FALLBACK:Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;

    if-ne p0, v8, :cond_b

    .line 180
    new-instance v8, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;

    invoke-direct {v8}, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;-><init>()V

    .line 181
    .local v8, "tmp":Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;
    iput-object v0, v8, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResPkgName:Ljava/lang/String;

    .line 182
    invoke-static {v1}, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->getType(Ljava/lang/String;)Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    move-result-object v9

    iput-object v9, v8, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResType:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    .line 183
    iput-object v2, v8, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResOriginalName:Ljava/lang/String;

    .line 184
    iput-object v3, v8, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResFallbackName:Ljava/lang/String;

    .line 185
    nop

    .line 186
    invoke-static {v4}, Lcom/miui/internal/content/res/ThemeToolUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_8

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    goto :goto_2

    :cond_7
    move-object v9, v4

    goto :goto_3

    :cond_8
    :goto_2
    const/4 v9, 0x0

    :goto_3
    iput-object v9, v8, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResFallbackPkgName:Ljava/lang/String;

    .line 187
    invoke-static {v5}, Lmiui/content/res/ThemeCompatibilityLoader;->splitItemString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 188
    .local v9, "pList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_a

    .line 189
    const/4 v10, 0x5

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    new-array v10, v10, [Ljava/lang/String;

    .line 190
    .local v10, "pConfig":[Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_4
    array-length v12, v10

    if-ge v11, v12, :cond_9

    .line 191
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    aput-object v12, v10, v11

    .line 190
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 193
    .end local v11    # "i":I
    :cond_9
    iput-object v10, v8, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResPreferredConfigs:[Ljava/lang/String;

    .line 196
    .end local v10    # "pConfig":[Ljava/lang/String;
    :cond_a
    move-object v7, v8

    .line 197
    .end local v8    # "tmp":Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;
    .end local v9    # "pList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_5

    :cond_b
    sget-object v8, Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;->NEW_DEF_VALUE:Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;

    if-ne p0, v8, :cond_c

    .line 198
    new-instance v8, Lcom/miui/internal/content/res/ThemeDefinition$NewDefaultValue;

    invoke-direct {v8}, Lcom/miui/internal/content/res/ThemeDefinition$NewDefaultValue;-><init>()V

    .line 199
    .local v8, "tmp":Lcom/miui/internal/content/res/ThemeDefinition$NewDefaultValue;
    iput-object v0, v8, Lcom/miui/internal/content/res/ThemeDefinition$NewDefaultValue;->mResPkgName:Ljava/lang/String;

    .line 200
    invoke-static {v1}, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->getType(Ljava/lang/String;)Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    move-result-object v9

    iput-object v9, v8, Lcom/miui/internal/content/res/ThemeDefinition$NewDefaultValue;->mResType:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    .line 201
    iput-object v2, v8, Lcom/miui/internal/content/res/ThemeDefinition$NewDefaultValue;->mResName:Ljava/lang/String;

    .line 202
    iput-object v3, v8, Lcom/miui/internal/content/res/ThemeDefinition$NewDefaultValue;->mResValue:Ljava/lang/String;

    .line 204
    move-object v7, v8

    .line 207
    .end local v8    # "tmp":Lcom/miui/internal/content/res/ThemeDefinition$NewDefaultValue;
    :cond_c
    :goto_5
    if-eqz v7, :cond_d

    invoke-virtual {v7}, Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityInfo;->isValid()Z

    move-result v8

    if-nez v8, :cond_d

    .line 208
    const-string v8, "ThemeCompatibility"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid compatibility info: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const/4 v7, 0x0

    .line 211
    :cond_d
    return-object v7
.end method

.method private static splitItemString(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p0, "item"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 215
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 216
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move-object p0, v1

    .line 217
    if-eqz p0, :cond_2

    const-string v1, "#"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 218
    const-string v1, " |\t"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 219
    .local v4, "tmp":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 220
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 221
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 222
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    .end local v4    # "tmp":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 227
    :cond_2
    return-object v0
.end method
