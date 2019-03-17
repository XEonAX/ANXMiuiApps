.class Lcom/alibaba/imagesearch/ui/PailitaoActivity$9;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/imagesearch/ui/PailitaoActivity;->c(Ljava/lang/String;)V
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

    iput-object p1, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity$9;->a:Lcom/alibaba/imagesearch/ui/PailitaoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity$9;->a:Lcom/alibaba/imagesearch/ui/PailitaoActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->setResult(I)V

    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity$9;->a:Lcom/alibaba/imagesearch/ui/PailitaoActivity;

    invoke-virtual {v0}, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->finish()V

    return-void
.end method
