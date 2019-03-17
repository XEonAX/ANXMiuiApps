.class Lcom/miui/gallery/editor/photo/app/filter/FilterFragment$1;
.super Ljava/lang/Object;
.source "FilterFragment.java"

# interfaces
.implements Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment$1;->this$0:Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnItemClick(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;I)Z
    .locals 2
    .param p1, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "position"    # I

    .prologue
    const/4 v1, 0x1

    .line 93
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment$1;->this$0:Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;->access$100(Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0, p3, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 94
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment$1;->this$0:Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;->access$200(Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;)Lcom/miui/gallery/editor/photo/app/filter/FilterHeadAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/miui/gallery/editor/photo/app/filter/FilterHeadAdapter;->setSelection(I)V

    .line 95
    return v1
.end method
