.class Lmiui/phrase/PhraseEditActivity$1$1;
.super Ljava/lang/Object;
.source "PhraseEditActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/phrase/PhraseEditActivity$1;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmiui/phrase/PhraseEditActivity$1;

.field final synthetic val$checkedIds:[J


# direct methods
.method constructor <init>(Lmiui/phrase/PhraseEditActivity$1;[J)V
    .locals 0
    .param p1, "this$1"    # Lmiui/phrase/PhraseEditActivity$1;

    .line 77
    iput-object p1, p0, Lmiui/phrase/PhraseEditActivity$1$1;->this$1:Lmiui/phrase/PhraseEditActivity$1;

    iput-object p2, p0, Lmiui/phrase/PhraseEditActivity$1$1;->val$checkedIds:[J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 80
    iget-object v0, p0, Lmiui/phrase/PhraseEditActivity$1$1;->val$checkedIds:[J

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 81
    iget-object v1, p0, Lmiui/phrase/PhraseEditActivity$1$1;->this$1:Lmiui/phrase/PhraseEditActivity$1;

    iget-object v1, v1, Lmiui/phrase/PhraseEditActivity$1;->this$0:Lmiui/phrase/PhraseEditActivity;

    invoke-static {v1}, Lmiui/phrase/PhraseEditActivity;->access$000(Lmiui/phrase/PhraseEditActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lmiui/phrase/PhraseEditActivity$1$1;->this$1:Lmiui/phrase/PhraseEditActivity$1;

    iget-object v2, v2, Lmiui/phrase/PhraseEditActivity$1;->this$0:Lmiui/phrase/PhraseEditActivity;

    invoke-static {v2}, Lmiui/phrase/PhraseEditActivity;->access$000(Lmiui/phrase/PhraseEditActivity;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lmiui/phrase/PhraseEditActivity$1$1;->val$checkedIds:[J

    aget-wide v4, v3, v0

    long-to-int v3, v4

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 80
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 84
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lmiui/phrase/PhraseEditActivity$1$1;->this$1:Lmiui/phrase/PhraseEditActivity$1;

    iget-object v0, v0, Lmiui/phrase/PhraseEditActivity$1;->this$0:Lmiui/phrase/PhraseEditActivity;

    invoke-static {v0}, Lmiui/phrase/PhraseEditActivity;->access$100(Lmiui/phrase/PhraseEditActivity;)Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 85
    return-void
.end method
