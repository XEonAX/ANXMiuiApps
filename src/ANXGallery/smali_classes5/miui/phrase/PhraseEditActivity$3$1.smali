.class Lmiui/phrase/PhraseEditActivity$3$1;
.super Ljava/lang/Object;
.source "PhraseEditActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/phrase/PhraseEditActivity$3;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmiui/phrase/PhraseEditActivity$3;

.field final synthetic val$id:J


# direct methods
.method constructor <init>(Lmiui/phrase/PhraseEditActivity$3;J)V
    .locals 0
    .param p1, "this$1"    # Lmiui/phrase/PhraseEditActivity$3;

    .line 152
    iput-object p1, p0, Lmiui/phrase/PhraseEditActivity$3$1;->this$1:Lmiui/phrase/PhraseEditActivity$3;

    iput-wide p2, p0, Lmiui/phrase/PhraseEditActivity$3$1;->val$id:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 156
    invoke-static {}, Lmiui/content/ExtraIntent;->getAddPhraseIntent()Landroid/content/Intent;

    move-result-object v0

    .line 157
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "phrase_list"

    iget-object v2, p0, Lmiui/phrase/PhraseEditActivity$3$1;->this$1:Lmiui/phrase/PhraseEditActivity$3;

    iget-object v2, v2, Lmiui/phrase/PhraseEditActivity$3;->this$0:Lmiui/phrase/PhraseEditActivity;

    .line 158
    invoke-static {v2}, Lmiui/phrase/PhraseEditActivity;->access$000(Lmiui/phrase/PhraseEditActivity;)Ljava/util/ArrayList;

    move-result-object v2

    .line 157
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 159
    const-string v1, "phrase_index"

    iget-wide v2, p0, Lmiui/phrase/PhraseEditActivity$3$1;->val$id:J

    long-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 160
    iget-object v1, p0, Lmiui/phrase/PhraseEditActivity$3$1;->this$1:Lmiui/phrase/PhraseEditActivity$3;

    iget-object v1, v1, Lmiui/phrase/PhraseEditActivity$3;->this$0:Lmiui/phrase/PhraseEditActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lmiui/phrase/PhraseEditActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 161
    return-void
.end method
