.class Lmiui/phrase/PhraseEditActivity$3$2$1;
.super Ljava/lang/Object;
.source "PhraseEditActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/phrase/PhraseEditActivity$3$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lmiui/phrase/PhraseEditActivity$3$2;


# direct methods
.method constructor <init>(Lmiui/phrase/PhraseEditActivity$3$2;)V
    .locals 0
    .param p1, "this$2"    # Lmiui/phrase/PhraseEditActivity$3$2;

    .line 172
    iput-object p1, p0, Lmiui/phrase/PhraseEditActivity$3$2$1;->this$2:Lmiui/phrase/PhraseEditActivity$3$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 175
    iget-object v0, p0, Lmiui/phrase/PhraseEditActivity$3$2$1;->this$2:Lmiui/phrase/PhraseEditActivity$3$2;

    iget-object v0, v0, Lmiui/phrase/PhraseEditActivity$3$2;->this$1:Lmiui/phrase/PhraseEditActivity$3;

    iget-object v0, v0, Lmiui/phrase/PhraseEditActivity$3;->this$0:Lmiui/phrase/PhraseEditActivity;

    invoke-static {v0}, Lmiui/phrase/PhraseEditActivity;->access$000(Lmiui/phrase/PhraseEditActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lmiui/phrase/PhraseEditActivity$3$2$1;->this$2:Lmiui/phrase/PhraseEditActivity$3$2;

    iget-object v1, v1, Lmiui/phrase/PhraseEditActivity$3$2;->this$1:Lmiui/phrase/PhraseEditActivity$3;

    iget-object v1, v1, Lmiui/phrase/PhraseEditActivity$3;->this$0:Lmiui/phrase/PhraseEditActivity;

    invoke-static {v1}, Lmiui/phrase/PhraseEditActivity;->access$000(Lmiui/phrase/PhraseEditActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lmiui/phrase/PhraseEditActivity$3$2$1;->this$2:Lmiui/phrase/PhraseEditActivity$3$2;

    iget-wide v2, v2, Lmiui/phrase/PhraseEditActivity$3$2;->val$id:J

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 176
    iget-object v0, p0, Lmiui/phrase/PhraseEditActivity$3$2$1;->this$2:Lmiui/phrase/PhraseEditActivity$3$2;

    iget-object v0, v0, Lmiui/phrase/PhraseEditActivity$3$2;->this$1:Lmiui/phrase/PhraseEditActivity$3;

    iget-object v0, v0, Lmiui/phrase/PhraseEditActivity$3;->this$0:Lmiui/phrase/PhraseEditActivity;

    invoke-static {v0}, Lmiui/phrase/PhraseEditActivity;->access$100(Lmiui/phrase/PhraseEditActivity;)Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 177
    return-void
.end method
