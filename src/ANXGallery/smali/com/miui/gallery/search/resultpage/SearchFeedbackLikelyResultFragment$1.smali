.class Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment$1;
.super Ljava/lang/Object;
.source "SearchFeedbackLikelyResultFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->onInflateView(Landroid/view/View;Landroid/os/Bundle;Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment$1;->this$0:Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment$1;->this$0:Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;

    const-string v1, "from_likely_image_result"

    invoke-virtual {v0, p1, p3, v1}, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->goToPhotoPage(Landroid/widget/AdapterView;ILjava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment$1;->this$0:Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->getPageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "click_micro_thumb"

    int-to-long v2, p3

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordNumericPropertyEvent(Ljava/lang/String;Ljava/lang/String;J)V

    .line 91
    return-void
.end method
