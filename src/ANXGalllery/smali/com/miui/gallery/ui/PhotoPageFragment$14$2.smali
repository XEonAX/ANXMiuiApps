.class Lcom/miui/gallery/ui/PhotoPageFragment$14$2;
.super Ljava/lang/Object;
.source "PhotoPageFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/PhotoPageFragment$14;->onDownloadComplete(Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/ui/PhotoPageFragment$14;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/PhotoPageFragment$14;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/ui/PhotoPageFragment$14;

    .prologue
    .line 1442
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$14$2;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1445
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$14$2;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$14;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageFragment$14;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$2500(Lcom/miui/gallery/ui/PhotoPageFragment;)Lcom/miui/gallery/util/uil/CloudImageLoadingListener;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$14$2;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$14;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageFragment$14;->val$item:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {v1}, Lcom/miui/gallery/model/BaseDataItem;->getDownloadUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$14$2;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$14;

    iget-object v2, v2, Lcom/miui/gallery/ui/PhotoPageFragment$14;->val$imageType:Lcom/miui/gallery/sdk/download/DownloadType;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/miui/gallery/util/uil/CloudImageLoadingListener;->onLoadingCancelled(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Landroid/view/View;)V

    .line 1446
    return-void
.end method
