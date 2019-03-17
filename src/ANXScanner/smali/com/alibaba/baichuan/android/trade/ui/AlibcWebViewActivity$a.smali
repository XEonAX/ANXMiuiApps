.class public Lcom/alibaba/baichuan/android/trade/ui/AlibcWebViewActivity$a;
.super Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageListner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/baichuan/android/trade/ui/AlibcWebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/baichuan/android/trade/ui/AlibcWebViewActivity;


# direct methods
.method protected constructor <init>(Lcom/alibaba/baichuan/android/trade/ui/AlibcWebViewActivity;)V
    .locals 2

    iput-object p1, p0, Lcom/alibaba/baichuan/android/trade/ui/AlibcWebViewActivity$a;->a:Lcom/alibaba/baichuan/android/trade/ui/AlibcWebViewActivity;

    const/16 v0, 0x4b1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageListner;-><init>(IZ)V

    return-void
.end method


# virtual methods
.method public onMessageEvent(ILjava/lang/Object;)V
    .locals 1

    if-eqz p2, :cond_0

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/baichuan/android/trade/ui/AlibcWebViewActivity$a;->a:Lcom/alibaba/baichuan/android/trade/ui/AlibcWebViewActivity;

    invoke-static {v0}, Lcom/alibaba/baichuan/android/trade/ui/AlibcWebViewActivity;->a(Lcom/alibaba/baichuan/android/trade/ui/AlibcWebViewActivity;)Landroid/widget/TextView;

    move-result-object v0

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
