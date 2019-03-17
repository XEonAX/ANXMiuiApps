.class Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment$2;
.super Ljava/lang/Object;
.source "PeopleRelationCreatorDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment;
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
    .line 79
    iput-object p1, p0, Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment$2;->this$0:Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 82
    iget-object v1, p0, Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment$2;->this$0:Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment;->access$300(Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "relationText":Ljava/lang/String;
    iget-object v1, p0, Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment$2;->this$0:Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment;

    invoke-static {v1, v0}, Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment;->access$400(Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment$2;->this$0:Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment;->access$100(Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 87
    invoke-static {v0}, Lcom/miui/gallery/model/PeopleContactInfo$UserDefineRelation;->addRelation(Ljava/lang/String;)V

    .line 88
    iget-object v1, p0, Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment$2;->this$0:Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment;->access$500(Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment;)Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment$OnRelationCreatedListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment$2;->this$0:Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment;->access$500(Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment;)Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment$OnRelationCreatedListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment$OnRelationCreatedListener;->onRelationCreated(Ljava/lang/String;)V

    goto :goto_0
.end method
