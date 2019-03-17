.class Lcom/miui/gallery/ui/DocumentsUIFragment$1;
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
    .line 51
    iput-object p1, p0, Lcom/miui/gallery/ui/DocumentsUIFragment$1;->this$0:Lcom/miui/gallery/ui/DocumentsUIFragment;

    iput p2, p0, Lcom/miui/gallery/ui/DocumentsUIFragment$1;->val$requestCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 54
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPEN_DOCUMENT_TREE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 55
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/miui/gallery/ui/DocumentsUIFragment$1;->this$0:Lcom/miui/gallery/ui/DocumentsUIFragment;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/DocumentsUIFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lcom/miui/gallery/ui/DocumentsUIFragment$1;->val$requestCode:I

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 56
    return-void
.end method
