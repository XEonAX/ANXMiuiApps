.class Lmiui/phrase/PhraseEditActivity$2;
.super Ljava/lang/Object;
.source "PhraseEditActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/phrase/PhraseEditActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/phrase/PhraseEditActivity;

.field final synthetic val$finalPositions:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lmiui/phrase/PhraseEditActivity;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/phrase/PhraseEditActivity;

    .line 121
    iput-object p1, p0, Lmiui/phrase/PhraseEditActivity$2;->this$0:Lmiui/phrase/PhraseEditActivity;

    iput-object p2, p0, Lmiui/phrase/PhraseEditActivity$2;->val$finalPositions:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 5

    .line 124
    iget-object v0, p0, Lmiui/phrase/PhraseEditActivity$2;->this$0:Lmiui/phrase/PhraseEditActivity;

    invoke-static {v0}, Lmiui/phrase/PhraseEditActivity;->access$200(Lmiui/phrase/PhraseEditActivity;)Lmiui/widget/EditableListViewWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/widget/EditableListViewWrapper;->clearChoices()V

    .line 125
    iget-object v0, p0, Lmiui/phrase/PhraseEditActivity$2;->val$finalPositions:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 126
    move v0, v1

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lmiui/phrase/PhraseEditActivity$2;->val$finalPositions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 127
    iget-object v2, p0, Lmiui/phrase/PhraseEditActivity$2;->this$0:Lmiui/phrase/PhraseEditActivity;

    invoke-static {v2}, Lmiui/phrase/PhraseEditActivity;->access$200(Lmiui/phrase/PhraseEditActivity;)Lmiui/widget/EditableListViewWrapper;

    move-result-object v2

    iget-object v3, p0, Lmiui/phrase/PhraseEditActivity$2;->val$finalPositions:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lmiui/widget/EditableListViewWrapper;->setItemChecked(IZ)V

    .line 126
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 130
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lmiui/phrase/PhraseEditActivity$2;->this$0:Lmiui/phrase/PhraseEditActivity;

    invoke-virtual {v0}, Lmiui/phrase/PhraseEditActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 131
    return v1
.end method
