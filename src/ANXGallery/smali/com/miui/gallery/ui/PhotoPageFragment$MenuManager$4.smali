.class Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager$4;
.super Ljava/lang/Object;
.source "PhotoPageFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->onMenuItemClick(Landroid/view/MenuItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;

.field final synthetic val$current:Lcom/miui/gallery/model/BaseDataItem;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;Lcom/miui/gallery/model/BaseDataItem;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;

    .prologue
    .line 1587
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager$4;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;

    iput-object p2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager$4;->val$current:Lcom/miui/gallery/model/BaseDataItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1590
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager$4;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager$4;->val$current:Lcom/miui/gallery/model/BaseDataItem;

    new-instance v2, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager$4$1;

    invoke-direct {v2, p0}, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager$4$1;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager$4;)V

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/ui/PhotoPageFragment;->downloadOrigin(Lcom/miui/gallery/model/BaseDataItem;Lcom/miui/gallery/ui/PhotoPageFragment$DownloadCallback;)V

    .line 1596
    return-void
.end method
