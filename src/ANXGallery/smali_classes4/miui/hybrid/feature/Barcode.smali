.class public Lmiui/hybrid/feature/Barcode;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiui/hybrid/HybridFeature;


# static fields
.field private static final za:I

.field private static final zb:Ljava/lang/String; = "android.intent.action.scanbarcode"

.field private static final zc:Ljava/lang/String; = "miui.intent.category.SYSAPP_TOOL"

.field private static final zd:Ljava/lang/String; = "type"

.field private static final ze:Ljava/lang/String; = "result"

.field private static final zf:Ljava/lang/String; = "isBackToThirdApp"

.field private static final zg:Ljava/lang/String; = "scan"

.field private static final zh:Ljava/lang/String; = "type"

.field private static final zi:Ljava/lang/String; = "result"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    const-string v0, "REQUEST_SCAN_BARCODE"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lmiui/hybrid/feature/Barcode;->za:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Intent;)Lorg/json/JSONObject;
    .locals 3

    .line 109
    if-nez p1, :cond_0

    .line 110
    const/4 p1, 0x0

    return-object p1

    .line 113
    :cond_0
    const-string v0, "type"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 114
    const-string v1, "result"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 116
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 118
    :try_start_0
    const-string v2, "type"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 119
    const-string v0, "result"

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    goto :goto_0

    .line 120
    :catch_0
    move-exception p1

    .line 121
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 124
    :goto_0
    return-object v1
.end method

.method static synthetic a(Lmiui/hybrid/feature/Barcode;Landroid/content/Intent;)Lorg/json/JSONObject;
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lmiui/hybrid/feature/Barcode;->a(Landroid/content/Intent;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method static synthetic cs()I
    .locals 1

    .line 47
    sget v0, Lmiui/hybrid/feature/Barcode;->za:I

    return v0
.end method


# virtual methods
.method public getInvocationMode(Lmiui/hybrid/Request;)Lmiui/hybrid/HybridFeature$Mode;
    .locals 1

    .line 129
    invoke-virtual {p1}, Lmiui/hybrid/Request;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "scan"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 130
    sget-object p1, Lmiui/hybrid/HybridFeature$Mode;->CALLBACK:Lmiui/hybrid/HybridFeature$Mode;

    return-object p1

    .line 132
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public invoke(Lmiui/hybrid/Request;)Lmiui/hybrid/Response;
    .locals 6

    .line 67
    invoke-virtual {p1}, Lmiui/hybrid/Request;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "scan"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0xcc

    if-nez v0, :cond_0

    .line 68
    new-instance p1, Lmiui/hybrid/Response;

    const-string v0, "no such action"

    invoke-direct {p1, v1, v0}, Lmiui/hybrid/Response;-><init>(ILjava/lang/String;)V

    return-object p1

    .line 71
    :cond_0
    invoke-virtual {p1}, Lmiui/hybrid/Request;->getNativeInterface()Lmiui/hybrid/NativeInterface;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lmiui/hybrid/NativeInterface;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 73
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.scanbarcode"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 74
    const-string v4, "miui.intent.category.SYSAPP_TOOL"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    const-string v4, "isBackToThirdApp"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 76
    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v4, :cond_1

    .line 77
    new-instance v0, Lmiui/hybrid/Response;

    const-string v2, "can\'t find barcode scanner activity"

    invoke-direct {v0, v1, v2}, Lmiui/hybrid/Response;-><init>(ILjava/lang/String;)V

    .line 78
    invoke-virtual {p1}, Lmiui/hybrid/Request;->getCallback()Lmiui/hybrid/Callback;

    move-result-object p1

    invoke-virtual {p1, v0}, Lmiui/hybrid/Callback;->callback(Lmiui/hybrid/Response;)V

    .line 79
    return-object v5

    .line 82
    :cond_1
    new-instance v1, Lmiui/hybrid/feature/Barcode$1;

    invoke-direct {v1, p0, v0, p1}, Lmiui/hybrid/feature/Barcode$1;-><init>(Lmiui/hybrid/feature/Barcode;Lmiui/hybrid/NativeInterface;Lmiui/hybrid/Request;)V

    .line 101
    invoke-virtual {v0, v1}, Lmiui/hybrid/NativeInterface;->addLifecycleListener(Lmiui/hybrid/LifecycleListener;)V

    .line 103
    sget p1, Lmiui/hybrid/feature/Barcode;->za:I

    invoke-virtual {v2, v3, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 105
    return-object v5
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

    .line 63
    return-void
.end method
