.class public Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageQueue;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageQueue$a;,
        Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageQueue$MessageCallback;
    }
.end annotation


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageQueue$MessageCallback;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AlibcMessageQueue"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageQueue;->b:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageQueue;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageQueue;->b:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageQueue$a;

    if-nez p1, :cond_0

    new-instance p1, Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageQueue$MessageCallback;

    invoke-direct {p1}, Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageQueue$MessageCallback;-><init>()V

    :cond_0
    invoke-direct {v2, p0, p1}, Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageQueue$a;-><init>(Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageQueue;Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageQueue$MessageCallback;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageQueue;->a:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public sendMessage(Landroid/os/Message;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageQueue;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
