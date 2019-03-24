.class Lcom/miui/internal/telephony/Api22SubscriptionManagerImpl;
.super Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl;
.source "SubscriptionManagerAndroidImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/telephony/Api22SubscriptionManagerImpl$Api22SubscriptionInfoImpl;
    }
.end annotation


# instance fields
.field protected mSubscriptionManager:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 363
    invoke-direct {p0}, Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl;-><init>()V

    .line 365
    :try_start_0
    sget-object v0, Lcom/miui/internal/telephony/Api22SubscriptionManagerImpl;->sSubscriptionManagerCls:Ljava/lang/Class;

    const-string v1, "from"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 366
    invoke-static {}, Lmiui/util/AppConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/telephony/Api22SubscriptionManagerImpl;->mSubscriptionManager:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    goto :goto_0

    .line 367
    :catch_0
    move-exception v0

    .line 368
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/miui/internal/telephony/Api22SubscriptionManagerImpl;->logException(Ljava/lang/Exception;)V

    .line 370
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private getAllAndroidSubscriptionInfoList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 383
    :try_start_0
    sget-object v0, Lcom/miui/internal/telephony/Api22SubscriptionManagerImpl;->sSubscriptionManagerCls:Ljava/lang/Class;

    const-string v1, "getAllSubscriptionInfoList"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 384
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/telephony/Api22SubscriptionManagerImpl;->mSubscriptionManager:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    .line 385
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    return-object v0

    .line 386
    :catch_0
    move-exception v0

    .line 387
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/miui/internal/telephony/Api22SubscriptionManagerImpl;->logException(Ljava/lang/Exception;)V

    .line 390
    .end local v0    # "e":Ljava/lang/Exception;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected getAllSubscriptionInfoListInternal()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmiui/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .line 374
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 375
    .local v0, "subInfoList":Ljava/util/List;, "Ljava/util/List<Lmiui/telephony/SubscriptionInfo;>;"
    invoke-direct {p0}, Lcom/miui/internal/telephony/Api22SubscriptionManagerImpl;->getAllAndroidSubscriptionInfoList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 376
    .local v2, "subscriptionInfo":Ljava/lang/Object;
    new-instance v3, Lcom/miui/internal/telephony/Api22SubscriptionManagerImpl$Api22SubscriptionInfoImpl;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Lcom/miui/internal/telephony/Api22SubscriptionManagerImpl$Api22SubscriptionInfoImpl;-><init>(Ljava/lang/Object;Lcom/miui/internal/telephony/Api22SubscriptionManagerImpl$1;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 377
    .end local v2    # "subscriptionInfo":Ljava/lang/Object;
    goto :goto_0

    .line 378
    :cond_0
    return-object v0
.end method

.method protected getDefaultSubId()I
    .locals 4

    .line 396
    :try_start_0
    sget-object v0, Lcom/miui/internal/telephony/Api22SubscriptionManagerImpl;->sSubscriptionManagerCls:Ljava/lang/Class;

    const-string v1, "getDefaultSubId"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 397
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 398
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 396
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 399
    :catch_0
    move-exception v0

    .line 400
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/miui/internal/telephony/Api22SubscriptionManagerImpl;->logException(Ljava/lang/Exception;)V

    .line 402
    .end local v0    # "e":Ljava/lang/Exception;
    invoke-super {p0}, Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl;->getDefaultSubId()I

    move-result v0

    return v0
.end method

.method protected getSlotId(I)I
    .locals 6
    .param p1, "subId"    # I

    .line 408
    :try_start_0
    sget-object v0, Lcom/miui/internal/telephony/Api22SubscriptionManagerImpl;->sSubscriptionManagerCls:Ljava/lang/Class;

    const-string v1, "getSlotId"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 409
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 410
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 408
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 411
    :catch_0
    move-exception v0

    .line 412
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/miui/internal/telephony/Api22SubscriptionManagerImpl;->logException(Ljava/lang/Exception;)V

    .line 414
    .end local v0    # "e":Ljava/lang/Exception;
    invoke-super {p0, p1}, Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl;->getSlotId(I)I

    move-result v0

    return v0
.end method
