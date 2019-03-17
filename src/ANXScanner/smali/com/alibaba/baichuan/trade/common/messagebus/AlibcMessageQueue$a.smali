.class Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageQueue$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageQueue;

.field private b:Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageQueue$MessageCallback;


# direct methods
.method constructor <init>(Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageQueue;Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageQueue$MessageCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageQueue$a;->a:Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageQueue$a;->b:Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageQueue$MessageCallback;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageQueue$a;->b:Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageQueue$MessageCallback;

    invoke-virtual {v0, p1}, Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageQueue$MessageCallback;->a(Landroid/os/Message;)V

    const/4 v0, 0x1

    return v0
.end method
