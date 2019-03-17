.class public Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;
.super Ljava/lang/Object;
.source "BasicInfoRecordJob.java"

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/controller/e$a;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a:Z

    return-void
.end method

.method public static a()V
    .locals 4

    .prologue
    .line 288
    :try_start_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a()Landroid/content/Context;

    move-result-object v0

    .line 289
    const-string v1, "dau_time"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/controller/m;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/xiaomi/mistatistic/sdk/controller/t;->a(J)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/t;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 290
    new-instance v1, Lcom/xiaomi/mistatistic/sdk/data/d;

    const-string v2, "mistat_basic"

    const-string v3, "mistat_dau_dummy"

    invoke-direct {v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/data/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->insertEvent(Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;)V

    .line 292
    const-string v1, "dau_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/controller/m;->b(Landroid/content/Context;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    :cond_0
    :goto_0
    return-void

    .line 294
    :catch_0
    move-exception v0

    .line 295
    const-string v1, "addDauEventWhenForeground exception: "

    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 79
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 80
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 81
    const-string v1, "last_day"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/xiaomi/mistatistic/sdk/controller/m;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 124
    :goto_0
    return-void

    .line 85
    :cond_0
    const-string v1, "last_day"

    invoke-static {p1, v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/m;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 87
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/data/d;

    const-string v1, "mistat_basic"

    const-string v2, "mistat_dau"

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/mistatistic/sdk/data/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->insertEvent(Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;)V

    .line 90
    const-string v0, "ro.miui.ui.version.name"

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/t;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    const-string/jumbo v1, "ui_version"

    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 94
    const-string/jumbo v1, "version"

    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 97
    const-string v1, "sd"

    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v0, "ro.miui.region"

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/t;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 100
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 101
    const-string v0, "ro.product.locale.region"

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/t;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    :cond_1
    const-string v1, "region"

    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v0, "ro.carrier.name"

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/t;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    const-string v1, "carrier_name"

    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->isInternationalBuild()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/t;->c()Z

    move-result v0

    if-nez v0, :cond_2

    .line 109
    const-string v0, "imei_md5"

    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/controller/g;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/controller/t;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 112
    const-string v1, "miui_imei_md5"

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/t;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string v0, "android_id_md5"

    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/controller/t;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/controller/t;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v0, "serial_num_md5"

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/t;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/controller/t;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :cond_2
    const-string v0, "mcc"

    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-direct {p0, p1}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->b(Landroid/content/Context;)V

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a:Z

    goto/16 :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 242
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 243
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/data/g;

    const-string v1, "mistat_basic"

    invoke-direct {v0, v1, p0, p1}, Lcom/xiaomi/mistatistic/sdk/data/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->insertEvent(Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;)V

    .line 246
    :cond_0
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 273
    :try_start_0
    const-string/jumbo v0, "storage"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 275
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getVolumeState"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 276
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 277
    const-string v3, "mounted"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 283
    :goto_0
    return v0

    .line 280
    :catch_0
    move-exception v0

    .line 281
    const-string v1, "isStorageMounted exception"

    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    move v0, v2

    .line 283
    goto :goto_0
.end method

.method private b()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 220
    const-string v0, "ril.limit_service_mnc"

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/t;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 221
    const-string v0, "ril.limit_service_mcc"

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/t;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 222
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v3, :cond_1

    .line 223
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 225
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    :goto_0
    return-object v0

    .line 227
    :catch_0
    move-exception v0

    .line 228
    const-string v1, "network_mcc exception"

    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 238
    :cond_0
    :goto_1
    const-string v0, ""

    goto :goto_0

    .line 230
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 232
    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 234
    :catch_1
    move-exception v0

    .line 235
    const-string v1, "mcc_mtk exception"

    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private b(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 128
    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/controller/t;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->isUserExperienceProgramEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/data/g;

    const-string v1, "mistat_basic"

    const-string v2, "UEP"

    const-string/jumbo v3, "yes"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/data/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :goto_0
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->insertEvent(Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;)V

    .line 138
    return-void

    .line 132
    :cond_0
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/data/g;

    const-string v1, "mistat_basic"

    const-string v2, "UEP"

    const-string v3, "no"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/data/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 135
    :cond_1
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/data/g;

    const-string v1, "mistat_basic"

    const-string v2, "UEP"

    const-string v3, "not_miui"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/data/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private c(Landroid/content/Context;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 142
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/data/d;

    const-string v1, "mistat_basic"

    const-string v2, "new"

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/mistatistic/sdk/data/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->insertEvent(Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;)V

    .line 145
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/data/g;

    const-string v1, "mistat_basic"

    const-string v2, "model"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/data/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->insertEvent(Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;)V

    .line 148
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/data/g;

    const-string v1, "mistat_basic"

    const-string v2, "OS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "android"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/data/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->insertEvent(Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;)V

    .line 151
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 152
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    .line 153
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 154
    new-instance v1, Lcom/xiaomi/mistatistic/sdk/data/g;

    const-string v2, "mistat_basic"

    const-string v3, "operator"

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lcom/xiaomi/mistatistic/sdk/data/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->insertEvent(Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;)V

    .line 157
    :cond_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->isInternationalBuild()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/t;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 159
    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/controller/g;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 160
    const-string v1, "device_id"

    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v0, "imei_md5"

    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/controller/g;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string v0, "android_id_md5"

    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/controller/t;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/controller/t;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v0, "serial_num_md5"

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/t;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/controller/t;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string v0, "mac_md5"

    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/controller/t;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 171
    if-eqz v0, :cond_2

    .line 172
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 173
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 174
    if-ge v1, v0, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 175
    :goto_0
    new-instance v1, Lcom/xiaomi/mistatistic/sdk/data/g;

    const-string v2, "mistat_basic"

    const-string v3, "resolution"

    invoke-direct {v1, v2, v3, v0}, Lcom/xiaomi/mistatistic/sdk/data/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->insertEvent(Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;)V

    .line 179
    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 180
    const-string v1, "locale"

    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string v0, "ro.product.mod_device"

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/t;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 183
    const-string v1, "device_name"

    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string v0, "ro.product.model.real"

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/t;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 186
    const-string v1, "real_model"

    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string v0, "ro.sys.miui_rom_channel_id"

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/t;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 189
    const-string v1, "channel"

    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/controller/t;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 193
    :try_start_0
    const-string v0, "miui.os.Build"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 194
    const-string v1, "IS_INTERNATIONAL_BUILD"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 195
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "1"

    .line 196
    :goto_1
    const-string v1, "mi"

    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :goto_2
    :try_start_1
    const-string v0, "miui.os.Build"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 203
    const-string v1, "IS_ALPHA_BUILD"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 204
    const-string v2, "IS_DEVELOPMENT_VERSION"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 205
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v0, "A"

    .line 206
    :goto_3
    const-string v1, "bc"

    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 212
    :cond_3
    :goto_4
    return-void

    .line 174
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 195
    :cond_5
    :try_start_2
    const-string v0, "0"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 197
    :catch_0
    move-exception v0

    .line 198
    const-string v1, "get IS_INTERNATIONAL_BUILD exception"

    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 205
    :cond_6
    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "D"

    goto :goto_3

    :cond_7
    const-string v0, "S"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    .line 207
    :catch_1
    move-exception v0

    .line 208
    const-string v1, "get build version exception"

    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4
.end method

.method private static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 249
    const-string v0, "0"

    .line 250
    const-string v0, "1"

    .line 251
    const-string v0, "2"

    .line 252
    const-string v0, "0"

    .line 254
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 255
    const-string v2, "SECONDARY_STORAGE"

    invoke-static {v2}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 256
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 257
    invoke-static {p0, v2}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 259
    const-string v0, "1"

    .line 267
    :cond_0
    :goto_0
    return-object v0

    .line 261
    :cond_1
    const-string v0, "2"
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 264
    :catch_0
    move-exception v1

    .line 265
    const-string v2, "getExternalStorageState exception"

    invoke-static {v2, v1}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public execute()V
    .locals 5

    .prologue
    .line 46
    :try_start_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a()Landroid/content/Context;

    move-result-object v0

    .line 47
    invoke-direct {p0, v0}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Landroid/content/Context;)V

    .line 49
    const-string v1, "basic_info_reported"

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/m;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 51
    invoke-direct {p0, v0}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->c(Landroid/content/Context;)V

    .line 54
    const-string v1, "basic_info_reported"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/xiaomi/mistatistic/sdk/controller/m;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 57
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a:Z

    .line 61
    :cond_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->e()Ljava/lang/String;

    move-result-object v1

    .line 62
    const-string v2, "basic_info_version"

    const-string v3, ""

    invoke-static {v0, v2, v3}, Lcom/xiaomi/mistatistic/sdk/controller/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 63
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 64
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/b;->c()V

    .line 65
    new-instance v2, Lcom/xiaomi/mistatistic/sdk/data/d;

    const-string v3, "mistat_basic"

    const-string/jumbo v4, "upgrade"

    invoke-direct {v2, v3, v4}, Lcom/xiaomi/mistatistic/sdk/data/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-static {v2}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->insertEvent(Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;)V

    .line 68
    :cond_1
    const-string v2, "basic_info_version"

    invoke-static {v0, v2, v1}, Lcom/xiaomi/mistatistic/sdk/controller/m;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-boolean v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a:Z

    if-eqz v0, :cond_2

    .line 71
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/controller/o;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/o;-><init>(I)V

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/o;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :cond_2
    :goto_0
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 74
    const-string v1, "BasicInfoRecordJob.execute exception"

    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
