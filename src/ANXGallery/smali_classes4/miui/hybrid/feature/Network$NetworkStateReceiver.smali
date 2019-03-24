.class Lmiui/hybrid/feature/Network$NetworkStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/hybrid/feature/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkStateReceiver"
.end annotation


# instance fields
.field final synthetic zR:Lmiui/hybrid/feature/Network;


# direct methods
.method private constructor <init>(Lmiui/hybrid/feature/Network;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lmiui/hybrid/feature/Network$NetworkStateReceiver;->zR:Lmiui/hybrid/feature/Network;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/hybrid/feature/Network;Lmiui/hybrid/feature/Network$1;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lmiui/hybrid/feature/Network$NetworkStateReceiver;-><init>(Lmiui/hybrid/feature/Network;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 75
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 76
    const-string p2, "connectivity"

    .line 77
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    .line 78
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    .line 79
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object p1

    sget-object p2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 80
    :goto_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 82
    :try_start_0
    const-string v0, "connected"

    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 83
    iget-object p1, p0, Lmiui/hybrid/feature/Network$NetworkStateReceiver;->zR:Lmiui/hybrid/feature/Network;

    invoke-static {p1}, Lmiui/hybrid/feature/Network;->a(Lmiui/hybrid/feature/Network;)Lmiui/hybrid/Callback;

    move-result-object p1

    new-instance v0, Lmiui/hybrid/Response;

    invoke-direct {v0, p2}, Lmiui/hybrid/Response;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p1, v0}, Lmiui/hybrid/Callback;->callback(Lmiui/hybrid/Response;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    goto :goto_1

    .line 84
    :catch_0
    move-exception p1

    .line 85
    const-string p2, "Network"

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_1
    :goto_1
    return-void
.end method
