.class Lcom/miui/gallery/search/resultpage/FilterBarController$PaddingDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "FilterBarController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/search/resultpage/FilterBarController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PaddingDecoration"
.end annotation


# instance fields
.field private final mMargin:I

.field final synthetic this$0:Lcom/miui/gallery/search/resultpage/FilterBarController;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/search/resultpage/FilterBarController;I)V
    .locals 0
    .param p2, "margin"    # I

    .prologue
    .line 94
    iput-object p1, p0, Lcom/miui/gallery/search/resultpage/FilterBarController$PaddingDecoration;->this$0:Lcom/miui/gallery/search/resultpage/FilterBarController;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 95
    iput p2, p0, Lcom/miui/gallery/search/resultpage/FilterBarController$PaddingDecoration;->mMargin:I

    .line 96
    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 3
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p4, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    const/4 v2, 0x0

    .line 101
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    .line 102
    .local v0, "adapterPosition":I
    if-nez v0, :cond_0

    .line 103
    iget v1, p0, Lcom/miui/gallery/search/resultpage/FilterBarController$PaddingDecoration;->mMargin:I

    invoke-virtual {p1, v1, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 109
    :goto_0
    return-void

    .line 104
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/search/resultpage/FilterBarController$PaddingDecoration;->this$0:Lcom/miui/gallery/search/resultpage/FilterBarController;

    invoke-static {v1}, Lcom/miui/gallery/search/resultpage/FilterBarController;->access$100(Lcom/miui/gallery/search/resultpage/FilterBarController;)Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    .line 105
    iget v1, p0, Lcom/miui/gallery/search/resultpage/FilterBarController$PaddingDecoration;->mMargin:I

    invoke-virtual {p1, v2, v2, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 107
    :cond_1
    invoke-virtual {p1, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method
