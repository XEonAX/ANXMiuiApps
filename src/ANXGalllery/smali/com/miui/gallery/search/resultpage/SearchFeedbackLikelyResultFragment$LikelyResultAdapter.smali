.class Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment$LikelyResultAdapter;
.super Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;
.source "SearchFeedbackLikelyResultFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LikelyResultAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 268
    iput-object p1, p0, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment$LikelyResultAdapter;->this$0:Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;

    .line 269
    invoke-direct {p0, p2}, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;-><init>(Landroid/content/Context;)V

    .line 270
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 274
    invoke-super {p0, p1, p2, p3}, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 276
    .local v1, "view":Landroid/view/View;
    instance-of v2, v1, Lcom/miui/gallery/ui/CheckableView;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 277
    check-cast v0, Lcom/miui/gallery/ui/CheckableView;

    .line 278
    .local v0, "checkable":Lcom/miui/gallery/ui/CheckableView;
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/miui/gallery/ui/CheckableView;->setCheckable(Z)V

    .line 279
    iget-object v2, p0, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment$LikelyResultAdapter;->this$0:Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;

    invoke-static {v2, p1}, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->access$100(Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;I)Z

    move-result v2

    invoke-interface {v0, v2}, Lcom/miui/gallery/ui/CheckableView;->setChecked(Z)V

    .line 280
    new-instance v2, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment$LikelyResultAdapter$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment$LikelyResultAdapter$1;-><init>(Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment$LikelyResultAdapter;ILcom/miui/gallery/ui/CheckableView;)V

    invoke-interface {v0, v2}, Lcom/miui/gallery/ui/CheckableView;->setCheckableListener(Landroid/view/View$OnClickListener;)V

    .line 294
    .end local v0    # "checkable":Lcom/miui/gallery/ui/CheckableView;
    :cond_0
    return-object v1
.end method
