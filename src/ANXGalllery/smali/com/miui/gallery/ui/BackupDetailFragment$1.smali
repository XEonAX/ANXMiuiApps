.class Lcom/miui/gallery/ui/BackupDetailFragment$1;
.super Ljava/lang/Object;
.source "BackupDetailFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/BackupDetailFragment;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/BackupDetailFragment;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/BackupDetailFragment;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/BackupDetailFragment;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/miui/gallery/ui/BackupDetailFragment$1;->this$0:Lcom/miui/gallery/ui/BackupDetailFragment;

    iput-object p2, p0, Lcom/miui/gallery/ui/BackupDetailFragment$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/miui/gallery/ui/BackupDetailFragment$1;->val$view:Landroid/view/View;

    check-cast v0, Lcom/miui/gallery/widget/TwoStageDrawer;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/TwoStageDrawer;->openDrawer()V

    .line 85
    return-void
.end method
