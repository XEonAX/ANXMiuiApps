.class Lcom/alibaba/imagesearch/ui/PailitaoActivity$3;
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

    iput-object p1, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity$3;->a:Lcom/alibaba/imagesearch/ui/PailitaoActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity$3;->a:Lcom/alibaba/imagesearch/ui/PailitaoActivity;

    invoke-static {v0}, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->b(Lcom/alibaba/imagesearch/ui/PailitaoActivity;)V

    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity$3;->a:Lcom/alibaba/imagesearch/ui/PailitaoActivity;

    const-string v1, "search_timeout"

    invoke-static {v0, v1}, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->a(Lcom/alibaba/imagesearch/ui/PailitaoActivity;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
