.class public Lcom/miui/gallery/widget/menu/ImmersionMenuItem;
.super Ljava/lang/Object;
.source "ImmersionMenuItem.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFlags:I

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mId:I

.field private mInfomation:Ljava/lang/CharSequence;

.field private mIsRedDotDisplayed:Z

.field private mIsRemainWhenClick:Z

.field private mSubMenu:Lcom/miui/gallery/widget/menu/ImmersionSubMenu;

.field private mSummary:Ljava/lang/CharSequence;

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/CharSequence;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I
    .param p3, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/16 v0, 0x10

    iput v0, p0, Lcom/miui/gallery/widget/menu/ImmersionMenuItem;->mFlags:I

    .line 28
    iput-object p1, p0, Lcom/miui/gallery/widget/menu/ImmersionMenuItem;->mContext:Landroid/content/Context;

    .line 29
    iput p2, p0, Lcom/miui/gallery/widget/menu/ImmersionMenuItem;->mId:I

    .line 30
    iput-object p3, p0, Lcom/miui/gallery/widget/menu/ImmersionMenuItem;->mTitle:Ljava/lang/CharSequence;

    .line 31
    return-void
.end method


# virtual methods
.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/miui/gallery/widget/menu/ImmersionMenuItem;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getInformation()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/miui/gallery/widget/menu/ImmersionMenuItem;->mInfomation:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getItemId()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/miui/gallery/widget/menu/ImmersionMenuItem;->mId:I

    return v0
.end method

.method public getSubMenu()Lcom/miui/gallery/widget/menu/ImmersionSubMenu;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/miui/gallery/widget/menu/ImmersionMenuItem;->mSubMenu:Lcom/miui/gallery/widget/menu/ImmersionSubMenu;

    return-object v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/miui/gallery/widget/menu/ImmersionMenuItem;->mSummary:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/miui/gallery/widget/menu/ImmersionMenuItem;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public hasSubMenu()Z
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/miui/gallery/widget/menu/ImmersionMenuItem;->mSubMenu:Lcom/miui/gallery/widget/menu/ImmersionSubMenu;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCheckable()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 115
    iget v1, p0, Lcom/miui/gallery/widget/menu/ImmersionMenuItem;->mFlags:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isChecked()Z
    .locals 2

    .prologue
    .line 124
    iget v0, p0, Lcom/miui/gallery/widget/menu/ImmersionMenuItem;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRedDotDisplayed()Z
    .locals 1

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/miui/gallery/widget/menu/ImmersionMenuItem;->mIsRedDotDisplayed:Z

    return v0
.end method

.method public isRemainWhenClick()Z
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/miui/gallery/widget/menu/ImmersionMenuItem;->mIsRemainWhenClick:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/miui/gallery/widget/menu/ImmersionMenuItem;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIconResource(I)Lcom/miui/gallery/widget/menu/ImmersionMenuItem;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 58
    iget-object v0, p0, Lcom/miui/gallery/widget/menu/ImmersionMenuItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/widget/menu/ImmersionMenuItem;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 59
    return-object p0
.end method

.method public setInformation(I)Lcom/miui/gallery/widget/menu/ImmersionMenuItem;
    .locals 1
    .param p1, "infoRes"    # I

    .prologue
    .line 142
    iget-object v0, p0, Lcom/miui/gallery/widget/menu/ImmersionMenuItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/widget/menu/ImmersionMenuItem;->setInformation(Ljava/lang/CharSequence;)Lcom/miui/gallery/widget/menu/ImmersionMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public setInformation(Ljava/lang/CharSequence;)Lcom/miui/gallery/widget/menu/ImmersionMenuItem;
    .locals 0
    .param p1, "info"    # Ljava/lang/CharSequence;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/miui/gallery/widget/menu/ImmersionMenuItem;->mInfomation:Ljava/lang/CharSequence;

    .line 138
    return-object p0
.end method

.method public setIsRedDotDisplayed(Z)V
    .locals 0
    .param p1, "isDisplay"    # Z

    .prologue
    .line 158
    iput-boolean p1, p0, Lcom/miui/gallery/widget/menu/ImmersionMenuItem;->mIsRedDotDisplayed:Z

    .line 159
    return-void
.end method

.method public setRemainWhenClick(Z)V
    .locals 0
    .param p1, "isRemain"    # Z

    .prologue
    .line 150
    iput-boolean p1, p0, Lcom/miui/gallery/widget/menu/ImmersionMenuItem;->mIsRemainWhenClick:Z

    .line 151
    return-void
.end method

.method public setVisible(Z)Lcom/miui/gallery/widget/menu/ImmersionMenuItem;
    .locals 2
    .param p1, "shown"    # Z

    .prologue
    .line 110
    iget v0, p0, Lcom/miui/gallery/widget/menu/ImmersionMenuItem;->mFlags:I

    and-int/lit8 v1, v0, -0x9

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Lcom/miui/gallery/widget/menu/ImmersionMenuItem;->mFlags:I

    .line 111
    return-object p0

    .line 110
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
