.class public Lcom/nexstreaming/app/common/util/o;
.super Ljava/lang/Object;
.source "UserInfo.java"


# direct methods
.method public static a()I
    .locals 1

    .prologue
    .line 317
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 107
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 108
    const-string v0, "nex_tl_app_id"

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    if-eqz v0, :cond_1

    .line 136
    :cond_0
    :goto_0
    return-object v0

    .line 114
    :cond_1
    const-string v0, ""

    .line 115
    const-string v0, ""

    .line 116
    invoke-static {}, Lcom/nexstreaming/app/common/util/o;->a()I

    move-result v0

    .line 118
    const/16 v2, 0x9

    if-lt v0, v2, :cond_2

    .line 120
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "android_id"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    :goto_1
    invoke-static {p0}, Lcom/nexstreaming/app/common/util/o;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 128
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nexstreaming/app/common/util/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    if-eqz v0, :cond_0

    .line 132
    const-string v2, "[UserInfo]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deviceId length : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const-string v2, "[UserInfo]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deviceId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "nex_tl_app_id"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 124
    :cond_2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 68
    const-string v0, ""

    .line 70
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 71
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 72
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 73
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 74
    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 75
    aget-byte v3, v1, v0

    and-int/lit16 v3, v3, 0xff

    add-int/lit16 v3, v3, 0x100

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 83
    :goto_1
    return-object v0

    .line 79
    :catch_0
    move-exception v0

    .line 80
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 81
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static b()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 334
    const-string v0, "ro.board.platform"

    invoke-static {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 335
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, "msm8960"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    const-string v0, "ro.product.board"

    invoke-static {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 337
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, "8x30"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    const-string v1, "MSM8x30n"

    .line 342
    :cond_0
    if-eqz v1, :cond_7

    const-string v0, "exynos5"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 343
    const-string v0, "ro.product.board"

    invoke-static {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 344
    if-eqz v0, :cond_7

    const-string/jumbo v2, "universal7420"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 350
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v3, :cond_2

    .line 351
    :cond_1
    const-string v0, "ro.mediatek.platform"

    invoke-static {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 353
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v3, :cond_4

    .line 354
    :cond_3
    const-string v0, "ro.hardware"

    invoke-static {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 356
    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v3, :cond_6

    .line 357
    :cond_5
    const-string/jumbo v0, "unknown"

    .line 360
    :cond_6
    return-object v0

    :cond_7
    move-object v0, v1

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 180
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 183
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 187
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_1
    check-cast v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/String;

    .line 188
    const-string v1, "[UserInfo]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "appName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    return-object v0

    .line 184
    :catch_0
    move-exception v0

    .line 185
    const/4 v0, 0x0

    goto :goto_0

    .line 187
    :cond_0
    const-string v0, "(unknown)"

    goto :goto_1
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 194
    const-string v0, ""

    .line 197
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 198
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 197
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 199
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :goto_0
    const-string v1, "[UserInfo]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    return-object v0

    .line 200
    :catch_0
    move-exception v1

    .line 201
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 234
    const-string v0, ""

    .line 237
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 238
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 237
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 239
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    :goto_0
    const-string v1, "[UserInfo]"

    const-string v2, "Version Information ===== "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const-string v1, "[UserInfo]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "version name : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    return-object v0

    .line 240
    :catch_0
    move-exception v1

    .line 242
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
