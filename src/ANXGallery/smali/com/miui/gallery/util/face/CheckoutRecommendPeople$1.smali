.class Lcom/miui/gallery/util/face/CheckoutRecommendPeople$1;
.super Ljava/lang/Object;
.source "CheckoutRecommendPeople.java"

# interfaces
.implements Lcom/miui/gallery/threadpool/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/util/face/CheckoutRecommendPeople;->getRecommendPeopleFromNet(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
.field final synthetic this$0:Lcom/miui/gallery/util/face/CheckoutRecommendPeople;

.field final synthetic val$peopleId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/gallery/util/face/CheckoutRecommendPeople;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/util/face/CheckoutRecommendPeople;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/miui/gallery/util/face/CheckoutRecommendPeople$1;->this$0:Lcom/miui/gallery/util/face/CheckoutRecommendPeople;

    iput-object p2, p0, Lcom/miui/gallery/util/face/CheckoutRecommendPeople$1;->val$peopleId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/miui/gallery/util/face/CheckoutRecommendPeople$1;->run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 7
    .param p1, "jc"    # Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    .prologue
    const/4 v6, 0x0

    .line 59
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$CTA;->canConnectNetwork()Z

    move-result v4

    if-nez v4, :cond_0

    .line 60
    const-string/jumbo v4, "syncface"

    const-string v5, "getRecommendPeopleFromNet  cta not allowed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :goto_0
    return-object v6

    .line 63
    :cond_0
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v1

    .line 64
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Lcom/miui/account/AccountHelper;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    .line 65
    .local v0, "account":Landroid/accounts/Account;
    if-nez v0, :cond_1

    .line 66
    const-string/jumbo v4, "syncface"

    const-string v5, "getRecommendPeopleFromNet  account is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 71
    :cond_1
    invoke-static {v1, v0}, Lcom/miui/gallery/cloud/CloudUtils;->getExtToken(Landroid/content/Context;Landroid/accounts/Account;)Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;

    move-result-object v3

    .line 72
    .local v3, "token":Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;
    if-nez v3, :cond_2

    .line 73
    const-string/jumbo v4, "syncface"

    const-string v5, "getRecommendPeopleFromNet  token is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 78
    :cond_2
    :try_start_0
    iget-object v4, p0, Lcom/miui/gallery/util/face/CheckoutRecommendPeople$1;->this$0:Lcom/miui/gallery/util/face/CheckoutRecommendPeople;

    iget-object v5, p0, Lcom/miui/gallery/util/face/CheckoutRecommendPeople$1;->val$peopleId:Ljava/lang/String;

    invoke-static {v4, v1, v0, v3, v5}, Lcom/miui/gallery/util/face/CheckoutRecommendPeople;->access$000(Lcom/miui/gallery/util/face/CheckoutRecommendPeople;Landroid/content/Context;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 80
    :catch_0
    move-exception v2

    .line 81
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
