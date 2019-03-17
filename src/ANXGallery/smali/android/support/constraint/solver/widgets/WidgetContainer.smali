.class public Landroid/support/constraint/solver/widgets/WidgetContainer;
.super Landroid/support/constraint/solver/widgets/ConstraintWidget;
.source "WidgetContainer.java"


# instance fields
.field protected mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/constraint/solver/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 36
    return-void
.end method


# virtual methods
.method public add(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V
    .locals 2
    .param p1, "widget"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .prologue
    .line 72
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 74
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/solver/widgets/WidgetContainer;

    .line 75
    .local v0, "container":Landroid/support/constraint/solver/widgets/WidgetContainer;
    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/WidgetContainer;->remove(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    .line 77
    .end local v0    # "container":Landroid/support/constraint/solver/widgets/WidgetContainer;
    :cond_0
    invoke-virtual {p1, p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setParent(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    .line 78
    return-void
.end method

.method public getRootConstraintContainer()Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    .locals 4

    .prologue
    .line 117
    move-object v1, p0

    .line 118
    .local v1, "item":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v2

    .line 119
    .local v2, "parent":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    const/4 v0, 0x0

    .line 120
    .local v0, "container":Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    instance-of v3, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    if-eqz v3, :cond_0

    move-object v0, p0

    .line 121
    check-cast v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 123
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 124
    move-object v1, v2

    .line 125
    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v2

    .line 126
    instance-of v3, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    if-eqz v3, :cond_0

    move-object v0, v1

    .line 127
    check-cast v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    goto :goto_0

    .line 130
    :cond_1
    return-object v0
.end method

.method public layout()V
    .locals 4

    .prologue
    .line 277
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/WidgetContainer;->updateDrawPosition()V

    .line 278
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    .line 288
    :cond_0
    return-void

    .line 281
    :cond_1
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 282
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 283
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 284
    .local v2, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    instance-of v3, v2, Landroid/support/constraint/solver/widgets/WidgetContainer;

    if-eqz v3, :cond_2

    .line 285
    check-cast v2, Landroid/support/constraint/solver/widgets/WidgetContainer;

    .end local v2    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/WidgetContainer;->layout()V

    .line 282
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public remove(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V
    .locals 1
    .param p1, "widget"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .prologue
    .line 98
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 99
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setParent(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    .line 100
    return-void
.end method

.method public removeAllChildren()V
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 302
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 63
    invoke-super {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->reset()V

    .line 64
    return-void
.end method

.method public resetSolverVariables(Landroid/support/constraint/solver/Cache;)V
    .locals 4
    .param p1, "cache"    # Landroid/support/constraint/solver/Cache;

    .prologue
    .line 292
    invoke-super {p0, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->resetSolverVariables(Landroid/support/constraint/solver/Cache;)V

    .line 293
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 294
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 295
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 296
    .local v2, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    invoke-virtual {v2, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->resetSolverVariables(Landroid/support/constraint/solver/Cache;)V

    .line 294
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 298
    .end local v2    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_0
    return-void
.end method

.method public setOffset(II)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 245
    invoke-super {p0, p1, p2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setOffset(II)V

    .line 246
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 247
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 248
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 249
    .local v2, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/WidgetContainer;->getRootX()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/WidgetContainer;->getRootY()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setOffset(II)V

    .line 247
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 251
    .end local v2    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_0
    return-void
.end method

.method public updateDrawPosition()V
    .locals 5

    .prologue
    .line 259
    invoke-super {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->updateDrawPosition()V

    .line 260
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    .line 271
    :cond_0
    return-void

    .line 263
    :cond_1
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 264
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 265
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 266
    .local v2, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/WidgetContainer;->getDrawX()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/WidgetContainer;->getDrawY()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setOffset(II)V

    .line 267
    instance-of v3, v2, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    if-nez v3, :cond_2

    .line 268
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->updateDrawPosition()V

    .line 264
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
