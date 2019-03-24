.class Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiui/view/ActionModeAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ub:Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;


# direct methods
.method constructor <init>(Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;)V
    .locals 0

    .line 398
    iput-object p1, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper$1;->ub:Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStart(Z)V
    .locals 3

    .line 401
    if-eqz p1, :cond_1

    .line 402
    iget-object p1, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper$1;->ub:Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;

    iget-object p1, p1, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->tX:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-static {p1}, Lcom/miui/internal/widget/EditableListViewDelegate;->a(Lcom/miui/internal/widget/EditableListViewDelegate;)Landroid/widget/AbsListView;

    move-result-object p1

    invoke-static {p1}, Lmiui/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result p1

    .line 403
    if-eqz p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 404
    :goto_0
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper$1;->ub:Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;

    iget-object v0, v0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->tX:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-static {v0}, Lcom/miui/internal/widget/EditableListViewDelegate;->b(Lcom/miui/internal/widget/EditableListViewDelegate;)Ljava/util/List;

    move-result-object v0

    .line 405
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 406
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 407
    invoke-virtual {v1}, Landroid/widget/CheckBox;->getWidth()I

    move-result v2

    mul-int/2addr v2, p1

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setTranslationX(F)V

    .line 408
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setAlpha(F)V

    .line 409
    goto :goto_1

    .line 411
    :cond_1
    return-void
.end method

.method public onStop(Z)V
    .locals 2

    .line 435
    if-nez p1, :cond_0

    .line 436
    iget-object p1, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper$1;->ub:Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;

    iget-object p1, p1, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->tX:Lcom/miui/internal/widget/EditableListViewDelegate;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/internal/widget/EditableListViewDelegate;->a(Lcom/miui/internal/widget/EditableListViewDelegate;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 437
    iget-object p1, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper$1;->ub:Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;

    iget-object p1, p1, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->tX:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-static {p1}, Lcom/miui/internal/widget/EditableListViewDelegate;->b(Lcom/miui/internal/widget/EditableListViewDelegate;)Ljava/util/List;

    move-result-object p1

    .line 438
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 439
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 440
    goto :goto_0

    .line 442
    :cond_0
    return-void
.end method

.method public onUpdate(ZF)V
    .locals 6

    .line 415
    const/high16 v0, 0x3f800000    # 1.0f

    if-nez p1, :cond_0

    .line 416
    sub-float p2, v0, p2

    .line 418
    :cond_0
    iget-object v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper$1;->ub:Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;

    iget-object v1, v1, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->tX:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-static {v1}, Lcom/miui/internal/widget/EditableListViewDelegate;->a(Lcom/miui/internal/widget/EditableListViewDelegate;)Landroid/widget/AbsListView;

    move-result-object v1

    invoke-static {v1}, Lmiui/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    .line 419
    if-eqz v1, :cond_1

    const/4 v1, -0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    .line 420
    :goto_0
    iget-object v2, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper$1;->ub:Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;

    iget-object v2, v2, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->tX:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-static {v2}, Lcom/miui/internal/widget/EditableListViewDelegate;->b(Lcom/miui/internal/widget/EditableListViewDelegate;)Ljava/util/List;

    move-result-object v2

    .line 421
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 422
    invoke-virtual {v3, p2}, Landroid/widget/CheckBox;->setAlpha(F)V

    .line 423
    invoke-virtual {v3}, Landroid/widget/CheckBox;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float v5, v0, p2

    mul-float/2addr v4, v5

    int-to-float v5, v1

    mul-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setTranslationX(F)V

    .line 424
    goto :goto_1

    .line 425
    :cond_2
    if-eqz p1, :cond_3

    cmpl-float p1, p2, v0

    if-nez p1, :cond_3

    .line 426
    iget-object p1, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper$1;->ub:Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;

    iget-object p1, p1, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->tX:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-static {p1}, Lcom/miui/internal/widget/EditableListViewDelegate;->a(Lcom/miui/internal/widget/EditableListViewDelegate;)Landroid/widget/AbsListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getHeight()I

    move-result p1

    .line 427
    iget-object p2, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper$1;->ub:Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;

    iget-object p2, p2, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->tX:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-static {p2}, Lcom/miui/internal/widget/EditableListViewDelegate;->c(Lcom/miui/internal/widget/EditableListViewDelegate;)I

    move-result p2

    if-le p2, p1, :cond_3

    .line 428
    iget-object p2, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper$1;->ub:Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;

    iget-object p2, p2, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->tX:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-static {p2}, Lcom/miui/internal/widget/EditableListViewDelegate;->a(Lcom/miui/internal/widget/EditableListViewDelegate;)Landroid/widget/AbsListView;

    move-result-object p2

    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper$1;->ub:Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;

    iget-object v0, v0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->tX:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-static {v0}, Lcom/miui/internal/widget/EditableListViewDelegate;->c(Lcom/miui/internal/widget/EditableListViewDelegate;)I

    move-result v0

    sub-int/2addr v0, p1

    const/16 p1, 0x64

    invoke-virtual {p2, v0, p1}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    .line 431
    :cond_3
    return-void
.end method
