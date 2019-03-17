.class Lcom/miui/gallery/ui/PhotoPageFragment$14;
.super Ljava/lang/Object;
.source "PhotoPageFragment.java"

# interfaces
.implements Lcom/miui/gallery/ui/DownloadFragment$OnDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/PhotoPageFragment;->doDownloadOrigin(Lcom/miui/gallery/model/BaseDataItem;Lcom/miui/gallery/sdk/download/DownloadType;Lcom/miui/gallery/ui/PhotoPageFragment$DownloadCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

.field final synthetic val$downloadCallback:Lcom/miui/gallery/ui/PhotoPageFragment$DownloadCallback;

.field final synthetic val$imageType:Lcom/miui/gallery/sdk/download/DownloadType;

.field final synthetic val$item:Lcom/miui/gallery/model/BaseDataItem;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/PhotoPageFragment;Lcom/miui/gallery/model/BaseDataItem;Lcom/miui/gallery/ui/PhotoPageFragment$DownloadCallback;Lcom/miui/gallery/sdk/download/DownloadType;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/PhotoPageFragment;

    .prologue
    .line 1427
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$14;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iput-object p2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$14;->val$item:Lcom/miui/gallery/model/BaseDataItem;

    iput-object p3, p0, Lcom/miui/gallery/ui/PhotoPageFragment$14;->val$downloadCallback:Lcom/miui/gallery/ui/PhotoPageFragment$DownloadCallback;

    iput-object p4, p0, Lcom/miui/gallery/ui/PhotoPageFragment$14;->val$imageType:Lcom/miui/gallery/sdk/download/DownloadType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCanceled()V
    .locals 4

    .prologue
    .line 1458
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$14;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$2500(Lcom/miui/gallery/ui/PhotoPageFragment;)Lcom/miui/gallery/util/uil/CloudImageLoadingListener;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$14;->val$item:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {v1}, Lcom/miui/gallery/model/BaseDataItem;->getDownloadUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$14;->val$imageType:Lcom/miui/gallery/sdk/download/DownloadType;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/miui/gallery/util/uil/CloudImageLoadingListener;->onLoadingCancelled(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Landroid/view/View;)V

    .line 1459
    return-void
.end method

.method public onDownloadComplete(Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "successes":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;>;"
    .local p2, "fails":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;>;"
    const/4 v2, 0x0

    .line 1430
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 1431
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$14;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$14;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    .line 1433
    invoke-virtual {v1}, Lcom/miui/gallery/ui/PhotoPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c016c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$14;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    .line 1434
    invoke-virtual {v2}, Lcom/miui/gallery/ui/PhotoPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c016e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0c016d

    const/high16 v4, 0x1040000

    new-instance v5, Lcom/miui/gallery/ui/PhotoPageFragment$14$1;

    invoke-direct {v5, p0}, Lcom/miui/gallery/ui/PhotoPageFragment$14$1;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment$14;)V

    new-instance v6, Lcom/miui/gallery/ui/PhotoPageFragment$14$2;

    invoke-direct {v6, p0}, Lcom/miui/gallery/ui/PhotoPageFragment$14$2;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment$14;)V

    .line 1431
    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/util/DialogUtil;->showInfoDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    .line 1454
    :goto_0
    return-void

    .line 1450
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$14;->val$item:Lcom/miui/gallery/model/BaseDataItem;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;

    invoke-virtual {v0}, Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;->getDownloadPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/miui/gallery/model/BaseDataItem;->setFilePath(Ljava/lang/String;)Lcom/miui/gallery/model/BaseDataItem;

    .line 1451
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$14;->val$downloadCallback:Lcom/miui/gallery/ui/PhotoPageFragment$DownloadCallback;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;

    invoke-virtual {v0}, Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;->getDownloadPath()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$14;->val$item:Lcom/miui/gallery/model/BaseDataItem;

    invoke-interface {v1, v0, v2}, Lcom/miui/gallery/ui/PhotoPageFragment$DownloadCallback;->downloadSuccess(Ljava/lang/String;Lcom/miui/gallery/model/BaseDataItem;)V

    .line 1452
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$14;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$2500(Lcom/miui/gallery/ui/PhotoPageFragment;)Lcom/miui/gallery/util/uil/CloudImageLoadingListener;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$14;->val$item:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {v1}, Lcom/miui/gallery/model/BaseDataItem;->getDownloadUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$14;->val$imageType:Lcom/miui/gallery/sdk/download/DownloadType;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPageFragment$14;->val$item:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {v4}, Lcom/miui/gallery/model/BaseDataItem;->getOriginalPath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/miui/gallery/util/uil/CloudImageLoadingListener;->onDownloadComplete(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0
.end method
