.class Lcom/alibaba/imagesearch/ui/PailitaoActivity$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/imagesearch/ui/PailitaoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/imagesearch/ui/PailitaoActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/imagesearch/ui/PailitaoActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity$1;->a:Lcom/alibaba/imagesearch/ui/PailitaoActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity$1;->a:Lcom/alibaba/imagesearch/ui/PailitaoActivity;

    invoke-virtual {v0}, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/imagesearch/ui/PailitaoActivity$1;->removeMessages(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity$1;->a:Lcom/alibaba/imagesearch/ui/PailitaoActivity;

    invoke-static {v0}, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->a(Lcom/alibaba/imagesearch/ui/PailitaoActivity;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
