.class Lcom/miui/gallery/widget/TwoStageDrawer$RecyclerViewWrapper;
.super Ljava/lang/Object;
.source "TwoStageDrawer.java"

# interfaces
.implements Lcom/miui/gallery/widget/TwoStageDrawer$ScrollableView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/widget/TwoStageDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RecyclerViewWrapper"
.end annotation


# instance fields
.field private mRecycler:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 1175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1176
    iput-object p1, p0, Lcom/miui/gallery/widget/TwoStageDrawer$RecyclerViewWrapper;->mRecycler:Landroid/support/v7/widget/RecyclerView;

    .line 1177
    return-void
.end method


# virtual methods
.method public canScrollDown()Z
    .locals 2

    .prologue
    .line 1181
    iget-object v0, p0, Lcom/miui/gallery/widget/TwoStageDrawer$RecyclerViewWrapper;->mRecycler:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v0

    return v0
.end method
