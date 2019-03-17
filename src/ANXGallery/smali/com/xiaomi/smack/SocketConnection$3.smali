.class Lcom/xiaomi/smack/SocketConnection$3;
.super Ljava/lang/Object;
.source "SocketConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/smack/SocketConnection;->getFallback(Ljava/lang/String;)Lcom/xiaomi/network/Fallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/smack/SocketConnection;

.field final synthetic val$host:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaomi/smack/SocketConnection;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/smack/SocketConnection;

    .prologue
    .line 360
    iput-object p1, p0, Lcom/xiaomi/smack/SocketConnection$3;->this$0:Lcom/xiaomi/smack/SocketConnection;

    iput-object p2, p0, Lcom/xiaomi/smack/SocketConnection$3;->val$host:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 363
    invoke-static {}, Lcom/xiaomi/network/HostManager;->getInstance()Lcom/xiaomi/network/HostManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/smack/SocketConnection$3;->val$host:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/network/HostManager;->getFallbacksByHost(Ljava/lang/String;Z)Lcom/xiaomi/network/Fallback;

    .line 364
    return-void
.end method
