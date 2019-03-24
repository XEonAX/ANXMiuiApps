.class public Lcom/miui/internal/hybrid/XmlConfigParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/internal/hybrid/ConfigParser;


# static fields
.field private static final eJ:Ljava/lang/String; = "timestamp"

.field private static final eK:Ljava/lang/String; = "vendor"

.field private static final fR:Ljava/lang/String; = "com.miui.sdk.hybrid.config"

.field private static final fS:Ljava/lang/String; = "miui_hybrid_config"

.field private static final fT:Ljava/lang/String; = "widget"

.field private static final fU:Ljava/lang/String; = "content"

.field private static final fV:Ljava/lang/String; = "feature"

.field private static final fW:Ljava/lang/String; = "param"

.field private static final fX:Ljava/lang/String; = "preference"

.field private static final fY:Ljava/lang/String; = "access"

.field private static final fZ:Ljava/lang/String; = "src"

.field private static final fz:Ljava/lang/String; = "signature"

.field private static final ga:Ljava/lang/String; = "origin"

.field private static final gb:Ljava/lang/String; = "subdomains"

.field private static final gc:Ljava/lang/String; = "name"

.field private static final gd:Ljava/lang/String; = "value"


# instance fields
.field private ge:Landroid/content/res/XmlResourceParser;


# direct methods
.method private constructor <init>(Landroid/content/res/XmlResourceParser;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/miui/internal/hybrid/XmlConfigParser;->ge:Landroid/content/res/XmlResourceParser;

    .line 55
    return-void
.end method

.method private a(Lcom/miui/internal/hybrid/Config;Ljava/util/Map;)Lcom/miui/internal/hybrid/Config;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/internal/hybrid/Config;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/miui/internal/hybrid/Config;"
        }
    .end annotation

    .line 204
    return-object p1
.end method

.method private a(Lcom/miui/internal/hybrid/Config;Landroid/content/res/XmlResourceParser;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    nop

    .line 121
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    .line 122
    :cond_0
    :goto_0
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_7

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 123
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_7

    .line 124
    :cond_1
    if-eq v1, v2, :cond_0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 125
    goto :goto_0

    .line 128
    :cond_2
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 129
    const-string v2, "content"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 130
    invoke-direct {p0, p1, p2}, Lcom/miui/internal/hybrid/XmlConfigParser;->b(Lcom/miui/internal/hybrid/Config;Landroid/content/res/XmlResourceParser;)V

    goto :goto_1

    .line 131
    :cond_3
    const-string v2, "feature"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 132
    invoke-direct {p0, p1, p2}, Lcom/miui/internal/hybrid/XmlConfigParser;->c(Lcom/miui/internal/hybrid/Config;Landroid/content/res/XmlResourceParser;)V

    goto :goto_1

    .line 133
    :cond_4
    const-string v2, "preference"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 134
    invoke-direct {p0, p1, p2}, Lcom/miui/internal/hybrid/XmlConfigParser;->d(Lcom/miui/internal/hybrid/Config;Landroid/content/res/XmlResourceParser;)V

    goto :goto_1

    .line 135
    :cond_5
    const-string v2, "access"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 136
    invoke-direct {p0, p1, p2}, Lcom/miui/internal/hybrid/XmlConfigParser;->e(Lcom/miui/internal/hybrid/Config;Landroid/content/res/XmlResourceParser;)V

    .line 138
    :cond_6
    :goto_1
    goto :goto_0

    .line 139
    :cond_7
    return-void
.end method

.method private a(Lcom/miui/internal/hybrid/Feature;Landroid/content/res/XmlResourceParser;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 167
    const-string v0, "name"

    const/4 v1, 0x0

    invoke-interface {p2, v1, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 168
    const-string v2, "value"

    invoke-interface {p2, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 169
    invoke-virtual {p1, v0, p2}, Lcom/miui/internal/hybrid/Feature;->setParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method private b(Lcom/miui/internal/hybrid/Config;Landroid/content/res/XmlResourceParser;)V
    .locals 2

    .line 142
    const-string v0, "src"

    const/4 v1, 0x0

    invoke-interface {p2, v1, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/internal/hybrid/Config;->setContent(Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method private c(Lcom/miui/internal/hybrid/Config;Landroid/content/res/XmlResourceParser;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    new-instance v0, Lcom/miui/internal/hybrid/Feature;

    invoke-direct {v0}, Lcom/miui/internal/hybrid/Feature;-><init>()V

    .line 148
    const-string v1, "name"

    const/4 v2, 0x0

    invoke-interface {p2, v2, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/internal/hybrid/Feature;->setName(Ljava/lang/String;)V

    .line 149
    nop

    .line 150
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    .line 151
    :cond_0
    :goto_0
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 152
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_4

    .line 153
    :cond_1
    if-eq v2, v3, :cond_0

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 154
    goto :goto_0

    .line 157
    :cond_2
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 158
    const-string v3, "param"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 159
    invoke-direct {p0, v0, p2}, Lcom/miui/internal/hybrid/XmlConfigParser;->a(Lcom/miui/internal/hybrid/Feature;Landroid/content/res/XmlResourceParser;)V

    .line 161
    :cond_3
    goto :goto_0

    .line 162
    :cond_4
    invoke-virtual {p1, v0}, Lcom/miui/internal/hybrid/Config;->addFeature(Lcom/miui/internal/hybrid/Feature;)V

    .line 163
    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/miui/internal/hybrid/XmlConfigParser;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/internal/hybrid/HybridException;
        }
    .end annotation

    .line 58
    nop

    .line 60
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 62
    if-eqz v0, :cond_0

    .line 63
    const-string v1, "com.miui.sdk.hybrid.config"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 65
    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 66
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "miui_hybrid_config"

    const-string v2, "xml"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :cond_1
    nop

    .line 71
    invoke-static {p0, v0}, Lcom/miui/internal/hybrid/XmlConfigParser;->createFromResId(Landroid/content/Context;I)Lcom/miui/internal/hybrid/XmlConfigParser;

    move-result-object p0

    return-object p0

    .line 68
    :catch_0
    move-exception p0

    .line 69
    new-instance v0, Lcom/miui/internal/hybrid/HybridException;

    const/16 v1, 0xc9

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/miui/internal/hybrid/HybridException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public static createFromResId(Landroid/content/Context;I)Lcom/miui/internal/hybrid/XmlConfigParser;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/internal/hybrid/HybridException;
        }
    .end annotation

    .line 75
    nop

    .line 77
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    nop

    .line 81
    invoke-static {p0}, Lcom/miui/internal/hybrid/XmlConfigParser;->createFromXmlParser(Landroid/content/res/XmlResourceParser;)Lcom/miui/internal/hybrid/XmlConfigParser;

    move-result-object p0

    return-object p0

    .line 78
    :catch_0
    move-exception p0

    .line 79
    new-instance p1, Lcom/miui/internal/hybrid/HybridException;

    const/16 v0, 0xc9

    invoke-virtual {p0}, Landroid/content/res/Resources$NotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Lcom/miui/internal/hybrid/HybridException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public static createFromXmlParser(Landroid/content/res/XmlResourceParser;)Lcom/miui/internal/hybrid/XmlConfigParser;
    .locals 1

    .line 85
    new-instance v0, Lcom/miui/internal/hybrid/XmlConfigParser;

    invoke-direct {v0, p0}, Lcom/miui/internal/hybrid/XmlConfigParser;-><init>(Landroid/content/res/XmlResourceParser;)V

    return-object v0
.end method

.method private d(Lcom/miui/internal/hybrid/Config;Landroid/content/res/XmlResourceParser;)V
    .locals 3

    .line 173
    const-string v0, "name"

    const/4 v1, 0x0

    invoke-interface {p2, v1, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 174
    const-string v2, "value"

    invoke-interface {p2, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 175
    const-string v1, "signature"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    invoke-direct {p0, p1}, Lcom/miui/internal/hybrid/XmlConfigParser;->e(Lcom/miui/internal/hybrid/Config;)Lcom/miui/internal/hybrid/Security;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/miui/internal/hybrid/Security;->setSignature(Ljava/lang/String;)V

    goto :goto_0

    .line 177
    :cond_0
    const-string v1, "timestamp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 178
    invoke-direct {p0, p1}, Lcom/miui/internal/hybrid/XmlConfigParser;->e(Lcom/miui/internal/hybrid/Config;)Lcom/miui/internal/hybrid/Security;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/miui/internal/hybrid/Security;->setTimestamp(J)V

    goto :goto_0

    .line 179
    :cond_1
    const-string v1, "vendor"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 180
    invoke-virtual {p1, p2}, Lcom/miui/internal/hybrid/Config;->setVendor(Ljava/lang/String;)V

    goto :goto_0

    .line 182
    :cond_2
    invoke-virtual {p1, v0, p2}, Lcom/miui/internal/hybrid/Config;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :goto_0
    return-void
.end method

.method private e(Lcom/miui/internal/hybrid/Config;)Lcom/miui/internal/hybrid/Security;
    .locals 1

    .line 187
    invoke-virtual {p1}, Lcom/miui/internal/hybrid/Config;->getSecurity()Lcom/miui/internal/hybrid/Security;

    move-result-object v0

    .line 188
    if-nez v0, :cond_0

    .line 189
    new-instance v0, Lcom/miui/internal/hybrid/Security;

    invoke-direct {v0}, Lcom/miui/internal/hybrid/Security;-><init>()V

    .line 190
    invoke-virtual {p1, v0}, Lcom/miui/internal/hybrid/Config;->setSecurity(Lcom/miui/internal/hybrid/Security;)V

    .line 192
    :cond_0
    return-object v0
.end method

.method private e(Lcom/miui/internal/hybrid/Config;Landroid/content/res/XmlResourceParser;)V
    .locals 4

    .line 196
    new-instance v0, Lcom/miui/internal/hybrid/Permission;

    invoke-direct {v0}, Lcom/miui/internal/hybrid/Permission;-><init>()V

    .line 197
    const-string v1, "origin"

    const/4 v2, 0x0

    invoke-interface {p2, v2, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/internal/hybrid/Permission;->setUri(Ljava/lang/String;)V

    .line 198
    const-string v1, "subdomains"

    const/4 v3, 0x0

    invoke-interface {p2, v2, v1, v3}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p2

    invoke-virtual {v0, p2}, Lcom/miui/internal/hybrid/Permission;->setApplySubdomains(Z)V

    .line 199
    invoke-virtual {v0, v3}, Lcom/miui/internal/hybrid/Permission;->setForbidden(Z)V

    .line 200
    invoke-virtual {p1, v0}, Lcom/miui/internal/hybrid/Config;->addPermission(Lcom/miui/internal/hybrid/Permission;)V

    .line 201
    return-void
.end method


# virtual methods
.method public parse(Ljava/util/Map;)Lcom/miui/internal/hybrid/Config;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/miui/internal/hybrid/Config;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/internal/hybrid/HybridException;
        }
    .end annotation

    .line 90
    if-nez p1, :cond_0

    .line 91
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 93
    :cond_0
    new-instance v0, Lcom/miui/internal/hybrid/Config;

    invoke-direct {v0}, Lcom/miui/internal/hybrid/Config;-><init>()V

    .line 94
    iget-object v1, p0, Lcom/miui/internal/hybrid/XmlConfigParser;->ge:Landroid/content/res/XmlResourceParser;

    if-eqz v1, :cond_3

    .line 96
    const/16 v1, 0xc9

    :try_start_0
    iget-object v2, p0, Lcom/miui/internal/hybrid/XmlConfigParser;->ge:Landroid/content/res/XmlResourceParser;

    .line 98
    nop

    .line 99
    :goto_0
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    .line 100
    goto :goto_0

    .line 103
    :cond_1
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 104
    const-string v4, "widget"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 105
    invoke-direct {p0, v0, v2}, Lcom/miui/internal/hybrid/XmlConfigParser;->a(Lcom/miui/internal/hybrid/Config;Landroid/content/res/XmlResourceParser;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    :cond_2
    iget-object v1, p0, Lcom/miui/internal/hybrid/XmlConfigParser;->ge:Landroid/content/res/XmlResourceParser;

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 113
    goto :goto_2

    .line 112
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 109
    :catch_0
    move-exception p1

    .line 110
    :try_start_1
    new-instance v0, Lcom/miui/internal/hybrid/HybridException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/miui/internal/hybrid/HybridException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 107
    :catch_1
    move-exception p1

    .line 108
    new-instance v0, Lcom/miui/internal/hybrid/HybridException;

    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/miui/internal/hybrid/HybridException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    :goto_1
    iget-object v0, p0, Lcom/miui/internal/hybrid/XmlConfigParser;->ge:Landroid/content/res/XmlResourceParser;

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    throw p1

    .line 115
    :cond_3
    :goto_2
    invoke-direct {p0, v0, p1}, Lcom/miui/internal/hybrid/XmlConfigParser;->a(Lcom/miui/internal/hybrid/Config;Ljava/util/Map;)Lcom/miui/internal/hybrid/Config;

    move-result-object p1

    return-object p1
.end method
