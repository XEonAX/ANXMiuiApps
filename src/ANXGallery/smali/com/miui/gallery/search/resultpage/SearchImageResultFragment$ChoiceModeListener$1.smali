.class Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$ChoiceModeListener$1;
.super Ljava/lang/Object;
.source "SearchImageResultFragment.java"

# interfaces
.implements Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$OnFeedbackCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$ChoiceModeListener;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$ChoiceModeListener;

.field final synthetic val$mode:Landroid/view/ActionMode;


# direct methods
.method constructor <init>(Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$ChoiceModeListener;Landroid/view/ActionMode;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$ChoiceModeListener;

    .prologue
    .line 411
    iput-object p1, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$ChoiceModeListener$1;->this$1:Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$ChoiceModeListener;

    iput-object p2, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$ChoiceModeListener$1;->val$mode:Landroid/view/ActionMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(I)V
    .locals 3
    .param p1, "count"    # I

    .prologue
    const/4 v2, 0x1

    .line 414
    iget-object v1, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$ChoiceModeListener$1;->val$mode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    .line 415
    if-lez p1, :cond_0

    .line 416
    iget-object v1, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$ChoiceModeListener$1;->this$1:Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$ChoiceModeListener;

    iget-object v1, v1, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$ChoiceModeListener;->this$0:Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;

    iget-object v1, v1, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->mSectionDataResultHelper:Lcom/miui/gallery/search/resultpage/SearchResultHelper;

    invoke-virtual {v1}, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->resetCacheInfo()V

    .line 417
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 418
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "force_requery"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 419
    iget-object v1, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$ChoiceModeListener$1;->this$1:Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$ChoiceModeListener;

    iget-object v1, v1, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$ChoiceModeListener;->this$0:Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;

    invoke-virtual {v1, v0}, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->restartSectionDataLoader(Landroid/os/Bundle;)V

    .line 421
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    return-void
.end method
