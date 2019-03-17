.class Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment$2;
.super Ljava/lang/Object;
.source "FilterAdjustFragment.java"

# interfaces
.implements Lcom/miui/gallery/video/editor/widget/AdjustView$IFilterAdjustHeadViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment$2;->this$0:Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addFilterViewToHeadBar(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment$2;->this$0:Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;

    invoke-static {v0}, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->access$700(Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 104
    iget-object v0, p0, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment$2;->this$0:Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;

    invoke-static {v0}, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->access$700(Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment$2;->this$0:Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;

    invoke-static {v1}, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->access$800(Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;)Lcom/miui/gallery/video/editor/widget/FilterAdjustHeadView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 105
    return-void
.end method

.method public addSeekBarToHeadBar(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 96
    if-eqz p1, :cond_0

    .line 97
    iget-object v0, p0, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment$2;->this$0:Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;

    invoke-static {v0}, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->access$700(Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v0, p1, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 99
    :cond_0
    return-void
.end method

.method public removeAllViewFromHeadBar()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment$2;->this$0:Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;

    invoke-static {v0}, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->access$700(Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 92
    return-void
.end method
