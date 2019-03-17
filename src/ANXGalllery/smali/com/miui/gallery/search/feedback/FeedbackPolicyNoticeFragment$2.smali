.class Lcom/miui/gallery/search/feedback/FeedbackPolicyNoticeFragment$2;
.super Ljava/lang/Object;
.source "FeedbackPolicyNoticeFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/search/feedback/FeedbackPolicyNoticeFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/search/feedback/FeedbackPolicyNoticeFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/search/feedback/FeedbackPolicyNoticeFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/search/feedback/FeedbackPolicyNoticeFragment;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/miui/gallery/search/feedback/FeedbackPolicyNoticeFragment$2;->this$0:Lcom/miui/gallery/search/feedback/FeedbackPolicyNoticeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 42
    iget-object v0, p0, Lcom/miui/gallery/search/feedback/FeedbackPolicyNoticeFragment$2;->this$0:Lcom/miui/gallery/search/feedback/FeedbackPolicyNoticeFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/search/feedback/FeedbackPolicyNoticeFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Lmiui/app/AlertDialog;

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/miui/gallery/preference/GalleryPreferences$Search;->setShouldShowFeedbackPolicy(Z)V

    .line 43
    iget-object v0, p0, Lcom/miui/gallery/search/feedback/FeedbackPolicyNoticeFragment$2;->this$0:Lcom/miui/gallery/search/feedback/FeedbackPolicyNoticeFragment;

    invoke-static {v0}, Lcom/miui/gallery/search/feedback/FeedbackPolicyNoticeFragment;->access$000(Lcom/miui/gallery/search/feedback/FeedbackPolicyNoticeFragment;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/miui/gallery/search/feedback/FeedbackPolicyNoticeFragment$2;->this$0:Lcom/miui/gallery/search/feedback/FeedbackPolicyNoticeFragment;

    invoke-static {v0}, Lcom/miui/gallery/search/feedback/FeedbackPolicyNoticeFragment;->access$000(Lcom/miui/gallery/search/feedback/FeedbackPolicyNoticeFragment;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 46
    :cond_0
    return-void

    .line 42
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
