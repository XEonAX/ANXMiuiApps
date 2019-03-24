.class Lcom/miui/internal/telephony/Api26SubscriptionManagerImpl;
.super Lcom/miui/internal/telephony/Api24SubscriptionManagerImpl;
.source "SubscriptionManagerAndroidImpl.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 552
    invoke-direct {p0}, Lcom/miui/internal/telephony/Api24SubscriptionManagerImpl;-><init>()V

    return-void
.end method


# virtual methods
.method protected getSlotId(I)I
    .locals 6
    .param p1, "subId"    # I

    .line 556
    :try_start_0
    sget-object v0, Lcom/miui/internal/telephony/Api26SubscriptionManagerImpl;->sSubscriptionManagerCls:Ljava/lang/Class;

    const-string v1, "getSlotIndex"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 557
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 558
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 556
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 559
    :catch_0
    move-exception v0

    .line 560
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/miui/internal/telephony/Api26SubscriptionManagerImpl;->logException(Ljava/lang/Exception;)V

    .line 562
    .end local v0    # "e":Ljava/lang/Exception;
    invoke-super {p0, p1}, Lcom/miui/internal/telephony/Api24SubscriptionManagerImpl;->getSlotId(I)I

    move-result v0

    return v0
.end method
