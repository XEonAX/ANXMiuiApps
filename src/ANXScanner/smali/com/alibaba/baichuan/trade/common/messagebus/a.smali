.class Lcom/alibaba/baichuan/trade/common/messagebus/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageListner;

.field final synthetic b:I

.field final synthetic c:Ljava/lang/Object;

.field final synthetic d:Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageBusManager$a;


# direct methods
.method constructor <init>(Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageBusManager$a;Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageListner;ILjava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/baichuan/trade/common/messagebus/a;->d:Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageBusManager$a;

    iput-object p2, p0, Lcom/alibaba/baichuan/trade/common/messagebus/a;->a:Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageListner;

    iput p3, p0, Lcom/alibaba/baichuan/trade/common/messagebus/a;->b:I

    iput-object p4, p0, Lcom/alibaba/baichuan/trade/common/messagebus/a;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/messagebus/a;->a:Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageListner;

    iget v1, p0, Lcom/alibaba/baichuan/trade/common/messagebus/a;->b:I

    iget-object v2, p0, Lcom/alibaba/baichuan/trade/common/messagebus/a;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageListner;->onMessageEvent(ILjava/lang/Object;)V

    return-void
.end method
