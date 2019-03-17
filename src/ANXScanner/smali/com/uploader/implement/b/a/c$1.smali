.class Lcom/uploader/implement/b/a/c$1;
.super Ljava/lang/Object;
.source "CustomizedSession.java"

# interfaces
.implements Lorg/android/spdy/AccsSSLCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uploader/implement/b/a/c;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/uploader/implement/b/a/c;


# direct methods
.method constructor <init>(Lcom/uploader/implement/b/a/c;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lcom/uploader/implement/b/a/c$1;->a:Lcom/uploader/implement/b/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSSLPublicKey(I[B)[B
    .locals 5
    .param p1, "seqnum"    # I
    .param p2, "ciphertext"    # [B

    .prologue
    .line 245
    :try_start_0
    iget-object v2, p0, Lcom/uploader/implement/b/a/c$1;->a:Lcom/uploader/implement/b/a/c;

    invoke-static {v2}, Lcom/uploader/implement/b/a/c;->b(Lcom/uploader/implement/b/a/c;)Lcom/uploader/implement/c;

    move-result-object v2

    iget-object v2, v2, Lcom/uploader/implement/c;->b:Lcom/uploader/export/UploaderEnvironment;

    iget-object v3, p0, Lcom/uploader/implement/b/a/c$1;->a:Lcom/uploader/implement/b/a/c;

    invoke-static {v3}, Lcom/uploader/implement/b/a/c;->a(Lcom/uploader/implement/b/a/c;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "tnet_pksg_key"

    invoke-virtual {v2, v3, v4, p2}, Lcom/uploader/export/UploaderEnvironment;->decrypt(Landroid/content/Context;Ljava/lang/String;[B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 252
    :goto_0
    return-object v2

    .line 246
    :catch_0
    move-exception v0

    .line 247
    .local v0, "e":Ljava/lang/Exception;
    const/16 v1, 0x10

    .line 248
    .local v1, "p":I
    invoke-static {v1}, Lcom/uploader/implement/a;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 249
    const-string v2, "CustomizedSession"

    const-string v3, "call config.decrypt error."

    invoke-static {v1, v2, v3, v0}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 252
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
