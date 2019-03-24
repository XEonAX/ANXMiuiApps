.class public Lcom/miui/internal/view/ActionBarPolicy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/miui/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    .line 30
    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/miui/internal/view/ActionBarPolicy;
    .locals 1

    .line 25
    new-instance v0, Lcom/miui/internal/view/ActionBarPolicy;

    invoke-direct {v0, p0}, Lcom/miui/internal/view/ActionBarPolicy;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public enableHomeButtonByDefault()Z
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/miui/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getEmbeddedMenuWidthLimit()I
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/miui/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getMaxActionButtons()I
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/miui/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$integer;->abc_max_action_buttons:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getStackedTabMaxWidth()I
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/miui/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$dimen;->action_bar_stacked_tab_max_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public getTabContainerHeight()I
    .locals 5

    .line 54
    iget-object v0, p0, Lcom/miui/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    sget-object v1, Lmiui/R$styleable;->ActionBar:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x10102f4

    invoke-virtual {v0, v2, v1, v4, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 56
    sget v1, Lmiui/R$styleable;->ActionBar_android_height:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    .line 57
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 59
    if-gtz v1, :cond_0

    .line 60
    iget-object v0, p0, Lcom/miui/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    sget-object v1, Lmiui/R$styleable;->ActionBar:[I

    const v4, 0x10102ce

    invoke-virtual {v0, v2, v1, v4, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 62
    sget v1, Lmiui/R$styleable;->ActionBar_android_height:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    .line 63
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 66
    :cond_0
    return v1
.end method

.method public hasEmbeddedTabs()Z
    .locals 3

    .line 46
    iget-object v0, p0, Lcom/miui/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    sget v1, Lmiui/R$attr;->actionBarEmbedTabs:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lmiui/util/AttributeResolver;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result v0

    return v0
.end method

.method public isTightTitle()Z
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/miui/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    sget v1, Lcom/miui/internal/R$attr;->actionBarTightTitle:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lmiui/util/AttributeResolver;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result v0

    return v0
.end method

.method public showsOverflowMenuButton()Z
    .locals 2

    .line 38
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
