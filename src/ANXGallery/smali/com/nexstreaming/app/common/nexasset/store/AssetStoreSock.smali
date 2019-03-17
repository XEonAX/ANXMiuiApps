.class public Lcom/nexstreaming/app/common/nexasset/store/AssetStoreSock;
.super Ljava/lang/Object;
.source "AssetStoreSock.java"


# static fields
.field private static final ASSET_STORE_ADDR:Ljava/lang/String; = "com.nexstreaming.appstore"

.field static final REQUEST_COMMUNICATION_KEY:I = 0x1

.field static final REQUEST_ENCAES_KEY:I = 0x3

.field static final REQUEST_END:S = 0x1es

.field static final REQUEST_SEC:S = 0x14s

.field static final REQUEST_SESSIONID:I = 0x2

.field static final REQUEST_START:S = 0xas

.field private static final TAG:Ljava/lang/String; = "AssetStoreSock"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static End(I)I
    .locals 4

    .prologue
    .line 54
    new-instance v2, Lcom/nexstreaming/app/common/localprotocol/b;

    const-string v0, "com.nexstreaming.appstore"

    invoke-direct {v2, v0}, Lcom/nexstreaming/app/common/localprotocol/b;-><init>(Ljava/lang/String;)V

    .line 55
    const/4 v0, 0x0

    .line 56
    invoke-virtual {v2}, Lcom/nexstreaming/app/common/localprotocol/b;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    const/16 v1, 0x1e

    :try_start_0
    const-string v3, "bye"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v1, p0, v3}, Lcom/nexstreaming/app/common/localprotocol/b;->a(SI[B)V

    .line 59
    const/16 v1, 0x1e

    const/4 v3, 0x0

    invoke-virtual {v2, v1, p0, v3}, Lcom/nexstreaming/app/common/localprotocol/b;->a(SIZ)Lcom/nexstreaming/app/common/localprotocol/c$a;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 63
    :goto_0
    invoke-virtual {v2}, Lcom/nexstreaming/app/common/localprotocol/b;->b()Z

    .line 65
    :cond_0
    if-nez v0, :cond_1

    .line 66
    const/4 v0, -0x1

    .line 68
    :goto_1
    return v0

    .line 60
    :catch_0
    move-exception v1

    .line 61
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 68
    :cond_1
    iget v0, v0, Lcom/nexstreaming/app/common/localprotocol/c$a;->f:I

    goto :goto_1
.end method

.method public static Start([BI)Lcom/nexstreaming/app/common/localprotocol/c$a;
    .locals 4

    .prologue
    .line 24
    new-instance v2, Lcom/nexstreaming/app/common/localprotocol/b;

    const-string v0, "com.nexstreaming.appstore"

    invoke-direct {v2, v0}, Lcom/nexstreaming/app/common/localprotocol/b;-><init>(Ljava/lang/String;)V

    .line 25
    const/4 v0, 0x0

    .line 26
    invoke-virtual {v2}, Lcom/nexstreaming/app/common/localprotocol/b;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 28
    const/16 v1, 0xa

    :try_start_0
    invoke-virtual {v2, v1, p1, p0}, Lcom/nexstreaming/app/common/localprotocol/b;->a(SI[B)V

    .line 29
    const/16 v1, 0xa

    const/4 v3, 0x0

    invoke-virtual {v2, v1, p1, v3}, Lcom/nexstreaming/app/common/localprotocol/b;->a(SIZ)Lcom/nexstreaming/app/common/localprotocol/c$a;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 33
    :goto_0
    invoke-virtual {v2}, Lcom/nexstreaming/app/common/localprotocol/b;->b()Z

    .line 35
    :cond_0
    return-object v0

    .line 30
    :catch_0
    move-exception v1

    .line 31
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static requestSECUseCommKey(ILjava/lang/String;)Lcom/nexstreaming/app/common/localprotocol/c$a;
    .locals 4

    .prologue
    .line 39
    new-instance v2, Lcom/nexstreaming/app/common/localprotocol/b;

    const-string v0, "com.nexstreaming.appstore"

    invoke-direct {v2, v0}, Lcom/nexstreaming/app/common/localprotocol/b;-><init>(Ljava/lang/String;)V

    .line 40
    const/4 v0, 0x0

    .line 41
    invoke-virtual {v2}, Lcom/nexstreaming/app/common/localprotocol/b;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    const/16 v1, 0x14

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v1, p0, v3}, Lcom/nexstreaming/app/common/localprotocol/b;->a(SI[B)V

    .line 44
    const/16 v1, 0x14

    const/4 v3, 0x0

    invoke-virtual {v2, v1, p0, v3}, Lcom/nexstreaming/app/common/localprotocol/b;->a(SIZ)Lcom/nexstreaming/app/common/localprotocol/c$a;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 48
    :goto_0
    invoke-virtual {v2}, Lcom/nexstreaming/app/common/localprotocol/b;->b()Z

    .line 50
    :cond_0
    return-object v0

    .line 45
    :catch_0
    move-exception v1

    .line 46
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
