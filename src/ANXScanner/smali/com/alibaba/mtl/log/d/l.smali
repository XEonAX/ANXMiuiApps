.class public Lcom/alibaba/mtl/log/d/l;
.super Ljava/lang/Object;
.source "NetworkUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/mtl/log/d/l$a;,
        Lcom/alibaba/mtl/log/d/l$b;
    }
.end annotation


# static fields
.field private static a:Lcom/alibaba/mtl/log/d/l$a;

.field private static a:Lcom/alibaba/mtl/log/d/l$b;

.field private static a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 23
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Unknown"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Unknown"

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/mtl/log/d/l;->a:[Ljava/lang/String;

    .line 138
    new-instance v0, Lcom/alibaba/mtl/log/d/l$b;

    invoke-direct {v0, v3}, Lcom/alibaba/mtl/log/d/l$b;-><init>(Lcom/alibaba/mtl/log/d/l$1;)V

    sput-object v0, Lcom/alibaba/mtl/log/d/l;->a:Lcom/alibaba/mtl/log/d/l$b;

    .line 139
    new-instance v0, Lcom/alibaba/mtl/log/d/l$a;

    invoke-direct {v0, v3}, Lcom/alibaba/mtl/log/d/l$a;-><init>(Lcom/alibaba/mtl/log/d/l$1;)V

    sput-object v0, Lcom/alibaba/mtl/log/d/l;->a:Lcom/alibaba/mtl/log/d/l$a;

    return-void
.end method

.method static synthetic a()Lcom/alibaba/mtl/log/d/l$a;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/alibaba/mtl/log/d/l;->a:Lcom/alibaba/mtl/log/d/l$a;

    return-object v0
.end method

.method private static a(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    packed-switch p0, :pswitch_data_0

    .line 95
    const-string v0, "Unknown"

    :goto_0
    return-object v0

    .line 81
    :pswitch_0
    const-string v0, "2G"

    goto :goto_0

    .line 91
    :pswitch_1
    const-string v0, "3G"

    goto :goto_0

    .line 93
    :pswitch_2
    const-string v0, "4G"

    goto :goto_0

    .line 75
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/alibaba/mtl/log/d/l;->a:[Ljava/lang/String;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 121
    if-nez p0, :cond_0

    .line 126
    :goto_0
    return-void

    .line 124
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 125
    sget-object v1, Lcom/alibaba/mtl/log/d/l;->a:Lcom/alibaba/mtl/log/d/l$b;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 129
    if-nez p0, :cond_1

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    sget-object v0, Lcom/alibaba/mtl/log/d/l;->a:Lcom/alibaba/mtl/log/d/l$b;

    if-eqz v0, :cond_0

    .line 135
    sget-object v0, Lcom/alibaba/mtl/log/d/l;->a:Lcom/alibaba/mtl/log/d/l$b;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method public static getNetworkState(Landroid/content/Context;)[Ljava/lang/String;
    .locals 1
    .param p0, "paramContext"    # Landroid/content/Context;

    .prologue
    .line 100
    sget-object v0, Lcom/alibaba/mtl/log/d/l;->a:[Ljava/lang/String;

    return-object v0
.end method

.method public static isConnected()Z
    .locals 2

    .prologue
    .line 55
    invoke-static {}, Lcom/alibaba/mtl/log/a;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 56
    if-eqz v0, :cond_1

    .line 58
    :try_start_0
    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 59
    if-eqz v0, :cond_1

    .line 60
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 61
    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 71
    :goto_0
    return v0

    .line 65
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    .line 71
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static t()Ljava/lang/String;
    .locals 4

    .prologue
    .line 27
    invoke-static {}, Lcom/alibaba/mtl/log/a;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 28
    if-nez v0, :cond_0

    .line 29
    const-string v0, "Unknown"

    .line 51
    :goto_0
    return-object v0

    .line 32
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 33
    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 34
    const-string v0, "Unknown"

    goto :goto_0

    .line 36
    :cond_1
    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 37
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 38
    if-nez v0, :cond_2

    .line 39
    const-string v0, "Unknown"

    goto :goto_0

    .line 41
    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 42
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 43
    const-string v0, "wifi"

    goto :goto_0

    .line 44
    :cond_3
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_4

    .line 45
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    invoke-static {v0}, Lcom/alibaba/mtl/log/d/l;->a(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    .line 51
    :cond_4
    const-string v0, "Unknown"

    goto :goto_0
.end method
