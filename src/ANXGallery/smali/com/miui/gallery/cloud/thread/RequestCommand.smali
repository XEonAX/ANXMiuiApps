.class public Lcom/miui/gallery/cloud/thread/RequestCommand;
.super Ljava/lang/Object;
.source "RequestCommand.java"

# interfaces
.implements Lcom/miui/gallery/cloud/thread/Command;


# instance fields
.field final mAccount:Landroid/accounts/Account;

.field final mInvokeTime:J

.field final mRequestItem:Lcom/miui/gallery/cloud/RequestCloudItem;


# direct methods
.method public constructor <init>(Landroid/accounts/Account;Lcom/miui/gallery/cloud/RequestCloudItem;)V
    .locals 2
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "item"    # Lcom/miui/gallery/cloud/RequestCloudItem;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/miui/gallery/cloud/thread/RequestCommand;->mAccount:Landroid/accounts/Account;

    .line 17
    iput-object p2, p0, Lcom/miui/gallery/cloud/thread/RequestCommand;->mRequestItem:Lcom/miui/gallery/cloud/RequestCloudItem;

    .line 18
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/cloud/thread/RequestCommand;->mInvokeTime:J

    .line 19
    return-void
.end method

.method public static getKey(Lcom/miui/gallery/cloud/RequestCloudItem;)Ljava/lang/String;
    .locals 2
    .param p0, "item"    # Lcom/miui/gallery/cloud/RequestCloudItem;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    iget v1, p0, Lcom/miui/gallery/cloud/RequestCloudItem;->priority:I

    invoke-static {v0, v1}, Lcom/miui/gallery/cloud/thread/RequestCommand;->getKey(Lcom/miui/gallery/data/DBImage;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getKey(Lcom/miui/gallery/data/DBImage;I)Ljava/lang/String;
    .locals 2
    .param p0, "dbImage"    # Lcom/miui/gallery/data/DBImage;
    .param p1, "priority"    # I

    .prologue
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getTagId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public canMergeWith(Lcom/miui/gallery/cloud/thread/Command;)Z
    .locals 3
    .param p1, "other"    # Lcom/miui/gallery/cloud/thread/Command;

    .prologue
    .line 38
    move-object v0, p1

    check-cast v0, Lcom/miui/gallery/cloud/thread/RequestCommand;

    .line 39
    .local v0, "rc":Lcom/miui/gallery/cloud/thread/RequestCommand;
    iget-object v1, p0, Lcom/miui/gallery/cloud/thread/RequestCommand;->mRequestItem:Lcom/miui/gallery/cloud/RequestCloudItem;

    iget v1, v1, Lcom/miui/gallery/cloud/RequestCloudItem;->priority:I

    iget-object v2, v0, Lcom/miui/gallery/cloud/thread/RequestCommand;->mRequestItem:Lcom/miui/gallery/cloud/RequestCloudItem;

    iget v2, v2, Lcom/miui/gallery/cloud/RequestCloudItem;->priority:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/cloud/thread/RequestCommand;->mAccount:Landroid/accounts/Account;

    iget-object v2, v0, Lcom/miui/gallery/cloud/thread/RequestCommand;->mAccount:Landroid/accounts/Account;

    .line 40
    invoke-virtual {v1, v2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDelay(J)J
    .locals 3
    .param p1, "now"    # J

    .prologue
    .line 33
    iget-object v0, p0, Lcom/miui/gallery/cloud/thread/RequestCommand;->mRequestItem:Lcom/miui/gallery/cloud/RequestCloudItem;

    invoke-virtual {v0, p1, p2}, Lcom/miui/gallery/cloud/RequestCloudItem;->getDelayToExecuteInMillis(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/miui/gallery/cloud/thread/RequestCommand;->mRequestItem:Lcom/miui/gallery/cloud/RequestCloudItem;

    invoke-static {v0}, Lcom/miui/gallery/cloud/thread/RequestCommand;->getKey(Lcom/miui/gallery/cloud/RequestCloudItem;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/miui/gallery/cloud/thread/RequestCommand;->mRequestItem:Lcom/miui/gallery/cloud/RequestCloudItem;

    iget v0, v0, Lcom/miui/gallery/cloud/RequestCloudItem;->priority:I

    return v0
.end method

.method public needProcess()Z
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/miui/gallery/cloud/thread/RequestCommand;->mRequestItem:Lcom/miui/gallery/cloud/RequestCloudItem;

    invoke-virtual {v0}, Lcom/miui/gallery/cloud/RequestCloudItem;->getStatus()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
