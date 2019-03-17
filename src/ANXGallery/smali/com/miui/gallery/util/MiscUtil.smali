.class public Lcom/miui/gallery/util/MiscUtil;
.super Lcom/miui/gallery/util/BaseMiscUtil;
.source "MiscUtil.java"


# static fields
.field private static sHashedDeviceId:Ljava/lang/String;


# direct methods
.method public static ListToArray(Ljava/util/List;)[J
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)[J"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {p0}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 99
    const/4 v0, 0x0

    .line 108
    :cond_0
    return-object v0

    .line 101
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    .line 103
    .local v3, "size":I
    new-array v0, v3, [J

    .line 104
    .local v0, "array":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 105
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 106
    .local v2, "obj":Ljava/lang/Long;
    if-nez v2, :cond_2

    const-wide/16 v4, 0x0

    :goto_1
    aput-wide v4, v0, v1

    .line 104
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 106
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_1
.end method

.method public static arrayToList([J)Ljava/util/List;
    .locals 4
    .param p0, "array"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 118
    .local v1, "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 119
    aget-wide v2, p0, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
    :cond_0
    return-object v1
.end method

.method public static copyStringArray([Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p0, "origin"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 152
    if-eqz p0, :cond_0

    array-length v1, p0

    if-lez v1, :cond_0

    .line 153
    array-length v1, p0

    new-array v0, v1, [Ljava/lang/String;

    .line 154
    .local v0, "ret":[Ljava/lang/String;
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 157
    .end local v0    # "ret":[Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dpValue"    # F

    .prologue
    .line 304
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 305
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public static getAppVersionCode()I
    .locals 1

    .prologue
    .line 162
    const-string v0, "com.miui.gallery"

    invoke-static {v0}, Lcom/miui/gallery/util/MiscUtil;->getAppVersionCode(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getAppVersionCode(Ljava/lang/String;)I
    .locals 6
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 166
    const/4 v4, -0x1

    .line 167
    .local v4, "versioncode":I
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 169
    :try_start_0
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 170
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 171
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/16 v5, 0x4000

    invoke-virtual {v3, p0, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 172
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    iget v4, v2, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return v4

    .line 173
    :catch_0
    move-exception v1

    .line 174
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getCurrentDate()Ljava/lang/String;
    .locals 4

    .prologue
    .line 258
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy:MM:dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 259
    .local v0, "format":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getDefaultSplitActionBarHeight(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 245
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public static getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    invoke-static {}, Lcom/miui/telephony/TelephonyHelper;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDimensionPixelOffset(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defType"    # Ljava/lang/String;
    .param p3, "defPackage"    # Ljava/lang/String;

    .prologue
    .line 249
    const/4 v0, 0x0

    .line 250
    .local v0, "height":I
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 251
    .local v1, "resourceId":I
    if-lez v1, :cond_0

    .line 252
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 254
    :cond_0
    return v0
.end method

.method public static getHashedDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/miui/gallery/util/MiscUtil;->sHashedDeviceId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-static {}, Lcom/miui/gallery/util/MiscUtil;->selectHashedId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/util/MiscUtil;->sHashedDeviceId:Ljava/lang/String;

    .line 55
    :cond_0
    sget-object v0, Lcom/miui/gallery/util/MiscUtil;->sHashedDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public static getSimOperator()Ljava/lang/String;
    .locals 3

    .prologue
    .line 226
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 227
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getStatusBarHeight(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 241
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/util/MiscUtil;->getDimensionPixelOffset(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static hashDeviceInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "plain"    # Ljava/lang/String;

    .prologue
    .line 67
    if-nez p0, :cond_0

    .line 68
    const/4 v2, 0x0

    .line 72
    :goto_0
    return-object v2

    .line 71
    :cond_0
    :try_start_0
    const-string v2, "SHA1"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 72
    .local v0, "md":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    const/16 v3, 0x8

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x10

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 73
    .end local v0    # "md":Ljava/security/MessageDigest;
    :catch_0
    move-exception v1

    .line 74
    .local v1, "var3":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "failed to init SHA1 digest"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static isAppProcessInForeground(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 197
    const-string v5, "activity"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 198
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    .line 199
    .local v3, "runningAppProcessInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-static {v3}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 200
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    .line 201
    .local v2, "pid":I
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 202
    .local v1, "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v6, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v6, v2, :cond_0

    .line 203
    iget v5, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v6, 0x64

    if-ne v5, v6, :cond_1

    const/4 v4, 0x1

    .line 207
    .end local v1    # "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v2    # "pid":I
    :cond_1
    return v4
.end method

.method public static isIntentSupported(Landroid/content/Intent;)Z
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x0

    .line 181
    if-nez p0, :cond_1

    .line 184
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isKeyGuardLocked(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    const-string v1, "keyguard"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 48
    .local v0, "keyguardManager":Landroid/app/KeyguardManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isNightMode(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 309
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPackageInstalled(Ljava/lang/String;)Z
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 188
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    const/4 v1, 0x0

    .line 193
    :goto_0
    return v1

    .line 191
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 192
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    invoke-static {v0}, Lcom/miui/gallery/util/MiscUtil;->isIntentSupported(Landroid/content/Intent;)Z

    move-result v1

    goto :goto_0
.end method

.method public static listToArray(Ljava/util/List;)[J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)[J"
        }
    .end annotation

    .prologue
    .line 130
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-nez p0, :cond_1

    const/4 v0, 0x0

    .line 135
    :cond_0
    return-object v0

    .line 131
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    new-array v0, v2, [J

    .line 132
    .local v0, "array":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 133
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 132
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static selectHashedId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    sget-boolean v0, Lcom/miui/os/Device;->IS_TABLET:Z

    if-eqz v0, :cond_0

    .line 60
    invoke-static {}, Lmiui/net/ConnectivityHelper;->getInstance()Lmiui/net/ConnectivityHelper;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/net/ConnectivityHelper;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 62
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/miui/telephony/TelephonyHelper;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/util/MiscUtil;->hashDeviceInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static setRecyclerViewScrollToBottomListener(Landroid/support/v7/widget/RecyclerView;Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p1, "scrollToBottomListener"    # Ljava/lang/Runnable;

    .prologue
    .line 281
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    new-instance v0, Lcom/miui/gallery/util/MiscUtil$1;

    invoke-direct {v0, p1}, Lcom/miui/gallery/util/MiscUtil$1;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    goto :goto_0
.end method
