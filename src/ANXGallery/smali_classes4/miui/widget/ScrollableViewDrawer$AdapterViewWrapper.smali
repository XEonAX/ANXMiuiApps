.class Lmiui/widget/ScrollableViewDrawer$AdapterViewWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiui/widget/ScrollableViewDrawer$IScrollableView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/ScrollableViewDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AdapterViewWrapper"
.end annotation


# instance fields
.field private aae:Landroid/widget/AdapterView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/AdapterView<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 477
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 478
    iput-object p1, p0, Lmiui/widget/ScrollableViewDrawer$AdapterViewWrapper;->aae:Landroid/widget/AdapterView;

    .line 479
    return-void
.end method


# virtual methods
.method public canScroll()Z
    .locals 6

    .line 483
    iget-object v0, p0, Lmiui/widget/ScrollableViewDrawer$AdapterViewWrapper;->aae:Landroid/widget/AdapterView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    .line 484
    const/4 v1, 0x1

    if-lez v0, :cond_0

    .line 485
    const-string v2, "ScrollableViewDrawer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "canScrollDown true first visible "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    return v1

    .line 490
    :cond_0
    iget-object v0, p0, Lmiui/widget/ScrollableViewDrawer$AdapterViewWrapper;->aae:Landroid/widget/AdapterView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getPaddingTop()I

    move-result v0

    .line 491
    iget-object v2, p0, Lmiui/widget/ScrollableViewDrawer$AdapterViewWrapper;->aae:Landroid/widget/AdapterView;

    invoke-virtual {v2}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v2

    .line 492
    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    .line 493
    iget-object v5, p0, Lmiui/widget/ScrollableViewDrawer$AdapterViewWrapper;->aae:Landroid/widget/AdapterView;

    invoke-virtual {v5, v4}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 494
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    if-ge v5, v0, :cond_1

    .line 495
    const-string v0, "ScrollableViewDrawer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canScrollDown true "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    return v1

    .line 492
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 500
    :cond_2
    return v3
.end method
