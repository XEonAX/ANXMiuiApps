.class public Lcom/xiaomi/stat/d/l;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/stat/d/l$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "NetWorkStateUtil"

.field private static final b:I = 0x10

.field private static final c:I = 0x11

.field private static final d:I = 0x12

.field private static final e:I = 0x13

.field private static final f:Ljava/lang/String; = "2G"

.field private static final g:Ljava/lang/String; = "3G"

.field private static final h:Ljava/lang/String; = "4G"

.field private static final i:Ljava/lang/String; = "WIFI"

.field private static final j:Ljava/lang/String; = "ETHERNET"

.field private static final k:Ljava/lang/String; = "UNKNOWN"

.field private static final l:Ljava/lang/String; = "NOT_CONNECTED"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-static {p0}, Lcom/xiaomi/stat/d/l;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 41
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "NOT_CONNECTED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 54
    :cond_0
    :goto_0
    return v0

    .line 43
    :cond_1
    const-string v2, "2G"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 44
    const/4 v0, 0x1

    goto :goto_0

    .line 45
    :cond_2
    const-string v2, "3G"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 46
    const/4 v0, 0x2

    goto :goto_0

    .line 47
    :cond_3
    const-string v2, "4G"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 48
    const/4 v0, 0x4

    goto :goto_0

    .line 49
    :cond_4
    const-string v2, "WIFI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 50
    const/16 v0, 0x8

    goto :goto_0

    .line 51
    :cond_5
    const-string v2, "ETHERNET"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    const/16 v0, 0x10

    goto :goto_0
.end method

.method public static a()Z
    .locals 2

    .prologue
    .line 59
    invoke-static {}, Lcom/xiaomi/stat/I;->a()Landroid/content/Context;

    move-result-object v0

    .line 61
    if-eqz v0, :cond_0

    .line 62
    :try_start_0
    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 63
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 64
    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 71
    :goto_0
    return v0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    const-string v0, "isNetworkConnected exception"

    invoke-static {v0}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;)V

    .line 71
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 76
    :try_start_0
    invoke-static {p0}, Lcom/xiaomi/stat/d/e;->w(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    invoke-static {p0}, Lcom/xiaomi/stat/d/l$a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 120
    :goto_0
    return-object v0

    .line 79
    :cond_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 80
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 81
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_2

    .line 82
    :cond_1
    const-string v0, "NOT_CONNECTED"

    goto :goto_0

    .line 85
    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 86
    const-string v0, "WIFI"

    goto :goto_0

    .line 88
    :cond_3
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_4

    .line 89
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    .line 90
    packed-switch v0, :pswitch_data_0

    .line 114
    const-string v0, "UNKNOWN"

    goto :goto_0

    .line 97
    :pswitch_0
    const-string v0, "2G"

    goto :goto_0

    .line 108
    :pswitch_1
    const-string v0, "3G"

    goto :goto_0

    .line 112
    :pswitch_2
    const-string v0, "4G"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    const-string v1, "NetWorkStateUtil"

    const-string v2, "getNetworkState error"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/stat/d/k;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 120
    :cond_4
    const-string v0, "UNKNOWN"

    goto :goto_0

    .line 90
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
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
