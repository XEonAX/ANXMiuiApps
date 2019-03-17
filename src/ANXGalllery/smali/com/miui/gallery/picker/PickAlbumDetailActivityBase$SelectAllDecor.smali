.class public Lcom/miui/gallery/picker/PickAlbumDetailActivityBase$SelectAllDecor;
.super Lcom/miui/gallery/picker/PickerActivity$Decor;
.source "PickAlbumDetailActivityBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/picker/PickAlbumDetailActivityBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SelectAllDecor"
.end annotation


# instance fields
.field private mActivity:Lcom/miui/gallery/picker/PickAlbumDetailActivityBase;

.field private mAllSelected:Z

.field private mCancelButton:Landroid/widget/Button;

.field private mDoneButton:Landroid/widget/Button;

.field private mPickerTitle:Landroid/widget/TextView;

.field private mSelectAllButton:Landroid/widget/Button;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Lcom/miui/gallery/picker/PickAlbumDetailActivityBase;)V
    .locals 0
    .param p1, "activity"    # Lcom/miui/gallery/picker/PickAlbumDetailActivityBase;

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/miui/gallery/picker/PickerActivity$Decor;-><init>(Lcom/miui/gallery/picker/PickerActivity;)V

    .line 82
    iput-object p1, p0, Lcom/miui/gallery/picker/PickAlbumDetailActivityBase$SelectAllDecor;->mActivity:Lcom/miui/gallery/picker/PickAlbumDetailActivityBase;

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/picker/PickAlbumDetailActivityBase$SelectAllDecor;)Lcom/miui/gallery/picker/PickAlbumDetailActivityBase;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/picker/PickAlbumDetailActivityBase$SelectAllDecor;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/miui/gallery/picker/PickAlbumDetailActivityBase$SelectAllDecor;->mActivity:Lcom/miui/gallery/picker/PickAlbumDetailActivityBase;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/picker/PickAlbumDetailActivityBase$SelectAllDecor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/picker/PickAlbumDetailActivityBase$SelectAllDecor;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/miui/gallery/picker/PickAlbumDetailActivityBase$SelectAllDecor;->mAllSelected:Z

    return v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/picker/PickAlbumDetailActivityBase$SelectAllDecor;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/picker/PickAlbumDetailActivityBase$SelectAllDecor;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/miui/gallery/picker/PickAlbumDetailActivityBase$SelectAllDecor;->updateDoneButtonVisibility()V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/gallery/picker/PickAlbumDetailActivityBase$SelectAllDecor;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/picker/PickAlbumDetailActivityBase$SelectAllDecor;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/miui/gallery/picker/PickAlbumDetailActivityBase$SelectAllDecor;->updateSelectAll()V

    return-void
.end method

.method private setup()V
    .locals 4

    .prologue
    .line 111
    iget-object v1, p0, Lcom/miui/gallery/picker/PickAlbumDetailActivityBase$SelectAllDecor;->mActivity:Lcom/miui/gallery/picker/PickAlbumDetailActivityBase;

    iget-object v2, p0, Lcom/miui/gallery/picker/PickAlbumDetailActivityBase$SelectAllDecor;->mDoneButton:Landroid/widget/Button;

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Lmiui/gallery/support/MiuiSdkCompat;->setEditActionModeButton(Landroid/content/Context;Landroid/widget/Button;I)V

    .line 112
    iget-object v1, p0, Lcom/miui/gallery/picker/PickAlbumDetailActivityBase$SelectAllDecor;->mActivity:Lcom/miui/gallery/picker/PickAlbumDetailActivityBase;

    iget-object v2, p0, Lcom/miui/gallery/picker/PickAlbumDetailActivityBase$SelectAllDecor;->mCancelButton:Landroid/widget/Button;

    const/4 v3, 0x3

    invoke-static {v1, v2, v3}, Lmiui/gallery/support/MiuiSdkCompat;->setEditActionModeButton(Landroid/content/Context;Landroid/widget/Button;I)V

    .line 113
    iget-object v1, p0, Lcom/miui/gallery/picker/PickAlbumDetailActivityBase$SelectAllDecor;->mActivity:Lcom/miui/gallery/picker/PickAlbumDetailActivityBase;

    invoke-virtual {v1}, Lcom/miui/gallery/picker/PickAlbumDetailActivityBase;->getPicker()Lcom/miui/gallery/picker/helper/Picker;

    move-result-object v0

    .line 115
    .local v0, "picker":Lcom/miui/gallery/picker/helper/Picker;
    iget-object v1, p0, Lcom/miui/gallery/picker/PickAlbumDetailActivityBase$SelectAllDecor;->mTitle:Landroid/widget/TextView;

    new-instance v2, Lcom/miui/gallery/picker/PickAlbumDetailActivityBase$SelectAllDecor$1;

    invoke-direct {v2, p0}, Lcom/miui/gallery/picker/PickAlbumDetailActivityBase$SelectAllDecor$1;-><init>(Lcom/miui/gallery/picker/PickAlbumDetailActivityBase$SelectAllDecor;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v1, p0, Lcom/miui/gallery/picker/PickAlbumDetailActivityBase$SelectAllDecor;->mCancelButton:Landroid/widget/Button;

    new-instance v2, Lcom/miui/gallery/picker/PickAlbumDetailActivityBase$SelectAllDecor$2;

    invoke-direct {v2, p0}, Lcom/miui/gallery/picker/PickAlbumDetailActivityBase$SelectAllDecor$2;-><init>(Lcom/miui/gallery/picker/PickAlbumDetailActivityBase$SelectAllDecor;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object v1, p0, Lcom/miui/gallery/picker/PickAlbumDetailActivityBase$SelectAllDecor;->mDoneButton:Landroid/widget/Button;

    new-instance v2, Lcom/miui/gallery/picker/PickAlbumDetailActivityBase$SelectAllDecor$3;

    invoke-direct {v2, p0}, Lcom/miui/gallery/picker/PickAlbumDetailActivityBase$SelectAllDecor$3;-><init>(Lcom/miui/gallery/picker/PickAlbumDetailActivityBase$SelectAllDecor;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object v1, p0, Lcom/miui/gallery/picker/PickAlbumDetailActivityBase$SelectAllDecor;->mSelectAllButton:Landroid/widget/Button;

    new-instance v2, Lcom/miui/gallery/picker/PickAlbumDetailActivityBase$SelectAllDecor$4;

    invoke-direct {v2, p0}, Lcom/miui/gallery/picker/PickAlbumDetailActivityBase$SelectAllDecor$4;-><init>(Lcom/miui/gallery/picker/PickAlbumDetailActivityBase$SelectAllDecor;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    invoke-direct {p0}, Lcom/miui/gallery/picker/PickAlbumDetailActivityBase$SelectAllDecor;->updateSelectAll()V

    .line 151
    new-instance v1, Lcom/miui/gallery/picker/PickAlbumDetailActivityBase$SelectAllDecor$5;

    invoke-direct {v1, p0}, Lcom/miui/gallery/picker/PickAlbumDetailActivityBase$SelectAllDecor$5;-><init>(Lcom/miui/gallery/picker/PickAlbumDetailActivityBase$SelectAllDecor;)V

    invoke-interface {v0, v1}, Lcom/miui/gallery/picker/helper/Picker;->registerObserver(Landroid/database/DataSetObserver;)V

    .line 167
    iget-object v1, p0, Lcom/miui/gallery/picker/PickAlbumDetailActivityBase$SelectAllDecor;->mActivity:Lcom/miui/gallery/picker/PickAlbumDetailActivityBase;

    new-instance v2, Lcom/miui/gallery/picker/PickAlbumDetailActivityBase$SelectAllDecor$6;

    invoke-direct {v2, p0}, Lcom/miui/gallery/picker/PickAlbumDetailActivityBase$SelectAllDecor$6;-><init>(Lcom/miui/gallery/picker/PickAlbumDetailActivityBase$SelectAllDecor;)V

    iput-object v2, v1, Lcom/miui/gallery/picker/PickAlbumDetailActivityBase;->mItemStateListener:Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase$ItemStateListener;

    .line 173
    return-void
.end method

.method private updateDoneButtonVisibility()V
    .locals 3

    .prologue
    .line 107
    iget-object v1, p0, Lcom/miui/gallery/picker/PickAlbumDetailActivityBase$SelectAllDecor;->mDoneButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/miui/gallery/picker/PickAlbumDetailActivityBase$SelectAllDecor;->mActivity:Lcom/miui/gallery/picker/PickAlbumDetailActivityBase;

    iget-object v0, v0, Lcom/miui/gallery/picker/PickAlbumDetailActivityBase;->mPicker:Lcom/miui/gallery/picker/helper/Picker;

    invoke-interface {v0}, Lcom/miui/gallery/picker/helper/Picker;->count()I

    move-result v0

    iget-object v2, p0, Lcom/miui/gallery/picker/PickAlbumDetailActivityBase$SelectAllDecor;->mActivity:Lcom/miui/gallery/picker/PickAlbumDetailActivityBase;

    iget-object v2, v2, Lcom/miui/gallery/picker/PickAlbumDetailActivityBase;->mPicker:Lcom/miui/gallery/picker/helper/Picker;

    invoke-interface {v2}, Lcom/miui/gallery/picker/helper/Picker;->baseline()I

    move-result v2

    if-lt v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 108
    return-void

    .line 107
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateSelectAll()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 176
    iget-object v0, p0, Lcom/miui/gallery/picker/PickAlbumDetailActivityBase$SelectAllDecor;->mActivity:Lcom/miui/gallery/picker/PickAlbumDetailActivityBase;

    iget-object v0, v0, Lcom/miui/gallery/picker/PickAlbumDetailActivityBase;->mAlbumDetailFragment:Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/picker/PickAlbumDetailActivityBase$SelectAllDecor;->mActivity:Lcom/miui/gallery/picker/PickAlbumDetailActivityBase;

    iget-object v0, v0, Lcom/miui/gallery/picker/PickAlbumDetailActivityBase;->mAlbumDetailFragment:Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;

    invoke-virtual {v0}, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;->isAllSelected()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/picker/PickAlbumDetailActivityBase$SelectAllDecor;->mActivity:Lcom/miui/gallery/picker/PickAlbumDetailActivityBase;

    invoke-virtual {v0}, Lcom/miui/gallery/picker/PickAlbumDetailActivityBase;->getPicker()Lcom/miui/gallery/picker/helper/Picker;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gallery/picker/helper/Picker;->isFull()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/miui/gallery/picker/PickAlbumDetailActivityBase$SelectAllDecor;->mAllSelected:Z

    .line 177
    iget-object v0, p0, Lcom/miui/gallery/picker/PickAlbumDetailActivityBase$SelectAllDecor;->mActivity:Lcom/miui/gallery/picker/PickAlbumDetailActivityBase;

    iget-object v3, p0, Lcom/miui/gallery/picker/PickAlbumDetailActivityBase$SelectAllDecor;->mSelectAllButton:Landroid/widget/Button;

    iget-boolean v4, p0, Lcom/miui/gallery/picker/PickAlbumDetailActivityBase$SelectAllDecor;->mAllSelected:Z

    if-eqz v4, :cond_3

    :goto_1
    invoke-static {v0, v3, v2}, Lmiui/gallery/support/MiuiSdkCompat;->setEditActionModeButton(Landroid/content/Context;Landroid/widget/Button;I)V

    .line 182
    return-void

    :cond_2
    move v0, v1

    .line 176
    goto :goto_0

    :cond_3
    move v2, v1

    .line 177
    goto :goto_1
.end method


# virtual methods
.method public applyActionBar()V
    .locals 5

    .prologue
    .line 87
    iget-object v2, p0, Lcom/miui/gallery/picker/PickAlbumDetailActivityBase$SelectAllDecor;->mActivity:Lcom/miui/gallery/picker/PickAlbumDetailActivityBase;

    invoke-virtual {v2}, Lcom/miui/gallery/picker/PickAlbumDetailActivityBase;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    .line 88
    .local v0, "actionBar":Lmiui/app/ActionBar;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lmiui/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 89
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lmiui/app/ActionBar;->setTabsMode(Z)V

    .line 90
    const v2, 0x7f040103

    invoke-virtual {v0, v2}, Lmiui/app/ActionBar;->setCustomView(I)V

    .line 91
    invoke-virtual {v0}, Lmiui/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    .line 92
    .local v1, "titleView":Landroid/view/View;
    const v2, 0x1020016

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/miui/gallery/picker/PickAlbumDetailActivityBase$SelectAllDecor;->mTitle:Landroid/widget/TextView;

    .line 93
    const v2, 0x7f12024d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/miui/gallery/picker/PickAlbumDetailActivityBase$SelectAllDecor;->mPickerTitle:Landroid/widget/TextView;

    .line 94
    invoke-static {}, Lcom/miui/gallery/util/BuildUtil;->isInternational()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    iget-object v2, p0, Lcom/miui/gallery/picker/PickAlbumDetailActivityBase$SelectAllDecor;->mPickerTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/miui/gallery/picker/PickAlbumDetailActivityBase$SelectAllDecor;->mActivity:Lcom/miui/gallery/picker/PickAlbumDetailActivityBase;

    const v4, 0x7f11004c

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 99
    :goto_0
    const v2, 0x1020019

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/miui/gallery/picker/PickAlbumDetailActivityBase$SelectAllDecor;->mCancelButton:Landroid/widget/Button;

    .line 100
    const v2, 0x102001a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/miui/gallery/picker/PickAlbumDetailActivityBase$SelectAllDecor;->mDoneButton:Landroid/widget/Button;

    .line 101
    invoke-direct {p0}, Lcom/miui/gallery/picker/PickAlbumDetailActivityBase$SelectAllDecor;->updateDoneButtonVisibility()V

    .line 102
    const v2, 0x102001b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/miui/gallery/picker/PickAlbumDetailActivityBase$SelectAllDecor;->mSelectAllButton:Landroid/widget/Button;

    .line 103
    invoke-direct {p0}, Lcom/miui/gallery/picker/PickAlbumDetailActivityBase$SelectAllDecor;->setup()V

    .line 104
    return-void

    .line 97
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/picker/PickAlbumDetailActivityBase$SelectAllDecor;->mPickerTitle:Landroid/widget/TextView;

    sget-object v3, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0
.end method

.method public applyTheme()V
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/miui/gallery/picker/PickAlbumDetailActivityBase$SelectAllDecor;->mActivity:Lcom/miui/gallery/picker/PickAlbumDetailActivityBase;

    const v1, 0x7f1100a2

    invoke-virtual {v0, v1}, Lcom/miui/gallery/picker/PickAlbumDetailActivityBase;->setTheme(I)V

    .line 187
    return-void
.end method

.method public setPickerTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 196
    iget-object v0, p0, Lcom/miui/gallery/picker/PickAlbumDetailActivityBase$SelectAllDecor;->mPickerTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/miui/gallery/picker/PickAlbumDetailActivityBase$SelectAllDecor;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    return-void
.end method
