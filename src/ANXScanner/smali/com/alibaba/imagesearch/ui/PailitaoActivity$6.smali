.class Lcom/alibaba/imagesearch/ui/PailitaoActivity$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/imagesearch/ui/PailitaoActivity;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/imagesearch/ui/PailitaoActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/imagesearch/ui/PailitaoActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity$6;->b:Lcom/alibaba/imagesearch/ui/PailitaoActivity;

    iput-object p2, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity$6;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity$6;->b:Lcom/alibaba/imagesearch/ui/PailitaoActivity;

    invoke-virtual {v0}, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity$6;->b:Lcom/alibaba/imagesearch/ui/PailitaoActivity;

    invoke-static {v0}, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->b(Lcom/alibaba/imagesearch/ui/PailitaoActivity;)V

    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity$6;->b:Lcom/alibaba/imagesearch/ui/PailitaoActivity;

    iget-object v1, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity$6;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->b(Lcom/alibaba/imagesearch/ui/PailitaoActivity;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
