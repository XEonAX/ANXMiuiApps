.class public Lcom/miui/internal/view/menu/ActionMenuItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem;


# static fields
.field private static final ENABLED:I = 0x10

.field private static final mC:I = 0x1

.field private static final mD:I = 0x2

.field private static final mE:I = 0x4

.field private static final mF:I = 0x8


# instance fields
.field private mA:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mB:I

.field private mContext:Landroid/content/Context;

.field private mTitle:Ljava/lang/CharSequence;

.field private final mr:I

.field private final ms:I

.field private final mt:I

.field private final mu:I

.field private mv:Ljava/lang/CharSequence;

.field private mw:Landroid/content/Intent;

.field private mx:C

.field private my:C

.field private mz:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/16 v0, 0x10

    iput v0, p0, Lcom/miui/internal/view/menu/ActionMenuItem;->mB:I

    .line 47
    iput-object p1, p0, Lcom/miui/internal/view/menu/ActionMenuItem;->mContext:Landroid/content/Context;

    .line 48
    iput p3, p0, Lcom/miui/internal/view/menu/ActionMenuItem;->mr:I

    .line 49
    iput p2, p0, Lcom/miui/internal/view/menu/ActionMenuItem;->ms:I

    .line 50
    iput p4, p0, Lcom/miui/internal/view/menu/ActionMenuItem;->mt:I

    .line 51
    iput p5, p0, Lcom/miui/internal/view/menu/ActionMenuItem;->mu:I

    .line 52
    iput-object p6, p0, Lcom/miui/internal/view/menu/ActionMenuItem;->mTitle:Ljava/lang/CharSequence;

    .line 53
    return-void
.end method


# virtual methods
.method public collapseActionView()Z
    .locals 1

    .line 256
    const/4 v0, 0x0

    return v0
.end method

.method public expandActionView()Z
    .locals 1

    .line 251
    const/4 v0, 0x0

    return v0
.end method

.method public getActionProvider()Landroid/view/ActionProvider;
    .locals 1

    .line 227
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getActionView()Landroid/view/View;
    .locals 1

    .line 217
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAlphabeticShortcut()C
    .locals 1

    .line 56
    iget-char v0, p0, Lcom/miui/internal/view/menu/ActionMenuItem;->my:C

    return v0
.end method

.method public getGroupId()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/miui/internal/view/menu/ActionMenuItem;->ms:I

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuItem;->mz:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuItem;->mw:Landroid/content/Intent;

    return-object v0
.end method

.method public getItemId()I
    .locals 1

    .line 72
    iget v0, p0, Lcom/miui/internal/view/menu/ActionMenuItem;->mr:I

    return v0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .line 76
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNumericShortcut()C
    .locals 1

    .line 80
    iget-char v0, p0, Lcom/miui/internal/view/menu/ActionMenuItem;->mx:C

    return v0
.end method

.method public getOrder()I
    .locals 1

    .line 84
    iget v0, p0, Lcom/miui/internal/view/menu/ActionMenuItem;->mu:I

    return v0
.end method

.method public getSubMenu()Landroid/view/SubMenu;
    .locals 1

    .line 88
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSupportActionProvider()Landroid/view/ActionProvider;
    .locals 1

    .line 236
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuItem;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuItem;->mv:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public hasSubMenu()Z
    .locals 1

    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public invoke()Z
    .locals 3

    .line 196
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuItem;->mA:Landroid/view/MenuItem$OnMenuItemClickListener;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuItem;->mA:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, p0}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    return v1

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuItem;->mw:Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 201
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuItem;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/internal/view/menu/ActionMenuItem;->mw:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 202
    return v1

    .line 205
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isActionViewExpanded()Z
    .locals 1

    .line 261
    const/4 v0, 0x0

    return v0
.end method

.method public isCheckable()Z
    .locals 2

    .line 104
    iget v0, p0, Lcom/miui/internal/view/menu/ActionMenuItem;->mB:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isChecked()Z
    .locals 1

    .line 108
    iget v0, p0, Lcom/miui/internal/view/menu/ActionMenuItem;->mB:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 112
    iget v0, p0, Lcom/miui/internal/view/menu/ActionMenuItem;->mB:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 116
    iget v0, p0, Lcom/miui/internal/view/menu/ActionMenuItem;->mB:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .locals 0

    .line 222
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setActionView(I)Landroid/view/MenuItem;
    .locals 0

    .line 232
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .locals 0

    .line 213
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .locals 0

    .line 120
    iput-char p1, p0, Lcom/miui/internal/view/menu/ActionMenuItem;->my:C

    .line 121
    return-object p0
.end method

.method public setCheckable(Z)Landroid/view/MenuItem;
    .locals 1

    .line 125
    iget v0, p0, Lcom/miui/internal/view/menu/ActionMenuItem;->mB:I

    and-int/lit8 v0, v0, -0x2

    or-int/2addr p1, v0

    iput p1, p0, Lcom/miui/internal/view/menu/ActionMenuItem;->mB:I

    .line 126
    return-object p0
.end method

.method public setChecked(Z)Landroid/view/MenuItem;
    .locals 1

    .line 135
    iget v0, p0, Lcom/miui/internal/view/menu/ActionMenuItem;->mB:I

    and-int/lit8 v0, v0, -0x3

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    or-int/2addr p1, v0

    iput p1, p0, Lcom/miui/internal/view/menu/ActionMenuItem;->mB:I

    .line 136
    return-object p0
.end method

.method public setEnabled(Z)Landroid/view/MenuItem;
    .locals 1

    .line 140
    iget v0, p0, Lcom/miui/internal/view/menu/ActionMenuItem;->mB:I

    and-int/lit8 v0, v0, -0x11

    if-eqz p1, :cond_0

    const/16 p1, 0x10

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    or-int/2addr p1, v0

    iput p1, p0, Lcom/miui/internal/view/menu/ActionMenuItem;->mB:I

    .line 141
    return-object p0
.end method

.method public setExclusiveCheckable(Z)Lcom/miui/internal/view/menu/ActionMenuItem;
    .locals 1

    .line 130
    iget v0, p0, Lcom/miui/internal/view/menu/ActionMenuItem;->mB:I

    and-int/lit8 v0, v0, -0x5

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    or-int/2addr p1, v0

    iput p1, p0, Lcom/miui/internal/view/menu/ActionMenuItem;->mB:I

    .line 131
    return-object p0
.end method

.method public setIcon(I)Landroid/view/MenuItem;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/internal/view/menu/ActionMenuItem;->mz:Landroid/graphics/drawable/Drawable;

    .line 151
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/miui/internal/view/menu/ActionMenuItem;->mz:Landroid/graphics/drawable/Drawable;

    .line 146
    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/miui/internal/view/menu/ActionMenuItem;->mw:Landroid/content/Intent;

    .line 156
    return-object p0
.end method

.method public setNumericShortcut(C)Landroid/view/MenuItem;
    .locals 0

    .line 160
    iput-char p1, p0, Lcom/miui/internal/view/menu/ActionMenuItem;->mx:C

    .line 161
    return-object p0
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .locals 0

    .line 266
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/miui/internal/view/menu/ActionMenuItem;->mA:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 166
    return-object p0
.end method

.method public setShortcut(CC)Landroid/view/MenuItem;
    .locals 0

    .line 170
    iput-char p1, p0, Lcom/miui/internal/view/menu/ActionMenuItem;->mx:C

    .line 171
    iput-char p2, p0, Lcom/miui/internal/view/menu/ActionMenuItem;->my:C

    .line 172
    return-object p0
.end method

.method public setShowAsAction(I)V
    .locals 0

    .line 210
    return-void
.end method

.method public setShowAsActionFlags(I)Landroid/view/MenuItem;
    .locals 0

    .line 245
    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/ActionMenuItem;->setShowAsAction(I)V

    .line 246
    return-object p0
.end method

.method public setSupportActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .locals 0

    .line 240
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setSupportOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .locals 0

    .line 271
    return-object p0
.end method

.method public setTitle(I)Landroid/view/MenuItem;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/internal/view/menu/ActionMenuItem;->mTitle:Ljava/lang/CharSequence;

    .line 182
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/miui/internal/view/menu/ActionMenuItem;->mTitle:Ljava/lang/CharSequence;

    .line 177
    return-object p0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/miui/internal/view/menu/ActionMenuItem;->mv:Ljava/lang/CharSequence;

    .line 187
    return-object p0
.end method

.method public setVisible(Z)Landroid/view/MenuItem;
    .locals 2

    .line 191
    iget v0, p0, Lcom/miui/internal/view/menu/ActionMenuItem;->mB:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    nop

    :cond_0
    or-int p1, v0, v1

    iput p1, p0, Lcom/miui/internal/view/menu/ActionMenuItem;->mB:I

    .line 192
    return-object p0
.end method
