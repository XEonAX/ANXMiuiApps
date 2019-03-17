.class Lcom/uploader/implement/c$1;
.super Lcom/uploader/export/UploaderEnvironment;
.source "UploaderConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uploader/implement/c;-><init>(Landroid/content/Context;Lcom/uploader/export/IUploaderDependency;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/uploader/implement/c;


# direct methods
.method constructor <init>(Lcom/uploader/implement/c;I)V
    .locals 0
    .param p2, "x0"    # I

    .prologue
    .line 48
    iput-object p1, p0, Lcom/uploader/implement/c$1;->a:Lcom/uploader/implement/c;

    invoke-direct {p0, p2}, Lcom/uploader/export/UploaderEnvironment;-><init>(I)V

    return-void
.end method


# virtual methods
.method public decrypt(Landroid/content/Context;Ljava/lang/String;[B)[B
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "text"    # [B

    .prologue
    .line 99
    iget-object v0, p0, Lcom/uploader/implement/c$1;->a:Lcom/uploader/implement/c;

    iget-object v0, v0, Lcom/uploader/implement/c;->d:Lcom/uploader/export/IUploaderEnvironment;

    invoke-interface {v0, p1, p2, p3}, Lcom/uploader/export/IUploaderEnvironment;->decrypt(Landroid/content/Context;Ljava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method

.method public enableFlowControl()Z
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/uploader/implement/c$1;->a:Lcom/uploader/implement/c;

    iget-object v0, v0, Lcom/uploader/implement/c;->d:Lcom/uploader/export/IUploaderEnvironment;

    invoke-interface {v0}, Lcom/uploader/export/IUploaderEnvironment;->enableFlowControl()Z

    move-result v0

    return v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/uploader/implement/c$1;->a:Lcom/uploader/implement/c;

    iget-object v0, v0, Lcom/uploader/implement/c;->d:Lcom/uploader/export/IUploaderEnvironment;

    invoke-interface {v0}, Lcom/uploader/export/IUploaderEnvironment;->getAppVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getCurrentElement()Lcom/uploader/export/EnvironmentElement;
    .locals 6

    .prologue
    .line 52
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/uploader/export/UploaderEnvironment;->getCurrentElement()Lcom/uploader/export/EnvironmentElement;

    move-result-object v0

    .line 53
    .local v0, "element":Lcom/uploader/export/EnvironmentElement;
    iget v1, v0, Lcom/uploader/export/EnvironmentElement;->environment:I

    iget-object v2, p0, Lcom/uploader/implement/c$1;->a:Lcom/uploader/implement/c;

    iget-object v2, v2, Lcom/uploader/implement/c;->d:Lcom/uploader/export/IUploaderEnvironment;

    invoke-interface {v2}, Lcom/uploader/export/IUploaderEnvironment;->getEnvironment()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lcom/uploader/export/EnvironmentElement;->appKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/uploader/implement/c$1;->a:Lcom/uploader/implement/c;

    iget-object v2, v2, Lcom/uploader/implement/c;->d:Lcom/uploader/export/IUploaderEnvironment;

    invoke-interface {v2}, Lcom/uploader/export/IUploaderEnvironment;->getAppKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    .end local v0    # "element":Lcom/uploader/export/EnvironmentElement;
    :goto_0
    monitor-exit p0

    return-object v0

    .restart local v0    # "element":Lcom/uploader/export/EnvironmentElement;
    :cond_0
    :try_start_1
    new-instance v1, Lcom/uploader/export/EnvironmentElement;

    iget-object v2, p0, Lcom/uploader/implement/c$1;->a:Lcom/uploader/implement/c;

    iget-object v2, v2, Lcom/uploader/implement/c;->d:Lcom/uploader/export/IUploaderEnvironment;

    invoke-interface {v2}, Lcom/uploader/export/IUploaderEnvironment;->getEnvironment()I

    move-result v3

    iget-object v2, p0, Lcom/uploader/implement/c$1;->a:Lcom/uploader/implement/c;

    iget-object v2, v2, Lcom/uploader/implement/c;->d:Lcom/uploader/export/IUploaderEnvironment;

    invoke-interface {v2}, Lcom/uploader/export/IUploaderEnvironment;->getAppKey()Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lcom/uploader/implement/c$1;->a:Lcom/uploader/implement/c;

    iget-object v2, v2, Lcom/uploader/implement/c;->d:Lcom/uploader/export/IUploaderEnvironment;

    invoke-interface {v2}, Lcom/uploader/export/IUploaderEnvironment;->getDomain()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/uploader/export/EnvironmentElement;->host:Ljava/lang/String;

    :goto_1
    iget-object v5, v0, Lcom/uploader/export/EnvironmentElement;->ipAddress:Ljava/lang/String;

    invoke-direct {v1, v3, v4, v2, v5}, Lcom/uploader/export/EnvironmentElement;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/uploader/implement/c$1;->a:Lcom/uploader/implement/c;

    iget-object v2, v2, Lcom/uploader/implement/c;->d:Lcom/uploader/export/IUploaderEnvironment;

    invoke-interface {v2}, Lcom/uploader/export/IUploaderEnvironment;->getDomain()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    goto :goto_1

    .line 52
    .end local v0    # "element":Lcom/uploader/export/EnvironmentElement;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getEnvironment()I
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/uploader/implement/c$1;->a:Lcom/uploader/implement/c;

    iget-object v0, v0, Lcom/uploader/implement/c;->d:Lcom/uploader/export/IUploaderEnvironment;

    invoke-interface {v0}, Lcom/uploader/export/IUploaderEnvironment;->getEnvironment()I

    move-result v0

    return v0
.end method

.method public getSslTicket(Landroid/content/Context;Ljava/lang/String;)[B
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "host"    # Ljava/lang/String;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/uploader/implement/c$1;->a:Lcom/uploader/implement/c;

    iget-object v0, v0, Lcom/uploader/implement/c;->d:Lcom/uploader/export/IUploaderEnvironment;

    invoke-interface {v0, p1, p2}, Lcom/uploader/export/IUploaderEnvironment;->getSslTicket(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/uploader/implement/c$1;->a:Lcom/uploader/implement/c;

    iget-object v0, v0, Lcom/uploader/implement/c;->d:Lcom/uploader/export/IUploaderEnvironment;

    invoke-interface {v0}, Lcom/uploader/export/IUploaderEnvironment;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUtdid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/uploader/implement/c$1;->a:Lcom/uploader/implement/c;

    iget-object v0, v0, Lcom/uploader/implement/c;->d:Lcom/uploader/export/IUploaderEnvironment;

    invoke-interface {v0}, Lcom/uploader/export/IUploaderEnvironment;->getUtdid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public putSslTicket(Landroid/content/Context;Ljava/lang/String;[B)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "value"    # [B

    .prologue
    .line 89
    iget-object v0, p0, Lcom/uploader/implement/c$1;->a:Lcom/uploader/implement/c;

    iget-object v0, v0, Lcom/uploader/implement/c;->d:Lcom/uploader/export/IUploaderEnvironment;

    invoke-interface {v0, p1, p2, p3}, Lcom/uploader/export/IUploaderEnvironment;->putSslTicket(Landroid/content/Context;Ljava/lang/String;[B)I

    move-result v0

    return v0
.end method

.method public signature(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/uploader/implement/c$1;->a:Lcom/uploader/implement/c;

    iget-object v0, v0, Lcom/uploader/implement/c;->d:Lcom/uploader/export/IUploaderEnvironment;

    invoke-interface {v0, p1}, Lcom/uploader/export/IUploaderEnvironment;->signature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
