.class Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment$LikelyResultAdapter$1;
.super Ljava/lang/Object;
.source "SearchFeedbackLikelyResultFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment$LikelyResultAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment$LikelyResultAdapter;

.field final synthetic val$checkable:Lcom/miui/gallery/ui/CheckableView;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment$LikelyResultAdapter;ILcom/miui/gallery/ui/CheckableView;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment$LikelyResultAdapter;

    .prologue
    .line 280
    iput-object p1, p0, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment$LikelyResultAdapter$1;->this$1:Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment$LikelyResultAdapter;

    iput p2, p0, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment$LikelyResultAdapter$1;->val$position:I

    iput-object p3, p0, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment$LikelyResultAdapter$1;->val$checkable:Lcom/miui/gallery/ui/CheckableView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 283
    iget-object v1, p0, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment$LikelyResultAdapter$1;->this$1:Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment$LikelyResultAdapter;

    iget-object v1, v1, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment$LikelyResultAdapter;->this$0:Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;

    iget v2, p0, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment$LikelyResultAdapter$1;->val$position:I

    invoke-static {v1, v2}, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->access$100(Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;I)Z

    move-result v0

    .line 284
    .local v0, "checked":Z
    if-eqz v0, :cond_0

    .line 285
    iget-object v1, p0, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment$LikelyResultAdapter$1;->this$1:Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment$LikelyResultAdapter;

    iget-object v1, v1, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment$LikelyResultAdapter;->this$0:Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;

    invoke-static {v1}, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->access$200(Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;)Landroid/util/LongSparseArray;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment$LikelyResultAdapter$1;->this$1:Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment$LikelyResultAdapter;

    iget-object v2, v2, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment$LikelyResultAdapter;->this$0:Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;

    iget-object v2, v2, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->mAdapter:Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;

    iget v3, p0, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment$LikelyResultAdapter$1;->val$position:I

    invoke-virtual {v2, v3}, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->delete(J)V

    .line 289
    :goto_0
    iget-object v2, p0, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment$LikelyResultAdapter$1;->val$checkable:Lcom/miui/gallery/ui/CheckableView;

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-interface {v2, v1}, Lcom/miui/gallery/ui/CheckableView;->setChecked(Z)V

    .line 290
    iget-object v1, p0, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment$LikelyResultAdapter$1;->this$1:Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment$LikelyResultAdapter;

    iget-object v1, v1, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment$LikelyResultAdapter;->this$0:Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;

    invoke-static {v1}, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->access$300(Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;)V

    .line 291
    return-void

    .line 287
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment$LikelyResultAdapter$1;->this$1:Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment$LikelyResultAdapter;

    iget-object v1, v1, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment$LikelyResultAdapter;->this$0:Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;

    invoke-static {v1}, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->access$200(Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;)Landroid/util/LongSparseArray;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment$LikelyResultAdapter$1;->this$1:Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment$LikelyResultAdapter;

    iget-object v2, v2, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment$LikelyResultAdapter;->this$0:Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;

    iget-object v2, v2, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->mAdapter:Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;

    iget v3, p0, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment$LikelyResultAdapter$1;->val$position:I

    invoke-virtual {v2, v3}, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->getItemId(I)J

    move-result-wide v2

    iget v4, p0, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment$LikelyResultAdapter$1;->val$position:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    .line 289
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
