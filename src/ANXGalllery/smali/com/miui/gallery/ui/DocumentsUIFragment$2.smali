.class Lcom/miui/gallery/ui/DocumentsUIFragment$2;
.super Ljava/lang/Object;
.source "DocumentsUIFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/DocumentsUIFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/DocumentsUIFragment;

.field final synthetic val$requestCode:I


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/DocumentsUIFragment;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/DocumentsUIFragment;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/miui/gallery/ui/DocumentsUIFragment$2;->this$0:Lcom/miui/gallery/ui/DocumentsUIFragment;

    iput p2, p0, Lcom/miui/gallery/ui/DocumentsUIFragment$2;->val$requestCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 66
    const/4 v0, 0x2

    iget v1, p0, Lcom/miui/gallery/ui/DocumentsUIFragment$2;->val$requestCode:I

    invoke-static {v0, v1}, Lcom/miui/gallery/ui/DocumentsUIFragment;->newInstance(II)Lcom/miui/gallery/ui/DocumentsUIFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/DocumentsUIFragment$2;->this$0:Lcom/miui/gallery/ui/DocumentsUIFragment;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/DocumentsUIFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "DocumentsUIFragment"

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/ui/DocumentsUIFragment;->showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 67
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 68
    return-void
.end method
