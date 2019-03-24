.class public Lcom/miui/internal/hybrid/SecurityManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final fG:Ljava/lang/String; = "hybrid_key.pem"

.field private static fH:Ljava/lang/String;


# instance fields
.field private eU:Lcom/miui/internal/hybrid/Config;

.field private fI:J

.field private fJ:Ljava/lang/String;

.field private fK:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lcom/miui/internal/hybrid/Config;Landroid/content/Context;)V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/miui/internal/hybrid/SecurityManager;->eU:Lcom/miui/internal/hybrid/Config;

    .line 31
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/internal/hybrid/Config;->getSecurity()Lcom/miui/internal/hybrid/Security;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {p1}, Lcom/miui/internal/hybrid/Config;->getSecurity()Lcom/miui/internal/hybrid/Security;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/hybrid/Security;->getTimestamp()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/internal/hybrid/SecurityManager;->fI:J

    .line 33
    invoke-virtual {p1}, Lcom/miui/internal/hybrid/Config;->getSecurity()Lcom/miui/internal/hybrid/Security;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/internal/hybrid/Security;->getSignature()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/internal/hybrid/SecurityManager;->fJ:Ljava/lang/String;

    .line 35
    :cond_0
    sget-object p1, Lcom/miui/internal/hybrid/SecurityManager;->fH:Ljava/lang/String;

    if-nez p1, :cond_1

    .line 36
    invoke-direct {p0, p2}, Lcom/miui/internal/hybrid/SecurityManager;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/miui/internal/hybrid/SecurityManager;->fH:Ljava/lang/String;

    .line 38
    :cond_1
    return-void
.end method

.method private a(Ljava/io/BufferedReader;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    nop

    .line 87
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 88
    const-string v2, ""

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "-----"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 89
    goto :goto_0

    .line 91
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 94
    :cond_2
    const/4 p1, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, p1, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 56
    if-eqz p2, :cond_0

    sget-object v0, Lcom/miui/internal/hybrid/SecurityManager;->fH:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/internal/hybrid/SignUtils;->getPublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lcom/miui/internal/hybrid/SignUtils;->verify(Ljava/lang/String;Ljava/security/PublicKey;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private e(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 60
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/miui/internal/hybrid/SecurityManager;->f(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const-string v2, "hybrid_key.pem"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 61
    nop

    .line 63
    nop

    .line 64
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 65
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string v0, "keys/hybrid_key.pem"

    invoke-virtual {p1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 69
    :goto_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 70
    :try_start_1
    invoke-direct {p0, v0}, Lcom/miui/internal/hybrid/SecurityManager;->a(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    nop

    .line 76
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 79
    goto :goto_1

    .line 77
    :catch_0
    move-exception v0

    .line 78
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 70
    :goto_1
    return-object p1

    .line 74
    :catchall_0
    move-exception p1

    move-object v1, v0

    goto :goto_3

    .line 71
    :catch_1
    move-exception p1

    move-object v1, v0

    goto :goto_2

    .line 74
    :catchall_1
    move-exception p1

    goto :goto_3

    .line 71
    :catch_2
    move-exception p1

    .line 72
    :goto_2
    :try_start_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "cannot read hybrid key."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 74
    :goto_3
    if-eqz v1, :cond_1

    .line 76
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 79
    goto :goto_4

    .line 77
    :catch_3
    move-exception v0

    .line 78
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 79
    :cond_1
    :goto_4
    throw p1
.end method

.method private f(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    .line 98
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    const-string v1, "miuisdk"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public isExpired()Z
    .locals 4

    .line 41
    iget-wide v0, p0, Lcom/miui/internal/hybrid/SecurityManager;->fI:J

    const-wide/16 v2, 0x0

    cmp-long v0, v2, v0

    if-gez v0, :cond_0

    iget-wide v0, p0, Lcom/miui/internal/hybrid/SecurityManager;->fI:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isValidSignature()Z
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/miui/internal/hybrid/SecurityManager;->fK:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/miui/internal/hybrid/SecurityManager;->eU:Lcom/miui/internal/hybrid/Config;

    invoke-static {v0}, Lcom/miui/internal/hybrid/ConfigUtils;->getRawConfig(Lcom/miui/internal/hybrid/Config;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/hybrid/SecurityManager;->fJ:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/miui/internal/hybrid/SecurityManager;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/hybrid/SecurityManager;->fK:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/hybrid/SecurityManager;->fK:Ljava/lang/Boolean;

    .line 52
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/miui/internal/hybrid/SecurityManager;->fK:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
