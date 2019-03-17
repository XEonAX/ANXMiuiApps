.class Lcom/alibaba/imagesearch/ui/SearchResultActivity$8;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/imagesearch/ui/SearchResultActivity;->a(Ljava/lang/String;)V
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

    iput-object p1, p0, Lcom/alibaba/imagesearch/ui/SearchResultActivity$8;->a:Lcom/alibaba/imagesearch/ui/SearchResultActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/SearchResultActivity$8;->a:Lcom/alibaba/imagesearch/ui/SearchResultActivity;

    invoke-virtual {v0}, Lcom/alibaba/imagesearch/ui/SearchResultActivity;->finish()V

    return-void
.end method
