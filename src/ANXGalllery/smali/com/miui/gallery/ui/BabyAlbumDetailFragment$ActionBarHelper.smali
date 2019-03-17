.class Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;
.super Ljava/lang/Object;
.source "BabyAlbumDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/BabyAlbumDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActionBarHelper"
.end annotation


# instance fields
.field private final ATTRS:[I

.field private mDefaultActionBarBg:Landroid/graphics/drawable/Drawable;

.field private mHomeIcon:Landroid/widget/ImageView;

.field private mHomeText:Landroid/widget/TextView;

.field private mIsShowTranslucentStatusBar:Z

.field final synthetic this$0:Lcom/miui/gallery/ui/BabyAlbumDetailFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/BabyAlbumDetailFragment;)V
    .locals 4
    .param p1, "this$0"    # Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    .prologue
    const/4 v3, 0x1

    .line 90
    iput-object p1, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;->this$0:Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-array v0, v3, [I

    const/4 v1, 0x0

    sget v2, Lmiui/R$attr;->actionBarBackground:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;->ATTRS:[I

    .line 95
    iput-boolean v3, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;->mIsShowTranslucentStatusBar:Z

    return-void
.end method

.method static synthetic access$1000(Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;->mIsShowTranslucentStatusBar:Z

    return v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;->setNullStyleActionBar()V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;->setNormalStyleActionBar()V

    return-void
.end method

.method static synthetic access$800(Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;->inflateTitle()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private inflateTitle()Landroid/view/View;
    .locals 8

    .prologue
    const/16 v7, 0x10

    const/4 v6, -0x1

    .line 98
    iget-object v3, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;->this$0:Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    iget-object v3, v3, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    iget-object v4, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;->ATTRS:[I

    .line 99
    invoke-virtual {v3, v4}, Lcom/miui/gallery/activity/BaseActivity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 100
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;->mDefaultActionBarBg:Landroid/graphics/drawable/Drawable;

    .line 101
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 103
    iget-object v3, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;->this$0:Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    iget-object v3, v3, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v3}, Lcom/miui/gallery/activity/BaseActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f04002a

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 105
    .local v2, "title":Landroid/view/View;
    new-instance v1, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    .line 107
    .local v1, "layoutParams":Landroid/app/ActionBar$LayoutParams;
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    const v3, 0x7f1200d2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;->mHomeIcon:Landroid/widget/ImageView;

    .line 109
    iget-object v3, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;->mHomeIcon:Landroid/widget/ImageView;

    new-instance v4, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper$1;

    invoke-direct {v4, p0}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper$1;-><init>(Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    const v3, 0x7f1200d3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;->mHomeText:Landroid/widget/TextView;

    .line 117
    iget-object v3, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;->mHomeText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;->this$0:Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    iget-object v4, v4, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mAlbumName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v3, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;->this$0:Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    iget-object v3, v3, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v3}, Lcom/miui/gallery/activity/BaseActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v7, v7}, Lmiui/app/ActionBar;->setDisplayOptions(II)V

    .line 121
    iget-object v3, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;->this$0:Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    iget-object v3, v3, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v3}, Lcom/miui/gallery/activity/BaseActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v2}, Lmiui/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 122
    return-object v2
.end method

.method private refreshHomeIconAndColor()V
    .locals 3

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;->mIsShowTranslucentStatusBar:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;->this$0:Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->access$000(Lcom/miui/gallery/ui/BabyAlbumDetailFragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;->mHomeIcon:Landroid/widget/ImageView;

    sget v1, Lmiui/R$drawable;->action_bar_back_dark:I

    .line 134
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 135
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;->mHomeText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;->this$0:Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    iget-object v1, v1, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v1}, Lcom/miui/gallery/activity/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100110

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 145
    :cond_1
    :goto_0
    return-void

    .line 138
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;->mHomeIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;->mHomeIcon:Landroid/widget/ImageView;

    sget v1, Lmiui/R$drawable;->action_bar_back_light:I

    .line 140
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 141
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;->mHomeText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;->this$0:Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    iget-object v1, v1, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v1}, Lcom/miui/gallery/activity/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100111

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private refreshTopBar(Z)V
    .locals 2
    .param p1, "isShowTranslucentStatusBar"    # Z

    .prologue
    .line 126
    iput-boolean p1, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;->mIsShowTranslucentStatusBar:Z

    .line 127
    invoke-direct {p0}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;->refreshHomeIconAndColor()V

    .line 128
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;->this$0:Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    iget-object v0, v0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/miui/gallery/activity/BaseActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;->getTopBarBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 129
    return-void
.end method

.method private setNormalStyleActionBar()V
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;->refreshTopBar(Z)V

    .line 161
    return-void
.end method

.method private setNullStyleActionBar()V
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;->refreshTopBar(Z)V

    .line 157
    return-void
.end method


# virtual methods
.method public getTopBarBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;->mIsShowTranslucentStatusBar:Z

    if-eqz v0, :cond_0

    .line 149
    const/4 v0, 0x0

    .line 151
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;->mDefaultActionBarBg:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method
