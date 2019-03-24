.class Lcom/miui/internal/telephony/Api23TelephonyManagerImpl;
.super Lcom/miui/internal/telephony/Api22TelephonyManagerImpl;
.source "TelephonyManagerAndroidImpl.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 788
    invoke-direct {p0}, Lcom/miui/internal/telephony/Api22TelephonyManagerImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getNetworkCountryIsoForSubscription(I)Ljava/lang/String;
    .locals 6
    .param p1, "subId"    # I

    .line 817
    :try_start_0
    const-class v0, Landroid/telephony/TelephonyManager;

    const-string v1, "getNetworkCountryIsoForSubscription"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 818
    invoke-virtual {p0}, Lcom/miui/internal/telephony/Api23TelephonyManagerImpl;->getClassForSubId()Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/telephony/Api23TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-array v2, v2, [Ljava/lang/Object;

    .line 819
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 817
    return-object v0

    .line 820
    :catch_0
    move-exception v0

    .line 821
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/miui/internal/telephony/Api23TelephonyManagerImpl;->logException(Ljava/lang/Exception;)V

    .line 823
    .end local v0    # "e":Ljava/lang/Exception;
    invoke-super {p0, p1}, Lcom/miui/internal/telephony/Api22TelephonyManagerImpl;->getNetworkCountryIsoForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperatorForSubscription(I)Ljava/lang/String;
    .locals 6
    .param p1, "subId"    # I

    .line 805
    :try_start_0
    const-class v0, Landroid/telephony/TelephonyManager;

    const-string v1, "getNetworkOperatorForSubscription"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 806
    invoke-virtual {p0}, Lcom/miui/internal/telephony/Api23TelephonyManagerImpl;->getClassForSubId()Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/telephony/Api23TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-array v2, v2, [Ljava/lang/Object;

    .line 807
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 805
    return-object v0

    .line 808
    :catch_0
    move-exception v0

    .line 809
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/miui/internal/telephony/Api23TelephonyManagerImpl;->logException(Ljava/lang/Exception;)V

    .line 811
    .end local v0    # "e":Ljava/lang/Exception;
    invoke-super {p0, p1}, Lcom/miui/internal/telephony/Api22TelephonyManagerImpl;->getNetworkOperatorForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperatorNameForSubscription(I)Ljava/lang/String;
    .locals 6
    .param p1, "subId"    # I

    .line 793
    :try_start_0
    const-class v0, Landroid/telephony/TelephonyManager;

    const-string v1, "getSimOperatorNameForSubscription"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 794
    invoke-virtual {p0}, Lcom/miui/internal/telephony/Api23TelephonyManagerImpl;->getClassForSubId()Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/telephony/Api23TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-array v2, v2, [Ljava/lang/Object;

    .line 795
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 793
    return-object v0

    .line 796
    :catch_0
    move-exception v0

    .line 797
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/miui/internal/telephony/Api23TelephonyManagerImpl;->logException(Ljava/lang/Exception;)V

    .line 799
    .end local v0    # "e":Ljava/lang/Exception;
    invoke-super {p0, p1}, Lcom/miui/internal/telephony/Api22TelephonyManagerImpl;->getSimOperatorNameForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
