.class Lcom/xiaomi/smack/SocketConnection$2;
.super Lcom/xiaomi/push/service/XMPushService$Job;
.source "SocketConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/smack/SocketConnection;->notifyConnectionError(ILjava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/smack/SocketConnection;

.field final synthetic val$e:Ljava/lang/Exception;

.field final synthetic val$error:I


# direct methods
.method constructor <init>(Lcom/xiaomi/smack/SocketConnection;IILjava/lang/Exception;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/smack/SocketConnection;
    .param p2, "type"    # I

    .prologue
    .line 340
    iput-object p1, p0, Lcom/xiaomi/smack/SocketConnection$2;->this$0:Lcom/xiaomi/smack/SocketConnection;

    iput p3, p0, Lcom/xiaomi/smack/SocketConnection$2;->val$error:I

    iput-object p4, p0, Lcom/xiaomi/smack/SocketConnection$2;->val$e:Ljava/lang/Exception;

    invoke-direct {p0, p2}, Lcom/xiaomi/push/service/XMPushService$Job;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 2

    .prologue
    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "shutdown the connection. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/smack/SocketConnection$2;->val$error:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/smack/SocketConnection$2;->val$e:Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public process()V
    .locals 3

    .prologue
    .line 343
    iget-object v0, p0, Lcom/xiaomi/smack/SocketConnection$2;->this$0:Lcom/xiaomi/smack/SocketConnection;

    iget-object v0, v0, Lcom/xiaomi/smack/SocketConnection;->pushService:Lcom/xiaomi/push/service/XMPushService;

    iget v1, p0, Lcom/xiaomi/smack/SocketConnection$2;->val$error:I

    iget-object v2, p0, Lcom/xiaomi/smack/SocketConnection$2;->val$e:Ljava/lang/Exception;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/push/service/XMPushService;->disconnect(ILjava/lang/Exception;)V

    .line 344
    return-void
.end method
