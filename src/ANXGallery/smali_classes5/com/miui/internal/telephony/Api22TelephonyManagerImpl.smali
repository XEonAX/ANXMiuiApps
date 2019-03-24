.class Lcom/miui/internal/telephony/Api22TelephonyManagerImpl;
.super Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;
.source "TelephonyManagerAndroidImpl.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 756
    invoke-direct {p0}, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;-><init>()V

    return-void
.end method


# virtual methods
.method protected getClassForSubId()Ljava/lang/Class;
    .locals 1

    .line 759
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    return-object v0
.end method

.method public hasIccCard(I)Z
    .locals 6
    .param p1, "slotId"    # I

    .line 765
    :try_start_0
    const-class v0, Landroid/telephony/TelephonyManager;

    const-string v1, "hasIccCard"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 766
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/telephony/Api22TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-array v2, v2, [Ljava/lang/Object;

    .line 767
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 765
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 768
    :catch_0
    move-exception v0

    .line 769
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/miui/internal/telephony/Api22TelephonyManagerImpl;->logException(Ljava/lang/Exception;)V

    .line 771
    .end local v0    # "e":Ljava/lang/Exception;
    invoke-super {p0, p1}, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->hasIccCard(I)Z

    move-result v0

    return v0
.end method

.method public listenForSubscription(ILandroid/telephony/PhoneStateListener;I)V
    .locals 2
    .param p1, "subId"    # I
    .param p2, "listener"    # Landroid/telephony/PhoneStateListener;
    .param p3, "events"    # I

    .line 777
    :try_start_0
    const-class v0, Landroid/telephony/PhoneStateListener;

    const-string v1, "mSubId"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 778
    .local v0, "subIdField":Ljava/lang/reflect/Field;
    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    .line 779
    .local v1, "old":I
    invoke-virtual {v0, p2, p1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 780
    invoke-virtual {p0, p2, p3}, Lcom/miui/internal/telephony/Api22TelephonyManagerImpl;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 781
    invoke-virtual {v0, p2, v1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 784
    .end local v0    # "subIdField":Ljava/lang/reflect/Field;
    .end local v1    # "old":I
    goto :goto_0

    .line 782
    :catch_0
    move-exception v0

    .line 783
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/miui/internal/telephony/Api22TelephonyManagerImpl;->logException(Ljava/lang/Exception;)V

    .line 785
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
