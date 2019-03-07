.class public Lcom/miui/screenrecorder/tools/RegionUtils;
.super Ljava/lang/Object;
.source "RegionUtils.java"


# static fields
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


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 14
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x1c

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "AT"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "BE"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "BG"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "CY"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "CZ"

    aput-object v3, v1, v2

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

    sput-object v0, Lcom/miui/screenrecorder/tools/RegionUtils;->EU:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRegion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 55
    const-string v1, "ro.miui.region"

    invoke-static {v1}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "region":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    const-string v1, "ro.product.locale.region"

    invoke-static {v1}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    const-string v1, "persist.sys.country"

    invoke-static {v1}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 65
    :cond_0
    return-object v0
.end method

.method public static isInARLan()Z
    .locals 2

    .prologue
    .line 34
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isInEURegion()Z
    .locals 3

    .prologue
    .line 24
    const-string v1, "ro.miui.region"

    const-string v2, "unknown"

    invoke-static {v1, v2}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 25
    .local v0, "country":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "unknown"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 26
    :cond_0
    const/4 v1, 0x1

    .line 28
    :goto_0
    return v1

    :cond_1
    sget-object v1, Lcom/miui/screenrecorder/tools/RegionUtils;->EU:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public static isInFaIRLan()Z
    .locals 2

    .prologue
    .line 39
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isInThisCountry(Ljava/lang/String;)Z
    .locals 1
    .param p0, "country"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    const/4 v0, 0x0

    .line 51
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/miui/screenrecorder/tools/RegionUtils;->getRegion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
