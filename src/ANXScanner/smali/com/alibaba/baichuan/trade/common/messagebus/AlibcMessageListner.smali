.class public abstract Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageListner;
.super Ljava/lang/Object;


# instance fields
.field public eventId:I

.field public isRunOnUIThread:Z


# direct methods
.method protected constructor <init>(IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageListner;->isRunOnUIThread:Z

    iput p1, p0, Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageListner;->eventId:I

    return-void
.end method


# virtual methods
.method public abstract onMessageEvent(ILjava/lang/Object;)V
.end method
