.class Lcom/miui/gallery/ui/PeopleRelationSetDialogFragment$1;
.super Ljava/lang/Object;
.source "PeopleRelationSetDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/PeopleRelationSetDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/PeopleRelationSetDialogFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/PeopleRelationSetDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/PeopleRelationSetDialogFragment;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/miui/gallery/ui/PeopleRelationSetDialogFragment$1;->this$0:Lcom/miui/gallery/ui/PeopleRelationSetDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 56
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 57
    iget-object v3, p0, Lcom/miui/gallery/ui/PeopleRelationSetDialogFragment$1;->this$0:Lcom/miui/gallery/ui/PeopleRelationSetDialogFragment;

    invoke-static {v3}, Lcom/miui/gallery/ui/PeopleRelationSetDialogFragment;->access$000(Lcom/miui/gallery/ui/PeopleRelationSetDialogFragment;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/gallery/ui/PeopleRelationSetDialogFragment$1;->this$0:Lcom/miui/gallery/ui/PeopleRelationSetDialogFragment;

    const v5, 0x7f0c0148

    invoke-virtual {v4, v5}, Lcom/miui/gallery/ui/PeopleRelationSetDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-ne p2, v3, :cond_1

    .line 58
    new-instance v1, Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment;

    invoke-direct {v1}, Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment;-><init>()V

    .line 59
    .local v1, "relationDialog":Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment;
    new-instance v3, Lcom/miui/gallery/ui/PeopleRelationSetDialogFragment$1$1;

    invoke-direct {v3, p0}, Lcom/miui/gallery/ui/PeopleRelationSetDialogFragment$1$1;-><init>(Lcom/miui/gallery/ui/PeopleRelationSetDialogFragment$1;)V

    invoke-virtual {v1, v3}, Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment;->setOnCreatedListener(Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment$OnRelationCreatedListener;)V

    .line 67
    iget-object v3, p0, Lcom/miui/gallery/ui/PeopleRelationSetDialogFragment$1;->this$0:Lcom/miui/gallery/ui/PeopleRelationSetDialogFragment;

    invoke-virtual {v3}, Lcom/miui/gallery/ui/PeopleRelationSetDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "PeopleRelationCreatorDialogFragment"

    invoke-virtual {v1, v3, v4}, Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment;->showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 80
    .end local v1    # "relationDialog":Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment;
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    iget-object v3, p0, Lcom/miui/gallery/ui/PeopleRelationSetDialogFragment$1;->this$0:Lcom/miui/gallery/ui/PeopleRelationSetDialogFragment;

    invoke-static {v3}, Lcom/miui/gallery/ui/PeopleRelationSetDialogFragment;->access$000(Lcom/miui/gallery/ui/PeopleRelationSetDialogFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 71
    .local v2, "relationText":Ljava/lang/String;
    invoke-static {}, Lcom/miui/gallery/model/PeopleContactInfo;->getSystemRelationValueItems()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 72
    move-object v0, v2

    .line 76
    .local v0, "relation":Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lcom/miui/gallery/ui/PeopleRelationSetDialogFragment$1;->this$0:Lcom/miui/gallery/ui/PeopleRelationSetDialogFragment;

    invoke-static {v3}, Lcom/miui/gallery/ui/PeopleRelationSetDialogFragment;->access$100(Lcom/miui/gallery/ui/PeopleRelationSetDialogFragment;)Lcom/miui/gallery/ui/PeopleRelationSetDialogFragment$RelationSelectedListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 77
    iget-object v3, p0, Lcom/miui/gallery/ui/PeopleRelationSetDialogFragment$1;->this$0:Lcom/miui/gallery/ui/PeopleRelationSetDialogFragment;

    invoke-static {v3}, Lcom/miui/gallery/ui/PeopleRelationSetDialogFragment;->access$100(Lcom/miui/gallery/ui/PeopleRelationSetDialogFragment;)Lcom/miui/gallery/ui/PeopleRelationSetDialogFragment$RelationSelectedListener;

    move-result-object v3

    invoke-interface {v3, v0, v2}, Lcom/miui/gallery/ui/PeopleRelationSetDialogFragment$RelationSelectedListener;->onRelationSelected(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 74
    .end local v0    # "relation":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/miui/gallery/model/PeopleContactInfo;->getUserDefineRelation()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "relation":Ljava/lang/String;
    goto :goto_1
.end method
