.class Lcom/alibaba/imagesearch/ui/SearchResultActivity$7;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/imagesearch/ui/SearchResultActivity;->onCreate(Landroid/os/Bundle;)V
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

    iput-object p1, p0, Lcom/alibaba/imagesearch/ui/SearchResultActivity$7;->a:Lcom/alibaba/imagesearch/ui/SearchResultActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/SearchResultActivity$7;->a:Lcom/alibaba/imagesearch/ui/SearchResultActivity;

    invoke-static {v0}, Lcom/alibaba/imagesearch/ui/SearchResultActivity;->f(Lcom/alibaba/imagesearch/ui/SearchResultActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sub-int v0, p5, p3

    if-lez v0, :cond_0

    sub-int v0, p4, p2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/SearchResultActivity$7;->a:Lcom/alibaba/imagesearch/ui/SearchResultActivity;

    invoke-static {v0}, Lcom/alibaba/imagesearch/ui/SearchResultActivity;->a(Lcom/alibaba/imagesearch/ui/SearchResultActivity;)V

    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/SearchResultActivity$7;->a:Lcom/alibaba/imagesearch/ui/SearchResultActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/imagesearch/ui/SearchResultActivity;->a(Lcom/alibaba/imagesearch/ui/SearchResultActivity;Z)Z

    goto :goto_0
.end method
