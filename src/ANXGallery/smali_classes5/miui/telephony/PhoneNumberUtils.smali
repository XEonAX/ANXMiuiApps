.class public Lmiui/telephony/PhoneNumberUtils;
.super Landroid/telephony/PhoneNumberUtils;
.source "PhoneNumberUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;,
        Lmiui/telephony/PhoneNumberUtils$TelocationAndOperatorQueryListener;,
        Lmiui/telephony/PhoneNumberUtils$OperatorQueryListener;,
        Lmiui/telephony/PhoneNumberUtils$TelocationQueryListener;,
        Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    }
.end annotation


# static fields
.field private static final CHINA_COUNTRY_CODE:Ljava/lang/String; = "86"

.field private static final CHINA_IOT_MOBILE_NUMBER_LENGTH:I = 0xd

.field public static final CHINA_MCC:Ljava/lang/String; = "460"

.field private static final CHINA_MOBILE_NUMBER_LENGTH:I = 0xb

.field private static final CHINA_MOBILE_NUMBER_PREFIX:Ljava/lang/String; = "1"

.field private static final CHINA_REGION_CODE1:Ljava/lang/String; = "+86"

.field private static final CHINA_REGION_CODE2:Ljava/lang/String; = "0086"

.field private static final EMERGENCY_NUMBERS:[Ljava/lang/String;

.field static final LOG_TAG:Ljava/lang/String; = "PhoneNumberUtils"

.field public static final MASK_PHONE_NUMBER_MODE_HEAD:I = 0x0

.field public static final MASK_PHONE_NUMBER_MODE_MIDDLE:I = 0x2

.field public static final MASK_PHONE_NUMBER_MODE_TAIL:I = 0x1

.field private static final MIN_QUERY_LOCATION_EFFECTIVE_IOT_NUMBER_LENGTH:I = 0x9

.field private static final MIN_QUERY_LOCATION_EFFECTIVE_NUMBER_LENGTH:I = 0x7

.field public static final PAYPHONE_NUMBER:Ljava/lang/String; = "-3"

.field public static final PRIVATE_NUMBER:Ljava/lang/String; = "-2"

.field public static final UNKNOWN_NUMBER:Ljava/lang/String; = "-1"


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1384
    const-string v0, "110"

    const-string v1, "112"

    const-string v2, "119"

    const-string v3, "120"

    const-string v4, "122"

    const-string v5, "911"

    const-string v6, "999"

    const-string v7, "995"

    const-string v8, "100"

    const-string v9, "101"

    const-string v10, "102"

    const-string v11, "190"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/telephony/PhoneNumberUtils;->EMERGENCY_NUMBERS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroid/telephony/PhoneNumberUtils;-><init>()V

    return-void
.end method

.method public static cancelAsyncTelocationQuery(I)V
    .locals 1
    .param p0, "token"    # I

    .line 1309
    invoke-static {}, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;->getInstance()Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;->cancelOperation(I)V

    .line 1310
    return-void
.end method

.method public static extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .line 100
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lmiui/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static extractNetworkPortion(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "phoneType"    # I

    .line 107
    if-nez p0, :cond_0

    .line 108
    const/4 v0, 0x0

    return-object v0

    .line 110
    :cond_0
    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils;->invokeIsUriNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 113
    :cond_1
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 111
    :cond_2
    :goto_0
    const/4 v0, 0x0

    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils;->indexOfLastNetworkChar(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .line 131
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lmiui/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static extractNetworkPortionAlt(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "phoneType"    # I

    .line 138
    if-nez p0, :cond_0

    .line 139
    const/4 v0, 0x0

    return-object v0

    .line 142
    :cond_0
    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils;->invokeIsUriNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 145
    :cond_1
    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils;->invokeExtractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 143
    :cond_2
    :goto_0
    const/4 v0, 0x0

    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils;->indexOfLastNetworkChar(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultIpBySim(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 1330
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultSlotId()I

    move-result v0

    .line 1331
    .local v0, "slotId":I
    invoke-static {p0, v0}, Lmiui/telephony/PhoneNumberUtils;->getDefaultIpBySim(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getDefaultIpBySim(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotId"    # I

    .line 1339
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    .line 1340
    .local v0, "telephonyManager":Lmiui/telephony/TelephonyManager;
    invoke-virtual {v0, p1}, Lmiui/telephony/TelephonyManager;->getSimOperatorForSlot(I)Ljava/lang/String;

    move-result-object v1

    .line 1341
    .local v1, "simOperator":Ljava/lang/String;
    const-string v2, "46000"

    invoke-virtual {v0, v1, v2}, Lmiui/telephony/TelephonyManager;->isSameOperator(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1342
    const-string v2, "17951"

    return-object v2

    .line 1343
    :cond_0
    const-string v2, "46001"

    invoke-virtual {v0, v1, v2}, Lmiui/telephony/TelephonyManager;->isSameOperator(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1344
    const-string v2, "17911"

    return-object v2

    .line 1345
    :cond_1
    const-string v2, "46003"

    invoke-virtual {v0, v1, v2}, Lmiui/telephony/TelephonyManager;->isSameOperator(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1346
    const-string v2, "17901"

    return-object v2

    .line 1348
    :cond_2
    const-string v2, ""

    return-object v2
.end method

.method public static getPresentation(Ljava/lang/CharSequence;)I
    .locals 1
    .param p0, "number"    # Ljava/lang/CharSequence;

    .line 1578
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "-1"

    .line 1579
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1581
    :cond_0
    const-string v0, "-2"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1582
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_RESTRICTED:I

    return v0

    .line 1583
    :cond_1
    const-string v0, "-3"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1584
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_PAYPHONE:I

    return v0

    .line 1586
    :cond_2
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    return v0

    .line 1580
    :cond_3
    :goto_0
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_UNKNOWN:I

    return v0
.end method

.method public static getPresentationString(I)Ljava/lang/String;
    .locals 3
    .param p0, "presentation"    # I

    .line 1593
    const-string v0, ""

    .line 1594
    .local v0, "name":Ljava/lang/String;
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_RESTRICTED:I

    if-ne p0, v1, :cond_0

    .line 1595
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lmiui/system/R$string;->presentation_private:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1596
    :cond_0
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_PAYPHONE:I

    if-ne p0, v1, :cond_1

    .line 1597
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lmiui/system/R$string;->presentation_payphone:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1598
    :cond_1
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_UNKNOWN:I

    if-ne p0, v1, :cond_2

    .line 1599
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lmiui/system/R$string;->presentation_unknown:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1601
    :cond_2
    :goto_0
    return-object v0
.end method

.method private static indexOfLastNetworkChar(Ljava/lang/String;)I
    .locals 5
    .param p0, "a"    # Ljava/lang/String;

    .line 82
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 84
    .local v0, "origLength":I
    const/16 v1, 0x2c

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 85
    .local v1, "pIndex":I
    const/16 v2, 0x3b

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 87
    .local v2, "wIndex":I
    invoke-static {v1, v2}, Lmiui/telephony/PhoneNumberUtils;->minPositive(II)I

    move-result v3

    .line 89
    .local v3, "trimIndex":I
    if-gez v3, :cond_0

    .line 90
    add-int/lit8 v4, v0, -0x1

    return v4

    .line 92
    :cond_0
    add-int/lit8 v4, v3, -0x1

    return v4
.end method

.method private static invokeExtractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .line 150
    const/4 v0, 0x0

    :try_start_0
    const-class v1, Landroid/telephony/PhoneNumberUtils;

    const-string v2, "extractNetworkPortionAlt"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 151
    .local v1, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 152
    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v6

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 153
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 154
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "PhoneNumberUtils"

    const-string v3, "invoke extractNetworkPortionAlt failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 156
    .end local v1    # "e":Ljava/lang/Exception;
    return-object v0
.end method

.method private static invokeIsLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .line 1429
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "miui.telephony.TelephonyManagerEx"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 1430
    .local v1, "clazz":Ljava/lang/Class;
    const-string v2, "isLocalEmergencyNumber"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v0

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1431
    .local v2, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v2, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1432
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v0

    aput-object p1, v3, v6

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    .line 1433
    .end local v1    # "clazz":Ljava/lang/Class;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 1434
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "PhoneNumberUtils"

    const-string v3, "invokeIsLocalEmergencyNumber failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1436
    .end local v1    # "e":Ljava/lang/Exception;
    return v0
.end method

.method private static invokeIsUriNumber(Ljava/lang/String;)Z
    .locals 6
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .line 118
    const/4 v0, 0x0

    :try_start_0
    const-class v1, Landroid/telephony/PhoneNumberUtils;

    const-string v2, "isUriNumber"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v0

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 119
    .local v1, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 120
    const/4 v2, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 121
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 122
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "PhoneNumberUtils"

    const-string v3, "invoke isUriNumber failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 124
    .end local v1    # "e":Ljava/lang/Exception;
    return v0
.end method

.method private static isAlnum(C)Z
    .locals 1
    .param p0, "ch"    # C

    .line 1528
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x7a

    if-le p0, v0, :cond_2

    :cond_1
    const/16 v0, 0x41

    if-lt p0, v0, :cond_3

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isChinaMobileNumber(Ljava/lang/String;)Z
    .locals 5
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .line 182
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0xb

    if-ge v0, v2, :cond_0

    goto :goto_0

    .line 186
    :cond_0
    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "number":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "86"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v2

    if-lt v3, v4, :cond_1

    .line 189
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    const-string v2, "86"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "861"

    .line 190
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    .line 189
    return v1

    .line 191
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v2, :cond_2

    .line 192
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 196
    :cond_2
    return v1

    .line 183
    .end local v0    # "number":Ljava/lang/String;
    :cond_3
    :goto_0
    return v1
.end method

.method public static isChineseOperator(Ljava/lang/String;)Z
    .locals 1
    .param p0, "operator"    # Ljava/lang/String;

    .line 230
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "460"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isDialable(Ljava/lang/String;)Z
    .locals 4
    .param p0, "address"    # Ljava/lang/String;

    .line 163
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 165
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "count":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 166
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lmiui/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 167
    return v1

    .line 165
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 170
    .end local v0    # "i":I
    .end local v2    # "count":I
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static isEmergencyNumber(Ljava/lang/String;)Z
    .locals 2
    .param p0, "number"    # Ljava/lang/String;

    .line 1420
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_MIUI:Z

    if-eqz v0, :cond_0

    .line 1421
    invoke-static {}, Lmiui/util/AppConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, p0}, Lmiui/telephony/PhoneNumberUtils;->invokeIsLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 1423
    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lmiui/telephony/PhoneNumberUtils;->isMiuiEmergencyNumber(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    nop

    :cond_2
    :goto_0
    return v0
.end method

.method public static isMiuiEmergencyNumber(Ljava/lang/String;Z)Z
    .locals 7
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "useExactMatch"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1398
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1401
    :cond_0
    sget-object v1, Lmiui/telephony/PhoneNumberUtils;->EMERGENCY_NUMBERS:[Ljava/lang/String;

    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 1402
    .local v4, "emergencyNum":Ljava/lang/String;
    const/4 v5, 0x1

    if-eqz p1, :cond_1

    .line 1403
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1404
    return v5

    .line 1407
    :cond_1
    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1408
    return v5

    .line 1401
    .end local v4    # "emergencyNum":Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1413
    :cond_3
    return v0
.end method

.method public static isServiceNumber(Ljava/lang/String;)Z
    .locals 2
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .line 222
    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v0

    .line 223
    .local v0, "pn":Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->isServiceNumber()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static maskPhoneNumber(Ljava/lang/String;I)Ljava/lang/String;
    .locals 7
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "cutMode"    # I

    .line 1475
    if-nez p0, :cond_0

    .line 1476
    const-string v0, ""

    return-object v0

    .line 1478
    :cond_0
    const/4 v0, 0x0

    .line 1479
    .local v0, "alnumCount":I
    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    .local v0, "i":I
    .local v2, "alnumCount":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 1480
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lmiui/telephony/PhoneNumberUtils;->isAlnum(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1481
    add-int/lit8 v2, v2, 0x1

    .line 1479
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1485
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    .line 1486
    .local v0, "cutLength":I
    const/4 v3, 0x7

    if-ge v2, v3, :cond_3

    .line 1487
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 1488
    :cond_3
    const/16 v3, 0xb

    if-ge v2, v3, :cond_4

    .line 1489
    const/4 v0, 0x2

    goto :goto_1

    .line 1491
    :cond_4
    const/4 v0, 0x3

    .line 1494
    :goto_1
    packed-switch p1, :pswitch_data_0

    .line 1505
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid cut mode"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1502
    :pswitch_0
    sub-int v3, v2, v0

    div-int/lit8 v3, v3, 0x2

    .line 1503
    .local v3, "cutStart":I
    goto :goto_2

    .line 1499
    .end local v3    # "cutStart":I
    :pswitch_1
    sub-int v3, v2, v0

    .line 1500
    .restart local v3    # "cutStart":I
    goto :goto_2

    .line 1496
    .end local v3    # "cutStart":I
    :pswitch_2
    const/4 v3, 0x0

    .line 1497
    .restart local v3    # "cutStart":I
    nop

    .line 1505
    :goto_2
    nop

    .line 1508
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1509
    .local v4, "result":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .line 1510
    .local v5, "addedAlnumCount":I
    nop

    .local v1, "i":I
    :goto_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v1, v6, :cond_8

    .line 1511
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lmiui/telephony/PhoneNumberUtils;->isAlnum(C)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1512
    if-lt v5, v3, :cond_6

    if-gtz v0, :cond_5

    goto :goto_4

    .line 1515
    :cond_5
    const/16 v6, 0x3f

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1516
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    .line 1513
    :cond_6
    :goto_4
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1518
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 1520
    :cond_7
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1510
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1524
    .end local v1    # "i":I
    :cond_8
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static minPositive(II)I
    .locals 1
    .param p0, "a"    # I
    .param p1, "b"    # I

    .line 60
    if-ltz p0, :cond_1

    if-ltz p1, :cond_1

    .line 61
    if-ge p0, p1, :cond_0

    move v0, p0

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    return v0

    .line 62
    :cond_1
    if-ltz p0, :cond_2

    .line 63
    return p0

    .line 64
    :cond_2
    if-ltz p1, :cond_3

    .line 65
    return p1

    .line 67
    :cond_3
    const/4 v0, -0x1

    return v0
.end method

.method public static miuiFormatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "phoneNumberE164"    # Ljava/lang/String;
    .param p2, "defaultCountryIso"    # Ljava/lang/String;

    .line 1540
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1541
    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v0

    .line 1542
    .local v0, "pn":Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    if-eqz v0, :cond_0

    .line 1543
    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getPrefix()Ljava/lang/String;

    move-result-object v1

    .line 1544
    .local v1, "prefix":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1545
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1546
    .local v2, "number":Ljava/lang/String;
    invoke-static {v2, p1, p2}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1548
    .local v3, "formatedNumber":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1553
    .end local v0    # "pn":Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    .end local v1    # "prefix":Ljava/lang/String;
    .end local v2    # "number":Ljava/lang/String;
    .end local v3    # "formatedNumber":Ljava/lang/String;
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static parseNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "number"    # Ljava/lang/String;

    .line 1443
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/TelephonyManager;->getSimState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 1444
    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v0

    .line 1445
    .local v0, "pn":Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    if-eqz v0, :cond_0

    .line 1446
    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getEffectiveNumber()Ljava/lang/String;

    move-result-object p0

    .line 1449
    .end local v0    # "pn":Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    :cond_0
    return-object p0
.end method

.method public static parseTelocationString(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneNumber"    # Ljava/lang/CharSequence;

    .line 1322
    invoke-static {p0, p1}, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;->queryTelocation(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static queryOperatorStringAsync(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lmiui/telephony/PhoneNumberUtils$OperatorQueryListener;Landroid/content/Context;Ljava/lang/String;)V
    .locals 10
    .param p0, "token"    # I
    .param p1, "cookie1"    # Ljava/lang/Object;
    .param p2, "cookie2"    # Ljava/lang/Object;
    .param p3, "cookie3"    # Ljava/lang/Object;
    .param p4, "cookie4"    # Ljava/lang/Object;
    .param p5, "listener"    # Lmiui/telephony/PhoneNumberUtils$OperatorQueryListener;
    .param p6, "context"    # Landroid/content/Context;
    .param p7, "phoneNumber"    # Ljava/lang/String;

    .line 1191
    invoke-virtual/range {p6 .. p6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->isTelocationEnable(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1192
    invoke-static {}, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;->getInstance()Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;

    move-result-object v1

    move v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v1 .. v9}, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;->startQueryOperatorString(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lmiui/telephony/PhoneNumberUtils$OperatorQueryListener;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 1195
    :cond_0
    const/4 v7, 0x0

    move-object v2, p5

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-interface/range {v2 .. v7}, Lmiui/telephony/PhoneNumberUtils$OperatorQueryListener;->onComplete(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 1197
    :goto_0
    return-void
.end method

.method public static queryOperatorStringAsync(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lmiui/telephony/PhoneNumberUtils$OperatorQueryListener;Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 9
    .param p0, "token"    # I
    .param p1, "cookie1"    # Ljava/lang/Object;
    .param p2, "cookie2"    # Ljava/lang/Object;
    .param p3, "cookie3"    # Ljava/lang/Object;
    .param p4, "cookie4"    # Ljava/lang/Object;
    .param p5, "listener"    # Lmiui/telephony/PhoneNumberUtils$OperatorQueryListener;
    .param p6, "context"    # Landroid/content/Context;
    .param p7, "phoneNumber"    # Ljava/lang/String;
    .param p8, "enableTelocation"    # Z

    .line 1267
    if-eqz p8, :cond_0

    .line 1268
    invoke-static {}, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;->getInstance()Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;

    move-result-object v0

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;->startQueryOperatorString(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lmiui/telephony/PhoneNumberUtils$OperatorQueryListener;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 1271
    :cond_0
    const/4 v6, 0x0

    move-object v1, p5

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v1 .. v6}, Lmiui/telephony/PhoneNumberUtils$OperatorQueryListener;->onComplete(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 1273
    :goto_0
    return-void
.end method

.method public static queryTelocationAndOperatorStringAsync(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lmiui/telephony/PhoneNumberUtils$TelocationAndOperatorQueryListener;Landroid/content/Context;Ljava/lang/String;)V
    .locals 10
    .param p0, "token"    # I
    .param p1, "cookie1"    # Ljava/lang/Object;
    .param p2, "cookie2"    # Ljava/lang/Object;
    .param p3, "cookie3"    # Ljava/lang/Object;
    .param p4, "cookie4"    # Ljava/lang/Object;
    .param p5, "listener"    # Lmiui/telephony/PhoneNumberUtils$TelocationAndOperatorQueryListener;
    .param p6, "context"    # Landroid/content/Context;
    .param p7, "phoneNumber"    # Ljava/lang/String;

    .line 1215
    invoke-virtual/range {p6 .. p6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->isTelocationEnable(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1216
    invoke-static {}, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;->getInstance()Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;

    move-result-object v1

    move v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v1 .. v9}, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;->startQueryTelocationAndOperatorString(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lmiui/telephony/PhoneNumberUtils$TelocationAndOperatorQueryListener;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 1219
    :cond_0
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p5

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-interface/range {v2 .. v8}, Lmiui/telephony/PhoneNumberUtils$TelocationAndOperatorQueryListener;->onComplete(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 1221
    :goto_0
    return-void
.end method

.method public static queryTelocationAndOperatorStringAsync(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lmiui/telephony/PhoneNumberUtils$TelocationAndOperatorQueryListener;Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 9
    .param p0, "token"    # I
    .param p1, "cookie1"    # Ljava/lang/Object;
    .param p2, "cookie2"    # Ljava/lang/Object;
    .param p3, "cookie3"    # Ljava/lang/Object;
    .param p4, "cookie4"    # Ljava/lang/Object;
    .param p5, "listener"    # Lmiui/telephony/PhoneNumberUtils$TelocationAndOperatorQueryListener;
    .param p6, "context"    # Landroid/content/Context;
    .param p7, "phoneNumber"    # Ljava/lang/String;
    .param p8, "enableTelocation"    # Z

    .line 1293
    if-eqz p8, :cond_0

    .line 1294
    invoke-static {}, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;->getInstance()Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;

    move-result-object v0

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;->startQueryTelocationAndOperatorString(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lmiui/telephony/PhoneNumberUtils$TelocationAndOperatorQueryListener;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 1297
    :cond_0
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p5

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v1 .. v7}, Lmiui/telephony/PhoneNumberUtils$TelocationAndOperatorQueryListener;->onComplete(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 1299
    :goto_0
    return-void
.end method

.method public static queryTelocationStringAsync(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lmiui/telephony/PhoneNumberUtils$TelocationQueryListener;Landroid/content/Context;Ljava/lang/String;)V
    .locals 10
    .param p0, "token"    # I
    .param p1, "cookie1"    # Ljava/lang/Object;
    .param p2, "cookie2"    # Ljava/lang/Object;
    .param p3, "cookie3"    # Ljava/lang/Object;
    .param p4, "cookie4"    # Ljava/lang/Object;
    .param p5, "listener"    # Lmiui/telephony/PhoneNumberUtils$TelocationQueryListener;
    .param p6, "context"    # Landroid/content/Context;
    .param p7, "phoneNumber"    # Ljava/lang/String;

    .line 1167
    invoke-virtual/range {p6 .. p6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->isTelocationEnable(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1168
    invoke-static {}, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;->getInstance()Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;

    move-result-object v1

    move v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v1 .. v9}, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;->startQueryTelocationString(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lmiui/telephony/PhoneNumberUtils$TelocationQueryListener;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 1171
    :cond_0
    const/4 v7, 0x0

    move-object v2, p5

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-interface/range {v2 .. v7}, Lmiui/telephony/PhoneNumberUtils$TelocationQueryListener;->onComplete(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 1173
    :goto_0
    return-void
.end method

.method public static queryTelocationStringAsync(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lmiui/telephony/PhoneNumberUtils$TelocationQueryListener;Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 9
    .param p0, "token"    # I
    .param p1, "cookie1"    # Ljava/lang/Object;
    .param p2, "cookie2"    # Ljava/lang/Object;
    .param p3, "cookie3"    # Ljava/lang/Object;
    .param p4, "cookie4"    # Ljava/lang/Object;
    .param p5, "listener"    # Lmiui/telephony/PhoneNumberUtils$TelocationQueryListener;
    .param p6, "context"    # Landroid/content/Context;
    .param p7, "phoneNumber"    # Ljava/lang/String;
    .param p8, "enableTelocation"    # Z

    .line 1241
    if-eqz p8, :cond_0

    .line 1242
    invoke-static {}, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;->getInstance()Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;

    move-result-object v0

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;->startQueryTelocationString(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lmiui/telephony/PhoneNumberUtils$TelocationQueryListener;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 1245
    :cond_0
    const/4 v6, 0x0

    move-object v1, p5

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v1 .. v6}, Lmiui/telephony/PhoneNumberUtils$TelocationQueryListener;->onComplete(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 1247
    :goto_0
    return-void
.end method

.method public static removeDashesAndBlanks(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .line 1358
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1359
    return-object p0

    .line 1362
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1363
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1364
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1365
    .local v2, "c":C
    const/16 v3, 0x20

    if-eq v2, v3, :cond_1

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_1

    .line 1366
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1363
    .end local v2    # "c":C
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1369
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static splitNetworkAndPostDialPortion(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .line 203
    if-nez p0, :cond_0

    .line 204
    const/4 v0, 0x0

    return-object v0

    .line 207
    :cond_0
    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils;->indexOfLastNetworkChar(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 208
    .local v0, "networkEnd":I
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    .line 209
    .local v2, "ret":[Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 210
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v0, v3, :cond_1

    const-string v3, ""

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    :goto_0
    aput-object v3, v2, v1

    .line 211
    return-object v2
.end method

.method public static stripSeparatorsAndCountryCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .line 42
    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, "number":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 45
    const-string v1, "+86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    const-string v1, "+86"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 47
    :cond_0
    const-string v1, "0086"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 48
    const-string v1, "0086"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 51
    :cond_1
    :goto_0
    return-object v0
.end method

.method public static toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "number"    # Ljava/lang/String;

    .line 1608
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lmiui/telephony/PhoneNumberUtils;->toLogSafePhoneNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toLogSafePhoneNumber(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "originalCount"    # I

    .line 1618
    const/4 v0, 0x0

    if-nez p0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1619
    .local v1, "length":I
    :goto_0
    if-nez v1, :cond_1

    .line 1620
    const-string v0, ""

    return-object v0

    .line 1625
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1626
    .local v2, "builder":Ljava/lang/StringBuilder;
    if-le v1, p1, :cond_2

    sub-int v3, v1, p1

    goto :goto_1

    :cond_2
    move v3, v1

    .line 1627
    .local v3, "originalIndex":I
    :goto_1
    nop

    .local v0, "i":I
    :goto_2
    if-ge v0, v1, :cond_5

    .line 1628
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 1629
    .local v4, "c":C
    if-ge v0, v3, :cond_4

    const/16 v5, 0x2d

    if-eq v4, v5, :cond_4

    const/16 v5, 0x40

    if-eq v4, v5, :cond_4

    const/16 v5, 0x2e

    if-ne v4, v5, :cond_3

    goto :goto_3

    .line 1632
    :cond_3
    const/16 v5, 0x78

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .end local v4    # "c":C
    goto :goto_4

    .line 1630
    .restart local v4    # "c":C
    :cond_4
    :goto_3
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1627
    .end local v4    # "c":C
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1635
    .end local v0    # "i":I
    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
