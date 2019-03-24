.class Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;
.super Lmiui/telephony/TelephonyManager;
.source "TelephonyManagerAndroidImpl.java"


# instance fields
.field protected mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 43
    invoke-direct {p0}, Lmiui/telephony/TelephonyManager;-><init>()V

    .line 48
    nop

    .line 49
    invoke-static {}, Lmiui/util/AppConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "phone"

    .line 50
    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 48
    return-void
.end method

.method private static getSlotIdForSubscription(I)I
    .locals 1
    .param p0, "subId"    # I

    .line 466
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmiui/telephony/SubscriptionManager;->getSlotIdForSubscription(I)I

    move-result v0

    return v0
.end method

.method private static getSubscriptionIdForSlot(I)I
    .locals 1
    .param p0, "slotId"    # I

    .line 470
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v0

    return v0
.end method

.method protected static logException(Ljava/lang/Exception;)V
    .locals 2
    .param p0, "e"    # Ljava/lang/Exception;

    .line 45
    const-string v0, "TelephonyAndroidImpl"

    const-string v1, "method reflection failed"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 46
    return-void
.end method


# virtual methods
.method public getCallState()I
    .locals 1

    .line 395
    iget-object v0, p0, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    return v0
.end method

.method public getCallStateForSlot(I)I
    .locals 1
    .param p1, "slotId"    # I

    .line 400
    invoke-static {p1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getCallStateForSubscription(I)I

    move-result v0

    return v0
.end method

.method public getCallStateForSubscription(I)I
    .locals 1
    .param p1, "subId"    # I

    .line 405
    invoke-virtual {p0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getCallState()I

    move-result v0

    return v0
.end method

.method public getDataActivity()I
    .locals 1

    .line 410
    iget-object v0, p0, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataActivity()I

    move-result v0

    return v0
.end method

.method public getDataActivityForSlot(I)I
    .locals 1
    .param p1, "slotId"    # I

    .line 415
    invoke-virtual {p0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getDataActivity()I

    move-result v0

    return v0
.end method

.method public getDataActivityForSubscription(I)I
    .locals 1
    .param p1, "subId"    # I

    .line 420
    invoke-static {p1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSlotIdForSubscription(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getDataActivityForSlot(I)I

    move-result v0

    return v0
.end method

.method public getDataState()I
    .locals 1

    .line 425
    iget-object v0, p0, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    return v0
.end method

.method public getDataStateForSlot(I)I
    .locals 1
    .param p1, "slotId"    # I

    .line 430
    invoke-virtual {p0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getDataState()I

    move-result v0

    return v0
.end method

.method public getDataStateForSubscription(I)I
    .locals 1
    .param p1, "subId"    # I

    .line 435
    invoke-static {p1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSlotIdForSubscription(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getDataStateForSlot(I)I

    move-result v0

    return v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceIdForSlot(I)Ljava/lang/String;
    .locals 1
    .param p1, "slotId"    # I

    .line 135
    invoke-virtual {p0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceIdForSubscription(I)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I

    .line 140
    invoke-static {p1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSlotIdForSubscription(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getDeviceIdForSlot(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceIdList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .local v0, "deviceIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getPhoneCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 92
    invoke-virtual {p0, v1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getDeviceIdForSlot(I)Ljava/lang/String;

    move-result-object v2

    .line 93
    .local v2, "deviceId":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 94
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    :cond_0
    invoke-virtual {p0, v1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getMeidForSlot(I)Ljava/lang/String;

    move-result-object v3

    .line 97
    .local v3, "meid":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 98
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    .end local v2    # "deviceId":Ljava/lang/String;
    .end local v3    # "meid":Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 101
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method

.method public getDeviceSoftwareVersion()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceSoftwareVersionForSlot(I)Ljava/lang/String;
    .locals 1
    .param p1, "slotId"    # I

    .line 70
    invoke-virtual {p0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getDeviceSoftwareVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceSoftwareVersionForSubscription(I)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I

    .line 75
    invoke-static {p1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSlotIdForSubscription(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getDeviceSoftwareVersionForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    .line 145
    invoke-virtual {p0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImeiForSlot(I)Ljava/lang/String;
    .locals 1
    .param p1, "slotId"    # I

    .line 150
    invoke-virtual {p0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getImei()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImeiForSubscription(I)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I

    .line 155
    invoke-static {p1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSlotIdForSubscription(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getImeiForSlot(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImeiList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .local v0, "imeiList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getPhoneCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 108
    invoke-virtual {p0, v1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getImeiForSlot(I)Ljava/lang/String;

    move-result-object v2

    .line 109
    .local v2, "imei":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 110
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    .end local v2    # "imei":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 113
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public getLine1Number()Ljava/lang/String;
    .locals 1

    .line 350
    iget-object v0, p0, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1NumberForSlot(I)Ljava/lang/String;
    .locals 1
    .param p1, "slotId"    # I

    .line 355
    invoke-static {p1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getLine1NumberForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1NumberForSubscription(I)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I

    .line 360
    invoke-virtual {p0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMeid()Ljava/lang/String;
    .locals 1

    .line 160
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMeidForSlot(I)Ljava/lang/String;
    .locals 1
    .param p1, "slotId"    # I

    .line 165
    invoke-virtual {p0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getMeid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMeidForSubscription(I)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I

    .line 170
    invoke-static {p1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSlotIdForSubscription(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getMeidForSlot(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMeidList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .local v0, "meidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getPhoneCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 120
    invoke-virtual {p0, v1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getMeidForSlot(I)Ljava/lang/String;

    move-result-object v2

    .line 121
    .local v2, "meid":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 122
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    .end local v2    # "meid":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 125
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public getMiuiDeviceId()Ljava/lang/String;
    .locals 1

    .line 80
    invoke-virtual {p0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkCountryIso()Ljava/lang/String;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkCountryIsoForSlot(I)Ljava/lang/String;
    .locals 1
    .param p1, "slotId"    # I

    .line 225
    invoke-static {p1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getNetworkCountryIsoForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkCountryIsoForSubscription(I)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I

    .line 230
    invoke-virtual {p0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperator()Ljava/lang/String;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperatorForSlot(I)Ljava/lang/String;
    .locals 1
    .param p1, "slotId"    # I

    .line 195
    invoke-static {p1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getNetworkOperatorForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperatorForSubscription(I)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I

    .line 200
    invoke-virtual {p0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperatorName()Ljava/lang/String;
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperatorNameForSlot(I)Ljava/lang/String;
    .locals 1
    .param p1, "slotId"    # I

    .line 210
    invoke-static {p1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getNetworkOperatorNameForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperatorNameForSubscription(I)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I

    .line 215
    invoke-virtual {p0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkType()I
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    return v0
.end method

.method public getNetworkTypeForSlot(I)I
    .locals 1
    .param p1, "slotId"    # I

    .line 240
    invoke-static {p1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getNetworkTypeForSubscription(I)I

    move-result v0

    return v0
.end method

.method public getNetworkTypeForSubscription(I)I
    .locals 1
    .param p1, "subId"    # I

    .line 245
    invoke-virtual {p0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getNetworkType()I

    move-result v0

    return v0
.end method

.method public getPhoneCount()I
    .locals 1

    .line 60
    const/4 v0, 0x1

    return v0
.end method

.method public getPhoneType()I
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    return v0
.end method

.method public getPhoneTypeForSlot(I)I
    .locals 1
    .param p1, "slotId"    # I

    .line 180
    invoke-static {p1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getPhoneTypeForSubscription(I)I

    move-result v0

    return v0
.end method

.method public getPhoneTypeForSubscription(I)I
    .locals 1
    .param p1, "subId"    # I

    .line 185
    invoke-virtual {p0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getPhoneType()I

    move-result v0

    return v0
.end method

.method public getSimCountryIso()Ljava/lang/String;
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimCountryIsoForSlot(I)Ljava/lang/String;
    .locals 1
    .param p1, "slotId"    # I

    .line 310
    invoke-static {p1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSimCountryIsoForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimCountryIsoForSubscription(I)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I

    .line 315
    invoke-virtual {p0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperator()Ljava/lang/String;
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperatorForSlot(I)Ljava/lang/String;
    .locals 1
    .param p1, "slotId"    # I

    .line 280
    invoke-static {p1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSimOperatorForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperatorForSubscription(I)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I

    .line 285
    invoke-virtual {p0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperatorName()Ljava/lang/String;
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperatorNameForSlot(I)Ljava/lang/String;
    .locals 1
    .param p1, "slotId"    # I

    .line 295
    invoke-static {p1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSimOperatorNameForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperatorNameForSubscription(I)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I

    .line 300
    invoke-virtual {p0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSimOperatorName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimSerialNumber()Ljava/lang/String;
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimSerialNumberForSlot(I)Ljava/lang/String;
    .locals 1
    .param p1, "slotId"    # I

    .line 325
    invoke-static {p1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSimSerialNumberForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimSerialNumberForSubscription(I)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I

    .line 330
    invoke-virtual {p0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimState()I
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    return v0
.end method

.method public getSimStateForSlot(I)I
    .locals 1
    .param p1, "slotId"    # I

    .line 265
    invoke-virtual {p0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSimState()I

    move-result v0

    return v0
.end method

.method public getSimStateForSubscription(I)I
    .locals 1
    .param p1, "subId"    # I

    .line 270
    invoke-static {p1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSlotIdForSubscription(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSimStateForSlot(I)I

    move-result v0

    return v0
.end method

.method public getSmallDeviceId()Ljava/lang/String;
    .locals 1

    .line 85
    invoke-virtual {p0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriberIdForSlot(I)Ljava/lang/String;
    .locals 1
    .param p1, "slotId"    # I

    .line 340
    invoke-static {p1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSubscriberIdForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriberIdForSubscription(I)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I

    .line 345
    invoke-virtual {p0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 1

    .line 380
    iget-object v0, p0, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailAlphaTagForSlot(I)Ljava/lang/String;
    .locals 1
    .param p1, "slotId"    # I

    .line 385
    invoke-static {p1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getVoiceMailAlphaTagForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailAlphaTagForSubscription(I)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I

    .line 390
    invoke-virtual {p0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailNumberForSlot(I)Ljava/lang/String;
    .locals 1
    .param p1, "slotId"    # I

    .line 370
    invoke-static {p1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getVoiceMailNumberForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailNumberForSubscription(I)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I

    .line 375
    invoke-virtual {p0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasIccCard()Z
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v0

    return v0
.end method

.method public hasIccCard(I)Z
    .locals 1
    .param p1, "slotId"    # I

    .line 255
    invoke-virtual {p0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->hasIccCard()Z

    move-result v0

    return v0
.end method

.method public isMultiSimEnabled()Z
    .locals 1

    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public isVoiceCapable()Z
    .locals 4

    .line 456
    const/4 v0, 0x0

    :try_start_0
    const-class v1, Landroid/telephony/TelephonyManager;

    const-string v2, "isVoiceCapable"

    new-array v3, v0, [Ljava/lang/Class;

    .line 457
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-array v3, v0, [Ljava/lang/Object;

    .line 458
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 456
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 459
    :catch_0
    move-exception v1

    .line 460
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->logException(Ljava/lang/Exception;)V

    .line 462
    .end local v1    # "e":Ljava/lang/Exception;
    return v0
.end method

.method public listen(Landroid/telephony/PhoneStateListener;I)V
    .locals 1
    .param p1, "listener"    # Landroid/telephony/PhoneStateListener;
    .param p2, "events"    # I

    .line 440
    iget-object v0, p0, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 441
    return-void
.end method

.method public listenForSlot(ILandroid/telephony/PhoneStateListener;I)V
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "listener"    # Landroid/telephony/PhoneStateListener;
    .param p3, "events"    # I

    .line 445
    invoke-static {p1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->listenForSubscription(ILandroid/telephony/PhoneStateListener;I)V

    .line 446
    return-void
.end method

.method public listenForSubscription(ILandroid/telephony/PhoneStateListener;I)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "listener"    # Landroid/telephony/PhoneStateListener;
    .param p3, "events"    # I

    .line 450
    invoke-virtual {p0, p2, p3}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 451
    return-void
.end method
