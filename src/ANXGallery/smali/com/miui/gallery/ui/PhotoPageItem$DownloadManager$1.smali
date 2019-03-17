.class Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$1;
.super Ljava/lang/Object;
.source "PhotoPageItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->initErrorView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;

    .prologue
    .line 900
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$1;->this$1:Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 903
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$1;->this$1:Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->access$600(Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;)Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$DownloadErrorDisplayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 904
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$1;->this$1:Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->access$600(Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;)Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$DownloadErrorDisplayer;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$1;->this$1:Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/PhotoPageItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$DownloadErrorDisplayer;->display(Landroid/content/Context;)Z

    .line 906
    :cond_0
    return-void
.end method
