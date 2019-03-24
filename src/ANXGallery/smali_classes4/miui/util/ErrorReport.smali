.class public Lmiui/util/ErrorReport;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/ErrorReport$AnrDataBuilder;,
        Lmiui/util/ErrorReport$ExceptionDataBuilder;,
        Lmiui/util/ErrorReport$DataBuilder;
    }
.end annotation


# static fields
.field public static final DROPBOX_TAG:Ljava/lang/String; = "fc_anr"

.field public static final FLAG_SEND_DIRECTLY:I = 0x2

.field public static final FLAG_UNMETERED_NETWORK_ONLY:I = 0x1

.field private static final IF:Ljava/lang/String; = "network"

.field private static final IG:Ljava/lang/String; = "device"

.field private static final IH:Ljava/lang/String; = "model"

.field private static final II:Ljava/lang/String; = "mac_address"

.field private static final IJ:Ljava/lang/String; = "imei"

.field private static final IK:Ljava/lang/String; = "platform"

.field private static final IP:Ljava/lang/String; = "build_version"

.field private static final IU:Ljava/lang/String; = "package_name"

.field private static final IV:Ljava/lang/String; = "app_version"

.field private static final IW:Ljava/lang/String; = "error_type"

.field private static final IX:Ljava/lang/String; = "exception_class"

.field private static final IY:Ljava/lang/String; = "exception_source_method"

.field private static final IZ:Ljava/lang/String; = "anr_cause"

.field private static final Ja:Ljava/lang/String; = "anr_activity"

.field private static final Jb:Ljava/lang/String; = "stack_track"

.field private static final Jc:Ljava/lang/String; = "wifi_state"

.field private static final Jd:Ljava/lang/String; = "user_allowed"

.field private static final Je:Ljava/lang/String; = "fc"

.field private static final Jf:Ljava/lang/String; = "anr"

.field private static final Jg:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "ErrorReport"


# direct methods
.method protected constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Ljava/lang/InstantiationException;

    const-string v1, "Cannot instantiate utility class"

    invoke-direct {v0, v1}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(Landroid/content/Context;Lmiui/util/ErrorReport$DataBuilder;I)V
    .locals 1

    .line 337
    new-instance v0, Lmiui/util/ErrorReport$1;

    invoke-direct {v0, p0, p1, p2}, Lmiui/util/ErrorReport$1;-><init>(Landroid/content/Context;Lmiui/util/ErrorReport$DataBuilder;I)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    .line 343
    invoke-virtual {v0, p0}, Lmiui/util/ErrorReport$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 344
    return-void
.end method

.method private static a(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 1

    .line 347
    const-string p0, "1"

    const-string v0, "sys.boot_completed"

    invoke-static {v0}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 348
    invoke-static {}, Lmiui/os/DropBoxManager;->getInstance()Lmiui/os/DropBoxManager;

    move-result-object p0

    .line 349
    const-string v0, "fc_anr"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lmiui/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    goto :goto_0

    .line 351
    :cond_0
    const-string p0, "ErrorReport"

    const-string p1, "Can not request dropbox before boot completed!"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :goto_0
    return-void
.end method

.method private static dp()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 226
    const-string v1, "dalvik.vm.stack-trace-file"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 227
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 228
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 229
    nop

    .line 231
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 233
    nop

    .line 234
    nop

    .line 235
    const/4 v2, 0x0

    move v3, v2

    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 236
    const-string v5, "DALVIK THREADS:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 237
    nop

    .line 241
    const/4 v2, 0x1

    goto :goto_0

    .line 238
    :cond_1
    if-eqz v2, :cond_2

    const-string v5, "-----"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 239
    goto :goto_1

    .line 241
    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    .line 242
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0xa

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 243
    add-int/lit8 v3, v3, 0x1

    .line 245
    :cond_3
    const/16 v4, 0x12c

    if-le v3, v4, :cond_0

    .line 246
    nop

    .line 253
    :cond_4
    :goto_1
    nop

    .line 254
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_5

    .line 252
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 249
    :catch_0
    move-exception v2

    goto :goto_4

    .line 252
    :catchall_1
    move-exception v0

    move-object v1, v2

    .line 253
    :goto_2
    if-eqz v1, :cond_5

    .line 254
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    .line 256
    :catch_1
    move-exception v1

    nop

    .line 258
    :cond_5
    :goto_3
    throw v0

    .line 249
    :catch_2
    move-exception v1

    move-object v1, v2

    .line 253
    :goto_4
    if-eqz v1, :cond_6

    .line 254
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_5

    .line 256
    :catch_3
    move-exception v1

    .line 259
    goto :goto_6

    .line 258
    :cond_6
    :goto_5
    nop

    .line 261
    :cond_7
    :goto_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static dq()Ljava/lang/String;
    .locals 2

    .line 270
    const-string v0, "ro.product.mod_device"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 271
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method private static dr()Ljava/lang/String;
    .locals 3

    .line 279
    invoke-static {}, Lmiui/net/ConnectivityHelper;->getInstance()Lmiui/net/ConnectivityHelper;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/net/ConnectivityHelper;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 280
    const-string v1, ""

    .line 281
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 282
    const-string v1, "MD5"

    invoke-static {v0, v1}, Lmiui/security/DigestUtils;->get(Ljava/lang/CharSequence;Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lmiui/text/ExtraTextUtils;->toHexReadable([B)Ljava/lang/String;

    move-result-object v1

    .line 284
    :cond_0
    return-object v1
.end method

.method private static ds()Ljava/lang/String;
    .locals 3

    .line 288
    invoke-static {}, Lmiui/telephony/TelephonyHelper;->getInstance()Lmiui/telephony/TelephonyHelper;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/TelephonyHelper;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 289
    const-string v1, ""

    .line 290
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 291
    const-string v1, "MD5"

    invoke-static {v0, v1}, Lmiui/security/DigestUtils;->get(Ljava/lang/CharSequence;Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lmiui/text/ExtraTextUtils;->toHexReadable([B)Ljava/lang/String;

    move-result-object v1

    .line 293
    :cond_0
    return-object v1
.end method

.method private static f(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3

    .line 156
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 158
    :try_start_0
    const-string v1, "network"

    invoke-static {p0}, Lmiui/util/ErrorReport;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 159
    const-string v1, "device"

    invoke-static {}, Lmiui/util/ErrorReport;->dq()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 160
    const-string v1, "model"

    invoke-static {}, Lmiui/util/ErrorReport;->getModel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 161
    const-string v1, "mac_address"

    invoke-static {}, Lmiui/util/ErrorReport;->dr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 162
    const-string v1, "imei"

    invoke-static {}, Lmiui/util/ErrorReport;->ds()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 163
    const-string v1, "platform"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 164
    const-string v1, "build_version"

    sget-object v2, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 165
    const-string v1, "package_name"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 166
    const-string v1, "app_version"

    invoke-static {p0, p1}, Lmiui/util/ErrorReport;->g(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 167
    const-string p1, "wifi_state"

    invoke-static {}, Lmiui/net/ConnectivityHelper;->getInstance()Lmiui/net/ConnectivityHelper;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/net/ConnectivityHelper;->isWifiConnected()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 168
    const-string p1, "user_allowed"

    invoke-static {p0}, Lmiui/util/ErrorReport;->isUserAllowed(Landroid/content/Context;)Z

    move-result p0

    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    goto :goto_0

    .line 169
    :catch_0
    move-exception p0

    .line 170
    const-string p1, "ErrorReport"

    const-string v1, "Fail to getCommonData"

    invoke-static {p1, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 172
    :goto_0
    return-object v0
.end method

.method private static g(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 297
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 300
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    nop

    .line 306
    iget-object p1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 p1, p1, 0x1

    if-nez p1, :cond_1

    iget-object p1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_0

    goto :goto_0

    .line 311
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 309
    :cond_1
    :goto_0
    sget-object p0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    return-object p0

    .line 301
    :catch_0
    move-exception p0

    .line 302
    const-string v0, "ErrorReport"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail to find package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 303
    const-string p0, ""

    return-object p0
.end method

.method public static getAnrData(Landroid/content/Context;Ljava/lang/String;Landroid/app/ActivityManager$ProcessErrorStateInfo;)Lorg/json/JSONObject;
    .locals 1

    .line 209
    if-nez p2, :cond_0

    .line 210
    const/4 p0, 0x0

    return-object p0

    .line 212
    :cond_0
    invoke-static {p0, p1}, Lmiui/util/ErrorReport;->f(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 214
    :try_start_0
    const-string p1, "error_type"

    const-string v0, "anr"

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 215
    const-string p1, "anr_cause"

    iget-object v0, p2, Landroid/app/ActivityManager$ProcessErrorStateInfo;->shortMsg:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 216
    const-string p1, "anr_activity"

    iget-object v0, p2, Landroid/app/ActivityManager$ProcessErrorStateInfo;->tag:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string p2, ""

    goto :goto_0

    :cond_1
    iget-object p2, p2, Landroid/app/ActivityManager$ProcessErrorStateInfo;->tag:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 217
    const-string p1, "stack_track"

    invoke-static {}, Lmiui/util/ErrorReport;->dp()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    goto :goto_1

    .line 218
    :catch_0
    move-exception p1

    .line 219
    const-string p2, "ErrorReport"

    const-string v0, "Fail to getAnrData"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 221
    :goto_1
    return-object p0
.end method

.method public static getExceptionData(Landroid/content/Context;Ljava/lang/String;Landroid/app/ApplicationErrorReport$CrashInfo;)Lorg/json/JSONObject;
    .locals 2

    .line 184
    if-nez p2, :cond_0

    .line 185
    const/4 p0, 0x0

    return-object p0

    .line 187
    :cond_0
    invoke-static {p0, p1}, Lmiui/util/ErrorReport;->f(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 189
    :try_start_0
    const-string p1, "error_type"

    const-string v0, "fc"

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 190
    const-string p1, "exception_class"

    iget-object v0, p2, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 191
    const-string p1, "exception_source_method"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p2, Landroid/app/ApplicationErrorReport$CrashInfo;->throwClassName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Landroid/app/ApplicationErrorReport$CrashInfo;->throwMethodName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 193
    const-string p1, "stack_track"

    iget-object p2, p2, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    goto :goto_0

    .line 194
    :catch_0
    move-exception p1

    .line 195
    const-string p2, "ErrorReport"

    const-string v0, "Fail to getExceptionData"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 197
    :goto_0
    return-object p0
.end method

.method private static getModel()Ljava/lang/String;
    .locals 1

    .line 275
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static isUserAllowed(Landroid/content/Context;)Z
    .locals 2

    .line 361
    sget-boolean v0, Lcom/miui/internal/util/DeviceHelper;->IS_DEVELOPMENT_VERSION:Z

    .line 362
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "upload_log_pref"

    invoke-static {p0, v1, v0}, Lmiui/provider/ExtraSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    .line 364
    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static r(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 265
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 266
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static sendAnrReport(Landroid/content/Context;Landroid/app/ActivityManager$ProcessErrorStateInfo;I)V
    .locals 2

    .line 141
    if-eqz p1, :cond_1

    .line 144
    invoke-static {p0}, Lmiui/util/ErrorReport;->isUserAllowed(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    return-void

    .line 148
    :cond_0
    :try_start_0
    new-instance v0, Lmiui/util/ErrorReport$AnrDataBuilder;

    .line 149
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lmiui/util/ErrorReport$AnrDataBuilder;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/ActivityManager$ProcessErrorStateInfo;)V

    .line 148
    invoke-static {p0, v0, p2}, Lmiui/util/ErrorReport;->a(Landroid/content/Context;Lmiui/util/ErrorReport$DataBuilder;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    goto :goto_0

    .line 150
    :catch_0
    move-exception p0

    .line 151
    const-string p1, "ErrorReport"

    const-string p2, "Fail to sendAnrReport"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 153
    :goto_0
    return-void

    .line 142
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "state can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static sendExceptionReport(Landroid/content/Context;Ljava/lang/String;Landroid/app/ApplicationErrorReport$CrashInfo;I)V
    .locals 1

    .line 116
    if-eqz p2, :cond_1

    .line 119
    invoke-static {p0}, Lmiui/util/ErrorReport;->isUserAllowed(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    return-void

    .line 123
    :cond_0
    :try_start_0
    new-instance v0, Lmiui/util/ErrorReport$ExceptionDataBuilder;

    invoke-direct {v0, p0, p1, p2}, Lmiui/util/ErrorReport$ExceptionDataBuilder;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/ApplicationErrorReport$CrashInfo;)V

    invoke-static {p0, v0, p3}, Lmiui/util/ErrorReport;->a(Landroid/content/Context;Lmiui/util/ErrorReport$DataBuilder;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    goto :goto_0

    .line 125
    :catch_0
    move-exception p0

    .line 126
    const-string p1, "ErrorReport"

    const-string p2, "Fail to sendExceptionReport"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 128
    :goto_0
    return-void

    .line 117
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "crashInfo can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static sendExceptionReport(Landroid/content/Context;Ljava/lang/Throwable;)V
    .locals 2

    .line 96
    if-eqz p1, :cond_0

    .line 99
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/app/ApplicationErrorReport$CrashInfo;

    invoke-direct {v1, p1}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>(Ljava/lang/Throwable;)V

    const/4 p1, 0x1

    invoke-static {p0, v0, v1, p1}, Lmiui/util/ErrorReport;->sendExceptionReport(Landroid/content/Context;Ljava/lang/String;Landroid/app/ApplicationErrorReport$CrashInfo;I)V

    .line 102
    return-void

    .line 97
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "throwable can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static sendReportRequest(Landroid/content/Context;Lorg/json/JSONObject;I)Z
    .locals 0

    .line 326
    if-eqz p1, :cond_1

    .line 329
    and-int/lit8 p2, p2, 0x2

    if-nez p2, :cond_0

    .line 330
    invoke-static {p0, p1}, Lmiui/util/ErrorReport;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 332
    :cond_0
    const/4 p0, 0x0

    return p0

    .line 327
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "data can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
