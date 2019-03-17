.class Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment$1;
.super Ljava/lang/Object;
.source "PeopleRelationCreatorDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment$1;->this$0:Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment$1;->this$0:Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment;

    iget-object v1, p0, Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment$1;->this$0:Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment;->access$100(Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment;)Landroid/app/AlertDialog;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment;->access$002(Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment;Landroid/widget/Button;)Landroid/widget/Button;

    .line 67
    iget-object v0, p0, Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment$1;->this$0:Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment;->access$000(Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment$1;->this$0:Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment;->access$200(Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    return-void
.end method
