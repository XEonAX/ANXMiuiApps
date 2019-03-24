.class public Lmiui/hybrid/feature/Share;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiui/hybrid/HybridFeature;


# static fields
.field private static final ACTION_SEND:Ljava/lang/String; = "send"

.field private static final TAG:Ljava/lang/String; = "HybridShare"

.field private static final iG:Ljava/lang/String; = "type"

.field private static final zS:Ljava/lang/String; = "data"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private d(Lmiui/hybrid/Request;)Lmiui/hybrid/Response;
    .locals 8

    .line 89
    invoke-virtual {p1}, Lmiui/hybrid/Request;->getNativeInterface()Lmiui/hybrid/NativeInterface;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Lmiui/hybrid/NativeInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 91
    invoke-virtual {p1}, Lmiui/hybrid/Request;->getCallback()Lmiui/hybrid/Callback;

    move-result-object v2

    .line 92
    new-instance v3, Lmiui/hybrid/feature/Share$1;

    invoke-direct {v3, p0, v0, v2}, Lmiui/hybrid/feature/Share$1;-><init>(Lmiui/hybrid/feature/Share;Lmiui/hybrid/NativeInterface;Lmiui/hybrid/Callback;)V

    .line 107
    invoke-virtual {v0, v3}, Lmiui/hybrid/NativeInterface;->addLifecycleListener(Lmiui/hybrid/LifecycleListener;)V

    .line 108
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 109
    const-string v3, "android.intent.action.SEND"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    invoke-virtual {p1}, Lmiui/hybrid/Request;->getRawParams()Ljava/lang/String;

    move-result-object p1

    .line 112
    const/4 v3, 0x0

    const/16 v4, 0xc8

    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 113
    const-string v6, "type"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 114
    const-string v7, "data"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 115
    if-eqz v6, :cond_2

    if-nez v5, :cond_0

    goto :goto_1

    .line 119
    :cond_0
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    const-string v7, "text/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 121
    const-string v6, "android.intent.extra.TEXT"

    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 123
    :cond_1
    const-string v6, "android.intent.extra.STREAM"

    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    :goto_0
    const/4 v5, 0x1

    invoke-virtual {v1, v0, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 129
    goto :goto_2

    .line 116
    :cond_2
    :goto_1
    new-instance v0, Lmiui/hybrid/Response;

    const-string v1, "no data to share"

    invoke-direct {v0, v4, v1}, Lmiui/hybrid/Response;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v0}, Lmiui/hybrid/Callback;->callback(Lmiui/hybrid/Response;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    return-object v3

    .line 126
    :catch_0
    move-exception v0

    .line 127
    const-string v0, "HybridShare"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid JSON string:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    new-instance p1, Lmiui/hybrid/Response;

    const-string v0, "invalid data to share"

    invoke-direct {p1, v4, v0}, Lmiui/hybrid/Response;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, p1}, Lmiui/hybrid/Callback;->callback(Lmiui/hybrid/Response;)V

    .line 131
    :goto_2
    return-object v3
.end method


# virtual methods
.method public getInvocationMode(Lmiui/hybrid/Request;)Lmiui/hybrid/HybridFeature$Mode;
    .locals 0

    .line 136
    sget-object p1, Lmiui/hybrid/HybridFeature$Mode;->CALLBACK:Lmiui/hybrid/HybridFeature$Mode;

    return-object p1
.end method

.method public invoke(Lmiui/hybrid/Request;)Lmiui/hybrid/Response;
    .locals 2

    .line 80
    invoke-virtual {p1}, Lmiui/hybrid/Request;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 81
    const-string v1, "send"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    invoke-direct {p0, p1}, Lmiui/hybrid/feature/Share;->d(Lmiui/hybrid/Request;)Lmiui/hybrid/Response;

    move-result-object p1

    return-object p1

    .line 84
    :cond_0
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

    .line 68
    return-void
.end method
