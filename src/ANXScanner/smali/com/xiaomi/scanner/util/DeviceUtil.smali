.class public Lcom/xiaomi/scanner/util/DeviceUtil;
.super Ljava/lang/Object;
.source "DeviceUtil.java"


# static fields
.field private static final AMAZON_ASSISTANT_PRELOAD_COUNTRIES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final EU:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final IS_A7:Z

.field private static final IS_C1:Z

.field private static final IS_C8:Z

.field private static final IS_D5:Z

.field private static final IS_E7:Z

.field private static final IS_H2X_LC:Z

.field private static final IS_MI3TD:Z

.field private static final IS_MI7:Z

.field public static final UNKNOWN:Ljava/lang/String; = "unknown"


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 16
    const-string v0, "lte26007"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/xiaomi/scanner/util/DeviceUtil;->IS_H2X_LC:Z

    .line 17
    const-string v0, "leo"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/xiaomi/scanner/util/DeviceUtil;->IS_MI7:Z

    .line 18
    const-string v0, "pisces"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/xiaomi/scanner/util/DeviceUtil;->IS_MI3TD:Z

    .line 19
    const-string v0, "capricorn"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/xiaomi/scanner/util/DeviceUtil;->IS_A7:Z

    .line 20
    const-string v0, "sagit"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/xiaomi/scanner/util/DeviceUtil;->IS_C1:Z

    .line 21
    const-string v0, "jason"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/xiaomi/scanner/util/DeviceUtil;->IS_C8:Z

    .line 22
    const-string v0, "chiron"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/xiaomi/scanner/util/DeviceUtil;->IS_D5:Z

    .line 23
    const-string v0, "vince"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/xiaomi/scanner/util/DeviceUtil;->IS_E7:Z

    .line 27
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x1c

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "AT"

    aput-object v2, v1, v4

    const-string v2, "BE"

    aput-object v2, v1, v5

    const-string v2, "BG"

    aput-object v2, v1, v6

    const-string v2, "CY"

    aput-object v2, v1, v7

    const-string v2, "CZ"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "DE"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "DK"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "EE"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "ES"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "FI"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "FR"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "GB"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "GR"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "HR"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "HU"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "IE"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "IT"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "LT"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "LU"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "LV"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "MT"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "NL"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "PL"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "PT"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "RO"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "SE"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "SI"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "SK"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/xiaomi/scanner/util/DeviceUtil;->EU:Ljava/util/Set;

    .line 44
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "ID"

    aput-object v2, v1, v4

    const-string v2, "SG"

    aput-object v2, v1, v5

    const-string v2, "MY"

    aput-object v2, v1, v6

    const-string v2, "VN"

    aput-object v2, v1, v7

    const-string v2, "ES"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "IT"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "PL"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/xiaomi/scanner/util/DeviceUtil;->AMAZON_ASSISTANT_PRELOAD_COUNTRIES:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkRegion(Ljava/lang/String;)Z
    .locals 6
    .param p0, "region"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 94
    const-string v0, "miui.os.Build"

    .line 95
    invoke-static {v0}, Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;->getClass(Ljava/lang/String;)Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;

    move-result-object v0

    const-string v1, "checkRegion"

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v4

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p0, v3, v4

    .line 96
    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;->callStaticMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;->booleanResult()Z

    move-result v0

    return v0
.end method

.method public static getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMiuiVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 117
    const-string v0, "ro.build.version.incremental"

    const-string v1, "unknown"

    invoke-static {v0, v1}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRegion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 113
    const-string v0, "ro.miui.region"

    const-string v1, "GB"

    invoke-static {v0, v1}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static isDevices(Ljava/lang/String;)Z
    .locals 1
    .param p0, "field"    # Ljava/lang/String;

    .prologue
    .line 68
    const-string v0, "miui.os.Build"

    invoke-static {v0}, Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;->getClass(Ljava/lang/String;)Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;->getStaticFiled(Ljava/lang/String;)Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;->booleanResult()Z

    move-result v0

    return v0
.end method

.method public static isEURegion()Z
    .locals 2

    .prologue
    .line 72
    invoke-static {}, Lcom/xiaomi/scanner/util/DeviceUtil;->getRegion()Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "country":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "unknown"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 74
    :cond_0
    const/4 v1, 0x1

    .line 76
    :goto_0
    return v1

    :cond_1
    sget-object v1, Lcom/xiaomi/scanner/util/DeviceUtil;->EU:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public static isImageNeedRotate()Z
    .locals 1

    .prologue
    .line 48
    sget-boolean v0, Lcom/xiaomi/scanner/util/DeviceUtil;->IS_H2X_LC:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/xiaomi/scanner/util/DeviceUtil;->IS_C1:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/xiaomi/scanner/util/DeviceUtil;->IS_C8:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/xiaomi/scanner/util/DeviceUtil;->IS_D5:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/xiaomi/scanner/util/DeviceUtil;->IS_E7:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isInternationalBuild()Z
    .locals 1

    .prologue
    .line 64
    const-string v0, "IS_INTERNATIONAL_BUILD"

    invoke-static {v0}, Lcom/xiaomi/scanner/util/DeviceUtil;->isDevices(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isKoreaRegion()Z
    .locals 2

    .prologue
    .line 90
    sget-object v0, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/scanner/util/DeviceUtil;->getRegion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isLayoutRtl()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 109
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLowMemoryDevice()Z
    .locals 1

    .prologue
    .line 52
    sget-boolean v0, Lcom/xiaomi/scanner/util/DeviceUtil;->IS_H2X_LC:Z

    return v0
.end method

.method public static isMi2()Z
    .locals 1

    .prologue
    .line 60
    const-string v0, "IS_MITWO"

    invoke-static {v0}, Lcom/xiaomi/scanner/util/DeviceUtil;->isDevices(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "IS_MI2A"

    invoke-static {v0}, Lcom/xiaomi/scanner/util/DeviceUtil;->isDevices(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPreLoadRegionAA()Z
    .locals 2

    .prologue
    .line 81
    invoke-static {}, Lcom/xiaomi/scanner/util/DeviceUtil;->getRegion()Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "country":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "unknown"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 83
    :cond_0
    const/4 v1, 0x1

    .line 85
    :goto_0
    return v1

    :cond_1
    sget-object v1, Lcom/xiaomi/scanner/util/DeviceUtil;->AMAZON_ASSISTANT_PRELOAD_COUNTRIES:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public static isSimpleChinese()Z
    .locals 2

    .prologue
    .line 105
    sget-object v0, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isSurfaceSizeLimited()Z
    .locals 1

    .prologue
    .line 56
    sget-boolean v0, Lcom/xiaomi/scanner/util/DeviceUtil;->IS_MI7:Z

    return v0
.end method
