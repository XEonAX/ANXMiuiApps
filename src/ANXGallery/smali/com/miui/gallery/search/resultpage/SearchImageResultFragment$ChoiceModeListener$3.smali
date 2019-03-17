.class Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$ChoiceModeListener$3;
.super Ljava/lang/Object;
.source "SearchImageResultFragment.java"

# interfaces
.implements Lcom/miui/gallery/ui/DeletionTask$OnDeletionCompleteListener;


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

.field final synthetic val$checkedServerIds:Ljava/lang/String;

.field final synthetic val$mode:Landroid/view/ActionMode;


# direct methods
.method constructor <init>(Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$ChoiceModeListener;Landroid/view/ActionMode;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$ChoiceModeListener;

    .prologue
    .line 455
    iput-object p1, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$ChoiceModeListener$3;->this$1:Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$ChoiceModeListener;

    iput-object p2, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$ChoiceModeListener$3;->val$mode:Landroid/view/ActionMode;

    iput-object p3, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$ChoiceModeListener$3;->val$checkedServerIds:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeleted(I[J)V
    .locals 7
    .param p1, "count"    # I
    .param p2, "deleteIds"    # [J

    .prologue
    const/4 v6, 0x0

    .line 458
    iget-object v1, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$ChoiceModeListener$3;->this$1:Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$ChoiceModeListener;

    iget-object v1, v1, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$ChoiceModeListener;->this$0:Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;

    invoke-static {v1}, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->access$1100(Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;)Lcom/miui/gallery/activity/BaseActivity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 475
    :goto_0
    return-void

    .line 460
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$ChoiceModeListener$3;->this$1:Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$ChoiceModeListener;

    iget-object v1, v1, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$ChoiceModeListener;->this$0:Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;

    invoke-static {v1}, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->access$1200(Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;)Lcom/miui/gallery/activity/BaseActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$ChoiceModeListener$3;->this$1:Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$ChoiceModeListener;

    iget-object v2, v2, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$ChoiceModeListener;->this$0:Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;

    const v3, 0x7f0c014d

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 461
    if-lez p1, :cond_1

    .line 463
    iget-object v1, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$ChoiceModeListener$3;->this$1:Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$ChoiceModeListener;

    iget-object v1, v1, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$ChoiceModeListener;->this$0:Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;

    invoke-static {v1}, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->access$1300(Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;)Lcom/miui/gallery/activity/BaseActivity;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/miui/gallery/util/SoundUtils;->playSoundForOperation(Landroid/content/Context;I)V

    .line 465
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$ChoiceModeListener$3;->val$mode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    .line 468
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 469
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "queryText"

    iget-object v2, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$ChoiceModeListener$3;->this$1:Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$ChoiceModeListener;

    iget-object v2, v2, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$ChoiceModeListener;->this$0:Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;

    iget-object v2, v2, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->mQueryText:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    const-string v1, "count"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    const-string v1, "serverIds"

    iget-object v2, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$ChoiceModeListener$3;->val$checkedServerIds:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    const-string v1, "from_image_result"

    const-string v2, "client_image_operation_delete"

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/search/statistics/SearchStatUtils;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method
