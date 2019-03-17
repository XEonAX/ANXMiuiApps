.class public final Lcom/xiaomi/metoknlp/a/e;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static ag:Ljava/lang/String;

.field private static ah:Ljava/lang/String;

.field private static ai:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 14
    sput-object v0, Lcom/xiaomi/metoknlp/a/e;->ah:Ljava/lang/String;

    .line 15
    sput-object v0, Lcom/xiaomi/metoknlp/a/e;->ai:Ljava/lang/String;

    return-void
.end method

.method public static V()Ljava/lang/String;
    .locals 2

    .prologue
    .line 65
    sget-object v0, Lcom/xiaomi/metoknlp/a/e;->ai:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/metoknlp/a/e;->ai:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    sget-object v0, Lcom/xiaomi/metoknlp/a/e;->ai:Ljava/lang/String;

    .line 70
    :goto_0
    return-object v0

    .line 68
    :cond_0
    const-string v0, "ro.build.version.incremental"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/xiaomi/metoknlp/a/c;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/metoknlp/a/e;->ai:Ljava/lang/String;

    .line 70
    sget-object v0, Lcom/xiaomi/metoknlp/a/e;->ai:Ljava/lang/String;

    goto :goto_0
.end method

.method public static W()Ljava/lang/String;
    .locals 2

    .prologue
    .line 74
    invoke-static {}, Lcom/xiaomi/metoknlp/a/a;->q()Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    invoke-static {}, Lcom/xiaomi/metoknlp/a/a;->r()Ljava/lang/String;

    move-result-object v0

    .line 91
    :goto_0
    return-object v0

    .line 78
    :cond_0
    const-string v0, "ro.product.locale.region"

    const-string v1, "CN"

    invoke-static {v0, v1}, Lcom/xiaomi/metoknlp/a/c;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    const-string v1, "CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 81
    const-string v0, "global"

    goto :goto_0

    .line 84
    :cond_1
    invoke-static {}, Lcom/xiaomi/metoknlp/a/a;->s()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 85
    const-string v0, "alpha"

    goto :goto_0

    .line 86
    :cond_2
    invoke-static {}, Lcom/xiaomi/metoknlp/a/a;->t()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 87
    const-string v0, "dev"

    goto :goto_0

    .line 88
    :cond_3
    invoke-static {}, Lcom/xiaomi/metoknlp/a/a;->u()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 89
    const-string/jumbo v0, "stable"

    goto :goto_0

    .line 91
    :cond_4
    const-string v0, "alpha"

    goto :goto_0
.end method

.method public static X()Ljava/lang/String;
    .locals 4

    .prologue
    .line 150
    const-string v0, ""

    .line 151
    invoke-static {}, Lcom/xiaomi/metoknlp/MetokApplication;->get()Lcom/xiaomi/metoknlp/MetokApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/metoknlp/MetokApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 153
    :try_start_0
    invoke-static {}, Lcom/xiaomi/metoknlp/MetokApplication;->get()Lcom/xiaomi/metoknlp/MetokApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/metoknlp/MetokApplication;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 155
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :goto_0
    return-object v0

    .line 156
    :catch_0
    move-exception v1

    .line 158
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static Y()Ljava/lang/String;
    .locals 3

    .prologue
    .line 164
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 165
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 167
    return-object v0
.end method

.method public static a(I)Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 171
    if-ne p0, v0, :cond_0

    .line 174
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getDeviceModel()Ljava/lang/String;
    .locals 3

    .prologue
    .line 56
    sget-object v0, Lcom/xiaomi/metoknlp/a/e;->ah:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/metoknlp/a/e;->ah:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    sget-object v0, Lcom/xiaomi/metoknlp/a/e;->ah:Ljava/lang/String;

    .line 61
    :goto_0
    return-object v0

    .line 59
    :cond_0
    const-string v0, "ro.product.model"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/xiaomi/metoknlp/a/c;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/metoknlp/a/e;->ah:Ljava/lang/String;

    .line 60
    sget-object v0, Lcom/xiaomi/metoknlp/a/e;->ah:Ljava/lang/String;

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/metoknlp/a/e;->ah:Ljava/lang/String;

    .line 61
    sget-object v0, Lcom/xiaomi/metoknlp/a/e;->ah:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getImei()Ljava/lang/String;
    .locals 2

    .prologue
    .line 41
    sget-object v0, Lcom/xiaomi/metoknlp/a/e;->ag:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 42
    sget-object v0, Lcom/xiaomi/metoknlp/a/e;->ag:Ljava/lang/String;

    .line 52
    :goto_0
    return-object v0

    .line 44
    :cond_0
    invoke-static {}, Lcom/xiaomi/metoknlp/a/d;->getImei()Ljava/lang/String;

    move-result-object v0

    .line 45
    invoke-static {v0}, Lcom/xiaomi/metoknlp/a/e;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    if-eqz v0, :cond_1

    .line 47
    sput-object v0, Lcom/xiaomi/metoknlp/a/e;->ag:Ljava/lang/String;

    .line 48
    sget-object v0, Lcom/xiaomi/metoknlp/a/e;->ag:Ljava/lang/String;

    goto :goto_0

    .line 51
    :cond_1
    const-string v0, "ro.ril.miui.imei"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/xiaomi/metoknlp/a/c;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-static {v0}, Lcom/xiaomi/metoknlp/a/e;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getMcc()I
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 95
    invoke-static {}, Lcom/xiaomi/metoknlp/a/d;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    .line 96
    if-nez v1, :cond_1

    .line 107
    :cond_0
    :goto_0
    return v0

    .line 99
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 100
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 102
    const/4 v2, 0x0

    const/4 v3, 0x3

    :try_start_0
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 103
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getMnc()I
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 111
    invoke-static {}, Lcom/xiaomi/metoknlp/a/d;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    .line 112
    if-nez v1, :cond_1

    .line 124
    :cond_0
    :goto_0
    return v0

    .line 116
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 117
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 119
    const/4 v2, 0x3

    :try_start_0
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 120
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static o(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 18
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 21
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 22
    :cond_0
    const-string v1, ","

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 25
    :cond_1
    const-string v1, "0"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 27
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 28
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    move-object p0, v0

    .line 37
    :cond_2
    :goto_0
    return-object p0

    .line 31
    :catch_0
    move-exception v1

    move-object p0, v0

    .line 32
    goto :goto_0

    :cond_3
    move-object p0, v0

    .line 37
    goto :goto_0
.end method

.method public static p(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 128
    const/16 v1, 0x10

    new-array v2, v1, [C

    fill-array-data v2, :array_0

    .line 131
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 132
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 133
    invoke-virtual {v3, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 134
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    .line 135
    array-length v4, v3

    .line 136
    mul-int/lit8 v1, v4, 0x2

    new-array v5, v1, [C

    move v1, v0

    .line 138
    :goto_0
    if-ge v0, v4, :cond_0

    .line 139
    aget-byte v6, v3, v0

    .line 140
    add-int/lit8 v7, v1, 0x1

    ushr-int/lit8 v8, v6, 0x4

    and-int/lit8 v8, v8, 0xf

    aget-char v8, v2, v8

    aput-char v8, v5, v1

    .line 141
    add-int/lit8 v1, v7, 0x1

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v2, v6

    aput-char v6, v5, v7

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 143
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :goto_1
    return-object v0

    .line 144
    :catch_0
    move-exception v0

    .line 146
    const/4 v0, 0x0

    goto :goto_1

    .line 128
    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method
