.class Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;
.super Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;
.source "TelephonyManagerAndroidImpl.java"


# instance fields
.field private mMiuiDeviceId:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 474
    invoke-direct {p0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getCallStateForSubscription(I)I
    .locals 6
    .param p1, "subId"    # I

    .line 733
    :try_start_0
    const-class v0, Landroid/telephony/TelephonyManager;

    const-string v1, "getCallState"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 734
    invoke-virtual {p0}, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->getClassForSubId()Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-array v2, v2, [Ljava/lang/Object;

    .line 735
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 733
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 736
    :catch_0
    move-exception v0

    .line 737
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->logException(Ljava/lang/Exception;)V

    .line 739
    .end local v0    # "e":Ljava/lang/Exception;
    invoke-super {p0, p1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getCallStateForSubscription(I)I

    move-result v0

    return v0
.end method

.method protected getClassForSubId()Ljava/lang/Class;
    .locals 1

    .line 479
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    return-object v0
.end method

.method public getDeviceIdForSlot(I)Ljava/lang/String;
    .locals 6
    .param p1, "slotId"    # I

    .line 497
    :try_start_0
    const-class v0, Landroid/telephony/TelephonyManager;

    const-string v1, "getDeviceId"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 498
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-array v2, v2, [Ljava/lang/Object;

    .line 499
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 497
    return-object v0

    .line 500
    :catch_0
    move-exception v0

    .line 501
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->logException(Ljava/lang/Exception;)V

    .line 503
    .end local v0    # "e":Ljava/lang/Exception;
    invoke-super {p0, p1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getDeviceIdForSlot(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 4

    .line 529
    :try_start_0
    const-class v0, Landroid/telephony/TelephonyManager;

    const-string v1, "getImei"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 530
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-array v2, v2, [Ljava/lang/Object;

    .line 531
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 529
    return-object v0

    .line 532
    :catch_0
    move-exception v0

    .line 533
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->logException(Ljava/lang/Exception;)V

    .line 535
    .end local v0    # "e":Ljava/lang/Exception;
    invoke-super {p0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getImei()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImeiForSlot(I)Ljava/lang/String;
    .locals 6
    .param p1, "slotId"    # I

    .line 541
    :try_start_0
    const-class v0, Landroid/telephony/TelephonyManager;

    const-string v1, "getImei"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 542
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-array v2, v2, [Ljava/lang/Object;

    .line 543
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 541
    return-object v0

    .line 544
    :catch_0
    move-exception v0

    .line 545
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->logException(Ljava/lang/Exception;)V

    .line 547
    .end local v0    # "e":Ljava/lang/Exception;
    invoke-super {p0, p1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getImeiForSlot(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1NumberForSubscription(I)Ljava/lang/String;
    .locals 6
    .param p1, "subId"    # I

    .line 565
    :try_start_0
    const-class v0, Landroid/telephony/TelephonyManager;

    const-string v1, "getLine1NumberForSubscriber"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 566
    invoke-virtual {p0}, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->getClassForSubId()Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-array v2, v2, [Ljava/lang/Object;

    .line 567
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 565
    return-object v0

    .line 568
    :catch_0
    move-exception v0

    .line 569
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->logException(Ljava/lang/Exception;)V

    .line 571
    .end local v0    # "e":Ljava/lang/Exception;
    invoke-super {p0, p1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getLine1NumberForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMiuiDeviceId()Ljava/lang/String;
    .locals 5

    .line 508
    iget-object v0, p0, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->mMiuiDeviceId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 509
    invoke-virtual {p0}, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 510
    invoke-virtual {p0}, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->mMiuiDeviceId:Ljava/lang/String;

    goto :goto_1

    .line 512
    :cond_0
    invoke-virtual {p0}, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->getPhoneCount()I

    move-result v0

    .line 513
    .local v0, "phoneCount":I
    const-string v1, ""

    .line 514
    .local v1, "deviceIdMax":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 515
    invoke-virtual {p0, v2}, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->getDeviceIdForSlot(I)Ljava/lang/String;

    move-result-object v3

    .line 516
    .local v3, "deviceId":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_1

    .line 517
    move-object v1, v3

    .line 514
    .end local v3    # "deviceId":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 520
    .end local v2    # "i":I
    :cond_2
    iput-object v1, p0, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->mMiuiDeviceId:Ljava/lang/String;

    .line 523
    .end local v0    # "phoneCount":I
    .end local v1    # "deviceIdMax":Ljava/lang/String;
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->mMiuiDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkCountryIsoForSubscription(I)Ljava/lang/String;
    .locals 6
    .param p1, "subId"    # I

    .line 673
    :try_start_0
    const-class v0, Landroid/telephony/TelephonyManager;

    const-string v1, "getNetworkCountryIso"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 674
    invoke-virtual {p0}, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->getClassForSubId()Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-array v2, v2, [Ljava/lang/Object;

    .line 675
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 673
    return-object v0

    .line 676
    :catch_0
    move-exception v0

    .line 677
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->logException(Ljava/lang/Exception;)V

    .line 679
    .end local v0    # "e":Ljava/lang/Exception;
    invoke-super {p0, p1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getNetworkCountryIsoForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperatorForSubscription(I)Ljava/lang/String;
    .locals 6
    .param p1, "subId"    # I

    .line 577
    :try_start_0
    const-class v0, Landroid/telephony/TelephonyManager;

    const-string v1, "getNetworkOperator"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 578
    invoke-virtual {p0}, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->getClassForSubId()Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-array v2, v2, [Ljava/lang/Object;

    .line 579
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 577
    return-object v0

    .line 580
    :catch_0
    move-exception v0

    .line 581
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->logException(Ljava/lang/Exception;)V

    .line 583
    .end local v0    # "e":Ljava/lang/Exception;
    invoke-super {p0, p1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getNetworkOperatorForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperatorNameForSubscription(I)Ljava/lang/String;
    .locals 6
    .param p1, "subId"    # I

    .line 661
    :try_start_0
    const-class v0, Landroid/telephony/TelephonyManager;

    const-string v1, "getNetworkOperatorName"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 662
    invoke-virtual {p0}, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->getClassForSubId()Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-array v2, v2, [Ljava/lang/Object;

    .line 663
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 661
    return-object v0

    .line 664
    :catch_0
    move-exception v0

    .line 665
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->logException(Ljava/lang/Exception;)V

    .line 667
    .end local v0    # "e":Ljava/lang/Exception;
    invoke-super {p0, p1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getNetworkOperatorNameForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkTypeForSubscription(I)I
    .locals 6
    .param p1, "subId"    # I

    .line 685
    :try_start_0
    const-class v0, Landroid/telephony/TelephonyManager;

    const-string v1, "getNetworkType"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 686
    invoke-virtual {p0}, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->getClassForSubId()Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-array v2, v2, [Ljava/lang/Object;

    .line 687
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 685
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 688
    :catch_0
    move-exception v0

    .line 689
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->logException(Ljava/lang/Exception;)V

    .line 691
    .end local v0    # "e":Ljava/lang/Exception;
    invoke-super {p0, p1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getNetworkTypeForSubscription(I)I

    move-result v0

    return v0
.end method

.method public getPhoneCount()I
    .locals 4

    .line 485
    :try_start_0
    const-class v0, Landroid/telephony/TelephonyManager;

    const-string v1, "getPhoneCount"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 486
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-array v2, v2, [Ljava/lang/Object;

    .line 487
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 485
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 488
    :catch_0
    move-exception v0

    .line 489
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->logException(Ljava/lang/Exception;)V

    .line 491
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x1

    return v0
.end method

.method public getPhoneTypeForSubscription(I)I
    .locals 6
    .param p1, "subId"    # I

    .line 553
    :try_start_0
    const-class v0, Landroid/telephony/TelephonyManager;

    const-string v1, "getCurrentPhoneType"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 554
    invoke-virtual {p0}, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->getClassForSubId()Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-array v2, v2, [Ljava/lang/Object;

    .line 555
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 553
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 556
    :catch_0
    move-exception v0

    .line 557
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->logException(Ljava/lang/Exception;)V

    .line 559
    .end local v0    # "e":Ljava/lang/Exception;
    invoke-super {p0, p1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getPhoneTypeForSubscription(I)I

    move-result v0

    return v0
.end method

.method public getSimCountryIsoForSubscription(I)Ljava/lang/String;
    .locals 6
    .param p1, "subId"    # I

    .line 697
    :try_start_0
    const-class v0, Landroid/telephony/TelephonyManager;

    const-string v1, "getSimCountryIso"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 698
    invoke-virtual {p0}, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->getClassForSubId()Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-array v2, v2, [Ljava/lang/Object;

    .line 699
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 697
    return-object v0

    .line 700
    :catch_0
    move-exception v0

    .line 701
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->logException(Ljava/lang/Exception;)V

    .line 703
    .end local v0    # "e":Ljava/lang/Exception;
    invoke-super {p0, p1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSimCountryIsoForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperatorForSubscription(I)Ljava/lang/String;
    .locals 6
    .param p1, "subId"    # I

    .line 601
    :try_start_0
    const-class v0, Landroid/telephony/TelephonyManager;

    const-string v1, "getSimOperator"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 602
    invoke-virtual {p0}, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->getClassForSubId()Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-array v2, v2, [Ljava/lang/Object;

    .line 603
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 601
    return-object v0

    .line 604
    :catch_0
    move-exception v0

    .line 605
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->logException(Ljava/lang/Exception;)V

    .line 607
    .end local v0    # "e":Ljava/lang/Exception;
    invoke-super {p0, p1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSimOperatorForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperatorNameForSubscription(I)Ljava/lang/String;
    .locals 6
    .param p1, "subId"    # I

    .line 613
    :try_start_0
    const-class v0, Landroid/telephony/TelephonyManager;

    const-string v1, "getSimOperatorName"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 614
    invoke-virtual {p0}, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->getClassForSubId()Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-array v2, v2, [Ljava/lang/Object;

    .line 615
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 613
    return-object v0

    .line 616
    :catch_0
    move-exception v0

    .line 617
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->logException(Ljava/lang/Exception;)V

    .line 619
    .end local v0    # "e":Ljava/lang/Exception;
    invoke-super {p0, p1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSimOperatorNameForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimSerialNumberForSubscription(I)Ljava/lang/String;
    .locals 6
    .param p1, "subId"    # I

    .line 637
    :try_start_0
    const-class v0, Landroid/telephony/TelephonyManager;

    const-string v1, "getSimSerialNumber"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 638
    invoke-virtual {p0}, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->getClassForSubId()Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-array v2, v2, [Ljava/lang/Object;

    .line 639
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 637
    return-object v0

    .line 640
    :catch_0
    move-exception v0

    .line 641
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->logException(Ljava/lang/Exception;)V

    .line 643
    .end local v0    # "e":Ljava/lang/Exception;
    invoke-super {p0, p1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSimSerialNumberForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimStateForSlot(I)I
    .locals 6
    .param p1, "slotId"    # I

    .line 625
    :try_start_0
    const-class v0, Landroid/telephony/TelephonyManager;

    const-string v1, "getSimState"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 626
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-array v2, v2, [Ljava/lang/Object;

    .line 627
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 625
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 628
    :catch_0
    move-exception v0

    .line 629
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->logException(Ljava/lang/Exception;)V

    .line 631
    .end local v0    # "e":Ljava/lang/Exception;
    invoke-super {p0, p1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSimStateForSlot(I)I

    move-result v0

    return v0
.end method

.method public getSubscriberIdForSubscription(I)Ljava/lang/String;
    .locals 6
    .param p1, "subId"    # I

    .line 649
    :try_start_0
    const-class v0, Landroid/telephony/TelephonyManager;

    const-string v1, "getSubscriberId"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 650
    invoke-virtual {p0}, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->getClassForSubId()Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-array v2, v2, [Ljava/lang/Object;

    .line 651
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 649
    return-object v0

    .line 652
    :catch_0
    move-exception v0

    .line 653
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->logException(Ljava/lang/Exception;)V

    .line 655
    .end local v0    # "e":Ljava/lang/Exception;
    invoke-super {p0, p1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSubscriberIdForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailAlphaTagForSubscription(I)Ljava/lang/String;
    .locals 6
    .param p1, "subId"    # I

    .line 721
    :try_start_0
    const-class v0, Landroid/telephony/TelephonyManager;

    const-string v1, "getVoiceMailNumber"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 722
    invoke-virtual {p0}, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->getClassForSubId()Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-array v2, v2, [Ljava/lang/Object;

    .line 723
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 721
    return-object v0

    .line 724
    :catch_0
    move-exception v0

    .line 725
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->logException(Ljava/lang/Exception;)V

    .line 727
    .end local v0    # "e":Ljava/lang/Exception;
    invoke-super {p0, p1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getVoiceMailAlphaTagForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailNumberForSubscription(I)Ljava/lang/String;
    .locals 6
    .param p1, "subId"    # I

    .line 709
    :try_start_0
    const-class v0, Landroid/telephony/TelephonyManager;

    const-string v1, "getVoiceMailNumber"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 710
    invoke-virtual {p0}, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->getClassForSubId()Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-array v2, v2, [Ljava/lang/Object;

    .line 711
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 709
    return-object v0

    .line 712
    :catch_0
    move-exception v0

    .line 713
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->logException(Ljava/lang/Exception;)V

    .line 715
    .end local v0    # "e":Ljava/lang/Exception;
    invoke-super {p0, p1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getVoiceMailNumberForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasIccCard(I)Z
    .locals 6
    .param p1, "slotId"    # I

    .line 589
    :try_start_0
    const-class v0, Landroid/telephony/TelephonyManager;

    const-string v1, "hasIccCard"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 590
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-array v2, v2, [Ljava/lang/Object;

    .line 591
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 589
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 592
    :catch_0
    move-exception v0

    .line 593
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->logException(Ljava/lang/Exception;)V

    .line 595
    .end local v0    # "e":Ljava/lang/Exception;
    invoke-super {p0, p1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->hasIccCard(I)Z

    move-result v0

    return v0
.end method

.method public listenForSubscription(ILandroid/telephony/PhoneStateListener;I)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "listener"    # Landroid/telephony/PhoneStateListener;
    .param p3, "events"    # I

    .line 745
    :try_start_0
    const-class v0, Landroid/telephony/PhoneStateListener;

    const-string v1, "mSubId"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 746
    .local v0, "subIdField":Ljava/lang/reflect/Field;
    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v1

    .line 747
    .local v1, "old":J
    int-to-long v3, p1

    invoke-virtual {v0, p2, v3, v4}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V

    .line 748
    invoke-virtual {p0, p2, p3}, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 749
    invoke-virtual {v0, p2, v1, v2}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 752
    .end local v0    # "subIdField":Ljava/lang/reflect/Field;
    .end local v1    # "old":J
    goto :goto_0

    .line 750
    :catch_0
    move-exception v0

    .line 751
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->logException(Ljava/lang/Exception;)V

    .line 753
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
