.class public Lcom/miui/gallery/widget/menu/PhoneImmersionMenu;
.super Lmiui/widget/ImmersionListPopupWindow;
.source "PhoneImmersionMenu.java"


# instance fields
.field private mAdapter:Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter;

.field private mImmersionMenuListener:Lcom/miui/gallery/widget/menu/ImmersionMenuListener;

.field private mLastAnchor:Landroid/view/View;

.field private mLastParent:Landroid/view/ViewGroup;

.field private mMenu:Lcom/miui/gallery/widget/menu/ImmersionMenu;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/gallery/widget/menu/ImmersionMenuListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/miui/gallery/widget/menu/ImmersionMenuListener;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lmiui/widget/ImmersionListPopupWindow;-><init>(Landroid/content/Context;)V

    .line 28
    iput-object p2, p0, Lcom/miui/gallery/widget/menu/PhoneImmersionMenu;->mImmersionMenuListener:Lcom/miui/gallery/widget/menu/ImmersionMenuListener;

    .line 29
    if-eqz p2, :cond_0

    .line 30
    new-instance v0, Lcom/miui/gallery/widget/menu/ImmersionMenu;

    invoke-direct {v0, p1}, Lcom/miui/gallery/widget/menu/ImmersionMenu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gallery/widget/menu/PhoneImmersionMenu;->mMenu:Lcom/miui/gallery/widget/menu/ImmersionMenu;

    .line 31
    iget-object v0, p0, Lcom/miui/gallery/widget/menu/PhoneImmersionMenu;->mMenu:Lcom/miui/gallery/widget/menu/ImmersionMenu;

    invoke-interface {p2, v0}, Lcom/miui/gallery/widget/menu/ImmersionMenuListener;->onCreateImmersionMenu(Lcom/miui/gallery/widget/menu/ImmersionMenu;)V

    .line 33
    :cond_0
    new-instance v0, Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter;

    iget-object v1, p0, Lcom/miui/gallery/widget/menu/PhoneImmersionMenu;->mMenu:Lcom/miui/gallery/widget/menu/ImmersionMenu;

    invoke-direct {v0, p1, v1}, Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter;-><init>(Landroid/content/Context;Lcom/miui/gallery/widget/menu/ImmersionMenu;)V

    iput-object v0, p0, Lcom/miui/gallery/widget/menu/PhoneImmersionMenu;->mAdapter:Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter;

    .line 34
    iget-object v0, p0, Lcom/miui/gallery/widget/menu/PhoneImmersionMenu;->mAdapter:Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/widget/menu/PhoneImmersionMenu;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 35
    new-instance v0, Lcom/miui/gallery/widget/menu/PhoneImmersionMenu$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/widget/menu/PhoneImmersionMenu$1;-><init>(Lcom/miui/gallery/widget/menu/PhoneImmersionMenu;)V

    invoke-virtual {p0, v0}, Lcom/miui/gallery/widget/menu/PhoneImmersionMenu;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 63
    iget-object v0, p0, Lcom/miui/gallery/widget/menu/PhoneImmersionMenu;->mAdapter:Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter;

    new-instance v1, Lcom/miui/gallery/widget/menu/PhoneImmersionMenu$2;

    invoke-direct {v1, p0}, Lcom/miui/gallery/widget/menu/PhoneImmersionMenu$2;-><init>(Lcom/miui/gallery/widget/menu/PhoneImmersionMenu;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter;->setOnItemCheckChangeListener(Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter$OnItemCheckChangeListener;)V

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/widget/menu/PhoneImmersionMenu;)Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/widget/menu/PhoneImmersionMenu;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/miui/gallery/widget/menu/PhoneImmersionMenu;->mAdapter:Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/widget/menu/PhoneImmersionMenu;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/widget/menu/PhoneImmersionMenu;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/miui/gallery/widget/menu/PhoneImmersionMenu;->mLastAnchor:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/widget/menu/PhoneImmersionMenu;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/widget/menu/PhoneImmersionMenu;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/miui/gallery/widget/menu/PhoneImmersionMenu;->mLastParent:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/widget/menu/PhoneImmersionMenu;)Lcom/miui/gallery/widget/menu/ImmersionMenu;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/widget/menu/PhoneImmersionMenu;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/miui/gallery/widget/menu/PhoneImmersionMenu;->mMenu:Lcom/miui/gallery/widget/menu/ImmersionMenu;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/widget/menu/PhoneImmersionMenu;)Lcom/miui/gallery/widget/menu/ImmersionMenuListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/widget/menu/PhoneImmersionMenu;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/miui/gallery/widget/menu/PhoneImmersionMenu;->mImmersionMenuListener:Lcom/miui/gallery/widget/menu/ImmersionMenuListener;

    return-object v0
.end method


# virtual methods
.method protected getBlurBackground(Landroid/content/Context;Landroid/view/View;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "anchor"    # Landroid/view/View;

    .prologue
    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100138

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 90
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 93
    .end local v0    # "background":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v0

    .restart local v0    # "background":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-super {p0, p1, p2}, Lmiui/widget/ImmersionListPopupWindow;->getBlurBackground(Landroid/content/Context;Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public getImmersionMenu()Lcom/miui/gallery/widget/menu/ImmersionMenu;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/miui/gallery/widget/menu/PhoneImmersionMenu;->mMenu:Lcom/miui/gallery/widget/menu/ImmersionMenu;

    return-object v0
.end method

.method public show(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/miui/gallery/widget/menu/PhoneImmersionMenu;->mLastAnchor:Landroid/view/View;

    .line 78
    iput-object p2, p0, Lcom/miui/gallery/widget/menu/PhoneImmersionMenu;->mLastParent:Landroid/view/ViewGroup;

    .line 79
    iget-object v0, p0, Lcom/miui/gallery/widget/menu/PhoneImmersionMenu;->mImmersionMenuListener:Lcom/miui/gallery/widget/menu/ImmersionMenuListener;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/miui/gallery/widget/menu/PhoneImmersionMenu;->mImmersionMenuListener:Lcom/miui/gallery/widget/menu/ImmersionMenuListener;

    iget-object v1, p0, Lcom/miui/gallery/widget/menu/PhoneImmersionMenu;->mMenu:Lcom/miui/gallery/widget/menu/ImmersionMenu;

    invoke-interface {v0, v1}, Lcom/miui/gallery/widget/menu/ImmersionMenuListener;->onPrepareImmersionMenu(Lcom/miui/gallery/widget/menu/ImmersionMenu;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/miui/gallery/widget/menu/PhoneImmersionMenu;->mMenu:Lcom/miui/gallery/widget/menu/ImmersionMenu;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/widget/menu/PhoneImmersionMenu;->update(Lcom/miui/gallery/widget/menu/ImmersionMenu;)V

    .line 84
    :cond_0
    invoke-super {p0, p1, p2}, Lmiui/widget/ImmersionListPopupWindow;->show(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 85
    return-void
.end method

.method public update(Lcom/miui/gallery/widget/menu/ImmersionMenu;)V
    .locals 1
    .param p1, "menu"    # Lcom/miui/gallery/widget/menu/ImmersionMenu;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/miui/gallery/widget/menu/PhoneImmersionMenu;->mAdapter:Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter;->update(Lcom/miui/gallery/widget/menu/ImmersionMenu;)V

    .line 73
    return-void
.end method
