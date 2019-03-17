.class final Lcom/miui/gallery/util/face/FeedbackIgnoredPeople2Server$1;
.super Ljava/lang/Object;
.source "FeedbackIgnoredPeople2Server.java"

# interfaces
.implements Lcom/miui/gallery/threadpool/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/util/face/FeedbackIgnoredPeople2Server;->startFeedbackIgnoredPeople2Server(Ljava/lang/String;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/threadpool/ThreadPool$Job",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$destPeople:Ljava/lang/String;

.field final synthetic val$ignoredPeoples:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/miui/gallery/util/face/FeedbackIgnoredPeople2Server$1;->val$destPeople:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/gallery/util/face/FeedbackIgnoredPeople2Server$1;->val$ignoredPeoples:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lcom/miui/gallery/util/face/FeedbackIgnoredPeople2Server$1;->run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 7
    .param p1, "jc"    # Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    .prologue
    const/4 v6, 0x0

    .line 36
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v1

    .line 37
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Lcom/miui/account/AccountHelper;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    .line 38
    .local v0, "account":Landroid/accounts/Account;
    if-nez v0, :cond_0

    .line 39
    const-string v4, "FeedbackIgnoredPeople2Server"

    const-string v5, "FeedbackIgnoredPeople2Server  account is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :goto_0
    return-object v6

    .line 44
    :cond_0
    invoke-static {v1, v0}, Lcom/miui/gallery/cloud/CloudUtils;->getExtToken(Landroid/content/Context;Landroid/accounts/Account;)Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;

    move-result-object v3

    .line 45
    .local v3, "token":Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;
    if-nez v3, :cond_1

    .line 46
    const-string v4, "FeedbackIgnoredPeople2Server"

    const-string v5, "FeedbackIgnoredPeople2Server  token is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 51
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/miui/gallery/util/face/FeedbackIgnoredPeople2Server$1;->val$destPeople:Ljava/lang/String;

    iget-object v5, p0, Lcom/miui/gallery/util/face/FeedbackIgnoredPeople2Server$1;->val$ignoredPeoples:Ljava/util/ArrayList;

    invoke-static {v1, v0, v3, v4, v5}, Lcom/miui/gallery/util/face/FeedbackIgnoredPeople2Server;->access$000(Landroid/content/Context;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 53
    :catch_0
    move-exception v2

    .line 54
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
