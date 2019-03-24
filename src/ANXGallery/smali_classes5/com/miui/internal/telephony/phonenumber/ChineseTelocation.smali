.class public Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;
.super Ljava/lang/Object;
.source "ChineseTelocation.java"


# static fields
.field public static final COUNTRY_DETECTOR:Ljava/lang/String; = "country_detector"

.field private static final EMPTY:Ljava/lang/String; = ""

.field private static final ENABLE_TELOCATION:Ljava/lang/String; = "enable_telocation"

.field private static final TAG:Ljava/lang/String; = "ChineseTelocation"

.field private static sInstance:Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;


# instance fields
.field private mAllowTelocation:Z

.field private mContext:Landroid/content/Context;

.field private mSettingObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;

    invoke-direct {v0}, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;-><init>()V

    sput-object v0, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->sInstance:Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;

    .line 18
    invoke-direct {p0}, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->updateTelocationSetting()V

    return-void
.end method

.method public static getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 146
    const/4 v0, 0x0

    .line 147
    .local v0, "countryIso":Ljava/lang/String;
    const-string v1, "country_detector"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/CountryDetector;

    .line 149
    .local v1, "detector":Landroid/location/CountryDetector;
    if-eqz v1, :cond_1

    .line 150
    invoke-virtual {v1}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v2

    .line 151
    .local v2, "country":Landroid/location/Country;
    if-eqz v2, :cond_0

    .line 152
    invoke-virtual {v2}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 154
    :cond_0
    const-string v3, "ChineseTelocation"

    const-string v4, "getCurrentCountryIso CountryDetector.detectCountry() is null."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    .end local v2    # "country":Landroid/location/Country;
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 158
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 159
    .local v2, "locale":Ljava/util/Locale;
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 161
    .end local v2    # "locale":Ljava/util/Locale;
    :cond_2
    return-object v0
.end method

.method public static getInstance()Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;
    .locals 1

    .line 43
    sget-object v0, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->sInstance:Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;

    return-object v0
.end method

.method private initObserver(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->mContext:Landroid/content/Context;

    .line 62
    iget-object v0, p0, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 63
    iput-object p1, p0, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->mContext:Landroid/content/Context;

    .line 65
    :cond_0
    invoke-direct {p0}, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->updateTelocationSetting()V

    .line 67
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 68
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation$1;

    invoke-direct {v1, p0, v0}, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation$1;-><init>(Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->mSettingObserver:Landroid/database/ContentObserver;

    .line 76
    iget-object v1, p0, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "enable_telocation"

    .line 77
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->mSettingObserver:Landroid/database/ContentObserver;

    .line 76
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 79
    return-void
.end method

.method public static isTelocationEnable(Landroid/content/ContentResolver;)Z
    .locals 7
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .line 52
    const/4 v0, 0x1

    :try_start_0
    const-string v1, "android.provider.MiuiSettings$Telephony"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 53
    .local v1, "clazz":Ljava/lang/Class;
    const-string v2, "isTelocationEnable"

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-array v4, v0, [Ljava/lang/Class;

    const-class v5, Landroid/content/ContentResolver;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v1, v2, v3, v4}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Lmiui/reflect/Method;

    move-result-object v2

    .line 54
    .local v2, "method":Lmiui/reflect/Method;
    const/4 v3, 0x0

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p0, v4, v6

    invoke-virtual {v2, v1, v3, v4}, Lmiui/reflect/Method;->invokeBoolean(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    .line 55
    .end local v1    # "clazz":Ljava/lang/Class;
    .end local v2    # "method":Lmiui/reflect/Method;
    :catch_0
    move-exception v1

    .line 57
    return v0
.end method

.method private updateTelocationSetting()V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->isTelocationEnable(Landroid/content/ContentResolver;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->mAllowTelocation:Z

    .line 48
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->mSettingObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->mSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 39
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 40
    return-void
.end method

.method public getAreaCode(Ljava/lang/CharSequence;II)Ljava/lang/String;
    .locals 1
    .param p1, "cs"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "length"    # I

    .line 115
    invoke-static {}, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->getInstance()Lmiui/telephony/phonenumber/ChineseTelocationConverter;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->getAreaCode(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExternalLocation(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/util/Locale;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "countryCode"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/CharSequence;
    .param p4, "locale"    # Ljava/util/Locale;

    .line 123
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    invoke-static {}, Lmiui/telephony/phonenumber/CountryCode;->getUserDefinedCountryCode()Ljava/lang/String;

    move-result-object p2

    .line 125
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    invoke-static {}, Lmiui/telephony/phonenumber/CountryCode;->getIccCountryCode()Ljava/lang/String;

    move-result-object p2

    .line 130
    :cond_0
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 132
    invoke-static {}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getInstance()Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    move-result-object v0

    .line 135
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v1

    .line 137
    invoke-static {p1}, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 134
    invoke-static {v1, p3, v2}, Lcom/miui/internal/telephony/phonenumber/PhoneNumberCompat;->parse(Lcom/android/i18n/phonenumbers/PhoneNumberUtil;Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v1

    .line 133
    invoke-virtual {v0, v1, p4}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getDescriptionForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    return-object v0

    .line 141
    :cond_1
    goto :goto_0

    .line 140
    :catch_0
    move-exception v0

    .line 142
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method public getLocation(Landroid/content/Context;Ljava/lang/CharSequence;IIZ)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cs"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "length"    # I
    .param p5, "withAreaCode"    # Z

    .line 82
    iget-object v0, p0, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 83
    invoke-direct {p0, p1}, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->initObserver(Landroid/content/Context;)V

    .line 86
    :cond_0
    iget-boolean v0, p0, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->mAllowTelocation:Z

    if-nez v0, :cond_1

    .line 87
    const-string v0, ""

    return-object v0

    .line 89
    :cond_1
    const-string v0, ""

    .line 90
    .local v0, "location":Ljava/lang/String;
    const/4 v1, -0x1

    .line 91
    .local v1, "id":I
    if-eqz p5, :cond_2

    .line 92
    invoke-static {}, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->getInstance()Lmiui/telephony/phonenumber/ChineseTelocationConverter;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p2, p3, p4, v3}, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->getUniqId(Ljava/lang/CharSequence;IIZ)I

    move-result v1

    .line 94
    :cond_2
    if-lez v1, :cond_3

    .line 95
    invoke-static {}, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->getInstance()Lmiui/telephony/phonenumber/ChineseTelocationConverter;

    move-result-object v2

    invoke-virtual {v2, p2, p3, p4, p5}, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->getLocation(Ljava/lang/CharSequence;IIZ)Ljava/lang/String;

    move-result-object v0

    .line 97
    :cond_3
    return-object v0
.end method

.method public getOperator(Landroid/content/Context;Ljava/lang/CharSequence;IIZ)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cs"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "length"    # I
    .param p5, "isNormalMobileNumber"    # Z

    .line 101
    iget-object v0, p0, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 102
    invoke-direct {p0, p1}, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->initObserver(Landroid/content/Context;)V

    .line 104
    :cond_0
    iget-boolean v0, p0, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->mAllowTelocation:Z

    if-nez v0, :cond_1

    .line 105
    const-string v0, ""

    return-object v0

    .line 107
    :cond_1
    if-nez p5, :cond_2

    .line 108
    const-string v0, ""

    return-object v0

    .line 110
    :cond_2
    invoke-static {}, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->getInstance()Lmiui/telephony/phonenumber/ChineseTelocationConverter;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->getOperator(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "operator":Ljava/lang/String;
    return-object v0
.end method

.method public parseAreaCode(Ljava/lang/CharSequence;II)Ljava/lang/String;
    .locals 1
    .param p1, "cs"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "length"    # I

    .line 119
    invoke-static {}, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->getInstance()Lmiui/telephony/phonenumber/ChineseTelocationConverter;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->parseAreaCode(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
