.class public final Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;
.super Ljava/lang/Object;
.source "TUnionPhoneInfoUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils$SystemField;
    }
.end annotation


# static fields
.field public static final TUNION_KEY_COOKIE_CNA:Ljava/lang/String; = "cna"

.field private static j:Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:J

.field private final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public utdid:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;->h:J

    .line 36
    new-instance v0, Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils$1;

    invoke-direct {v0, p0}, Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils$1;-><init>(Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;)V

    iput-object v0, p0, Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;->i:Ljava/util/Map;

    .line 151
    invoke-static {}, Lcom/alimama/tunion/trade/TUnionTradeSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 152
    if-eqz v1, :cond_2

    .line 163
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;->a:Ljava/lang/String;

    .line 165
    invoke-static {}, Lcom/alimama/tunion/trade/TUnionTradeSDK;->getInstance()Lcom/alimama/tunion/trade/TUnionTradeSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alimama/tunion/trade/TUnionTradeSDK;->getTUnionCommon()Lcom/alimama/tunion/trade/base/ITUnionCommon;

    move-result-object v0

    .line 166
    if-eqz v0, :cond_0

    .line 167
    invoke-interface {v0}, Lcom/alimama/tunion/trade/base/ITUnionCommon;->getUtdid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;->utdid:Ljava/lang/String;

    .line 170
    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 172
    :try_start_0
    iget-object v2, p0, Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;->a:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;->b:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :goto_0
    iget-object v0, p0, Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;->b:Ljava/lang/String;

    .line 183
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 184
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 183
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 186
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;->d:Ljava/lang/String;

    .line 187
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;->e:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 194
    :cond_2
    :goto_1
    return-void

    .line 173
    :catch_0
    move-exception v0

    .line 174
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 189
    :catch_1
    move-exception v0

    .line 190
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 197
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    sget-object v0, Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils$SystemField;->UNKNOWN:Ljava/lang/String;

    .line 200
    :goto_0
    return-object v0

    :cond_0
    const-string v0, " "

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 223
    invoke-static {}, Lcom/alimama/tunion/trade/TUnionTradeSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 224
    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 236
    :cond_0
    :goto_0
    return v0

    .line 230
    :cond_1
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    .line 231
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 236
    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 232
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getBuildModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;
    .locals 2

    .prologue
    .line 45
    sget-object v0, Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;->j:Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;

    if-nez v0, :cond_1

    .line 46
    const-class v1, Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;

    monitor-enter v1

    .line 47
    :try_start_0
    sget-object v0, Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;->j:Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;

    invoke-direct {v0}, Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;-><init>()V

    sput-object v0, Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;->j:Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;

    .line 50
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :cond_1
    sget-object v0, Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;->j:Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;

    return-object v0

    .line 50
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getSDKVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getAliApp()Ljava/lang/String;
    .locals 4

    .prologue
    .line 207
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v0, ""

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 209
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 210
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 211
    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 214
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 215
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 216
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 218
    :cond_2
    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getCid()Ljava/lang/String;
    .locals 6

    .prologue
    .line 91
    iget-wide v0, p0, Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;->h:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;->h:J

    .line 94
    :cond_0
    const-string v0, "%s_%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;->getMcid()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v4, p0, Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;->h:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCnaCookie()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 103
    .line 105
    invoke-static {}, Lcom/alimama/tunion/trade/TUnionTradeSDK;->getInstance()Lcom/alimama/tunion/trade/TUnionTradeSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alimama/tunion/trade/TUnionTradeSDK;->getTUnionCookie()Lcom/alimama/tunion/trade/base/ITUnionCookie;

    move-result-object v0

    .line 106
    if-eqz v0, :cond_4

    .line 107
    const-string v3, ".taobao.com"

    invoke-interface {v0, v3}, Lcom/alimama/tunion/trade/base/ITUnionCookie;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 126
    :goto_1
    return-object v1

    .line 113
    :cond_0
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 114
    array-length v3, v1

    move v0, v2

    :goto_2
    if-ge v0, v3, :cond_3

    aget-object v4, v1, v0

    .line 115
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 114
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 118
    :cond_2
    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 119
    array-length v5, v4

    if-le v5, v7, :cond_1

    .line 120
    aget-object v5, v4, v2

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "cna"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 121
    aget-object v0, v4, v7

    iput-object v0, p0, Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;->c:Ljava/lang/String;

    .line 126
    :cond_3
    iget-object v1, p0, Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;->c:Ljava/lang/String;

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method public getDeviceID()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 130
    iget-object v0, p0, Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;->utdid:Ljava/lang/String;

    .line 131
    invoke-static {}, Lcom/alimama/tunion/trade/TUnionTradeSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 133
    if-nez v1, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 146
    :cond_0
    :goto_0
    return-object v0

    .line 137
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v3, :cond_0

    .line 138
    :cond_2
    iget-object v0, p0, Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils$SystemField;->UNKNOWN:Ljava/lang/String;

    iget-object v2, p0, Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v3, :cond_3

    .line 139
    iget-object v0, p0, Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;->f:Ljava/lang/String;

    goto :goto_0

    .line 140
    :cond_3
    iget-object v0, p0, Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils$SystemField;->UNKNOWN:Ljava/lang/String;

    iget-object v2, p0, Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v3, :cond_4

    .line 141
    iget-object v0, p0, Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;->g:Ljava/lang/String;

    goto :goto_0

    .line 143
    :cond_4
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getMcid()Ljava/lang/String;
    .locals 4

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;->getDeviceID()Ljava/lang/String;

    move-result-object v0

    .line 62
    const-string v1, "tunion4android@%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;->a:Ljava/lang/String;

    return-object v0
.end method

.method public initCid()V
    .locals 2

    .prologue
    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;->h:J

    .line 83
    return-void
.end method
