.class public Lcom/miui/gallery/app/BottomMenuFragmentDelegate;
.super Lcom/miui/gallery/app/BottomMenuDelegateImpl;
.source "BottomMenuFragmentDelegate.java"


# instance fields
.field private mExtraThemeRes:I

.field private mFragment:Lmiui/app/Fragment;

.field private mInvalidateMenuFlags:B

.field private final mInvalidateMenuRunnable:Ljava/lang/Runnable;

.field private mMenu:Lcom/miui/gallery/view/menu/MenuBuilder;

.field private mThemedContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lmiui/app/Fragment;)V
    .locals 1
    .param p1, "fragment"    # Lmiui/app/Fragment;

    .prologue
    .line 61
    invoke-virtual {p1}, Lmiui/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/gallery/app/BottomMenuDelegateImpl;-><init>(Landroid/app/Activity;)V

    .line 32
    new-instance v0, Lcom/miui/gallery/app/BottomMenuFragmentDelegate$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/app/BottomMenuFragmentDelegate$1;-><init>(Lcom/miui/gallery/app/BottomMenuFragmentDelegate;)V

    iput-object v0, p0, Lcom/miui/gallery/app/BottomMenuFragmentDelegate;->mInvalidateMenuRunnable:Ljava/lang/Runnable;

    .line 62
    iput-object p1, p0, Lcom/miui/gallery/app/BottomMenuFragmentDelegate;->mFragment:Lmiui/app/Fragment;

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/app/BottomMenuFragmentDelegate;)B
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/app/BottomMenuFragmentDelegate;

    .prologue
    .line 18
    iget-byte v0, p0, Lcom/miui/gallery/app/BottomMenuFragmentDelegate;->mInvalidateMenuFlags:B

    return v0
.end method

.method static synthetic access$002(Lcom/miui/gallery/app/BottomMenuFragmentDelegate;B)B
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/app/BottomMenuFragmentDelegate;
    .param p1, "x1"    # B

    .prologue
    .line 18
    iput-byte p1, p0, Lcom/miui/gallery/app/BottomMenuFragmentDelegate;->mInvalidateMenuFlags:B

    return p1
.end method

.method static synthetic access$100(Lcom/miui/gallery/app/BottomMenuFragmentDelegate;)Lcom/miui/gallery/view/menu/MenuBuilder;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/app/BottomMenuFragmentDelegate;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/miui/gallery/app/BottomMenuFragmentDelegate;->mMenu:Lcom/miui/gallery/view/menu/MenuBuilder;

    return-object v0
.end method

.method static synthetic access$102(Lcom/miui/gallery/app/BottomMenuFragmentDelegate;Lcom/miui/gallery/view/menu/MenuBuilder;)Lcom/miui/gallery/view/menu/MenuBuilder;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/app/BottomMenuFragmentDelegate;
    .param p1, "x1"    # Lcom/miui/gallery/view/menu/MenuBuilder;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/miui/gallery/app/BottomMenuFragmentDelegate;->mMenu:Lcom/miui/gallery/view/menu/MenuBuilder;

    return-object p1
.end method


# virtual methods
.method public getThemedContext()Landroid/content/Context;
    .locals 3

    .prologue
    .line 145
    iget-object v0, p0, Lcom/miui/gallery/app/BottomMenuFragmentDelegate;->mThemedContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/miui/gallery/app/BottomMenuFragmentDelegate;->mActivity:Landroid/app/Activity;

    iput-object v0, p0, Lcom/miui/gallery/app/BottomMenuFragmentDelegate;->mThemedContext:Landroid/content/Context;

    .line 147
    iget v0, p0, Lcom/miui/gallery/app/BottomMenuFragmentDelegate;->mExtraThemeRes:I

    if-eqz v0, :cond_0

    .line 148
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/miui/gallery/app/BottomMenuFragmentDelegate;->mThemedContext:Landroid/content/Context;

    iget v2, p0, Lcom/miui/gallery/app/BottomMenuFragmentDelegate;->mExtraThemeRes:I

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/miui/gallery/app/BottomMenuFragmentDelegate;->mThemedContext:Landroid/content/Context;

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/app/BottomMenuFragmentDelegate;->mThemedContext:Landroid/content/Context;

    return-object v0
.end method

.method final installBottomMenu()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 70
    iget-boolean v3, p0, Lcom/miui/gallery/app/BottomMenuFragmentDelegate;->mIsBottomMenuInstalled:Z

    if-nez v3, :cond_1

    .line 71
    iget-object v3, p0, Lcom/miui/gallery/app/BottomMenuFragmentDelegate;->mFragment:Lmiui/app/Fragment;

    invoke-virtual {v3}, Lmiui/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    .line 72
    .local v2, "root":Landroid/view/View;
    if-eqz v2, :cond_0

    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/miui/gallery/app/BottomMenuFragmentDelegate;->getThemedContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 74
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f04011e

    move-object v3, v2

    check-cast v3, Landroid/view/ViewGroup;

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/widget/BottomMenu;

    iput-object v3, p0, Lcom/miui/gallery/app/BottomMenuFragmentDelegate;->mBottomMenu:Lcom/miui/gallery/widget/BottomMenu;

    .line 75
    check-cast v2, Landroid/view/ViewGroup;

    .end local v2    # "root":Landroid/view/View;
    iget-object v3, p0, Lcom/miui/gallery/app/BottomMenuFragmentDelegate;->mBottomMenu:Lcom/miui/gallery/widget/BottomMenu;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 76
    iget-object v3, p0, Lcom/miui/gallery/app/BottomMenuFragmentDelegate;->mBottomMenu:Lcom/miui/gallery/widget/BottomMenu;

    invoke-virtual {v3}, Lcom/miui/gallery/widget/BottomMenu;->bringToFront()V

    .line 77
    invoke-virtual {p0, v6}, Lcom/miui/gallery/app/BottomMenuFragmentDelegate;->updateOptionsMenu(I)V

    .line 78
    invoke-virtual {p0}, Lcom/miui/gallery/app/BottomMenuFragmentDelegate;->invalidateBottomMenu()V

    .line 79
    iput-boolean v6, p0, Lcom/miui/gallery/app/BottomMenuFragmentDelegate;->mIsBottomMenuInstalled:Z

    .line 87
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    iget-object v3, p0, Lcom/miui/gallery/app/BottomMenuFragmentDelegate;->mBottomMenu:Lcom/miui/gallery/widget/BottomMenu;

    invoke-virtual {v3}, Lcom/miui/gallery/widget/BottomMenu;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/miui/gallery/app/BottomMenuFragmentDelegate;->mBottomMenu:Lcom/miui/gallery/widget/BottomMenu;

    invoke-virtual {v3}, Lcom/miui/gallery/widget/BottomMenu;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 82
    iget-object v3, p0, Lcom/miui/gallery/app/BottomMenuFragmentDelegate;->mBottomMenu:Lcom/miui/gallery/widget/BottomMenu;

    invoke-virtual {v3}, Lcom/miui/gallery/widget/BottomMenu;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 83
    .local v1, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 84
    iget-object v3, p0, Lcom/miui/gallery/app/BottomMenuFragmentDelegate;->mBottomMenu:Lcom/miui/gallery/widget/BottomMenu;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    goto :goto_0
.end method

.method public invalidateBottomMenu()V
    .locals 2

    .prologue
    .line 129
    iget-byte v0, p0, Lcom/miui/gallery/app/BottomMenuFragmentDelegate;->mInvalidateMenuFlags:B

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    .line 130
    iget-byte v0, p0, Lcom/miui/gallery/app/BottomMenuFragmentDelegate;->mInvalidateMenuFlags:B

    or-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/miui/gallery/app/BottomMenuFragmentDelegate;->mInvalidateMenuFlags:B

    .line 131
    iget-object v0, p0, Lcom/miui/gallery/app/BottomMenuFragmentDelegate;->mFragment:Lmiui/app/Fragment;

    invoke-virtual {v0}, Lmiui/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/app/BottomMenuFragmentDelegate;->mInvalidateMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 133
    :cond_0
    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v1, 0x0

    .line 96
    if-nez p1, :cond_1

    .line 97
    iget-object v0, p0, Lcom/miui/gallery/app/BottomMenuFragmentDelegate;->mFragment:Lmiui/app/Fragment;

    check-cast v0, Lcom/miui/gallery/app/IBottomMenu;

    invoke-interface {v0}, Lcom/miui/gallery/app/IBottomMenu;->isMenuVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/app/BottomMenuFragmentDelegate;->mFragment:Lmiui/app/Fragment;

    invoke-virtual {v0, p2}, Lmiui/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 99
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 97
    goto :goto_0

    :cond_1
    move v0, v1

    .line 99
    goto :goto_0
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 105
    if-nez p1, :cond_0

    .line 106
    iget-object v0, p0, Lcom/miui/gallery/app/BottomMenuFragmentDelegate;->mFragment:Lmiui/app/Fragment;

    invoke-virtual {v0, p2}, Lmiui/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 108
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMenuItemSelected(Lcom/miui/gallery/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "menu"    # Lcom/miui/gallery/view/menu/MenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 124
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Lcom/miui/gallery/app/BottomMenuFragmentDelegate;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menu"    # Landroid/view/Menu;

    .prologue
    .line 113
    if-nez p1, :cond_1

    .line 114
    iget-object v0, p0, Lcom/miui/gallery/app/BottomMenuFragmentDelegate;->mFragment:Lmiui/app/Fragment;

    check-cast v0, Lcom/miui/gallery/app/IBottomMenu;

    invoke-interface {v0}, Lcom/miui/gallery/app/IBottomMenu;->isMenuVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/miui/gallery/app/BottomMenuFragmentDelegate;->mFragment:Lmiui/app/Fragment;

    invoke-virtual {v0, p3}, Lmiui/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 117
    :cond_0
    const/4 v0, 0x1

    .line 119
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/miui/gallery/app/BottomMenuFragmentDelegate;->installBottomMenu()V

    .line 67
    return-void
.end method

.method public setExtraThemeRes(I)V
    .locals 0
    .param p1, "extraThemeRes"    # I

    .prologue
    .line 140
    iput p1, p0, Lcom/miui/gallery/app/BottomMenuFragmentDelegate;->mExtraThemeRes:I

    .line 141
    return-void
.end method

.method public updateOptionsMenu(I)V
    .locals 2
    .param p1, "flags"    # I

    .prologue
    .line 136
    iget-byte v0, p0, Lcom/miui/gallery/app/BottomMenuFragmentDelegate;->mInvalidateMenuFlags:B

    and-int/lit8 v1, p1, 0x1

    or-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/miui/gallery/app/BottomMenuFragmentDelegate;->mInvalidateMenuFlags:B

    .line 137
    return-void
.end method
