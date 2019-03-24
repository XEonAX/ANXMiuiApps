.class public Lmiui/telephony/phonenumber/CountryCode;
.super Ljava/lang/Object;
.source "CountryCode.java"


# static fields
.field private static final CONTACT_COUNTRYCODE:Ljava/lang/String; = "persist.radio.countrycode"

.field private static final DEFAULT_IDD_CODE:Ljava/lang/String; = "00"

.field private static final EMPTY:Ljava/lang/String; = ""

.field public static final GSM_GENERAL_IDD_CODE:Ljava/lang/String; = "+"

.field private static ICC_COUNTRY_CODE:Ljava/lang/String;

.field private static ICC_OPERATOR:Ljava/lang/String;

.field private static NETWORK_COUNTRY_CODE:Ljava/lang/String;

.field private static NETWORK_IDD_CODE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static NETWORK_OPERATOR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-string v0, ""

    sput-object v0, Lmiui/telephony/phonenumber/CountryCode;->ICC_OPERATOR:Ljava/lang/String;

    .line 24
    const-string v0, ""

    sput-object v0, Lmiui/telephony/phonenumber/CountryCode;->ICC_COUNTRY_CODE:Ljava/lang/String;

    .line 25
    const-string v0, ""

    sput-object v0, Lmiui/telephony/phonenumber/CountryCode;->NETWORK_OPERATOR:Ljava/lang/String;

    .line 26
    const-string v0, ""

    sput-object v0, Lmiui/telephony/phonenumber/CountryCode;->NETWORK_COUNTRY_CODE:Ljava/lang/String;

    .line 27
    const-string v0, "00"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lmiui/telephony/phonenumber/CountryCode;->NETWORK_IDD_CODE:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIccCountryCode()Ljava/lang/String;
    .locals 1

    .line 58
    invoke-static {}, Lmiui/telephony/phonenumber/CountryCode;->updateIcc()V

    .line 59
    sget-object v0, Lmiui/telephony/phonenumber/CountryCode;->ICC_COUNTRY_CODE:Ljava/lang/String;

    return-object v0
.end method

.method public static getIddCode()Ljava/lang/String;
    .locals 2

    .line 81
    invoke-static {}, Lmiui/telephony/phonenumber/CountryCode;->updateNetwork()V

    .line 82
    sget-object v0, Lmiui/telephony/phonenumber/CountryCode;->NETWORK_IDD_CODE:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getIddCodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 89
    invoke-static {}, Lmiui/telephony/phonenumber/CountryCode;->updateNetwork()V

    .line 90
    sget-object v0, Lmiui/telephony/phonenumber/CountryCode;->NETWORK_IDD_CODE:Ljava/util/List;

    return-object v0
.end method

.method public static getNetworkCountryCode()Ljava/lang/String;
    .locals 1

    .line 66
    invoke-static {}, Lmiui/telephony/phonenumber/CountryCode;->updateNetwork()V

    .line 67
    sget-object v0, Lmiui/telephony/phonenumber/CountryCode;->NETWORK_COUNTRY_CODE:Ljava/lang/String;

    return-object v0
.end method

.method public static getUserDefinedCountryCode()Ljava/lang/String;
    .locals 2

    .line 74
    const-string v0, "persist.radio.countrycode"

    const-string v1, ""

    invoke-static {v0, v1}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isChinaEnvironment()Z
    .locals 2

    .line 97
    invoke-static {}, Lmiui/telephony/phonenumber/CountryCode;->getUserDefinedCountryCode()Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "cc":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    invoke-static {}, Lmiui/telephony/phonenumber/CountryCode;->getIccCountryCode()Ljava/lang/String;

    move-result-object v0

    .line 101
    :cond_0
    invoke-static {}, Lmiui/telephony/phonenumber/CountryCode;->getNetworkCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/telephony/phonenumber/CountryCodeConverter;->isChinaEnvironment(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private static updateIcc()V
    .locals 4

    .line 30
    invoke-static {}, Lmiui/util/AppConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "phone"

    .line 31
    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 32
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    .line 33
    .local v1, "simOperator":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_0

    sget-object v2, Lmiui/telephony/phonenumber/CountryCode;->ICC_OPERATOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 34
    sput-object v1, Lmiui/telephony/phonenumber/CountryCode;->ICC_OPERATOR:Ljava/lang/String;

    .line 35
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmiui/telephony/phonenumber/CountryCodeConverter;->getCountryCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lmiui/telephony/phonenumber/CountryCode;->ICC_COUNTRY_CODE:Ljava/lang/String;

    .line 37
    :cond_0
    return-void
.end method

.method private static updateNetwork()V
    .locals 4

    .line 40
    invoke-static {}, Lmiui/util/AppConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "phone"

    .line 41
    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 42
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, "networkOperator":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_1

    sget-object v2, Lmiui/telephony/phonenumber/CountryCode;->NETWORK_OPERATOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 44
    sput-object v1, Lmiui/telephony/phonenumber/CountryCode;->NETWORK_OPERATOR:Ljava/lang/String;

    .line 45
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 46
    .local v2, "mcc":Ljava/lang/String;
    invoke-static {v2}, Lmiui/telephony/phonenumber/CountryCodeConverter;->getCountryCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lmiui/telephony/phonenumber/CountryCode;->NETWORK_COUNTRY_CODE:Ljava/lang/String;

    .line 47
    invoke-static {v2}, Lmiui/telephony/phonenumber/CountryCodeConverter;->getIddCodes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    sput-object v3, Lmiui/telephony/phonenumber/CountryCode;->NETWORK_IDD_CODE:Ljava/util/List;

    .line 48
    sget-object v3, Lmiui/telephony/phonenumber/CountryCode;->NETWORK_IDD_CODE:Ljava/util/List;

    if-eqz v3, :cond_0

    sget-object v3, Lmiui/telephony/phonenumber/CountryCode;->NETWORK_COUNTRY_CODE:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 49
    :cond_0
    const-string v3, "00"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    sput-object v3, Lmiui/telephony/phonenumber/CountryCode;->NETWORK_IDD_CODE:Ljava/util/List;

    .line 52
    .end local v2    # "mcc":Ljava/lang/String;
    :cond_1
    return-void
.end method
