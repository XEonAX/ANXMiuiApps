.class public Lcom/meicam/sdk/NvsNetworkUtil;
.super Ljava/lang/Object;
.source "NvsNetworkUtil.java"


# static fields
.field public static final TYPE_MOBILE:I = 0x0

.field public static final TYPE_NONE:I = -0x1

.field public static final TYPE_WIFI:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getNetWorkStates(Landroid/content/Context;)I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 35
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 36
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 37
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    .line 50
    :goto_0
    return v0

    .line 41
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    .line 42
    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 50
    goto :goto_0

    .line 44
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 46
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 42
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
