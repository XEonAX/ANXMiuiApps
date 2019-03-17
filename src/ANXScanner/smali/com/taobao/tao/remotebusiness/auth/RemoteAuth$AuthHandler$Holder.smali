.class Lcom/taobao/tao/remotebusiness/auth/RemoteAuth$AuthHandler$Holder;
.super Ljava/lang/Object;
.source "RemoteAuth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/tao/remotebusiness/auth/RemoteAuth$AuthHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Holder"
.end annotation


# static fields
.field static instance:Lcom/taobao/tao/remotebusiness/auth/RemoteAuth$AuthHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 59
    new-instance v0, Lcom/taobao/tao/remotebusiness/auth/RemoteAuth$AuthHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/taobao/tao/remotebusiness/auth/RemoteAuth$AuthHandler;-><init>(Lcom/taobao/tao/remotebusiness/auth/RemoteAuth$1;)V

    sput-object v0, Lcom/taobao/tao/remotebusiness/auth/RemoteAuth$AuthHandler$Holder;->instance:Lcom/taobao/tao/remotebusiness/auth/RemoteAuth$AuthHandler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
