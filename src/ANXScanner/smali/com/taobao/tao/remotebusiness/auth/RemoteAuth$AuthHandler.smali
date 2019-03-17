.class Lcom/taobao/tao/remotebusiness/auth/RemoteAuth$AuthHandler;
.super Ljava/lang/Object;
.source "RemoteAuth.java"

# interfaces
.implements Lcom/taobao/tao/remotebusiness/auth/AuthListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/tao/remotebusiness/auth/RemoteAuth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AuthHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/tao/remotebusiness/auth/RemoteAuth$AuthHandler$Holder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/tao/remotebusiness/auth/RemoteAuth$1;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/taobao/tao/remotebusiness/auth/RemoteAuth$AuthHandler;-><init>()V

    return-void
.end method

.method public static instance()Lcom/taobao/tao/remotebusiness/auth/RemoteAuth$AuthHandler;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/taobao/tao/remotebusiness/auth/RemoteAuth$AuthHandler$Holder;->instance:Lcom/taobao/tao/remotebusiness/auth/RemoteAuth$AuthHandler;

    return-object v0
.end method


# virtual methods
.method public onAuthCancel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 77
    const-string v0, "mtop.rb-RemoteAuth"

    const-string v1, "auth cancel"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-static {p1, p2}, Lcom/taobao/tao/remotebusiness/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public onAuthFail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 71
    const-string v0, "mtop.rb-RemoteAuth"

    const-string v1, "auth fail"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-static {p1, p2}, Lcom/taobao/tao/remotebusiness/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public onAuthSuccess()V
    .locals 2

    .prologue
    .line 64
    const-string v0, "mtop.rb-RemoteAuth"

    const-string v1, "auth success"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v0, "accessToken"

    invoke-static {}, Lcom/taobao/tao/remotebusiness/auth/RemoteAuth;->getAuthToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/xstate/XState;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-static {}, Lcom/taobao/tao/remotebusiness/a;->a()V

    .line 67
    return-void
.end method
