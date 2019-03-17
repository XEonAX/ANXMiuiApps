.class public Lcom/miui/gallery/view/ActionBarWrapper;
.super Lmiui/app/ActionBar;
.source "ActionBarWrapper.java"


# instance fields
.field protected mWrapped:Lmiui/app/ActionBar;


# direct methods
.method public constructor <init>(Lmiui/app/ActionBar;)V
    .locals 0
    .param p1, "wrapped"    # Lmiui/app/ActionBar;

    .prologue
    .line 20
    invoke-direct {p0}, Lmiui/app/ActionBar;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/miui/gallery/view/ActionBarWrapper;->mWrapped:Lmiui/app/ActionBar;

    .line 22
    return-void
.end method


# virtual methods
.method public addFragmentTab(Ljava/lang/String;Landroid/app/ActionBar$Tab;ILjava/lang/Class;Landroid/os/Bundle;Z)I
    .locals 7
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "tab"    # Landroid/app/ActionBar$Tab;
    .param p3, "index"    # I
    .param p5, "args"    # Landroid/os/Bundle;
    .param p6, "hasActionMenu"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/app/ActionBar$Tab;",
            "I",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            "Z)I"
        }
    .end annotation

    .prologue
    .line 83
    .local p4, "fragment":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Fragment;>;"
    iget-object v0, p0, Lcom/miui/gallery/view/ActionBarWrapper;->mWrapped:Lmiui/app/ActionBar;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lmiui/app/ActionBar;->addFragmentTab(Ljava/lang/String;Landroid/app/ActionBar$Tab;ILjava/lang/Class;Landroid/os/Bundle;Z)I

    move-result v0

    return v0
.end method

.method public addFragmentTab(Ljava/lang/String;Landroid/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;Z)I
    .locals 6
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "tab"    # Landroid/app/ActionBar$Tab;
    .param p4, "args"    # Landroid/os/Bundle;
    .param p5, "hasActionMenu"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/app/ActionBar$Tab;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            "Z)I"
        }
    .end annotation

    .prologue
    .line 76
    .local p3, "fragment":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Fragment;>;"
    iget-object v0, p0, Lcom/miui/gallery/view/ActionBarWrapper;->mWrapped:Lmiui/app/ActionBar;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lmiui/app/ActionBar;->addFragmentTab(Ljava/lang/String;Landroid/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;Z)I

    move-result v0

    return v0
.end method

.method public addOnFragmentViewPagerChangeListener(Lmiui/app/ActionBar$FragmentViewPagerChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lmiui/app/ActionBar$FragmentViewPagerChangeListener;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/miui/gallery/view/ActionBarWrapper;->mWrapped:Lmiui/app/ActionBar;

    invoke-virtual {v0, p1}, Lmiui/app/ActionBar;->addOnFragmentViewPagerChangeListener(Lmiui/app/ActionBar$FragmentViewPagerChangeListener;)V

    .line 114
    return-void
.end method

.method public addOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/app/ActionBar$OnMenuVisibilityListener;

    .prologue
    .line 398
    iget-object v0, p0, Lcom/miui/gallery/view/ActionBarWrapper;->mWrapped:Lmiui/app/ActionBar;

    invoke-virtual {v0, p1}, Lmiui/app/ActionBar;->addOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V

    .line 399
    return-void
.end method

.method public addTab(Landroid/app/ActionBar$Tab;)V
    .locals 1
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;

    .prologue
    .line 323
    iget-object v0, p0, Lcom/miui/gallery/view/ActionBarWrapper;->mWrapped:Lmiui/app/ActionBar;

    invoke-virtual {v0, p1}, Lmiui/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 324
    return-void
.end method

.method public addTab(Landroid/app/ActionBar$Tab;I)V
    .locals 1
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "position"    # I

    .prologue
    .line 333
    iget-object v0, p0, Lcom/miui/gallery/view/ActionBarWrapper;->mWrapped:Lmiui/app/ActionBar;

    invoke-virtual {v0, p1, p2}, Lmiui/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;I)V

    .line 334
    return-void
.end method

.method public addTab(Landroid/app/ActionBar$Tab;IZ)V
    .locals 1
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "position"    # I
    .param p3, "setSelected"    # Z

    .prologue
    .line 338
    iget-object v0, p0, Lcom/miui/gallery/view/ActionBarWrapper;->mWrapped:Lmiui/app/ActionBar;

    invoke-virtual {v0, p1, p2, p3}, Lmiui/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;IZ)V

    .line 339
    return-void
.end method

.method public addTab(Landroid/app/ActionBar$Tab;Z)V
    .locals 1
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "setSelected"    # Z

    .prologue
    .line 328
    iget-object v0, p0, Lcom/miui/gallery/view/ActionBarWrapper;->mWrapped:Lmiui/app/ActionBar;

    invoke-virtual {v0, p1, p2}, Lmiui/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;Z)V

    .line 329
    return-void
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/miui/gallery/view/ActionBarWrapper;->mWrapped:Lmiui/app/ActionBar;

    invoke-virtual {v0}, Lmiui/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayOptions()I
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/miui/gallery/view/ActionBarWrapper;->mWrapped:Lmiui/app/ActionBar;

    invoke-virtual {v0}, Lmiui/app/ActionBar;->getDisplayOptions()I

    move-result v0

    return v0
.end method

.method public getFragmentAt(I)Landroid/app/Fragment;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 70
    iget-object v0, p0, Lcom/miui/gallery/view/ActionBarWrapper;->mWrapped:Lmiui/app/ActionBar;

    invoke-virtual {v0, p1}, Lmiui/app/ActionBar;->getFragmentAt(I)Landroid/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public getFragmentTabCount()I
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/miui/gallery/view/ActionBarWrapper;->mWrapped:Lmiui/app/ActionBar;

    invoke-virtual {v0}, Lmiui/app/ActionBar;->getFragmentTabCount()I

    move-result v0

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/miui/gallery/view/ActionBarWrapper;->mWrapped:Lmiui/app/ActionBar;

    invoke-virtual {v0}, Lmiui/app/ActionBar;->getHeight()I

    move-result v0

    return v0
.end method

.method public getNavigationItemCount()I
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/miui/gallery/view/ActionBarWrapper;->mWrapped:Lmiui/app/ActionBar;

    invoke-virtual {v0}, Lmiui/app/ActionBar;->getNavigationItemCount()I

    move-result v0

    return v0
.end method

.method public getNavigationMode()I
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/miui/gallery/view/ActionBarWrapper;->mWrapped:Lmiui/app/ActionBar;

    invoke-virtual {v0}, Lmiui/app/ActionBar;->getNavigationMode()I

    move-result v0

    return v0
.end method

.method public getSelectedNavigationIndex()I
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/miui/gallery/view/ActionBarWrapper;->mWrapped:Lmiui/app/ActionBar;

    invoke-virtual {v0}, Lmiui/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v0

    return v0
.end method

.method public getSelectedTab()Landroid/app/ActionBar$Tab;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/miui/gallery/view/ActionBarWrapper;->mWrapped:Lmiui/app/ActionBar;

    invoke-virtual {v0}, Lmiui/app/ActionBar;->getSelectedTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/miui/gallery/view/ActionBarWrapper;->mWrapped:Lmiui/app/ActionBar;

    invoke-virtual {v0}, Lmiui/app/ActionBar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTabAt(I)Landroid/app/ActionBar$Tab;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 368
    iget-object v0, p0, Lcom/miui/gallery/view/ActionBarWrapper;->mWrapped:Lmiui/app/ActionBar;

    invoke-virtual {v0, p1}, Lmiui/app/ActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v0

    return-object v0
.end method

.method public getTabCount()I
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/miui/gallery/view/ActionBarWrapper;->mWrapped:Lmiui/app/ActionBar;

    invoke-virtual {v0}, Lmiui/app/ActionBar;->getTabCount()I

    move-result v0

    return v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/miui/gallery/view/ActionBarWrapper;->mWrapped:Lmiui/app/ActionBar;

    invoke-virtual {v0}, Lmiui/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getViewPagerOffscreenPageLimit()I
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/miui/gallery/view/ActionBarWrapper;->mWrapped:Lmiui/app/ActionBar;

    invoke-virtual {v0}, Lmiui/app/ActionBar;->getViewPagerOffscreenPageLimit()I

    move-result v0

    return v0
.end method

.method public getWrapped()Lmiui/app/ActionBar;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/miui/gallery/view/ActionBarWrapper;->mWrapped:Lmiui/app/ActionBar;

    return-object v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/miui/gallery/view/ActionBarWrapper;->mWrapped:Lmiui/app/ActionBar;

    invoke-virtual {v0}, Lmiui/app/ActionBar;->hide()V

    .line 389
    return-void
.end method

.method public isFragmentViewPagerMode()Z
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/miui/gallery/view/ActionBarWrapper;->mWrapped:Lmiui/app/ActionBar;

    invoke-virtual {v0}, Lmiui/app/ActionBar;->isFragmentViewPagerMode()Z

    move-result v0

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/miui/gallery/view/ActionBarWrapper;->mWrapped:Lmiui/app/ActionBar;

    invoke-virtual {v0}, Lmiui/app/ActionBar;->isShowing()Z

    move-result v0

    return v0
.end method

.method public newTab()Landroid/app/ActionBar$Tab;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/miui/gallery/view/ActionBarWrapper;->mWrapped:Lmiui/app/ActionBar;

    invoke-virtual {v0}, Lmiui/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    return-object v0
.end method

.method public removeAllFragmentTab()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/miui/gallery/view/ActionBarWrapper;->mWrapped:Lmiui/app/ActionBar;

    invoke-virtual {v0}, Lmiui/app/ActionBar;->removeAllFragmentTab()V

    .line 109
    return-void
.end method

.method public removeAllTabs()V
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/miui/gallery/view/ActionBarWrapper;->mWrapped:Lmiui/app/ActionBar;

    invoke-virtual {v0}, Lmiui/app/ActionBar;->removeAllTabs()V

    .line 354
    return-void
.end method

.method public removeFragmentTab(Landroid/app/ActionBar$Tab;)V
    .locals 1
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/miui/gallery/view/ActionBarWrapper;->mWrapped:Lmiui/app/ActionBar;

    invoke-virtual {v0, p1}, Lmiui/app/ActionBar;->removeFragmentTab(Landroid/app/ActionBar$Tab;)V

    .line 99
    return-void
.end method

.method public removeFragmentTab(Landroid/app/Fragment;)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/miui/gallery/view/ActionBarWrapper;->mWrapped:Lmiui/app/ActionBar;

    invoke-virtual {v0, p1}, Lmiui/app/ActionBar;->removeFragmentTab(Landroid/app/Fragment;)V

    .line 104
    return-void
.end method

.method public removeFragmentTab(Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/miui/gallery/view/ActionBarWrapper;->mWrapped:Lmiui/app/ActionBar;

    invoke-virtual {v0, p1}, Lmiui/app/ActionBar;->removeFragmentTab(Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public removeFragmentTabAt(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 88
    iget-object v0, p0, Lcom/miui/gallery/view/ActionBarWrapper;->mWrapped:Lmiui/app/ActionBar;

    invoke-virtual {v0, p1}, Lmiui/app/ActionBar;->removeFragmentTabAt(I)V

    .line 89
    return-void
.end method

.method public removeOnFragmentViewPagerChangeListener(Lmiui/app/ActionBar$FragmentViewPagerChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lmiui/app/ActionBar$FragmentViewPagerChangeListener;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/miui/gallery/view/ActionBarWrapper;->mWrapped:Lmiui/app/ActionBar;

    invoke-virtual {v0, p1}, Lmiui/app/ActionBar;->removeOnFragmentViewPagerChangeListener(Lmiui/app/ActionBar$FragmentViewPagerChangeListener;)V

    .line 119
    return-void
.end method

.method public removeOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/app/ActionBar$OnMenuVisibilityListener;

    .prologue
    .line 403
    iget-object v0, p0, Lcom/miui/gallery/view/ActionBarWrapper;->mWrapped:Lmiui/app/ActionBar;

    invoke-virtual {v0, p1}, Lmiui/app/ActionBar;->removeOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V

    .line 404
    return-void
.end method

.method public removeTab(Landroid/app/ActionBar$Tab;)V
    .locals 1
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;

    .prologue
    .line 343
    iget-object v0, p0, Lcom/miui/gallery/view/ActionBarWrapper;->mWrapped:Lmiui/app/ActionBar;

    invoke-virtual {v0, p1}, Lmiui/app/ActionBar;->removeTab(Landroid/app/ActionBar$Tab;)V

    .line 344
    return-void
.end method

.method public removeTabAt(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 348
    iget-object v0, p0, Lcom/miui/gallery/view/ActionBarWrapper;->mWrapped:Lmiui/app/ActionBar;

    invoke-virtual {v0, p1}, Lmiui/app/ActionBar;->removeTabAt(I)V

    .line 349
    return-void
.end method

.method public selectTab(Landroid/app/ActionBar$Tab;)V
    .locals 1
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;

    .prologue
    .line 358
    iget-object v0, p0, Lcom/miui/gallery/view/ActionBarWrapper;->mWrapped:Lmiui/app/ActionBar;

    invoke-virtual {v0, p1}, Lmiui/app/ActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 359
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 283
    iget-object v0, p0, Lcom/miui/gallery/view/ActionBarWrapper;->mWrapped:Lmiui/app/ActionBar;

    invoke-virtual {v0, p1}, Lmiui/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 284
    return-void
.end method

.method public setCustomView(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 183
    iget-object v0, p0, Lcom/miui/gallery/view/ActionBarWrapper;->mWrapped:Lmiui/app/ActionBar;

    invoke-virtual {v0, p1}, Lmiui/app/ActionBar;->setCustomView(I)V

    .line 184
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/miui/gallery/view/ActionBarWrapper;->mWrapped:Lmiui/app/ActionBar;

    invoke-virtual {v0, p1}, Lmiui/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 174
    return-void
.end method

.method public setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "layoutParams"    # Landroid/app/ActionBar$LayoutParams;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/miui/gallery/view/ActionBarWrapper;->mWrapped:Lmiui/app/ActionBar;

    invoke-virtual {v0, p1, p2}, Lmiui/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 179
    return-void
.end method

.method public setDisplayHomeAsUpEnabled(Z)V
    .locals 1
    .param p1, "showHomeAsUp"    # Z

    .prologue
    .line 268
    iget-object v0, p0, Lcom/miui/gallery/view/ActionBarWrapper;->mWrapped:Lmiui/app/ActionBar;

    invoke-virtual {v0, p1}, Lmiui/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 269
    return-void
.end method

.method public setDisplayOptions(I)V
    .locals 1
    .param p1, "options"    # I

    .prologue
    .line 248
    iget-object v0, p0, Lcom/miui/gallery/view/ActionBarWrapper;->mWrapped:Lmiui/app/ActionBar;

    invoke-virtual {v0, p1}, Lmiui/app/ActionBar;->setDisplayOptions(I)V

    .line 249
    return-void
.end method

.method public setDisplayOptions(II)V
    .locals 1
    .param p1, "options"    # I
    .param p2, "mask"    # I

    .prologue
    .line 253
    iget-object v0, p0, Lcom/miui/gallery/view/ActionBarWrapper;->mWrapped:Lmiui/app/ActionBar;

    invoke-virtual {v0, p1, p2}, Lmiui/app/ActionBar;->setDisplayOptions(II)V

    .line 254
    return-void
.end method

.method public setDisplayShowCustomEnabled(Z)V
    .locals 1
    .param p1, "showCustom"    # Z

    .prologue
    .line 278
    iget-object v0, p0, Lcom/miui/gallery/view/ActionBarWrapper;->mWrapped:Lmiui/app/ActionBar;

    invoke-virtual {v0, p1}, Lmiui/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 279
    return-void
.end method

.method public setDisplayShowHomeEnabled(Z)V
    .locals 1
    .param p1, "showHome"    # Z

    .prologue
    .line 263
    iget-object v0, p0, Lcom/miui/gallery/view/ActionBarWrapper;->mWrapped:Lmiui/app/ActionBar;

    invoke-virtual {v0, p1}, Lmiui/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 264
    return-void
.end method

.method public setDisplayShowTitleEnabled(Z)V
    .locals 1
    .param p1, "showTitle"    # Z

    .prologue
    .line 273
    iget-object v0, p0, Lcom/miui/gallery/view/ActionBarWrapper;->mWrapped:Lmiui/app/ActionBar;

    invoke-virtual {v0, p1}, Lmiui/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 274
    return-void
.end method

.method public setDisplayUseLogoEnabled(Z)V
    .locals 1
    .param p1, "useLogo"    # Z

    .prologue
    .line 258
    iget-object v0, p0, Lcom/miui/gallery/view/ActionBarWrapper;->mWrapped:Lmiui/app/ActionBar;

    invoke-virtual {v0, p1}, Lmiui/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 259
    return-void
.end method

.method public setEndView(Landroid/view/View;)V
    .locals 1
    .param p1, "endView"    # Landroid/view/View;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/miui/gallery/view/ActionBarWrapper;->mWrapped:Lmiui/app/ActionBar;

    invoke-virtual {v0, p1}, Lmiui/app/ActionBar;->setEndView(Landroid/view/View;)V

    .line 164
    return-void
.end method

.method public setFragmentActionMenuAt(IZ)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "hasActionMenu"    # Z

    .prologue
    .line 133
    iget-object v0, p0, Lcom/miui/gallery/view/ActionBarWrapper;->mWrapped:Lmiui/app/ActionBar;

    invoke-virtual {v0, p1, p2}, Lmiui/app/ActionBar;->setFragmentActionMenuAt(IZ)V

    .line 134
    return-void
.end method

.method public setFragmentViewPagerMode(Landroid/content/Context;Landroid/app/FragmentManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fragmentManager"    # Landroid/app/FragmentManager;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/miui/gallery/view/ActionBarWrapper;->mWrapped:Lmiui/app/ActionBar;

    invoke-virtual {v0, p1, p2}, Lmiui/app/ActionBar;->setFragmentViewPagerMode(Landroid/content/Context;Landroid/app/FragmentManager;)V

    .line 56
    return-void
.end method

.method public setFragmentViewPagerMode(Landroid/content/Context;Landroid/app/FragmentManager;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fragmentManager"    # Landroid/app/FragmentManager;
    .param p3, "allowListAnimation"    # Z

    .prologue
    .line 60
    iget-object v0, p0, Lcom/miui/gallery/view/ActionBarWrapper;->mWrapped:Lmiui/app/ActionBar;

    invoke-virtual {v0, p1, p2, p3}, Lmiui/app/ActionBar;->setFragmentViewPagerMode(Landroid/content/Context;Landroid/app/FragmentManager;Z)V

    .line 61
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 188
    iget-object v0, p0, Lcom/miui/gallery/view/ActionBarWrapper;->mWrapped:Lmiui/app/ActionBar;

    invoke-virtual {v0, p1}, Lmiui/app/ActionBar;->setIcon(I)V

    .line 189
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 193
    iget-object v0, p0, Lcom/miui/gallery/view/ActionBarWrapper;->mWrapped:Lmiui/app/ActionBar;

    invoke-virtual {v0, p1}, Lmiui/app/ActionBar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 194
    return-void
.end method

.method public setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;
    .param p2, "callback"    # Landroid/app/ActionBar$OnNavigationListener;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/miui/gallery/view/ActionBarWrapper;->mWrapped:Lmiui/app/ActionBar;

    invoke-virtual {v0, p1, p2}, Lmiui/app/ActionBar;->setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V

    .line 209
    return-void
.end method

.method public setLogo(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 198
    iget-object v0, p0, Lcom/miui/gallery/view/ActionBarWrapper;->mWrapped:Lmiui/app/ActionBar;

    invoke-virtual {v0, p1}, Lmiui/app/ActionBar;->setLogo(I)V

    .line 199
    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "logo"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 203
    iget-object v0, p0, Lcom/miui/gallery/view/ActionBarWrapper;->mWrapped:Lmiui/app/ActionBar;

    invoke-virtual {v0, p1}, Lmiui/app/ActionBar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 204
    return-void
.end method

.method public setNavigationMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 308
    iget-object v0, p0, Lcom/miui/gallery/view/ActionBarWrapper;->mWrapped:Lmiui/app/ActionBar;

    invoke-virtual {v0, p1}, Lmiui/app/ActionBar;->setNavigationMode(I)V

    .line 309
    return-void
.end method

.method public setProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 153
    iget-object v0, p0, Lcom/miui/gallery/view/ActionBarWrapper;->mWrapped:Lmiui/app/ActionBar;

    invoke-virtual {v0, p1}, Lmiui/app/ActionBar;->setProgress(I)V

    .line 154
    return-void
.end method

.method public setProgressBarIndeterminate(Z)V
    .locals 1
    .param p1, "indeterminate"    # Z

    .prologue
    .line 148
    iget-object v0, p0, Lcom/miui/gallery/view/ActionBarWrapper;->mWrapped:Lmiui/app/ActionBar;

    invoke-virtual {v0, p1}, Lmiui/app/ActionBar;->setProgressBarIndeterminate(Z)V

    .line 149
    return-void
.end method

.method public setProgressBarIndeterminateVisibility(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 143
    iget-object v0, p0, Lcom/miui/gallery/view/ActionBarWrapper;->mWrapped:Lmiui/app/ActionBar;

    invoke-virtual {v0, p1}, Lmiui/app/ActionBar;->setProgressBarIndeterminateVisibility(Z)V

    .line 144
    return-void
.end method

.method public setProgressBarVisibility(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 138
    iget-object v0, p0, Lcom/miui/gallery/view/ActionBarWrapper;->mWrapped:Lmiui/app/ActionBar;

    invoke-virtual {v0, p1}, Lmiui/app/ActionBar;->setProgressBarVisibility(Z)V

    .line 139
    return-void
.end method

.method public setSelectedNavigationItem(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 213
    iget-object v0, p0, Lcom/miui/gallery/view/ActionBarWrapper;->mWrapped:Lmiui/app/ActionBar;

    invoke-virtual {v0, p1}, Lmiui/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 214
    return-void
.end method

.method public setShowHideAnimationEnabled(Z)V
    .locals 6
    .param p1, "enable"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 407
    iget-object v0, p0, Lcom/miui/gallery/view/ActionBarWrapper;->mWrapped:Lmiui/app/ActionBar;

    const-string/jumbo v1, "setShowHideAnimationEnabled"

    new-array v2, v4, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v5

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/util/MiscUtil;->invokeSafely(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    return-void
.end method

.method public setStartView(Landroid/view/View;)V
    .locals 1
    .param p1, "startView"    # Landroid/view/View;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/miui/gallery/view/ActionBarWrapper;->mWrapped:Lmiui/app/ActionBar;

    invoke-virtual {v0, p1}, Lmiui/app/ActionBar;->setStartView(Landroid/view/View;)V

    .line 159
    return-void
.end method

.method public setSubtitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 243
    iget-object v0, p0, Lcom/miui/gallery/view/ActionBarWrapper;->mWrapped:Lmiui/app/ActionBar;

    invoke-virtual {v0, p1}, Lmiui/app/ActionBar;->setSubtitle(I)V

    .line 244
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 238
    iget-object v0, p0, Lcom/miui/gallery/view/ActionBarWrapper;->mWrapped:Lmiui/app/ActionBar;

    invoke-virtual {v0, p1}, Lmiui/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 239
    return-void
.end method

.method public setTabBadgeVisibility(IZ)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "isVisible"    # Z

    .prologue
    .line 45
    iget-object v0, p0, Lcom/miui/gallery/view/ActionBarWrapper;->mWrapped:Lmiui/app/ActionBar;

    invoke-virtual {v0, p1, p2}, Lmiui/app/ActionBar;->setTabBadgeVisibility(IZ)V

    .line 46
    return-void
.end method

.method public setTabsMode(Z)V
    .locals 1
    .param p1, "embedded"    # Z

    .prologue
    .line 40
    iget-object v0, p0, Lcom/miui/gallery/view/ActionBarWrapper;->mWrapped:Lmiui/app/ActionBar;

    invoke-virtual {v0, p1}, Lmiui/app/ActionBar;->setTabsMode(Z)V

    .line 41
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 233
    iget-object v0, p0, Lcom/miui/gallery/view/ActionBarWrapper;->mWrapped:Lmiui/app/ActionBar;

    invoke-virtual {v0, p1}, Lmiui/app/ActionBar;->setTitle(I)V

    .line 234
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 228
    iget-object v0, p0, Lcom/miui/gallery/view/ActionBarWrapper;->mWrapped:Lmiui/app/ActionBar;

    invoke-virtual {v0, p1}, Lmiui/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 229
    return-void
.end method

.method public setViewPagerDecor(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/miui/gallery/view/ActionBarWrapper;->mWrapped:Lmiui/app/ActionBar;

    invoke-virtual {v0, p1}, Lmiui/app/ActionBar;->setViewPagerDecor(Landroid/view/View;)V

    .line 169
    return-void
.end method

.method public setViewPagerOffscreenPageLimit(I)V
    .locals 1
    .param p1, "limit"    # I

    .prologue
    .line 128
    iget-object v0, p0, Lcom/miui/gallery/view/ActionBarWrapper;->mWrapped:Lmiui/app/ActionBar;

    invoke-virtual {v0, p1}, Lmiui/app/ActionBar;->setViewPagerOffscreenPageLimit(I)V

    .line 129
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/miui/gallery/view/ActionBarWrapper;->mWrapped:Lmiui/app/ActionBar;

    invoke-virtual {v0}, Lmiui/app/ActionBar;->show()V

    .line 384
    return-void
.end method

.method public showActionBarShadow(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 35
    iget-object v0, p0, Lcom/miui/gallery/view/ActionBarWrapper;->mWrapped:Lmiui/app/ActionBar;

    invoke-virtual {v0, p1}, Lmiui/app/ActionBar;->showActionBarShadow(Z)V

    .line 36
    return-void
.end method

.method public showSplitActionBar(ZZ)V
    .locals 1
    .param p1, "show"    # Z
    .param p2, "animate"    # Z

    .prologue
    .line 30
    iget-object v0, p0, Lcom/miui/gallery/view/ActionBarWrapper;->mWrapped:Lmiui/app/ActionBar;

    invoke-virtual {v0, p1, p2}, Lmiui/app/ActionBar;->showSplitActionBar(ZZ)V

    .line 31
    return-void
.end method
