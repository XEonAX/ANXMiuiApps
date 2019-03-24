.class public Lmiui/hybrid/feature/Network;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiui/hybrid/HybridFeature;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/hybrid/feature/Network$NetworkStateReceiver;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Network"

.field private static final zJ:Ljava/lang/String; = "getType"

.field private static final zK:Ljava/lang/String; = "enableNotification"

.field private static final zL:Ljava/lang/String; = "disableNotification"

.field private static final zM:Ljava/lang/String; = "metered"

.field private static final zN:Ljava/lang/String; = "connected"


# instance fields
.field private zO:Landroid/content/IntentFilter;

.field private zP:Lmiui/hybrid/feature/Network$NetworkStateReceiver;

.field private zQ:Lmiui/hybrid/LifecycleListener;

.field private zv:Lmiui/hybrid/Callback;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lmiui/hybrid/feature/Network;->zO:Landroid/content/IntentFilter;

    .line 93
    iget-object v0, p0, Lmiui/hybrid/feature/Network;->zO:Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method static synthetic a(Lmiui/hybrid/feature/Network;)Lmiui/hybrid/Callback;
    .locals 0

    .line 57
    iget-object p0, p0, Lmiui/hybrid/feature/Network;->zv:Lmiui/hybrid/Callback;

    return-object p0
.end method

.method private a(Lmiui/hybrid/Request;)Lmiui/hybrid/Response;
    .locals 2

    .line 114
    invoke-virtual {p1}, Lmiui/hybrid/Request;->getNativeInterface()Lmiui/hybrid/NativeInterface;

    move-result-object p1

    invoke-virtual {p1}, Lmiui/hybrid/NativeInterface;->getActivity()Landroid/app/Activity;

    move-result-object p1

    .line 115
    const-string v0, "connectivity"

    .line 116
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    .line 117
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result p1

    .line 118
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 120
    :try_start_0
    const-string v1, "metered"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    goto :goto_0

    .line 121
    :catch_0
    move-exception p1

    .line 122
    const-string v1, "Network"

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :goto_0
    new-instance p1, Lmiui/hybrid/Response;

    invoke-direct {p1, v0}, Lmiui/hybrid/Response;-><init>(Lorg/json/JSONObject;)V

    return-object p1
.end method

.method private a(Lmiui/hybrid/NativeInterface;)V
    .locals 2

    .line 128
    iget-object v0, p0, Lmiui/hybrid/feature/Network;->zP:Lmiui/hybrid/feature/Network$NetworkStateReceiver;

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p1}, Lmiui/hybrid/NativeInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 130
    iget-object v1, p0, Lmiui/hybrid/feature/Network;->zQ:Lmiui/hybrid/LifecycleListener;

    invoke-virtual {p1, v1}, Lmiui/hybrid/NativeInterface;->removeLifecycleListener(Lmiui/hybrid/LifecycleListener;)V

    .line 131
    iget-object p1, p0, Lmiui/hybrid/feature/Network;->zP:Lmiui/hybrid/feature/Network$NetworkStateReceiver;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 132
    const/4 p1, 0x0

    iput-object p1, p0, Lmiui/hybrid/feature/Network;->zP:Lmiui/hybrid/feature/Network$NetworkStateReceiver;

    .line 134
    :cond_0
    return-void
.end method

.method static synthetic a(Lmiui/hybrid/feature/Network;Lmiui/hybrid/NativeInterface;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lmiui/hybrid/feature/Network;->a(Lmiui/hybrid/NativeInterface;)V

    return-void
.end method

.method private b(Lmiui/hybrid/Request;)Lmiui/hybrid/Response;
    .locals 4

    .line 137
    invoke-virtual {p1}, Lmiui/hybrid/Request;->getNativeInterface()Lmiui/hybrid/NativeInterface;

    move-result-object v0

    .line 138
    invoke-direct {p0, v0}, Lmiui/hybrid/feature/Network;->a(Lmiui/hybrid/NativeInterface;)V

    .line 140
    invoke-virtual {v0}, Lmiui/hybrid/NativeInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 141
    invoke-virtual {p1}, Lmiui/hybrid/Request;->getCallback()Lmiui/hybrid/Callback;

    move-result-object p1

    iput-object p1, p0, Lmiui/hybrid/feature/Network;->zv:Lmiui/hybrid/Callback;

    .line 142
    new-instance p1, Lmiui/hybrid/feature/Network$NetworkStateReceiver;

    const/4 v2, 0x0

    invoke-direct {p1, p0, v2}, Lmiui/hybrid/feature/Network$NetworkStateReceiver;-><init>(Lmiui/hybrid/feature/Network;Lmiui/hybrid/feature/Network$1;)V

    iput-object p1, p0, Lmiui/hybrid/feature/Network;->zP:Lmiui/hybrid/feature/Network$NetworkStateReceiver;

    .line 143
    iget-object p1, p0, Lmiui/hybrid/feature/Network;->zP:Lmiui/hybrid/feature/Network$NetworkStateReceiver;

    iget-object v3, p0, Lmiui/hybrid/feature/Network;->zO:Landroid/content/IntentFilter;

    invoke-virtual {v1, p1, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 144
    new-instance p1, Lmiui/hybrid/feature/Network$1;

    invoke-direct {p1, p0, v0}, Lmiui/hybrid/feature/Network$1;-><init>(Lmiui/hybrid/feature/Network;Lmiui/hybrid/NativeInterface;)V

    iput-object p1, p0, Lmiui/hybrid/feature/Network;->zQ:Lmiui/hybrid/LifecycleListener;

    .line 160
    iget-object p1, p0, Lmiui/hybrid/feature/Network;->zQ:Lmiui/hybrid/LifecycleListener;

    invoke-virtual {v0, p1}, Lmiui/hybrid/NativeInterface;->addLifecycleListener(Lmiui/hybrid/LifecycleListener;)V

    .line 161
    return-object v2
.end method

.method private c(Lmiui/hybrid/Request;)Lmiui/hybrid/Response;
    .locals 1

    .line 165
    invoke-virtual {p1}, Lmiui/hybrid/Request;->getNativeInterface()Lmiui/hybrid/NativeInterface;

    move-result-object p1

    invoke-direct {p0, p1}, Lmiui/hybrid/feature/Network;->a(Lmiui/hybrid/NativeInterface;)V

    .line 166
    new-instance p1, Lmiui/hybrid/Response;

    const/16 v0, 0x64

    invoke-direct {p1, v0}, Lmiui/hybrid/Response;-><init>(I)V

    return-object p1
.end method


# virtual methods
.method public getInvocationMode(Lmiui/hybrid/Request;)Lmiui/hybrid/HybridFeature$Mode;
    .locals 1

    .line 171
    invoke-virtual {p1}, Lmiui/hybrid/Request;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 172
    const-string v0, "getType"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    sget-object p1, Lmiui/hybrid/HybridFeature$Mode;->SYNC:Lmiui/hybrid/HybridFeature$Mode;

    return-object p1

    .line 174
    :cond_0
    const-string v0, "enableNotification"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    sget-object p1, Lmiui/hybrid/HybridFeature$Mode;->CALLBACK:Lmiui/hybrid/HybridFeature$Mode;

    return-object p1

    .line 176
    :cond_1
    const-string v0, "disableNotification"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 177
    sget-object p1, Lmiui/hybrid/HybridFeature$Mode;->SYNC:Lmiui/hybrid/HybridFeature$Mode;

    return-object p1

    .line 179
    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public invoke(Lmiui/hybrid/Request;)Lmiui/hybrid/Response;
    .locals 2

    .line 102
    invoke-virtual {p1}, Lmiui/hybrid/Request;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 103
    const-string v1, "getType"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    invoke-direct {p0, p1}, Lmiui/hybrid/feature/Network;->a(Lmiui/hybrid/Request;)Lmiui/hybrid/Response;

    move-result-object p1

    return-object p1

    .line 105
    :cond_0
    const-string v1, "enableNotification"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 106
    invoke-direct {p0, p1}, Lmiui/hybrid/feature/Network;->b(Lmiui/hybrid/Request;)Lmiui/hybrid/Response;

    move-result-object p1

    return-object p1

    .line 107
    :cond_1
    const-string v1, "disableNotification"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 108
    invoke-direct {p0, p1}, Lmiui/hybrid/feature/Network;->c(Lmiui/hybrid/Request;)Lmiui/hybrid/Response;

    move-result-object p1

    return-object p1

    .line 110
    :cond_2
    new-instance p1, Lmiui/hybrid/Response;

    const/16 v0, 0xcc

    const-string v1, "no such action"

    invoke-direct {p1, v0, v1}, Lmiui/hybrid/Response;-><init>(ILjava/lang/String;)V

    return-object p1
.end method

.method public setParams(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 98
    return-void
.end method
