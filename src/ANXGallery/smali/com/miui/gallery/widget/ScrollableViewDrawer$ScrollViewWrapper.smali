.class Lcom/miui/gallery/widget/ScrollableViewDrawer$ScrollViewWrapper;
.super Ljava/lang/Object;
.source "ScrollableViewDrawer.java"

# interfaces
.implements Lcom/miui/gallery/widget/ScrollableViewDrawer$IScrollableView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/widget/ScrollableViewDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScrollViewWrapper"
.end annotation


# instance fields
.field private iScrollView:Landroid/widget/ScrollView;


# direct methods
.method public constructor <init>(Landroid/widget/ScrollView;)V
    .locals 0
    .param p1, "scrollView"    # Landroid/widget/ScrollView;

    .prologue
    .line 607
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 608
    iput-object p1, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer$ScrollViewWrapper;->iScrollView:Landroid/widget/ScrollView;

    .line 609
    return-void
.end method


# virtual methods
.method public canScroll()Z
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer$ScrollViewWrapper;->iScrollView:Landroid/widget/ScrollView;

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
