.class Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$ChoiceModeListener$2;
.super Ljava/lang/Object;
.source "SearchImageResultFragment.java"

# interfaces
.implements Lcom/miui/gallery/util/MediaAndAlbumOperations$OnAddAlbumListener;


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


# direct methods
.method constructor <init>(Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$ChoiceModeListener;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$ChoiceModeListener;

    .prologue
    .line 429
    iput-object p1, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$ChoiceModeListener$2;->this$1:Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$ChoiceModeListener;

    iput-object p2, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$ChoiceModeListener$2;->val$checkedServerIds:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete([JZ)V
    .locals 3
    .param p1, "result"    # [J
    .param p2, "deleteOrigin"    # Z

    .prologue
    .line 432
    iget-object v1, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$ChoiceModeListener$2;->this$1:Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$ChoiceModeListener;

    invoke-static {v1}, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$ChoiceModeListener;->access$900(Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$ChoiceModeListener;)Landroid/view/ActionMode;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    .line 435
    if-eqz p1, :cond_0

    .line 436
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 437
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "queryText"

    iget-object v2, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$ChoiceModeListener$2;->this$1:Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$ChoiceModeListener;

    iget-object v2, v2, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$ChoiceModeListener;->this$0:Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;

    iget-object v2, v2, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->mQueryText:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    const-string v1, "count"

    array-length v2, p1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    const-string v1, "serverIds"

    iget-object v2, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$ChoiceModeListener$2;->val$checkedServerIds:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    const-string v1, "from_image_result"

    const-string v2, "client_image_operation_add_to_album"

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/search/statistics/SearchStatUtils;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 444
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method
