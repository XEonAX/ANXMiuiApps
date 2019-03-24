.class Lcom/miui/internal/telephony/Api24TelephonyManagerImpl;
.super Lcom/miui/internal/telephony/Api23TelephonyManagerImpl;
.source "TelephonyManagerAndroidImpl.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 827
    invoke-direct {p0}, Lcom/miui/internal/telephony/Api23TelephonyManagerImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getLine1NumberForSubscription(I)Ljava/lang/String;
    .locals 6
    .param p1, "subId"    # I

    .line 832
    :try_start_0
    const-class v0, Landroid/telephony/TelephonyManager;

    const-string v1, "getLine1Number"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 833
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/telephony/Api24TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-array v2, v2, [Ljava/lang/Object;

    .line 834
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 832
    return-object v0

    .line 835
    :catch_0
    move-exception v0

    .line 836
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/miui/internal/telephony/Api24TelephonyManagerImpl;->logException(Ljava/lang/Exception;)V

    .line 838
    .end local v0    # "e":Ljava/lang/Exception;
    invoke-super {p0, p1}, Lcom/miui/internal/telephony/Api23TelephonyManagerImpl;->getLine1NumberForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkCountryIsoForSubscription(I)Ljava/lang/String;
    .locals 6
    .param p1, "subId"    # I

    .line 868
    :try_start_0
    const-class v0, Landroid/telephony/TelephonyManager;

    const-string v1, "getNetworkCountryIso"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 869
    invoke-virtual {p0}, Lcom/miui/internal/telephony/Api24TelephonyManagerImpl;->getClassForSubId()Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/telephony/Api24TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-array v2, v2, [Ljava/lang/Object;

    .line 870
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 868
    return-object v0

    .line 871
    :catch_0
    move-exception v0

    .line 872
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/miui/internal/telephony/Api24TelephonyManagerImpl;->logException(Ljava/lang/Exception;)V

    .line 874
    .end local v0    # "e":Ljava/lang/Exception;
    invoke-super {p0, p1}, Lcom/miui/internal/telephony/Api23TelephonyManagerImpl;->getNetworkCountryIsoForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperatorForSubscription(I)Ljava/lang/String;
    .locals 6
    .param p1, "subId"    # I

    .line 856
    :try_start_0
    const-class v0, Landroid/telephony/TelephonyManager;

    const-string v1, "getNetworkOperator"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 857
    invoke-virtual {p0}, Lcom/miui/internal/telephony/Api24TelephonyManagerImpl;->getClassForSubId()Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/telephony/Api24TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-array v2, v2, [Ljava/lang/Object;

    .line 858
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 856
    return-object v0

    .line 859
    :catch_0
    move-exception v0

    .line 860
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/miui/internal/telephony/Api24TelephonyManagerImpl;->logException(Ljava/lang/Exception;)V

    .line 862
    .end local v0    # "e":Ljava/lang/Exception;
    invoke-super {p0, p1}, Lcom/miui/internal/telephony/Api23TelephonyManagerImpl;->getNetworkOperatorForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperatorNameForSubscription(I)Ljava/lang/String;
    .locals 6
    .param p1, "subId"    # I

    .line 844
    :try_start_0
    const-class v0, Landroid/telephony/TelephonyManager;

    const-string v1, "getSimOperatorName"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 845
    invoke-virtual {p0}, Lcom/miui/internal/telephony/Api24TelephonyManagerImpl;->getClassForSubId()Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/telephony/Api24TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-array v2, v2, [Ljava/lang/Object;

    .line 846
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 844
    return-object v0

    .line 847
    :catch_0
    move-exception v0

    .line 848
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/miui/internal/telephony/Api24TelephonyManagerImpl;->logException(Ljava/lang/Exception;)V

    .line 850
    .end local v0    # "e":Ljava/lang/Exception;
    invoke-super {p0, p1}, Lcom/miui/internal/telephony/Api23TelephonyManagerImpl;->getSimOperatorNameForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
