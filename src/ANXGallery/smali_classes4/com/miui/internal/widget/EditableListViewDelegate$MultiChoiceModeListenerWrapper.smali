.class Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiui/widget/EditableListView$MultiChoiceModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/widget/EditableListViewDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiChoiceModeListenerWrapper"
.end annotation


# instance fields
.field final synthetic tX:Lcom/miui/internal/widget/EditableListViewDelegate;

.field private tZ:Landroid/widget/AbsListView$MultiChoiceModeListener;

.field private ua:Lmiui/view/ActionModeAnimationListener;


# direct methods
.method public constructor <init>(Lcom/miui/internal/widget/EditableListViewDelegate;)V
    .locals 0

    .line 445
    iput-object p1, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->tX:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 398
    new-instance p1, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper$1;

    invoke-direct {p1, p0}, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper$1;-><init>(Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;)V

    iput-object p1, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->ua:Lmiui/view/ActionModeAnimationListener;

    .line 446
    return-void
.end method


# virtual methods
.method public a(Landroid/widget/AbsListView$MultiChoiceModeListener;)V
    .locals 0

    .line 449
    iput-object p1, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->tZ:Landroid/widget/AbsListView$MultiChoiceModeListener;

    .line 450
    return-void
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 2

    .line 480
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x1020019

    if-ne v0, v1, :cond_0

    .line 481
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_0

    .line 482
    :cond_0
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102001a

    if-ne v0, v1, :cond_1

    .line 483
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->tX:Lcom/miui/internal/widget/EditableListViewDelegate;

    iget-object v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->tX:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-virtual {v1}, Lcom/miui/internal/widget/EditableListViewDelegate;->isAllItemsChecked()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/EditableListViewDelegate;->setAllItemsChecked(Z)V

    .line 486
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->tZ:Landroid/widget/AbsListView$MultiChoiceModeListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$MultiChoiceModeListener;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onAllItemCheckedStateChanged(Landroid/view/ActionMode;Z)V
    .locals 1

    .line 523
    iget-object p1, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->tZ:Landroid/widget/AbsListView$MultiChoiceModeListener;

    .line 524
    instance-of v0, p1, Lmiui/widget/EditableListView$MultiChoiceModeListener;

    if-eqz v0, :cond_0

    .line 525
    check-cast p1, Lmiui/widget/EditableListView$MultiChoiceModeListener;

    .line 526
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->tX:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-static {v0}, Lcom/miui/internal/widget/EditableListViewDelegate;->d(Lcom/miui/internal/widget/EditableListViewDelegate;)Landroid/view/ActionMode;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lmiui/widget/EditableListView$MultiChoiceModeListener;->onAllItemCheckedStateChanged(Landroid/view/ActionMode;Z)V

    .line 528
    :cond_0
    return-void
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2

    .line 465
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->tX:Lcom/miui/internal/widget/EditableListViewDelegate;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/internal/widget/EditableListViewDelegate;->a(Lcom/miui/internal/widget/EditableListViewDelegate;I)I

    .line 466
    sget v0, Lmiui/R$string;->select_item:I

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setTitle(I)V

    .line 467
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->tZ:Landroid/widget/AbsListView$MultiChoiceModeListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$MultiChoiceModeListener;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 468
    iget-object p2, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->tX:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-static {p2, p1}, Lcom/miui/internal/widget/EditableListViewDelegate;->a(Lcom/miui/internal/widget/EditableListViewDelegate;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 469
    iget-object p2, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->tX:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-static {p2}, Lcom/miui/internal/widget/EditableListViewDelegate;->d(Lcom/miui/internal/widget/EditableListViewDelegate;)Landroid/view/ActionMode;

    move-result-object p2

    check-cast p2, Lmiui/view/EditActionMode;

    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->ua:Lmiui/view/ActionModeAnimationListener;

    invoke-interface {p2, v0}, Lmiui/view/EditActionMode;->addAnimationListener(Lmiui/view/ActionModeAnimationListener;)V

    .line 470
    iget-object p2, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->tX:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-static {p2}, Lcom/miui/internal/widget/EditableListViewDelegate;->e(Lcom/miui/internal/widget/EditableListViewDelegate;)Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;->updateCheckStatus(Landroid/view/ActionMode;)V

    .line 471
    iget-object p1, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->tX:Lcom/miui/internal/widget/EditableListViewDelegate;

    const/4 p2, -0x1

    invoke-static {p1, p2}, Lcom/miui/internal/widget/EditableListViewDelegate;->b(Lcom/miui/internal/widget/EditableListViewDelegate;I)I

    .line 472
    const/4 p1, 0x1

    return p1

    .line 475
    :cond_0
    return v1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2

    .line 459
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->tX:Lcom/miui/internal/widget/EditableListViewDelegate;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/internal/widget/EditableListViewDelegate;->a(Lcom/miui/internal/widget/EditableListViewDelegate;I)I

    .line 460
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->tZ:Landroid/widget/AbsListView$MultiChoiceModeListener;

    invoke-interface {v0, p1}, Landroid/widget/AbsListView$MultiChoiceModeListener;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 461
    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 10

    .line 491
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->tX:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-static {v0}, Lcom/miui/internal/widget/EditableListViewDelegate;->f(Lcom/miui/internal/widget/EditableListViewDelegate;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 492
    return-void

    .line 495
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->tX:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-static {v0}, Lcom/miui/internal/widget/EditableListViewDelegate;->g(Lcom/miui/internal/widget/EditableListViewDelegate;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->tX:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-static {v0}, Lcom/miui/internal/widget/EditableListViewDelegate;->a(Lcom/miui/internal/widget/EditableListViewDelegate;)Landroid/widget/AbsListView;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 496
    :goto_0
    iget-object v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->tX:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-virtual {v1}, Lcom/miui/internal/widget/EditableListViewDelegate;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 497
    if-lt p2, v0, :cond_6

    add-int/2addr v1, v0

    if-ge p2, v1, :cond_6

    iget-object v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->tX:Lcom/miui/internal/widget/EditableListViewDelegate;

    .line 498
    invoke-static {v1}, Lcom/miui/internal/widget/EditableListViewDelegate;->a(Lcom/miui/internal/widget/EditableListViewDelegate;)Landroid/widget/AbsListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v1

    if-gt p2, v1, :cond_6

    iget-object v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->tX:Lcom/miui/internal/widget/EditableListViewDelegate;

    .line 499
    invoke-static {v1}, Lcom/miui/internal/widget/EditableListViewDelegate;->a(Lcom/miui/internal/widget/EditableListViewDelegate;)Landroid/widget/AbsListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v1

    if-lt p2, v1, :cond_6

    iget-object v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->tX:Lcom/miui/internal/widget/EditableListViewDelegate;

    sub-int v0, p2, v0

    .line 500
    invoke-static {v1, v0}, Lcom/miui/internal/widget/EditableListViewDelegate;->c(Lcom/miui/internal/widget/EditableListViewDelegate;I)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    .line 504
    :cond_2
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->tX:Lcom/miui/internal/widget/EditableListViewDelegate;

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz p5, :cond_3

    move v3, v2

    goto :goto_1

    :cond_3
    move v3, v1

    :goto_1
    invoke-static {v0, v3}, Lcom/miui/internal/widget/EditableListViewDelegate;->d(Lcom/miui/internal/widget/EditableListViewDelegate;I)I

    .line 506
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->tX:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-static {v0}, Lcom/miui/internal/widget/EditableListViewDelegate;->a(Lcom/miui/internal/widget/EditableListViewDelegate;)Landroid/widget/AbsListView;

    move-result-object v0

    iget-object v3, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->tX:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-static {v3}, Lcom/miui/internal/widget/EditableListViewDelegate;->a(Lcom/miui/internal/widget/EditableListViewDelegate;)Landroid/widget/AbsListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int v3, p2, v3

    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 507
    iget-object v3, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->tX:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-static {v3}, Lcom/miui/internal/widget/EditableListViewDelegate;->e(Lcom/miui/internal/widget/EditableListViewDelegate;)Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;

    move-result-object v3

    invoke-interface {v3, v0, p2, p3, p4}, Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;->updateOnScreenCheckedView(Landroid/view/View;IJ)V

    .line 508
    iget-object v3, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->tX:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-static {v3}, Lcom/miui/internal/widget/EditableListViewDelegate;->e(Lcom/miui/internal/widget/EditableListViewDelegate;)Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;->updateCheckStatus(Landroid/view/ActionMode;)V

    .line 509
    if-eqz v0, :cond_4

    .line 510
    invoke-virtual {v0, v2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 513
    :cond_4
    iget-object v4, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->tZ:Landroid/widget/AbsListView$MultiChoiceModeListener;

    move-object v5, p1

    move v6, p2

    move-wide v7, p3

    move v9, p5

    invoke-interface/range {v4 .. v9}, Landroid/widget/AbsListView$MultiChoiceModeListener;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 515
    iget-object p1, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->tX:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-static {p1}, Lcom/miui/internal/widget/EditableListViewDelegate;->c(Lcom/miui/internal/widget/EditableListViewDelegate;)I

    move-result p1

    if-ne p1, v1, :cond_5

    .line 516
    iget-object p1, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->tX:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-static {p1}, Lcom/miui/internal/widget/EditableListViewDelegate;->a(Lcom/miui/internal/widget/EditableListViewDelegate;)Landroid/widget/AbsListView;

    move-result-object p1

    iget-object p3, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->tX:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-static {p3}, Lcom/miui/internal/widget/EditableListViewDelegate;->a(Lcom/miui/internal/widget/EditableListViewDelegate;)Landroid/widget/AbsListView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-virtual {p1, p2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 517
    iget-object p2, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->tX:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    invoke-static {p2, p1}, Lcom/miui/internal/widget/EditableListViewDelegate;->b(Lcom/miui/internal/widget/EditableListViewDelegate;I)I

    .line 519
    :cond_5
    return-void

    .line 502
    :cond_6
    :goto_2
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    .line 454
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->tZ:Landroid/widget/AbsListView$MultiChoiceModeListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$MultiChoiceModeListener;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method
