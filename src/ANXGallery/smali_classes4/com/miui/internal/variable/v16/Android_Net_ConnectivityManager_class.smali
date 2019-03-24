.class public Lcom/miui/internal/variable/v16/Android_Net_ConnectivityManager_class;
.super Lcom/miui/internal/variable/Android_Net_ConnectivityManager_class;
.source "SourceFile"


# static fields
.field private static final lD:Lmiui/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 15
    const-class v0, Landroid/net/ConnectivityManager;

    const-string v1, "isNetworkSupported"

    const-string v2, "(I)Z"

    .line 16
    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_Net_ConnectivityManager_class;->lD:Lmiui/reflect/Method;

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/miui/internal/variable/Android_Net_ConnectivityManager_class;-><init>()V

    return-void
.end method


# virtual methods
.method public isNetworkSupported(Landroid/net/ConnectivityManager;I)Z
    .locals 4

    .line 21
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/miui/internal/variable/v16/Android_Net_ConnectivityManager_class;->lD:Lmiui/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, v0

    invoke-virtual {v1, v2, p1, v3}, Lmiui/reflect/Method;->invokeBoolean(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 22
    :catch_0
    move-exception p1

    .line 23
    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object p2

    const-string v1, "android.os.Process.getTotalMemory"

    invoke-virtual {p2, v1, p1}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    return v0
.end method
