.class Lcom/miui/internal/telephony/Api22SubscriptionManagerImpl$Api22SubscriptionInfoImpl;
.super Lmiui/telephony/SubscriptionInfo;
.source "SubscriptionManagerAndroidImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/telephony/Api22SubscriptionManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api22SubscriptionInfoImpl"
.end annotation


# static fields
.field private static sSubscriptionInfoCls:Ljava/lang/Class;


# instance fields
.field mSlotId:I

.field private final mSubInfo:Ljava/lang/Object;

.field private final mSubscriptionId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 421
    :try_start_0
    const-string v0, "android.telephony.SubscriptionInfo"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/telephony/Api22SubscriptionManagerImpl$Api22SubscriptionInfoImpl;->sSubscriptionInfoCls:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 424
    goto :goto_0

    .line 422
    :catch_0
    move-exception v0

    .line 423
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-static {v0}, Lcom/miui/internal/telephony/BaseSubscriptionManagerImpl;->logException(Ljava/lang/Exception;)V

    .line 425
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :goto_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 3
    .param p1, "si"    # Ljava/lang/Object;

    .line 431
    invoke-direct {p0}, Lmiui/telephony/SubscriptionInfo;-><init>()V

    .line 432
    iput-object p1, p0, Lcom/miui/internal/telephony/Api22SubscriptionManagerImpl$Api22SubscriptionInfoImpl;->mSubInfo:Ljava/lang/Object;

    .line 434
    invoke-direct {p0}, Lcom/miui/internal/telephony/Api22SubscriptionManagerImpl$Api22SubscriptionInfoImpl;->getSubscriptionIdInternal()I

    move-result v0

    .line 435
    .local v0, "subscriptionId":I
    invoke-direct {p0}, Lcom/miui/internal/telephony/Api22SubscriptionManagerImpl$Api22SubscriptionInfoImpl;->getSimSlotIndexInternal()I

    move-result v1

    .line 436
    .local v1, "simSlotIndex":I
    invoke-static {v0}, Lmiui/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    sget v2, Lmiui/telephony/SubscriptionManager;->INVALID_SUBSCRIPTION_ID:I

    :goto_0
    iput v2, p0, Lcom/miui/internal/telephony/Api22SubscriptionManagerImpl$Api22SubscriptionInfoImpl;->mSubscriptionId:I

    .line 437
    invoke-static {v1}, Lmiui/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    sget v2, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    :goto_1
    iput v2, p0, Lcom/miui/internal/telephony/Api22SubscriptionManagerImpl$Api22SubscriptionInfoImpl;->mSlotId:I

    .line 438
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Lcom/miui/internal/telephony/Api22SubscriptionManagerImpl$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lcom/miui/internal/telephony/Api22SubscriptionManagerImpl$1;

    .line 417
    invoke-direct {p0, p1}, Lcom/miui/internal/telephony/Api22SubscriptionManagerImpl$Api22SubscriptionInfoImpl;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method private getSimSlotIndexInternal()I
    .locals 4

    .line 452
    :try_start_0
    sget-object v0, Lcom/miui/internal/telephony/Api22SubscriptionManagerImpl$Api22SubscriptionInfoImpl;->sSubscriptionInfoCls:Ljava/lang/Class;

    const-string v1, "getSimSlotIndex"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/telephony/Api22SubscriptionManagerImpl$Api22SubscriptionInfoImpl;->mSubInfo:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    .line 453
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 452
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 454
    :catch_0
    move-exception v0

    .line 455
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/miui/internal/telephony/BaseSubscriptionManagerImpl;->logException(Ljava/lang/Exception;)V

    .line 457
    .end local v0    # "e":Ljava/lang/Exception;
    sget v0, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    return v0
.end method

.method private getSubscriptionIdInternal()I
    .locals 4

    .line 442
    :try_start_0
    sget-object v0, Lcom/miui/internal/telephony/Api22SubscriptionManagerImpl$Api22SubscriptionInfoImpl;->sSubscriptionInfoCls:Ljava/lang/Class;

    const-string v1, "getSubscriptionId"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/telephony/Api22SubscriptionManagerImpl$Api22SubscriptionInfoImpl;->mSubInfo:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    .line 443
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 442
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 444
    :catch_0
    move-exception v0

    .line 445
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/miui/internal/telephony/BaseSubscriptionManagerImpl;->logException(Ljava/lang/Exception;)V

    .line 447
    .end local v0    # "e":Ljava/lang/Exception;
    sget v0, Lmiui/telephony/SubscriptionManager;->INVALID_SUBSCRIPTION_ID:I

    return v0
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/CharSequence;
    .locals 4

    .line 489
    :try_start_0
    sget-object v0, Lcom/miui/internal/telephony/Api22SubscriptionManagerImpl$Api22SubscriptionInfoImpl;->sSubscriptionInfoCls:Ljava/lang/Class;

    const-string v1, "getDisplayName"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/telephony/Api22SubscriptionManagerImpl$Api22SubscriptionInfoImpl;->mSubInfo:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    .line 490
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 489
    return-object v0

    .line 491
    :catch_0
    move-exception v0

    .line 492
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/miui/internal/telephony/BaseSubscriptionManagerImpl;->logException(Ljava/lang/Exception;)V

    .line 494
    .end local v0    # "e":Ljava/lang/Exception;
    const-string v0, ""

    return-object v0
.end method

.method public getDisplayNumber()Ljava/lang/String;
    .locals 4

    .line 500
    :try_start_0
    sget-object v0, Lcom/miui/internal/telephony/Api22SubscriptionManagerImpl$Api22SubscriptionInfoImpl;->sSubscriptionInfoCls:Ljava/lang/Class;

    const-string v1, "getNumber"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/telephony/Api22SubscriptionManagerImpl$Api22SubscriptionInfoImpl;->mSubInfo:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    .line 501
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 500
    return-object v0

    .line 502
    :catch_0
    move-exception v0

    .line 503
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/miui/internal/telephony/BaseSubscriptionManagerImpl;->logException(Ljava/lang/Exception;)V

    .line 505
    .end local v0    # "e":Ljava/lang/Exception;
    const-string v0, ""

    return-object v0
.end method

.method public getIccId()Ljava/lang/String;
    .locals 4

    .line 468
    :try_start_0
    sget-object v0, Lcom/miui/internal/telephony/Api22SubscriptionManagerImpl$Api22SubscriptionInfoImpl;->sSubscriptionInfoCls:Ljava/lang/Class;

    const-string v1, "getIccId"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/telephony/Api22SubscriptionManagerImpl$Api22SubscriptionInfoImpl;->mSubInfo:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    .line 469
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 468
    return-object v0

    .line 470
    :catch_0
    move-exception v0

    .line 471
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/miui/internal/telephony/BaseSubscriptionManagerImpl;->logException(Ljava/lang/Exception;)V

    .line 473
    .end local v0    # "e":Ljava/lang/Exception;
    const-string v0, ""

    return-object v0
.end method

.method public getMcc()I
    .locals 4

    .line 517
    :try_start_0
    sget-object v0, Lcom/miui/internal/telephony/Api22SubscriptionManagerImpl$Api22SubscriptionInfoImpl;->sSubscriptionInfoCls:Ljava/lang/Class;

    const-string v1, "getMcc"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/telephony/Api22SubscriptionManagerImpl$Api22SubscriptionInfoImpl;->mSubInfo:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    .line 518
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 517
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 519
    :catch_0
    move-exception v0

    .line 520
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/miui/internal/telephony/BaseSubscriptionManagerImpl;->logException(Ljava/lang/Exception;)V

    .line 522
    .end local v0    # "e":Ljava/lang/Exception;
    invoke-super {p0}, Lmiui/telephony/SubscriptionInfo;->getMcc()I

    move-result v0

    return v0
.end method

.method public getMnc()I
    .locals 4

    .line 528
    :try_start_0
    sget-object v0, Lcom/miui/internal/telephony/Api22SubscriptionManagerImpl$Api22SubscriptionInfoImpl;->sSubscriptionInfoCls:Ljava/lang/Class;

    const-string v1, "getMnc"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/telephony/Api22SubscriptionManagerImpl$Api22SubscriptionInfoImpl;->mSubInfo:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    .line 529
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 528
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 530
    :catch_0
    move-exception v0

    .line 531
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/miui/internal/telephony/BaseSubscriptionManagerImpl;->logException(Ljava/lang/Exception;)V

    .line 533
    .end local v0    # "e":Ljava/lang/Exception;
    invoke-super {p0}, Lmiui/telephony/SubscriptionInfo;->getMnc()I

    move-result v0

    return v0
.end method

.method public getPhoneId()I
    .locals 1

    .line 483
    iget v0, p0, Lcom/miui/internal/telephony/Api22SubscriptionManagerImpl$Api22SubscriptionInfoImpl;->mSlotId:I

    return v0
.end method

.method public getSlotId()I
    .locals 1

    .line 478
    iget v0, p0, Lcom/miui/internal/telephony/Api22SubscriptionManagerImpl$Api22SubscriptionInfoImpl;->mSlotId:I

    return v0
.end method

.method public getSubscriptionId()I
    .locals 1

    .line 462
    iget v0, p0, Lcom/miui/internal/telephony/Api22SubscriptionManagerImpl$Api22SubscriptionInfoImpl;->mSubscriptionId:I

    return v0
.end method

.method public isActivated()Z
    .locals 1

    .line 511
    const/4 v0, 0x0

    return v0
.end method
