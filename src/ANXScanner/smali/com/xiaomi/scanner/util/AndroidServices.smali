.class public Lcom/xiaomi/scanner/util/AndroidServices;
.super Ljava/lang/Object;
.source "AndroidServices.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/scanner/util/AndroidServices$Singleton;
    }
.end annotation


# static fields
.field private static final LOG_ALL_REQUESTS:Z = false

.field private static final LOG_THRESHOLD_MILLIS:I = 0xa

.field private static TAG:Lcom/xiaomi/scanner/debug/Log$Tag;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "AndroidServices"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/util/AndroidServices;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/xiaomi/scanner/util/AndroidServices;->mContext:Landroid/content/Context;

    .line 35
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/xiaomi/scanner/util/AndroidServices$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Lcom/xiaomi/scanner/util/AndroidServices$1;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/util/AndroidServices;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 9
    .param p1, "service"    # Ljava/lang/String;

    .prologue
    .line 55
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 56
    .local v4, "start":J
    iget-object v6, p0, Lcom/xiaomi/scanner/util/AndroidServices;->mContext:Landroid/content/Context;

    invoke-virtual {v6, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 57
    .local v3, "result":Ljava/lang/Object;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v0, v6, v4

    .line 58
    .local v0, "duration":J
    const-wide/16 v6, 0xa

    cmp-long v6, v0, v6

    if-lez v6, :cond_0

    .line 59
    sget-object v6, Lcom/xiaomi/scanner/util/AndroidServices;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Warning: providing system service "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " took "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .end local v0    # "duration":J
    .end local v3    # "result":Ljava/lang/Object;
    .end local v4    # "start":J
    :cond_0
    :goto_0
    return-object v3

    .line 65
    :catch_0
    move-exception v2

    .line 66
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static instance()Lcom/xiaomi/scanner/util/AndroidServices;
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Lcom/xiaomi/scanner/util/AndroidServices$Singleton;->access$100()Lcom/xiaomi/scanner/util/AndroidServices;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public provideDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;
    .locals 1

    .prologue
    .line 38
    const-string v0, "device_policy"

    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/util/AndroidServices;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    return-object v0
.end method

.method public provideKeyguardManager()Landroid/app/KeyguardManager;
    .locals 1

    .prologue
    .line 46
    const-string v0, "keyguard"

    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/util/AndroidServices;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    return-object v0
.end method

.method public providePackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/xiaomi/scanner/util/AndroidServices;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method public provideWindowManager()Landroid/view/WindowManager;
    .locals 1

    .prologue
    .line 42
    const-string v0, "window"

    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/util/AndroidServices;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    return-object v0
.end method
