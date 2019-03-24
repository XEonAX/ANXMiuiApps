.class Lmiui/phrase/PhraseEditActivity$1;
.super Ljava/lang/Object;
.source "PhraseEditActivity.java"

# interfaces
.implements Lmiui/widget/EditableListView$MultiChoiceModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/phrase/PhraseEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/phrase/PhraseEditActivity;


# direct methods
.method constructor <init>(Lmiui/phrase/PhraseEditActivity;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/phrase/PhraseEditActivity;

    .line 49
    iput-object p1, p0, Lmiui/phrase/PhraseEditActivity$1;->this$0:Lmiui/phrase/PhraseEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .line 70
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/miui/system/internal/R$id;->menu_delete:I

    if-ne v0, v1, :cond_0

    .line 71
    iget-object v0, p0, Lmiui/phrase/PhraseEditActivity$1;->this$0:Lmiui/phrase/PhraseEditActivity;

    invoke-virtual {v0}, Lmiui/phrase/PhraseEditActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemIds()[J

    move-result-object v0

    .line 72
    .local v0, "checkedIds":[J
    array-length v1, v0

    if-lez v1, :cond_0

    .line 73
    new-instance v1, Lmiui/app/AlertDialog$Builder;

    iget-object v2, p0, Lmiui/phrase/PhraseEditActivity$1;->this$0:Lmiui/phrase/PhraseEditActivity;

    invoke-direct {v1, v2}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/miui/system/internal/R$string;->delete_frequent_phrases:I

    .line 74
    invoke-virtual {v1, v2}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/miui/system/internal/R$string;->delete_frequent_phrases_confirm:I

    .line 75
    invoke-virtual {v1, v2}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lmiui/phrase/PhraseEditActivity$1$1;

    invoke-direct {v3, p0, v0}, Lmiui/phrase/PhraseEditActivity$1$1;-><init>(Lmiui/phrase/PhraseEditActivity$1;[J)V

    .line 76
    invoke-virtual {v1, v2, v3}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    .line 87
    invoke-virtual {v1, v2, v3}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    .line 88
    invoke-virtual {v1}, Lmiui/app/AlertDialog$Builder;->show()Lmiui/app/AlertDialog;

    .line 89
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 92
    .end local v0    # "checkedIds":[J
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onAllItemCheckedStateChanged(Landroid/view/ActionMode;Z)V
    .locals 0
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "checked"    # Z

    .line 101
    return-void
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .line 58
    new-instance v0, Landroid/view/MenuInflater;

    iget-object v1, p0, Lmiui/phrase/PhraseEditActivity$1;->this$0:Lmiui/phrase/PhraseEditActivity;

    invoke-direct {v0, v1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    .line 59
    .local v0, "menuInflater":Landroid/view/MenuInflater;
    sget v1, Lcom/miui/system/internal/R$menu;->phrase_edit_mode_action:I

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 60
    const/4 v1, 0x1

    return v1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 0
    .param p1, "mode"    # Landroid/view/ActionMode;

    .line 97
    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 0
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "position"    # I
    .param p3, "id"    # J
    .param p5, "checked"    # Z

    .line 54
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .line 65
    const/4 v0, 0x1

    return v0
.end method
