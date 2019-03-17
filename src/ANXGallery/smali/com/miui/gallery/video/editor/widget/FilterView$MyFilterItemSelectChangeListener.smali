.class Lcom/miui/gallery/video/editor/widget/FilterView$MyFilterItemSelectChangeListener;
.super Ljava/lang/Object;
.source "FilterView.java"

# interfaces
.implements Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView$SingleChoiceRecyclerViewAdapter$ItemSelectChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/video/editor/widget/FilterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyFilterItemSelectChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/video/editor/widget/FilterView;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/video/editor/widget/FilterView;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/miui/gallery/video/editor/widget/FilterView$MyFilterItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/widget/FilterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/video/editor/widget/FilterView;Lcom/miui/gallery/video/editor/widget/FilterView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/video/editor/widget/FilterView;
    .param p2, "x1"    # Lcom/miui/gallery/video/editor/widget/FilterView$1;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/miui/gallery/video/editor/widget/FilterView$MyFilterItemSelectChangeListener;-><init>(Lcom/miui/gallery/video/editor/widget/FilterView;)V

    return-void
.end method


# virtual methods
.method public onItemSelect(Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView$SingleChoiceRecyclerViewAdapter;IZ)Z
    .locals 1
    .param p1, "adapter"    # Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView$SingleChoiceRecyclerViewAdapter;
    .param p2, "position"    # I
    .param p3, "isChanged"    # Z

    .prologue
    .line 81
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/FilterView$MyFilterItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/widget/FilterView;

    invoke-static {v0}, Lcom/miui/gallery/video/editor/widget/FilterView;->access$100(Lcom/miui/gallery/video/editor/widget/FilterView;)Lcom/miui/gallery/video/editor/widget/FilterView$OnItemSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 82
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/FilterView$MyFilterItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/widget/FilterView;

    invoke-static {v0}, Lcom/miui/gallery/video/editor/widget/FilterView;->access$200(Lcom/miui/gallery/video/editor/widget/FilterView;)Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/ScrollControlLinearLayoutManager;->onItemClick(Landroid/support/v7/widget/RecyclerView;I)V

    .line 83
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/FilterView$MyFilterItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/widget/FilterView;

    invoke-static {v0}, Lcom/miui/gallery/video/editor/widget/FilterView;->access$200(Lcom/miui/gallery/video/editor/widget/FilterView;)Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView;->smoothScrollToPosition(I)V

    .line 84
    invoke-virtual {p1, p2}, Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView$SingleChoiceRecyclerViewAdapter;->setSelectedItemPosition(I)V

    .line 85
    invoke-virtual {p1}, Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView$SingleChoiceRecyclerViewAdapter;->clearLastSelectedPostion()V

    .line 86
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/FilterView$MyFilterItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/widget/FilterView;

    invoke-static {v0}, Lcom/miui/gallery/video/editor/widget/FilterView;->access$100(Lcom/miui/gallery/video/editor/widget/FilterView;)Lcom/miui/gallery/video/editor/widget/FilterView$OnItemSelectedListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/miui/gallery/video/editor/widget/FilterView$OnItemSelectedListener;->onItemSelect(Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView$SingleChoiceRecyclerViewAdapter;IZ)Z

    move-result v0

    .line 88
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
