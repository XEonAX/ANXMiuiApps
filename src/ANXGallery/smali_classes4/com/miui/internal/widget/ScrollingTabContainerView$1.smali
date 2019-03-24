.class Lcom/miui/internal/widget/ScrollingTabContainerView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/widget/ScrollingTabContainerView;->animateToTab(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic vv:Landroid/view/View;

.field final synthetic vw:Lcom/miui/internal/widget/ScrollingTabContainerView;


# direct methods
.method constructor <init>(Lcom/miui/internal/widget/ScrollingTabContainerView;Landroid/view/View;)V
    .locals 0

    .line 317
    iput-object p1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$1;->vw:Lcom/miui/internal/widget/ScrollingTabContainerView;

    iput-object p2, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$1;->vv:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 319
    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$1;->vv:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$1;->vw:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v1}, Lcom/miui/internal/widget/ScrollingTabContainerView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$1;->vv:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 320
    sget-boolean v1, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 321
    iget-object v1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$1;->vw:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v1, v0, v2}, Lcom/miui/internal/widget/ScrollingTabContainerView;->smoothScrollTo(II)V

    goto :goto_0

    .line 323
    :cond_0
    iget-object v1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$1;->vw:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v1, v0, v2}, Lcom/miui/internal/widget/ScrollingTabContainerView;->scrollTo(II)V

    .line 325
    :goto_0
    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$1;->vw:Lcom/miui/internal/widget/ScrollingTabContainerView;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/miui/internal/widget/ScrollingTabContainerView;->vi:Ljava/lang/Runnable;

    .line 326
    return-void
.end method
