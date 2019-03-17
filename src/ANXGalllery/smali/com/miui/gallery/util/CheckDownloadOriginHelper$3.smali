.class Lcom/miui/gallery/util/CheckDownloadOriginHelper$3;
.super Ljava/lang/Object;
.source "CheckDownloadOriginHelper.java"

# interfaces
.implements Lcom/miui/gallery/ui/DownloadFragment$OnDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/util/CheckDownloadOriginHelper;->startDownloadOrigin(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/util/CheckDownloadOriginHelper;


# direct methods
.method constructor <init>(Lcom/miui/gallery/util/CheckDownloadOriginHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/util/CheckDownloadOriginHelper;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/miui/gallery/util/CheckDownloadOriginHelper$3;->this$0:Lcom/miui/gallery/util/CheckDownloadOriginHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCanceled()V
    .locals 2

    .prologue
    .line 127
    const-string v0, "CheckDownloadOriginHelper"

    const-string v1, "download canceled"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/miui/gallery/util/CheckDownloadOriginHelper$3;->this$0:Lcom/miui/gallery/util/CheckDownloadOriginHelper;

    invoke-static {v0}, Lcom/miui/gallery/util/CheckDownloadOriginHelper;->access$100(Lcom/miui/gallery/util/CheckDownloadOriginHelper;)Lcom/miui/gallery/util/CheckDownloadOriginHelper$CheckDownloadOriginListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/miui/gallery/util/CheckDownloadOriginHelper$3;->this$0:Lcom/miui/gallery/util/CheckDownloadOriginHelper;

    invoke-static {v0}, Lcom/miui/gallery/util/CheckDownloadOriginHelper;->access$100(Lcom/miui/gallery/util/CheckDownloadOriginHelper;)Lcom/miui/gallery/util/CheckDownloadOriginHelper$CheckDownloadOriginListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gallery/util/CheckDownloadOriginHelper$CheckDownloadOriginListener;->onCanceled()V

    .line 131
    :cond_0
    return-void
.end method

.method public onDownloadComplete(Ljava/util/List;Ljava/util/List;)V
    .locals 9
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
    const/4 v1, 0x0

    .line 94
    const-string v2, "CheckDownloadOriginHelper"

    const-string v3, "onDownloadComplete fails: %s"

    if-nez p2, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 95
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 96
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 98
    .local v8, "failedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;>;"
    iget-object v0, p0, Lcom/miui/gallery/util/CheckDownloadOriginHelper$3;->this$0:Lcom/miui/gallery/util/CheckDownloadOriginHelper;

    .line 99
    invoke-static {v0}, Lcom/miui/gallery/util/CheckDownloadOriginHelper;->access$200(Lcom/miui/gallery/util/CheckDownloadOriginHelper;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/gallery/util/CheckDownloadOriginHelper$3;->this$0:Lcom/miui/gallery/util/CheckDownloadOriginHelper;

    .line 100
    invoke-static {v2}, Lcom/miui/gallery/util/CheckDownloadOriginHelper;->access$200(Lcom/miui/gallery/util/CheckDownloadOriginHelper;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c016c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/util/CheckDownloadOriginHelper$3;->this$0:Lcom/miui/gallery/util/CheckDownloadOriginHelper;

    .line 101
    invoke-static {v3}, Lcom/miui/gallery/util/CheckDownloadOriginHelper;->access$200(Lcom/miui/gallery/util/CheckDownloadOriginHelper;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c016e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0c016d

    const/high16 v5, 0x1040000

    new-instance v6, Lcom/miui/gallery/util/CheckDownloadOriginHelper$3$1;

    invoke-direct {v6, p0, v8}, Lcom/miui/gallery/util/CheckDownloadOriginHelper$3$1;-><init>(Lcom/miui/gallery/util/CheckDownloadOriginHelper$3;Ljava/util/ArrayList;)V

    new-instance v7, Lcom/miui/gallery/util/CheckDownloadOriginHelper$3$2;

    invoke-direct {v7, p0}, Lcom/miui/gallery/util/CheckDownloadOriginHelper$3$2;-><init>(Lcom/miui/gallery/util/CheckDownloadOriginHelper$3;)V

    .line 98
    invoke-static/range {v0 .. v7}, Lcom/miui/gallery/util/DialogUtil;->showInfoDialog(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;IILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    .line 123
    .end local v8    # "failedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;>;"
    :cond_0
    :goto_1
    return-void

    .line 94
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    .line 119
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/util/CheckDownloadOriginHelper$3;->this$0:Lcom/miui/gallery/util/CheckDownloadOriginHelper;

    invoke-static {v0}, Lcom/miui/gallery/util/CheckDownloadOriginHelper;->access$100(Lcom/miui/gallery/util/CheckDownloadOriginHelper;)Lcom/miui/gallery/util/CheckDownloadOriginHelper$CheckDownloadOriginListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/miui/gallery/util/CheckDownloadOriginHelper$3;->this$0:Lcom/miui/gallery/util/CheckDownloadOriginHelper;

    invoke-static {v0}, Lcom/miui/gallery/util/CheckDownloadOriginHelper;->access$100(Lcom/miui/gallery/util/CheckDownloadOriginHelper;)Lcom/miui/gallery/util/CheckDownloadOriginHelper$CheckDownloadOriginListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gallery/util/CheckDownloadOriginHelper$CheckDownloadOriginListener;->onComplete()V

    goto :goto_1
.end method
