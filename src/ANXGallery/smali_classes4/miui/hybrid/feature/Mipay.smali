.class public Lmiui/hybrid/feature/Mipay;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiui/hybrid/HybridFeature;


# static fields
.field private static final zA:Ljava/lang/String; = "orderInfo"

.field private static final zB:Ljava/lang/String; = "order"

.field private static final zC:Ljava/lang/String; = "extra"

.field private static final zD:Ljava/lang/String; = "code"

.field private static final zE:Ljava/lang/String; = "message"

.field private static final zF:I = -0x1

.field private static final zG:Ljava/lang/String; = "com.xiaomi.action.MIPAY_PAY_ORDER"

.field private static final zH:Ljava/lang/String; = "com.mipay.wallet"

.field private static final zi:Ljava/lang/String; = "result"

.field private static final zy:I = 0x1335188

.field private static final zz:Ljava/lang/String; = "pay"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;)Lmiui/hybrid/Response;
    .locals 4

    .line 134
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0xcc

    if-eqz v0, :cond_0

    .line 135
    new-instance p1, Lmiui/hybrid/Response;

    const-string p2, "order cannot be empty"

    invoke-direct {p1, v1, p2}, Lmiui/hybrid/Response;-><init>(ILjava/lang/String;)V

    return-object p1

    .line 138
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.xiaomi.action.MIPAY_PAY_ORDER"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 139
    const-string v2, "com.mipay.wallet"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-nez v2, :cond_1

    .line 142
    new-instance p1, Lmiui/hybrid/Response;

    const-string p2, "mipay feature not available"

    invoke-direct {p1, v1, p2}, Lmiui/hybrid/Response;-><init>(ILjava/lang/String;)V

    return-object p1

    .line 145
    :cond_1
    const-string v1, "order"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    const-string p2, "extra"

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 147
    const p2, 0x1335188

    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 148
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Landroid/content/Intent;)Lorg/json/JSONObject;
    .locals 4

    .line 114
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 117
    :try_start_0
    const-string v1, "code"

    const-string v2, "code"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 118
    const-string v1, "message"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 119
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 120
    const-string v2, "message"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 122
    :cond_0
    const-string v1, "result"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 123
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 124
    const-string v1, "result"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :cond_1
    goto :goto_0

    .line 126
    :catch_0
    move-exception p1

    .line 127
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 130
    :goto_0
    return-object v0
.end method

.method static synthetic a(Lmiui/hybrid/feature/Mipay;Landroid/content/Intent;)Lorg/json/JSONObject;
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lmiui/hybrid/feature/Mipay;->a(Landroid/content/Intent;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getInvocationMode(Lmiui/hybrid/Request;)Lmiui/hybrid/HybridFeature$Mode;
    .locals 1

    .line 153
    invoke-virtual {p1}, Lmiui/hybrid/Request;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "pay"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 154
    sget-object p1, Lmiui/hybrid/HybridFeature$Mode;->CALLBACK:Lmiui/hybrid/HybridFeature$Mode;

    return-object p1

    .line 156
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public invoke(Lmiui/hybrid/Request;)Lmiui/hybrid/Response;
    .locals 3

    .line 73
    invoke-virtual {p1}, Lmiui/hybrid/Request;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pay"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    new-instance p1, Lmiui/hybrid/Response;

    const/16 v0, 0xcc

    const-string v1, "no such action"

    invoke-direct {p1, v0, v1}, Lmiui/hybrid/Response;-><init>(ILjava/lang/String;)V

    return-object p1

    .line 78
    :cond_0
    invoke-virtual {p1}, Lmiui/hybrid/Request;->getNativeInterface()Lmiui/hybrid/NativeInterface;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Lmiui/hybrid/NativeInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 80
    new-instance v2, Lmiui/hybrid/feature/Mipay$1;

    invoke-direct {v2, p0, v0, p1}, Lmiui/hybrid/feature/Mipay$1;-><init>(Lmiui/hybrid/feature/Mipay;Lmiui/hybrid/NativeInterface;Lmiui/hybrid/Request;)V

    .line 100
    invoke-virtual {v0, v2}, Lmiui/hybrid/NativeInterface;->addLifecycleListener(Lmiui/hybrid/LifecycleListener;)V

    .line 102
    nop

    .line 104
    const/4 v0, 0x0

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lmiui/hybrid/Request;->getRawParams()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 105
    const-string p1, "orderInfo"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    goto :goto_0

    .line 106
    :catch_0
    move-exception p1

    .line 107
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 110
    move-object p1, v0

    :goto_0
    invoke-direct {p0, v1, p1, v0}, Lmiui/hybrid/feature/Mipay;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;)Lmiui/hybrid/Response;

    move-result-object p1

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

    .line 69
    return-void
.end method
