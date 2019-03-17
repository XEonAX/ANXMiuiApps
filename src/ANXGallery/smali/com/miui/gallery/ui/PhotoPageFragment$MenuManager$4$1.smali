.class Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager$4$1;
.super Ljava/lang/Object;
.source "PhotoPageFragment.java"

# interfaces
.implements Lcom/miui/gallery/ui/PhotoPageFragment$DownloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager$4;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager$4;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager$4;)V
    .locals 0
    .param p1, "this$2"    # Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager$4;

    .prologue
    .line 1590
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager$4$1;->this$2:Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public downloadSuccess(Ljava/lang/String;Lcom/miui/gallery/model/BaseDataItem;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "item"    # Lcom/miui/gallery/model/BaseDataItem;

    .prologue
    .line 1593
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager$4$1;->this$2:Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager$4;

    iget-object v1, v0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager$4;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;

    invoke-virtual {p2}, Lcom/miui/gallery/model/BaseDataItem;->getContentUriForExternal()Landroid/net/Uri;

    move-result-object v2

    instance-of v0, p2, Lcom/miui/gallery/model/CloudItem;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/miui/gallery/model/CloudItem;

    .end local p2    # "item":Lcom/miui/gallery/model/BaseDataItem;
    invoke-virtual {p2}, Lcom/miui/gallery/model/CloudItem;->getSha1()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->access$3600(Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;Landroid/net/Uri;Ljava/lang/String;)V

    .line 1594
    return-void

    .line 1593
    .restart local p2    # "item":Lcom/miui/gallery/model/BaseDataItem;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
