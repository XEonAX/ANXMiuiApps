.class public abstract Lmiui/telephony/TelephonyManager;
.super Ljava/lang/Object;
.source "TelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/telephony/TelephonyManager$Holder;
    }
.end annotation


# static fields
.field public static final ACTION_PHONE_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.PHONE_STATE"

.field public static final ACTION_RESPOND_VIA_MESSAGE:Ljava/lang/String; = "android.intent.action.RESPOND_VIA_MESSAGE"

.field public static final CALL_STATE_IDLE:I = 0x0

.field public static final CALL_STATE_OFFHOOK:I = 0x2

.field public static final CALL_STATE_RINGING:I = 0x1

.field public static final CF_ACTION_DISABLE:I = 0x0

.field public static final CF_ACTION_ENABLE:I = 0x1

.field public static final CF_ACTION_ERASURE:I = 0x4

.field public static final CF_ACTION_REGISTRATION:I = 0x3

.field public static final CF_REASON_ALL:I = 0x4

.field public static final CF_REASON_ALL_CONDITIONAL:I = 0x5

.field public static final CF_REASON_BUSY:I = 0x1

.field public static final CF_REASON_NOT_REACHABLE:I = 0x3

.field public static final CF_REASON_NO_REPLY:I = 0x2

.field public static final CF_REASON_UNCONDITIONAL:I = 0x0

.field public static final CT_VOLTE_MODE_HVOLTE:I = 0x2

.field public static final CT_VOLTE_MODE_NOT_SUPPORT:I = 0x0

.field public static final CT_VOLTE_MODE_VOLTE_ONLY:I = 0x1

.field public static final CUSTOMIZED_REGION:Ljava/lang/String;

.field public static final DATA_ACTIVITY_DORMANT:I = 0x4

.field public static final DATA_ACTIVITY_IN:I = 0x1

.field public static final DATA_ACTIVITY_INOUT:I = 0x3

.field public static final DATA_ACTIVITY_NONE:I = 0x0

.field public static final DATA_ACTIVITY_OUT:I = 0x2

.field public static final DATA_CONNECTED:I = 0x2

.field public static final DATA_CONNECTING:I = 0x1

.field public static final DATA_DISCONNECTED:I = 0x0

.field public static final DATA_DOMESTIC_ROAMING:Ljava/lang/String; = "data_domestic_roaming"

.field public static final DATA_SUSPENDED:I = 0x3

.field public static final EXTRA_INCOMING_NUMBER:Ljava/lang/String; = "incoming_number"

.field public static final EXTRA_STATE:Ljava/lang/String; = "state"

.field public static final EXTRA_STATE_IDLE:Ljava/lang/String;

.field public static final EXTRA_STATE_OFFHOOK:Ljava/lang/String;

.field public static final EXTRA_STATE_RINGING:Ljava/lang/String;

.field private static final IS_CUST_SINGLE_SIM:Z

.field public static final MCC_CHINA:Ljava/lang/String; = "460"

.field public static final NETWORK_TYPE_1xRTT:I = 0x7

.field public static final NETWORK_TYPE_CDMA:I = 0x4

.field public static final NETWORK_TYPE_DC_HSPAP:I = 0x14

.field public static final NETWORK_TYPE_EDGE:I = 0x2

.field public static final NETWORK_TYPE_EHRPD:I = 0xe

.field public static final NETWORK_TYPE_EVDO_0:I = 0x5

.field public static final NETWORK_TYPE_EVDO_A:I = 0x6

.field public static final NETWORK_TYPE_EVDO_B:I = 0xc

.field public static final NETWORK_TYPE_GPRS:I = 0x1

.field public static final NETWORK_TYPE_HSDPA:I = 0x8

.field public static final NETWORK_TYPE_HSPA:I = 0xa

.field public static final NETWORK_TYPE_HSPAP:I = 0xf

.field public static final NETWORK_TYPE_HSUPA:I = 0x9

.field public static final NETWORK_TYPE_IDEN:I = 0xb

.field public static final NETWORK_TYPE_LTE:I = 0xd

.field public static final NETWORK_TYPE_LTE_CA:I = 0x13

.field public static final NETWORK_TYPE_UMTS:I = 0x3

.field public static final NETWORK_TYPE_UNKNOWN:I = 0x0

.field public static final OPERATOR_NUMERIC_CHINA_MOBILE:Ljava/lang/String; = "46000"

.field public static final OPERATOR_NUMERIC_CHINA_TELECOM:Ljava/lang/String; = "46003"

.field public static final OPERATOR_NUMERIC_CHINA_UNICOM:Ljava/lang/String; = "46001"

.field public static final PHONE_TYPE_CDMA:I = 0x2

.field public static final PHONE_TYPE_GSM:I = 0x1

.field public static final PHONE_TYPE_NONE:I = 0x0

.field public static final PHONE_TYPE_SIP:I = 0x3

.field public static final SET_CALL_FOWARD_FAILURE:I = -0x1

.field public static final SET_CALL_FOWARD_NOT_SUPPORT:I = -0x2

.field public static final SET_CALL_FOWARD_SUCCESS:I = 0x0

.field public static final SET_CALL_FOWARD_UT_DATA_DISABLED:I = -0x3

.field public static final SIM_STATE_ABSENT:I = 0x1

.field public static final SIM_STATE_NETWORK_LOCKED:I = 0x4

.field public static final SIM_STATE_PIN_REQUIRED:I = 0x2

.field public static final SIM_STATE_PUK_REQUIRED:I = 0x3

.field public static final SIM_STATE_READY:I = 0x5

.field public static final SIM_STATE_UNKNOWN:I = 0x0

.field protected static final TAG:Ljava/lang/String; = "TeleMgr"


# instance fields
.field private BUILD_OPERATOR_TYPE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 142
    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    sput-object v0, Lmiui/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    .line 148
    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    sput-object v0, Lmiui/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    .line 154
    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    sput-object v0, Lmiui/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    .line 336
    const-string v0, "ro.miui.singlesim"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    nop

    :cond_0
    sput-boolean v1, Lmiui/telephony/TelephonyManager;->IS_CUST_SINGLE_SIM:Z

    .line 342
    const-string v0, "ro.miui.customized.region"

    const-string v1, ""

    invoke-static {v0, v1}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/telephony/TelephonyManager;->CUSTOMIZED_REGION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/telephony/TelephonyManager;->BUILD_OPERATOR_TYPE:Ljava/lang/String;

    return-void
.end method

.method public static checkCallingOrSelfPermissionGranted(I)Z
    .locals 2
    .param p0, "callingUid"    # I

    .line 1525
    invoke-static {p0}, Lmiui/telephony/TelephonyManager;->getAppIdUserHandle(I)I

    move-result v0

    .line 1526
    .local v0, "appId":I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1

    .line 1527
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ltz v1, :cond_0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-static {p0, v1}, Lmiui/telephony/TelephonyManager;->isSameAppUserHandle(II)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1530
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 1528
    :cond_1
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method private static getAppIdUserHandle(I)I
    .locals 7
    .param p0, "callingUid"    # I

    .line 1495
    const-class v0, Landroid/os/UserHandle;

    const-string v1, "getAppId"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v0, v1, v2, v4}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Lmiui/reflect/Method;

    move-result-object v0

    const-class v1, Landroid/os/UserHandle;

    new-array v2, v3, [Ljava/lang/Object;

    .line 1496
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lmiui/reflect/Method;->invokeInt(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v0

    .line 1495
    return v0
.end method

.method public static getDefault()Lmiui/telephony/TelephonyManager;
    .locals 1

    .line 50
    sget-object v0, Lmiui/telephony/TelephonyManager$Holder;->INSTANCE:Lmiui/telephony/TelephonyManager;

    return-object v0
.end method

.method public static isCustForEsVodafone()Z
    .locals 2

    .line 1599
    const-string v0, "es_vodafone"

    sget-object v1, Lmiui/telephony/TelephonyManager;->CUSTOMIZED_REGION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isCustForFrOrange()Z
    .locals 2

    .line 1611
    const-string v0, "fr_orange"

    sget-object v1, Lmiui/telephony/TelephonyManager;->CUSTOMIZED_REGION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isCustForFrSfr()Z
    .locals 2

    .line 1619
    const-string v0, "fr_sfr"

    sget-object v1, Lmiui/telephony/TelephonyManager;->CUSTOMIZED_REGION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isCustForHkH3g()Z
    .locals 2

    .line 1607
    const-string v0, "hk_h3g"

    sget-object v1, Lmiui/telephony/TelephonyManager;->CUSTOMIZED_REGION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isCustForMxTelcel()Z
    .locals 2

    .line 1603
    const-string v0, "mx_telcel"

    sget-object v1, Lmiui/telephony/TelephonyManager;->CUSTOMIZED_REGION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isCustForTurkCell()Z
    .locals 2

    .line 1615
    const-string v0, "tr_turkcell"

    sget-object v1, Lmiui/telephony/TelephonyManager;->CUSTOMIZED_REGION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isCustSingleSimDevice()Z
    .locals 1

    .line 1534
    sget-boolean v0, Lmiui/telephony/TelephonyManager;->IS_CUST_SINGLE_SIM:Z

    return v0
.end method

.method public static isDomesticRoamingEnable(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 1514
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "data_domestic_roaming"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private static isSameAppUserHandle(II)Z
    .locals 8
    .param p0, "uid1"    # I
    .param p1, "uid2"    # I

    .line 1500
    const-class v0, Landroid/os/UserHandle;

    const-string v1, "isSameApp"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-static {v0, v1, v2, v4}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Lmiui/reflect/Method;

    move-result-object v0

    const-class v1, Landroid/os/UserHandle;

    new-array v2, v3, [Ljava/lang/Object;

    .line 1501
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lmiui/reflect/Method;->invokeBoolean(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    .line 1500
    return v0
.end method

.method public static isSupportDomesticRoaming()Z
    .locals 1

    .line 1505
    const-string v0, "PL"

    invoke-static {v0}, Lmiui/os/Build;->checkRegion(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static setDomesticRoamingEnable(Landroid/content/Context;Z)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isEnable"    # Z

    .line 1518
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "data_domestic_roaming"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public abstract getCallState()I
.end method

.method public abstract getCallStateForSlot(I)I
.end method

.method public abstract getCallStateForSubscription(I)I
.end method

.method public getCtVolteSupportedMode()I
    .locals 1

    .line 1419
    const/4 v0, 0x0

    return v0
.end method

.method public abstract getDataActivity()I
.end method

.method public abstract getDataActivityForSlot(I)I
.end method

.method public abstract getDataActivityForSubscription(I)I
.end method

.method public abstract getDataState()I
.end method

.method public abstract getDataStateForSlot(I)I
.end method

.method public abstract getDataStateForSubscription(I)I
.end method

.method public abstract getDeviceId()Ljava/lang/String;
.end method

.method public abstract getDeviceIdForSlot(I)Ljava/lang/String;
.end method

.method public abstract getDeviceIdForSubscription(I)Ljava/lang/String;
.end method

.method public getDeviceIdList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 453
    const-string v0, "TelephonyManager"

    const-string v1, "unexpected getDeviceIdList method call"

    invoke-static {v0, v1}, Lmiui/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getDeviceSoftwareVersion()Ljava/lang/String;
.end method

.method public abstract getDeviceSoftwareVersionForSlot(I)Ljava/lang/String;
.end method

.method public abstract getDeviceSoftwareVersionForSubscription(I)Ljava/lang/String;
.end method

.method public getIccCardCount()I
    .locals 4

    .line 373
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    .line 374
    .local v0, "max":I
    const/4 v1, 0x0

    .line 375
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 376
    invoke-virtual {p0, v2}, Lmiui/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 377
    add-int/lit8 v1, v1, 0x1

    .line 375
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 380
    .end local v2    # "i":I
    :cond_1
    return v1
.end method

.method public abstract getImei()Ljava/lang/String;
.end method

.method public abstract getImeiForSlot(I)Ljava/lang/String;
.end method

.method public abstract getImeiForSubscription(I)Ljava/lang/String;
.end method

.method public getImeiList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 465
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method public abstract getLine1Number()Ljava/lang/String;
.end method

.method public abstract getLine1NumberForSlot(I)Ljava/lang/String;
.end method

.method public abstract getLine1NumberForSubscription(I)Ljava/lang/String;
.end method

.method public abstract getMeid()Ljava/lang/String;
.end method

.method public abstract getMeidForSlot(I)Ljava/lang/String;
.end method

.method public abstract getMeidForSubscription(I)Ljava/lang/String;
.end method

.method public getMeidList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 475
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method public abstract getMiuiDeviceId()Ljava/lang/String;
.end method

.method public abstract getNetworkCountryIso()Ljava/lang/String;
.end method

.method public abstract getNetworkCountryIsoForSlot(I)Ljava/lang/String;
.end method

.method public abstract getNetworkCountryIsoForSubscription(I)Ljava/lang/String;
.end method

.method public abstract getNetworkOperator()Ljava/lang/String;
.end method

.method public abstract getNetworkOperatorForSlot(I)Ljava/lang/String;
.end method

.method public abstract getNetworkOperatorForSubscription(I)Ljava/lang/String;
.end method

.method public abstract getNetworkOperatorName()Ljava/lang/String;
.end method

.method public abstract getNetworkOperatorNameForSlot(I)Ljava/lang/String;
.end method

.method public abstract getNetworkOperatorNameForSubscription(I)Ljava/lang/String;
.end method

.method public abstract getNetworkType()I
.end method

.method public abstract getNetworkTypeForSlot(I)I
.end method

.method public abstract getNetworkTypeForSubscription(I)I
.end method

.method public abstract getPhoneCount()I
.end method

.method public abstract getPhoneType()I
.end method

.method public abstract getPhoneTypeForSlot(I)I
.end method

.method public abstract getPhoneTypeForSubscription(I)I
.end method

.method public abstract getSimCountryIso()Ljava/lang/String;
.end method

.method public abstract getSimCountryIsoForSlot(I)Ljava/lang/String;
.end method

.method public abstract getSimCountryIsoForSubscription(I)Ljava/lang/String;
.end method

.method public abstract getSimOperator()Ljava/lang/String;
.end method

.method public abstract getSimOperatorForSlot(I)Ljava/lang/String;
.end method

.method public abstract getSimOperatorForSubscription(I)Ljava/lang/String;
.end method

.method public abstract getSimOperatorName()Ljava/lang/String;
.end method

.method public abstract getSimOperatorNameForSlot(I)Ljava/lang/String;
.end method

.method public abstract getSimOperatorNameForSubscription(I)Ljava/lang/String;
.end method

.method public abstract getSimSerialNumber()Ljava/lang/String;
.end method

.method public abstract getSimSerialNumberForSlot(I)Ljava/lang/String;
.end method

.method public abstract getSimSerialNumberForSubscription(I)Ljava/lang/String;
.end method

.method public abstract getSimState()I
.end method

.method public abstract getSimStateForSlot(I)I
.end method

.method public abstract getSimStateForSubscription(I)I
.end method

.method public abstract getSmallDeviceId()Ljava/lang/String;
.end method

.method public getSpn(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .param p1, "numeric"    # Ljava/lang/String;
    .param p2, "slotId"    # I
    .param p3, "spn"    # Ljava/lang/String;
    .param p4, "longName"    # Z

    .line 1445
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Only support android L and above"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract getSubscriberId()Ljava/lang/String;
.end method

.method public abstract getSubscriberIdForSlot(I)Ljava/lang/String;
.end method

.method public abstract getSubscriberIdForSubscription(I)Ljava/lang/String;
.end method

.method public abstract getVoiceMailAlphaTag()Ljava/lang/String;
.end method

.method public abstract getVoiceMailAlphaTagForSlot(I)Ljava/lang/String;
.end method

.method public abstract getVoiceMailAlphaTagForSubscription(I)Ljava/lang/String;
.end method

.method public abstract getVoiceMailNumber()Ljava/lang/String;
.end method

.method public abstract getVoiceMailNumberForSlot(I)Ljava/lang/String;
.end method

.method public abstract getVoiceMailNumberForSubscription(I)Ljava/lang/String;
.end method

.method public abstract hasIccCard()Z
.end method

.method public abstract hasIccCard(I)Z
.end method

.method public isChinaTelecomTest(Ljava/lang/String;)Z
    .locals 2
    .param p1, "numeric"    # Ljava/lang/String;

    .line 1591
    sget-boolean v0, Lmiui/os/Build;->IS_CT_CUSTOMIZATION_TEST:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1592
    const-string v0, "46003"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "46011"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "45502"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "45507"

    .line 1593
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "00101"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 1592
    :goto_1
    return v1

    .line 1595
    :cond_2
    return v1
.end method

.method public isDisableLte(Z)Z
    .locals 7
    .param p1, "checkSim"    # Z

    .line 1475
    sget-boolean v0, Lmiui/os/Build;->IS_GLOBAL_BUILD:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1476
    return v1

    .line 1479
    :cond_0
    const-string v0, "ido"

    sget-object v2, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    const-string v0, "kenzo"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v2

    .line 1480
    .local v0, "disableDevice":Z
    :goto_1
    if-eqz v0, :cond_6

    if-nez p1, :cond_3

    goto :goto_3

    .line 1483
    :cond_3
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    .line 1484
    .local v3, "phoneCount":I
    move v4, v1

    .local v4, "i":I
    :goto_2
    if-ge v4, v3, :cond_5

    .line 1485
    invoke-virtual {p0, v4}, Lmiui/telephony/TelephonyManager;->getSimOperatorForSlot(I)Ljava/lang/String;

    move-result-object v5

    .line 1487
    .local v5, "numeric":Ljava/lang/String;
    if-eqz v5, :cond_4

    const-string v6, "510"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1488
    return v2

    .line 1484
    .end local v5    # "numeric":Ljava/lang/String;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1491
    .end local v4    # "i":I
    :cond_5
    return v1

    .line 1481
    .end local v3    # "phoneCount":I
    :cond_6
    :goto_3
    return v0
.end method

.method public isDualVolteSupported()Z
    .locals 1

    .line 1412
    const/4 v0, 0x0

    return v0
.end method

.method public isImsRegistered(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .line 1342
    const/4 v0, 0x0

    return v0
.end method

.method public abstract isMultiSimEnabled()Z
.end method

.method public isSameOperator(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "numeric"    # Ljava/lang/String;
    .param p2, "anotherNumeric"    # Ljava/lang/String;

    .line 1440
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Only support android L and above"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isVideoTelephonyAvailable(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .line 1397
    const/4 v0, 0x0

    return v0
.end method

.method public abstract isVoiceCapable()Z
.end method

.method public isVolteEnabledByPlatform()Z
    .locals 1

    .line 1381
    const/4 v0, 0x0

    return v0
.end method

.method public isVolteEnabledByPlatform(I)Z
    .locals 1
    .param p1, "slotId"    # I

    .line 1389
    const/4 v0, 0x0

    return v0
.end method

.method public isVolteEnabledByUser()Z
    .locals 1

    .line 1349
    const/4 v0, 0x0

    return v0
.end method

.method public isVolteEnabledByUser(I)Z
    .locals 1
    .param p1, "slotId"    # I

    .line 1358
    const/4 v0, 0x0

    return v0
.end method

.method public isVtEnabledByPlatform()Z
    .locals 1

    .line 1365
    const/4 v0, 0x0

    return v0
.end method

.method public isVtEnabledByPlatform(I)Z
    .locals 1
    .param p1, "slotId"    # I

    .line 1373
    const/4 v0, 0x0

    return v0
.end method

.method public isWifiCallingAvailable(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .line 1405
    const/4 v0, 0x0

    return v0
.end method

.method public abstract listen(Landroid/telephony/PhoneStateListener;I)V
.end method

.method public abstract listenForSlot(ILandroid/telephony/PhoneStateListener;I)V
.end method

.method public abstract listenForSubscription(ILandroid/telephony/PhoneStateListener;I)V
.end method

.method public setCallForwardingOption(IIILjava/lang/String;Landroid/os/ResultReceiver;)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "action"    # I
    .param p3, "reason"    # I
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ResultReceiver;

    .line 1571
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "setCallForwardingOption not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setIccCardActivate(IZ)V
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "isActivate"    # Z

    .line 1584
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Only support android L and above"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
