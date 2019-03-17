.class Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$1;
.super Ljava/lang/Object;
.source "SearchImageResultFragment.java"

# interfaces
.implements Lcom/miui/gallery/search/resultpage/ImageResultAdapter$OnHeaderItemClickedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->onInflateView(Landroid/view/View;Landroid/os/Bundle;Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$1;->this$0:Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHeaderItemClicked(I)V
    .locals 4
    .param p1, "groupIndex"    # I

    .prologue
    .line 96
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$1;->this$0:Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;

    invoke-static {v0}, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->access$100(Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;)Lcom/miui/gallery/activity/BaseActivity;

    move-result-object v1

    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$1;->this$0:Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;

    iget-object v0, v0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->mAdapter:Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;

    check-cast v0, Lcom/miui/gallery/search/resultpage/ImageResultAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/search/resultpage/ImageResultAdapter;->getGroupCreateDate(I)I

    move-result v0

    invoke-static {v1, v0}, Lcom/miui/gallery/util/IntentUtil;->gotoDailyAlbumDetailPage(Landroid/app/Activity;I)V

    .line 98
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$1;->this$0:Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->getFrom()Ljava/lang/String;

    move-result-object v0

    const-string v1, "client_image_operation_jump_to_daily"

    const-string v2, "queryText"

    iget-object v3, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$1;->this$0:Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;

    iget-object v3, v3, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->mQueryText:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/search/statistics/SearchStatUtils;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void
.end method
