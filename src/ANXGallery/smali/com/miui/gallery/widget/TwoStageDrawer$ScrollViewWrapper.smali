.class Lcom/miui/gallery/widget/TwoStageDrawer$ScrollViewWrapper;
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
    name = "ScrollViewWrapper"
.end annotation


# instance fields
.field private mScrollView:Landroid/widget/ScrollView;


# direct methods
.method public constructor <init>(Landroid/widget/ScrollView;)V
    .locals 0
    .param p1, "scrollView"    # Landroid/widget/ScrollView;

    .prologue
    .line 1151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1152
    iput-object p1, p0, Lcom/miui/gallery/widget/TwoStageDrawer$ScrollViewWrapper;->mScrollView:Landroid/widget/ScrollView;

    .line 1153
    return-void
.end method


# virtual methods
.method public canScrollDown()Z
    .locals 1

    .prologue
    .line 1157
    iget-object v0, p0, Lcom/miui/gallery/widget/TwoStageDrawer$ScrollViewWrapper;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
