.class public final Lcom/miui/gallery/view/menu/ExpandedMenuView;
.super Landroid/widget/ListView;
.source "ExpandedMenuView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/miui/gallery/view/menu/MenuBuilder$ItemInvoker;
.implements Lcom/miui/gallery/view/menu/MenuView;


# instance fields
.field private mAnimations:I

.field private mMenu:Lcom/miui/gallery/view/menu/MenuBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    invoke-virtual {p0, p0}, Lcom/miui/gallery/view/menu/ExpandedMenuView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 30
    return-void
.end method


# virtual methods
.method public filterLeftoverView(I)Z
    .locals 1
    .param p1, "childIndex"    # I

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public getWindowAnimations()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/miui/gallery/view/menu/ExpandedMenuView;->mAnimations:I

    return v0
.end method

.method public hasBackgroundView()Z
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public initialize(Lcom/miui/gallery/view/menu/MenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Lcom/miui/gallery/view/menu/MenuBuilder;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/miui/gallery/view/menu/ExpandedMenuView;->mMenu:Lcom/miui/gallery/view/menu/MenuBuilder;

    .line 35
    return-void
.end method

.method public invokeItem(Lcom/miui/gallery/view/menu/MenuItemImpl;)Z
    .locals 2
    .param p1, "item"    # Lcom/miui/gallery/view/menu/MenuItemImpl;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/miui/gallery/view/menu/ExpandedMenuView;->mMenu:Lcom/miui/gallery/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/miui/gallery/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 39
    invoke-super {p0}, Landroid/widget/ListView;->onDetachedFromWindow()V

    .line 42
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/view/menu/ExpandedMenuView;->setChildrenDrawingCacheEnabled(Z)V

    .line 43
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/miui/gallery/view/menu/ExpandedMenuView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/view/menu/MenuItemImpl;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/view/menu/ExpandedMenuView;->invokeItem(Lcom/miui/gallery/view/menu/MenuItemImpl;)Z

    .line 54
    return-void
.end method
