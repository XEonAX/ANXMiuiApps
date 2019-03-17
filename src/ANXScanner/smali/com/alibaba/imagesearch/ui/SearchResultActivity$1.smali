.class Lcom/alibaba/imagesearch/ui/SearchResultActivity$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/imagesearch/ui/SearchResultActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/imagesearch/ui/SearchResultActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/imagesearch/ui/SearchResultActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/imagesearch/ui/SearchResultActivity$1;->a:Lcom/alibaba/imagesearch/ui/SearchResultActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/SearchResultActivity$1;->a:Lcom/alibaba/imagesearch/ui/SearchResultActivity;

    const-string v1, "\u52a0\u8f7d\u8d85\u65f6"

    invoke-static {v0, v1}, Lcom/alibaba/imagesearch/ui/SearchResultActivity;->a(Lcom/alibaba/imagesearch/ui/SearchResultActivity;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
