.class public Lcom/miui/gallery/sdk/download/executor/DownloadCommand;
.super Ljava/lang/Object;
.source "DownloadCommand.java"

# interfaces
.implements Lcom/miui/gallery/sdk/download/executor/queue/Command;


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mItem:Lcom/miui/gallery/sdk/download/assist/DownloadItem;


# direct methods
.method public constructor <init>(Landroid/accounts/Account;Lcom/miui/gallery/sdk/download/assist/DownloadItem;)V
    .locals 0
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "item"    # Lcom/miui/gallery/sdk/download/assist/DownloadItem;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/miui/gallery/sdk/download/executor/DownloadCommand;->mAccount:Landroid/accounts/Account;

    .line 18
    iput-object p2, p0, Lcom/miui/gallery/sdk/download/executor/DownloadCommand;->mItem:Lcom/miui/gallery/sdk/download/assist/DownloadItem;

    .line 19
    return-void
.end method

.method public constructor <init>(Lcom/miui/gallery/sdk/download/executor/DownloadCommand;)V
    .locals 2
    .param p1, "cmd"    # Lcom/miui/gallery/sdk/download/executor/DownloadCommand;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-virtual {p1}, Lcom/miui/gallery/sdk/download/executor/DownloadCommand;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/sdk/download/executor/DownloadCommand;->mAccount:Landroid/accounts/Account;

    .line 23
    new-instance v0, Lcom/miui/gallery/sdk/download/assist/DownloadItem;

    iget-object v1, p1, Lcom/miui/gallery/sdk/download/executor/DownloadCommand;->mItem:Lcom/miui/gallery/sdk/download/assist/DownloadItem;

    invoke-direct {v0, v1}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;-><init>(Lcom/miui/gallery/sdk/download/assist/DownloadItem;)V

    iput-object v0, p0, Lcom/miui/gallery/sdk/download/executor/DownloadCommand;->mItem:Lcom/miui/gallery/sdk/download/assist/DownloadItem;

    .line 24
    return-void
.end method

.method public static checkValid(Lcom/miui/gallery/sdk/download/executor/DownloadCommand;)Z
    .locals 6
    .param p0, "command"    # Lcom/miui/gallery/sdk/download/executor/DownloadCommand;

    .prologue
    .line 55
    invoke-static {}, Lcom/miui/gallery/cloud/AccountCache;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 56
    .local v0, "account":Landroid/accounts/Account;
    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/sdk/download/executor/DownloadCommand;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 57
    const/4 v2, 0x1

    .line 63
    :goto_0
    return v2

    .line 59
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/sdk/download/executor/DownloadCommand;->getItem()Lcom/miui/gallery/sdk/download/assist/DownloadItem;

    move-result-object v1

    .line 60
    .local v1, "item":Lcom/miui/gallery/sdk/download/assist/DownloadItem;
    if-eqz v1, :cond_1

    .line 61
    new-instance v2, Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;

    sget-object v3, Lcom/miui/gallery/error/core/ErrorCode;->NO_ACCOUNT:Lcom/miui/gallery/error/core/ErrorCode;

    const-string v4, "illegal account"

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;-><init>(Lcom/miui/gallery/error/core/ErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v1, v2}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->callbackError(Lcom/miui/gallery/sdk/download/assist/DownloadItem;Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;)V

    .line 63
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 46
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/miui/gallery/sdk/download/executor/DownloadCommand;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/sdk/download/executor/DownloadCommand;->getKey()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lcom/miui/gallery/sdk/download/executor/DownloadCommand;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/miui/gallery/sdk/download/executor/DownloadCommand;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAccount()Landroid/accounts/Account;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/miui/gallery/sdk/download/executor/DownloadCommand;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method public getItem()Lcom/miui/gallery/sdk/download/assist/DownloadItem;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/miui/gallery/sdk/download/executor/DownloadCommand;->mItem:Lcom/miui/gallery/sdk/download/assist/DownloadItem;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/miui/gallery/sdk/download/executor/DownloadCommand;->mItem:Lcom/miui/gallery/sdk/download/assist/DownloadItem;

    invoke-virtual {v0}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/miui/gallery/sdk/download/executor/DownloadCommand;->mItem:Lcom/miui/gallery/sdk/download/assist/DownloadItem;

    invoke-virtual {v0}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->getPriority()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/miui/gallery/sdk/download/executor/DownloadCommand;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
