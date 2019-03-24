.class Lmiui/phrase/AddPhraseActivity$1;
.super Ljava/lang/Object;
.source "AddPhraseActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/phrase/AddPhraseActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/phrase/AddPhraseActivity;

.field final synthetic val$confirmButton:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lmiui/phrase/AddPhraseActivity;Landroid/widget/Button;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/phrase/AddPhraseActivity;

    .line 77
    iput-object p1, p0, Lmiui/phrase/AddPhraseActivity$1;->this$0:Lmiui/phrase/AddPhraseActivity;

    iput-object p2, p0, Lmiui/phrase/AddPhraseActivity$1;->val$confirmButton:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .line 88
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    iget-object v0, p0, Lmiui/phrase/AddPhraseActivity$1;->val$confirmButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    .line 89
    :cond_1
    :goto_0
    iget-object v0, p0, Lmiui/phrase/AddPhraseActivity$1;->val$confirmButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 93
    :goto_1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .line 80
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .line 84
    return-void
.end method
