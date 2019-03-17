.class public Lcom/miui/gallery/view/menu/MenuPopupHelper;
.super Ljava/lang/Object;
.source "MenuPopupHelper.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Lcom/miui/gallery/view/menu/MenuPresenter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/view/menu/MenuPopupHelper$MenuAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/miui/gallery/view/menu/MenuPopupHelper$MenuAdapter;

.field private mAnchorView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field mForceShowIcon:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mMeasureParent:Landroid/view/ViewGroup;

.field private mMenu:Lcom/miui/gallery/view/menu/MenuBuilder;

.field private mMenuItemLayout:I

.field private mOverflowOnly:Z

.field private mPopup:Lmiui/widget/ListPopupWindow;

.field private mPopupMaxWidth:I

.field private mPopupVerticalOffset:I

.field private mPresenterCallback:Lcom/miui/gallery/view/menu/MenuPresenter$Callback;

.field private mTreeObserver:Landroid/view/ViewTreeObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/gallery/view/menu/MenuBuilder;Landroid/view/View;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/miui/gallery/view/menu/MenuBuilder;
    .param p3, "anchorView"    # Landroid/view/View;
    .param p4, "overflowOnly"    # Z

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const v1, 0x7f04010b

    iput v1, p0, Lcom/miui/gallery/view/menu/MenuPopupHelper;->mMenuItemLayout:I

    .line 78
    iput-object p1, p0, Lcom/miui/gallery/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    .line 79
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/view/menu/MenuPopupHelper;->mInflater:Landroid/view/LayoutInflater;

    .line 80
    iput-object p2, p0, Lcom/miui/gallery/view/menu/MenuPopupHelper;->mMenu:Lcom/miui/gallery/view/menu/MenuBuilder;

    .line 81
    iput-boolean p4, p0, Lcom/miui/gallery/view/menu/MenuPopupHelper;->mOverflowOnly:Z

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 84
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v1, 0x2

    const v2, 0x7f0b0083

    .line 85
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 84
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/view/menu/MenuPopupHelper;->mPopupMaxWidth:I

    .line 87
    iput-object p3, p0, Lcom/miui/gallery/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 89
    invoke-virtual {p2, p0}, Lcom/miui/gallery/view/menu/MenuBuilder;->addMenuPresenter(Lcom/miui/gallery/view/menu/MenuPresenter;)V

    .line 90
    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/view/menu/MenuPopupHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/view/menu/MenuPopupHelper;

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/miui/gallery/view/menu/MenuPopupHelper;->mOverflowOnly:Z

    return v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/view/menu/MenuPopupHelper;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/view/menu/MenuPopupHelper;

    .prologue
    .line 34
    iget v0, p0, Lcom/miui/gallery/view/menu/MenuPopupHelper;->mMenuItemLayout:I

    return v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/view/menu/MenuPopupHelper;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/view/menu/MenuPopupHelper;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/miui/gallery/view/menu/MenuPopupHelper;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/view/menu/MenuPopupHelper;)Lcom/miui/gallery/view/menu/MenuBuilder;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/view/menu/MenuPopupHelper;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/miui/gallery/view/menu/MenuPopupHelper;->mMenu:Lcom/miui/gallery/view/menu/MenuBuilder;

    return-object v0
.end method

.method private measureContentWidth(Landroid/widget/ListAdapter;)I
    .locals 10
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    const/high16 v9, -0x80000000

    .line 181
    const/4 v6, 0x0

    .line 182
    .local v6, "width":I
    const/4 v4, 0x0

    .line 183
    .local v4, "itemView":Landroid/view/View;
    const/4 v3, 0x0

    .line 184
    .local v3, "itemType":I
    iget v8, p0, Lcom/miui/gallery/view/menu/MenuPopupHelper;->mPopupMaxWidth:I

    .line 185
    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 186
    .local v7, "widthMeasureSpec":I
    iget v8, p0, Lcom/miui/gallery/view/menu/MenuPopupHelper;->mPopupMaxWidth:I

    .line 187
    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 188
    .local v1, "heightMeasureSpec":I
    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 189
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 190
    invoke-interface {p1, v2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v5

    .line 191
    .local v5, "positionType":I
    if-eq v5, v3, :cond_0

    .line 192
    move v3, v5

    .line 193
    const/4 v4, 0x0

    .line 195
    :cond_0
    iget-object v8, p0, Lcom/miui/gallery/view/menu/MenuPopupHelper;->mMeasureParent:Landroid/view/ViewGroup;

    if-nez v8, :cond_1

    .line 196
    new-instance v8, Landroid/widget/FrameLayout;

    iget-object v9, p0, Lcom/miui/gallery/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/miui/gallery/view/menu/MenuPopupHelper;->mMeasureParent:Landroid/view/ViewGroup;

    .line 198
    :cond_1
    iget-object v8, p0, Lcom/miui/gallery/view/menu/MenuPopupHelper;->mMeasureParent:Landroid/view/ViewGroup;

    invoke-interface {p1, v2, v4, v8}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 199
    invoke-virtual {v4, v7, v1}, Landroid/view/View;->measure(II)V

    .line 200
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 189
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 202
    .end local v5    # "positionType":I
    :cond_2
    return v6
.end method


# virtual methods
.method public collapseItemActionView(Lcom/miui/gallery/view/menu/MenuBuilder;Lcom/miui/gallery/view/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "menu"    # Lcom/miui/gallery/view/menu/MenuBuilder;
    .param p2, "item"    # Lcom/miui/gallery/view/menu/MenuItemImpl;

    .prologue
    .line 291
    const/4 v0, 0x0

    return v0
.end method

.method public dismiss(Z)V
    .locals 1
    .param p1, "withAnimation"    # Z

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/miui/gallery/view/menu/MenuPopupHelper;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/miui/gallery/view/menu/MenuPopupHelper;->mPopup:Lmiui/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Lmiui/widget/ListPopupWindow;->dismiss(Z)V

    .line 147
    :cond_0
    return-void
.end method

.method public expandItemActionView(Lcom/miui/gallery/view/menu/MenuBuilder;Lcom/miui/gallery/view/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "menu"    # Lcom/miui/gallery/view/menu/MenuBuilder;
    .param p2, "item"    # Lcom/miui/gallery/view/menu/MenuItemImpl;

    .prologue
    .line 287
    const/4 v0, 0x0

    return v0
.end method

.method public flagActionItems()Z
    .locals 1

    .prologue
    .line 283
    const/4 v0, 0x0

    return v0
.end method

.method public initForMenu(Landroid/content/Context;Lcom/miui/gallery/view/menu/MenuBuilder;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/miui/gallery/view/menu/MenuBuilder;

    .prologue
    .line 222
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/miui/gallery/view/menu/MenuPopupHelper;->mPopup:Lmiui/widget/ListPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/view/menu/MenuPopupHelper;->mPopup:Lmiui/widget/ListPopupWindow;

    invoke-virtual {v0}, Lmiui/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCloseMenu(Lcom/miui/gallery/view/menu/MenuBuilder;Z)V
    .locals 1
    .param p1, "menu"    # Lcom/miui/gallery/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 271
    iget-object v0, p0, Lcom/miui/gallery/view/menu/MenuPopupHelper;->mMenu:Lcom/miui/gallery/view/menu/MenuBuilder;

    if-eq p1, v0, :cond_1

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 275
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/gallery/view/menu/MenuPopupHelper;->dismiss(Z)V

    .line 276
    iget-object v0, p0, Lcom/miui/gallery/view/menu/MenuPopupHelper;->mPresenterCallback:Lcom/miui/gallery/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/miui/gallery/view/menu/MenuPopupHelper;->mPresenterCallback:Lcom/miui/gallery/view/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1, p2}, Lcom/miui/gallery/view/menu/MenuPresenter$Callback;->onCloseMenu(Lcom/miui/gallery/view/menu/MenuBuilder;Z)V

    goto :goto_0
.end method

.method public onDismiss()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 150
    iput-object v1, p0, Lcom/miui/gallery/view/menu/MenuPopupHelper;->mPopup:Lmiui/widget/ListPopupWindow;

    .line 151
    iget-object v0, p0, Lcom/miui/gallery/view/menu/MenuPopupHelper;->mMenu:Lcom/miui/gallery/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/miui/gallery/view/menu/MenuBuilder;->close()V

    .line 152
    iget-object v0, p0, Lcom/miui/gallery/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/miui/gallery/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/miui/gallery/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 157
    iput-object v1, p0, Lcom/miui/gallery/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 159
    :cond_1
    return-void
.end method

.method public onGlobalLayout()V
    .locals 4

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/miui/gallery/view/menu/MenuPopupHelper;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 208
    iget-object v0, p0, Lcom/miui/gallery/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 209
    .local v0, "anchor":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_2

    .line 210
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/miui/gallery/view/menu/MenuPopupHelper;->dismiss(Z)V

    .line 217
    .end local v0    # "anchor":Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .line 211
    .restart local v0    # "anchor":Landroid/view/View;
    :cond_2
    invoke-virtual {p0}, Lcom/miui/gallery/view/menu/MenuPopupHelper;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 212
    iget-object v1, p0, Lcom/miui/gallery/view/menu/MenuPopupHelper;->mPopup:Lmiui/widget/ListPopupWindow;

    iget-object v2, p0, Lcom/miui/gallery/view/menu/MenuPopupHelper;->mAdapter:Lcom/miui/gallery/view/menu/MenuPopupHelper$MenuAdapter;

    invoke-direct {p0, v2}, Lcom/miui/gallery/view/menu/MenuPopupHelper;->measureContentWidth(Landroid/widget/ListAdapter;)I

    move-result v2

    iget v3, p0, Lcom/miui/gallery/view/menu/MenuPopupHelper;->mPopupMaxWidth:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lmiui/widget/ListPopupWindow;->setContentWidth(I)V

    .line 214
    iget-object v1, p0, Lcom/miui/gallery/view/menu/MenuPopupHelper;->mPopup:Lmiui/widget/ListPopupWindow;

    invoke-virtual {v1}, Lmiui/widget/ListPopupWindow;->show()V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 167
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/miui/gallery/view/menu/MenuPopupHelper;->mAdapter:Lcom/miui/gallery/view/menu/MenuPopupHelper$MenuAdapter;

    .line 168
    .local v0, "adapter":Lcom/miui/gallery/view/menu/MenuPopupHelper$MenuAdapter;
    invoke-static {v0}, Lcom/miui/gallery/view/menu/MenuPopupHelper$MenuAdapter;->access$000(Lcom/miui/gallery/view/menu/MenuPopupHelper$MenuAdapter;)Lcom/miui/gallery/view/menu/MenuBuilder;

    move-result-object v1

    invoke-virtual {v0, p3}, Lcom/miui/gallery/view/menu/MenuPopupHelper$MenuAdapter;->getItem(I)Lcom/miui/gallery/view/menu/MenuItemImpl;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    .line 169
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 172
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v0, :cond_0

    const/16 v2, 0x52

    if-ne p2, v2, :cond_0

    .line 173
    invoke-virtual {p0, v1}, Lcom/miui/gallery/view/menu/MenuPopupHelper;->dismiss(Z)V

    .line 176
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public onSubMenuSelected(Lcom/miui/gallery/view/menu/SubMenuBuilder;)Z
    .locals 8
    .param p1, "subMenu"    # Lcom/miui/gallery/view/menu/SubMenuBuilder;

    .prologue
    const/4 v5, 0x0

    .line 243
    invoke-virtual {p1}, Lcom/miui/gallery/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 244
    new-instance v4, Lcom/miui/gallery/view/menu/MenuPopupHelper;

    iget-object v6, p0, Lcom/miui/gallery/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/miui/gallery/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    invoke-direct {v4, v6, p1, v7, v5}, Lcom/miui/gallery/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/miui/gallery/view/menu/MenuBuilder;Landroid/view/View;Z)V

    .line 245
    .local v4, "subPopup":Lcom/miui/gallery/view/menu/MenuPopupHelper;
    iget-object v6, p0, Lcom/miui/gallery/view/menu/MenuPopupHelper;->mPresenterCallback:Lcom/miui/gallery/view/menu/MenuPresenter$Callback;

    invoke-virtual {v4, v6}, Lcom/miui/gallery/view/menu/MenuPopupHelper;->setCallback(Lcom/miui/gallery/view/menu/MenuPresenter$Callback;)V

    .line 247
    const/4 v3, 0x0

    .line 248
    .local v3, "preserveIconSpacing":Z
    invoke-virtual {p1}, Lcom/miui/gallery/view/menu/SubMenuBuilder;->size()I

    move-result v1

    .line 249
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 250
    invoke-virtual {p1, v2}, Lcom/miui/gallery/view/menu/SubMenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 251
    .local v0, "childItem":Landroid/view/MenuItem;
    invoke-interface {v0}, Landroid/view/MenuItem;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 252
    const/4 v3, 0x1

    .line 256
    .end local v0    # "childItem":Landroid/view/MenuItem;
    :cond_0
    invoke-virtual {v4, v3}, Lcom/miui/gallery/view/menu/MenuPopupHelper;->setForceShowIcon(Z)V

    .line 258
    invoke-virtual {v4}, Lcom/miui/gallery/view/menu/MenuPopupHelper;->tryShow()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 259
    iget-object v5, p0, Lcom/miui/gallery/view/menu/MenuPopupHelper;->mPresenterCallback:Lcom/miui/gallery/view/menu/MenuPresenter$Callback;

    if-eqz v5, :cond_1

    .line 260
    iget-object v5, p0, Lcom/miui/gallery/view/menu/MenuPopupHelper;->mPresenterCallback:Lcom/miui/gallery/view/menu/MenuPresenter$Callback;

    invoke-interface {v5, p1}, Lcom/miui/gallery/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Lcom/miui/gallery/view/menu/MenuBuilder;)Z

    .line 262
    :cond_1
    const/4 v5, 0x1

    .line 265
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "preserveIconSpacing":Z
    .end local v4    # "subPopup":Lcom/miui/gallery/view/menu/MenuPopupHelper;
    :cond_2
    return v5

    .line 249
    .restart local v0    # "childItem":Landroid/view/MenuItem;
    .restart local v1    # "count":I
    .restart local v2    # "i":I
    .restart local v3    # "preserveIconSpacing":Z
    .restart local v4    # "subPopup":Lcom/miui/gallery/view/menu/MenuPopupHelper;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public setCallback(Lcom/miui/gallery/view/menu/MenuPresenter$Callback;)V
    .locals 0
    .param p1, "cb"    # Lcom/miui/gallery/view/menu/MenuPresenter$Callback;

    .prologue
    .line 238
    iput-object p1, p0, Lcom/miui/gallery/view/menu/MenuPopupHelper;->mPresenterCallback:Lcom/miui/gallery/view/menu/MenuPresenter$Callback;

    .line 239
    return-void
.end method

.method public setForceShowIcon(Z)V
    .locals 0
    .param p1, "forceShow"    # Z

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/miui/gallery/view/menu/MenuPopupHelper;->mForceShowIcon:Z

    .line 98
    return-void
.end method

.method public setMenuItemLayout(I)V
    .locals 0
    .param p1, "menuItemLayout"    # I

    .prologue
    .line 105
    iput p1, p0, Lcom/miui/gallery/view/menu/MenuPopupHelper;->mMenuItemLayout:I

    .line 106
    return-void
.end method

.method public tryShow()Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 115
    new-instance v3, Lmiui/widget/ListPopupWindow;

    iget-object v4, p0, Lcom/miui/gallery/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const v6, 0x1010300

    invoke-direct {v3, v4, v5, v6}, Lmiui/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v3, p0, Lcom/miui/gallery/view/menu/MenuPopupHelper;->mPopup:Lmiui/widget/ListPopupWindow;

    .line 116
    iget-object v3, p0, Lcom/miui/gallery/view/menu/MenuPopupHelper;->mPopup:Lmiui/widget/ListPopupWindow;

    invoke-virtual {v3, p0}, Lmiui/widget/ListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 117
    iget-object v3, p0, Lcom/miui/gallery/view/menu/MenuPopupHelper;->mPopup:Lmiui/widget/ListPopupWindow;

    invoke-virtual {v3, p0}, Lmiui/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 118
    iget-object v3, p0, Lcom/miui/gallery/view/menu/MenuPopupHelper;->mPopup:Lmiui/widget/ListPopupWindow;

    iget v4, p0, Lcom/miui/gallery/view/menu/MenuPopupHelper;->mPopupVerticalOffset:I

    invoke-virtual {v3, v4}, Lmiui/widget/ListPopupWindow;->setVerticalOffset(I)V

    .line 120
    new-instance v3, Lcom/miui/gallery/view/menu/MenuPopupHelper$MenuAdapter;

    iget-object v4, p0, Lcom/miui/gallery/view/menu/MenuPopupHelper;->mMenu:Lcom/miui/gallery/view/menu/MenuBuilder;

    invoke-direct {v3, p0, v4}, Lcom/miui/gallery/view/menu/MenuPopupHelper$MenuAdapter;-><init>(Lcom/miui/gallery/view/menu/MenuPopupHelper;Lcom/miui/gallery/view/menu/MenuBuilder;)V

    iput-object v3, p0, Lcom/miui/gallery/view/menu/MenuPopupHelper;->mAdapter:Lcom/miui/gallery/view/menu/MenuPopupHelper$MenuAdapter;

    .line 121
    iget-object v3, p0, Lcom/miui/gallery/view/menu/MenuPopupHelper;->mPopup:Lmiui/widget/ListPopupWindow;

    iget-object v4, p0, Lcom/miui/gallery/view/menu/MenuPopupHelper;->mAdapter:Lcom/miui/gallery/view/menu/MenuPopupHelper$MenuAdapter;

    invoke-virtual {v3, v4}, Lmiui/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 122
    iget-object v3, p0, Lcom/miui/gallery/view/menu/MenuPopupHelper;->mPopup:Lmiui/widget/ListPopupWindow;

    invoke-virtual {v3, v2}, Lmiui/widget/ListPopupWindow;->setModal(Z)V

    .line 124
    iget-object v1, p0, Lcom/miui/gallery/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 125
    .local v1, "anchor":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 126
    iget-object v3, p0, Lcom/miui/gallery/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-nez v3, :cond_0

    move v0, v2

    .line 127
    .local v0, "addGlobalListener":Z
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/gallery/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 128
    if-eqz v0, :cond_1

    .line 129
    iget-object v3, p0, Lcom/miui/gallery/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v3, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 131
    :cond_1
    iget-object v3, p0, Lcom/miui/gallery/view/menu/MenuPopupHelper;->mPopup:Lmiui/widget/ListPopupWindow;

    invoke-virtual {v3, v1}, Lmiui/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 136
    iget-object v3, p0, Lcom/miui/gallery/view/menu/MenuPopupHelper;->mPopup:Lmiui/widget/ListPopupWindow;

    iget-object v4, p0, Lcom/miui/gallery/view/menu/MenuPopupHelper;->mAdapter:Lcom/miui/gallery/view/menu/MenuPopupHelper$MenuAdapter;

    invoke-direct {p0, v4}, Lcom/miui/gallery/view/menu/MenuPopupHelper;->measureContentWidth(Landroid/widget/ListAdapter;)I

    move-result v4

    iget v5, p0, Lcom/miui/gallery/view/menu/MenuPopupHelper;->mPopupMaxWidth:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v3, v4}, Lmiui/widget/ListPopupWindow;->setContentWidth(I)V

    .line 137
    iget-object v3, p0, Lcom/miui/gallery/view/menu/MenuPopupHelper;->mPopup:Lmiui/widget/ListPopupWindow;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lmiui/widget/ListPopupWindow;->setInputMethodMode(I)V

    .line 138
    iget-object v3, p0, Lcom/miui/gallery/view/menu/MenuPopupHelper;->mPopup:Lmiui/widget/ListPopupWindow;

    invoke-virtual {v3}, Lmiui/widget/ListPopupWindow;->show()V

    .line 139
    iget-object v3, p0, Lcom/miui/gallery/view/menu/MenuPopupHelper;->mPopup:Lmiui/widget/ListPopupWindow;

    invoke-virtual {v3}, Lmiui/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 140
    .end local v0    # "addGlobalListener":Z
    :goto_0
    return v2

    :cond_2
    move v2, v0

    .line 133
    goto :goto_0
.end method

.method public updateMenuView(Z)V
    .locals 1
    .param p1, "cleared"    # Z

    .prologue
    .line 231
    iget-object v0, p0, Lcom/miui/gallery/view/menu/MenuPopupHelper;->mAdapter:Lcom/miui/gallery/view/menu/MenuPopupHelper$MenuAdapter;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/miui/gallery/view/menu/MenuPopupHelper;->mAdapter:Lcom/miui/gallery/view/menu/MenuPopupHelper$MenuAdapter;

    invoke-virtual {v0}, Lcom/miui/gallery/view/menu/MenuPopupHelper$MenuAdapter;->notifyDataSetChanged()V

    .line 234
    :cond_0
    return-void
.end method
