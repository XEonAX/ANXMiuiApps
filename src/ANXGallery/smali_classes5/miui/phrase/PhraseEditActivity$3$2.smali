.class Lmiui/phrase/PhraseEditActivity$3$2;
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

    .line 164
    iput-object p1, p0, Lmiui/phrase/PhraseEditActivity$3$2;->this$1:Lmiui/phrase/PhraseEditActivity$3;

    iput-wide p2, p0, Lmiui/phrase/PhraseEditActivity$3$2;->val$id:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 168
    new-instance v0, Lmiui/app/AlertDialog$Builder;

    iget-object v1, p0, Lmiui/phrase/PhraseEditActivity$3$2;->this$1:Lmiui/phrase/PhraseEditActivity$3;

    iget-object v1, v1, Lmiui/phrase/PhraseEditActivity$3;->this$0:Lmiui/phrase/PhraseEditActivity;

    invoke-direct {v0, v1}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/miui/system/internal/R$string;->delete_frequent_phrases:I

    .line 169
    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/miui/system/internal/R$string;->delete_frequent_phrases_confirm:I

    .line 170
    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lmiui/phrase/PhraseEditActivity$3$2$1;

    invoke-direct {v1, p0}, Lmiui/phrase/PhraseEditActivity$3$2$1;-><init>(Lmiui/phrase/PhraseEditActivity$3$2;)V

    .line 171
    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    .line 179
    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    .line 180
    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->show()Lmiui/app/AlertDialog;

    .line 181
    return-void
.end method
