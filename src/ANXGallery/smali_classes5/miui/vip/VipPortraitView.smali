.class public Lmiui/vip/VipPortraitView;
.super Landroid/widget/RelativeLayout;
.source "VipPortraitView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/vip/VipPortraitView$ClickListenerWrapper;
    }
.end annotation


# static fields
.field static final ACHIEVEMENT_COUNT:I = 0x4

.field static final BANNER:Ljava/lang/String; = "banner"

.field static final BadgeIconSize:[I

.field static final LayoutId:[I

.field static final MAX_BANNER_COUNT:I = 0x2

.field static final MODEL_COMPACT:I = 0x0

.field static final MODEL_EXPAND:I = 0x1

.field static final PREF_KEY_BANNER:Ljava/lang/String; = "banner"

.field static final PREF_NAME:Ljava/lang/String; = "portrait_view"

.field static final STATISTIC_AVATAR:Ljava/lang/String; = "portrait_avatar"

.field static final STATISTIC_BACKGROUND:Ljava/lang/String; = "portrait_background"

.field static final STATISTIC_BANNER:Ljava/lang/String; = "portrait_banner_"

.field static final STATISTIC_CUSTOM_BUTTON:Ljava/lang/String; = "portrait_custom_button"

.field static final STATISTIC_SIGN:Ljava/lang/String; = "portrait_sign"

.field static final WRAP_CONTENT:I = -0x1


# instance fields
.field public ARROW_STYLE_CARD:I

.field public ARROW_STYLE_LIST:I

.field mAccountWelcomeClick:Landroid/view/View$OnClickListener;

.field mAchievementList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiui/vip/VipAchievement;",
            ">;"
        }
    .end annotation
.end field

.field mAchievements:Landroid/widget/LinearLayout;

.field mAction:Landroid/widget/ImageView;

.field mActionClick:Landroid/view/View$OnClickListener;

.field mActionIcon:Landroid/graphics/drawable/Drawable;

.field mArrow:Landroid/view/View;

.field mArrowCardMargin:I

.field mArrowListMargin:I

.field mArrowStyle:I

.field mAvatar:Landroid/widget/ImageView;

.field mAvatarClick:Landroid/view/View$OnClickListener;

.field mBackgroundClick:Landroid/view/View$OnClickListener;

.field mBadge:Landroid/widget/ImageView;

.field mBanner:Landroid/widget/LinearLayout;

.field mBannerGroup:Landroid/view/View;

.field mBannerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiui/vip/VipBanner;",
            ">;"
        }
    .end annotation
.end field

.field mCmpVipAchievement:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lmiui/vip/VipAchievement;",
            ">;"
        }
    .end annotation
.end field

.field mCmpVipBanner:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lmiui/vip/VipBanner;",
            ">;"
        }
    .end annotation
.end field

.field mExtAccount:Landroid/accounts/Account;

.field mFrame:Landroid/view/View;

.field mIdView:Landroid/widget/TextView;

.field private final mListener:Lcom/miui/internal/vip/VipInternalCallback;

.field mLockIcon:Landroid/graphics/drawable/Drawable;

.field mName:Landroid/widget/TextView;

.field mPref:Lcom/miui/internal/vip/utils/VipDataPref;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field mServiceAvailable:Z

.field mShowBanner:Z

.field mShowModel:I

.field mSign:Landroid/widget/TextView;

.field mSignClick:Landroid/view/View$OnClickListener;

.field mSignGroup:Landroid/view/View;

.field mTitle:Landroid/widget/TextView;

.field mUserDetailClick:Landroid/view/View$OnClickListener;

.field mUserId:J

.field mUserInfo:Lmiui/vip/VipUserInfo;

.field mUserSign:Ljava/lang/String;

.field mVipLevelListClick:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 95
    const/4 v0, 0x2

    new-array v1, v0, [I

    sget v2, Lcom/miui/system/internal/R$layout;->vip_portrait_view:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v2, Lcom/miui/system/internal/R$layout;->vip_portrait_expand_view:I

    const/4 v4, 0x1

    aput v2, v1, v4

    sput-object v1, Lmiui/vip/VipPortraitView;->LayoutId:[I

    .line 100
    new-array v0, v0, [I

    sget v1, Lcom/miui/system/internal/R$dimen;->vip_achievement_icon_size:I

    aput v1, v0, v3

    sget v1, Lcom/miui/system/internal/R$dimen;->vip_achievement_icon_size_1:I

    aput v1, v0, v4

    sput-object v0, Lmiui/vip/VipPortraitView;->BadgeIconSize:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 266
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lmiui/vip/VipPortraitView;->ARROW_STYLE_LIST:I

    .line 51
    const/4 v1, 0x1

    iput v1, p0, Lmiui/vip/VipPortraitView;->ARROW_STYLE_CARD:I

    .line 127
    iget v2, p0, Lmiui/vip/VipPortraitView;->ARROW_STYLE_LIST:I

    iput v2, p0, Lmiui/vip/VipPortraitView;->mArrowStyle:I

    .line 138
    iput v0, p0, Lmiui/vip/VipPortraitView;->mShowModel:I

    .line 139
    iput-boolean v1, p0, Lmiui/vip/VipPortraitView;->mShowBanner:Z

    .line 144
    new-instance v0, Lmiui/vip/VipPortraitView$1;

    invoke-direct {v0, p0}, Lmiui/vip/VipPortraitView$1;-><init>(Lmiui/vip/VipPortraitView;)V

    iput-object v0, p0, Lmiui/vip/VipPortraitView;->mCmpVipAchievement:Ljava/util/Comparator;

    .line 151
    new-instance v0, Lmiui/vip/VipPortraitView$2;

    invoke-direct {v0, p0}, Lmiui/vip/VipPortraitView$2;-><init>(Lmiui/vip/VipPortraitView;)V

    iput-object v0, p0, Lmiui/vip/VipPortraitView;->mCmpVipBanner:Ljava/util/Comparator;

    .line 158
    new-instance v0, Lmiui/vip/VipPortraitView$3;

    invoke-direct {v0, p0}, Lmiui/vip/VipPortraitView$3;-><init>(Lmiui/vip/VipPortraitView;)V

    iput-object v0, p0, Lmiui/vip/VipPortraitView;->mAccountWelcomeClick:Landroid/view/View$OnClickListener;

    .line 165
    new-instance v0, Lmiui/vip/VipPortraitView$ClickListenerWrapper;

    const-string v1, "portrait_avatar"

    new-instance v2, Lmiui/vip/VipPortraitView$4;

    invoke-direct {v2, p0}, Lmiui/vip/VipPortraitView$4;-><init>(Lmiui/vip/VipPortraitView;)V

    invoke-direct {v0, v1, v2}, Lmiui/vip/VipPortraitView$ClickListenerWrapper;-><init>(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lmiui/vip/VipPortraitView;->mUserDetailClick:Landroid/view/View$OnClickListener;

    .line 171
    iget-object v0, p0, Lmiui/vip/VipPortraitView;->mUserDetailClick:Landroid/view/View$OnClickListener;

    iput-object v0, p0, Lmiui/vip/VipPortraitView;->mAvatarClick:Landroid/view/View$OnClickListener;

    .line 173
    new-instance v0, Lmiui/vip/VipPortraitView$ClickListenerWrapper;

    const-string v1, "portrait_background"

    new-instance v2, Lmiui/vip/VipPortraitView$5;

    invoke-direct {v2, p0}, Lmiui/vip/VipPortraitView$5;-><init>(Lmiui/vip/VipPortraitView;)V

    invoke-direct {v0, v1, v2}, Lmiui/vip/VipPortraitView$ClickListenerWrapper;-><init>(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lmiui/vip/VipPortraitView;->mVipLevelListClick:Landroid/view/View$OnClickListener;

    .line 179
    iget-object v0, p0, Lmiui/vip/VipPortraitView;->mVipLevelListClick:Landroid/view/View$OnClickListener;

    iput-object v0, p0, Lmiui/vip/VipPortraitView;->mBackgroundClick:Landroid/view/View$OnClickListener;

    .line 181
    new-instance v0, Lmiui/vip/VipPortraitView$6;

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-direct {v0, p0, v1}, Lmiui/vip/VipPortraitView$6;-><init>(Lmiui/vip/VipPortraitView;[I)V

    iput-object v0, p0, Lmiui/vip/VipPortraitView;->mListener:Lcom/miui/internal/vip/VipInternalCallback;

    .line 232
    new-instance v0, Lmiui/vip/VipPortraitView$7;

    invoke-direct {v0, p0}, Lmiui/vip/VipPortraitView$7;-><init>(Lmiui/vip/VipPortraitView;)V

    iput-object v0, p0, Lmiui/vip/VipPortraitView;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 267
    return-void

    nop

    :array_0
    .array-data 4
        0x10
        0x40
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 270
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/vip/VipPortraitView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 271
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 274
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lmiui/vip/VipPortraitView;->ARROW_STYLE_LIST:I

    .line 51
    const/4 v1, 0x1

    iput v1, p0, Lmiui/vip/VipPortraitView;->ARROW_STYLE_CARD:I

    .line 127
    iget v2, p0, Lmiui/vip/VipPortraitView;->ARROW_STYLE_LIST:I

    iput v2, p0, Lmiui/vip/VipPortraitView;->mArrowStyle:I

    .line 138
    iput v0, p0, Lmiui/vip/VipPortraitView;->mShowModel:I

    .line 139
    iput-boolean v1, p0, Lmiui/vip/VipPortraitView;->mShowBanner:Z

    .line 144
    new-instance v1, Lmiui/vip/VipPortraitView$1;

    invoke-direct {v1, p0}, Lmiui/vip/VipPortraitView$1;-><init>(Lmiui/vip/VipPortraitView;)V

    iput-object v1, p0, Lmiui/vip/VipPortraitView;->mCmpVipAchievement:Ljava/util/Comparator;

    .line 151
    new-instance v1, Lmiui/vip/VipPortraitView$2;

    invoke-direct {v1, p0}, Lmiui/vip/VipPortraitView$2;-><init>(Lmiui/vip/VipPortraitView;)V

    iput-object v1, p0, Lmiui/vip/VipPortraitView;->mCmpVipBanner:Ljava/util/Comparator;

    .line 158
    new-instance v1, Lmiui/vip/VipPortraitView$3;

    invoke-direct {v1, p0}, Lmiui/vip/VipPortraitView$3;-><init>(Lmiui/vip/VipPortraitView;)V

    iput-object v1, p0, Lmiui/vip/VipPortraitView;->mAccountWelcomeClick:Landroid/view/View$OnClickListener;

    .line 165
    new-instance v1, Lmiui/vip/VipPortraitView$ClickListenerWrapper;

    const-string v2, "portrait_avatar"

    new-instance v3, Lmiui/vip/VipPortraitView$4;

    invoke-direct {v3, p0}, Lmiui/vip/VipPortraitView$4;-><init>(Lmiui/vip/VipPortraitView;)V

    invoke-direct {v1, v2, v3}, Lmiui/vip/VipPortraitView$ClickListenerWrapper;-><init>(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lmiui/vip/VipPortraitView;->mUserDetailClick:Landroid/view/View$OnClickListener;

    .line 171
    iget-object v1, p0, Lmiui/vip/VipPortraitView;->mUserDetailClick:Landroid/view/View$OnClickListener;

    iput-object v1, p0, Lmiui/vip/VipPortraitView;->mAvatarClick:Landroid/view/View$OnClickListener;

    .line 173
    new-instance v1, Lmiui/vip/VipPortraitView$ClickListenerWrapper;

    const-string v2, "portrait_background"

    new-instance v3, Lmiui/vip/VipPortraitView$5;

    invoke-direct {v3, p0}, Lmiui/vip/VipPortraitView$5;-><init>(Lmiui/vip/VipPortraitView;)V

    invoke-direct {v1, v2, v3}, Lmiui/vip/VipPortraitView$ClickListenerWrapper;-><init>(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lmiui/vip/VipPortraitView;->mVipLevelListClick:Landroid/view/View$OnClickListener;

    .line 179
    iget-object v1, p0, Lmiui/vip/VipPortraitView;->mVipLevelListClick:Landroid/view/View$OnClickListener;

    iput-object v1, p0, Lmiui/vip/VipPortraitView;->mBackgroundClick:Landroid/view/View$OnClickListener;

    .line 181
    new-instance v1, Lmiui/vip/VipPortraitView$6;

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-direct {v1, p0, v2}, Lmiui/vip/VipPortraitView$6;-><init>(Lmiui/vip/VipPortraitView;[I)V

    iput-object v1, p0, Lmiui/vip/VipPortraitView;->mListener:Lcom/miui/internal/vip/VipInternalCallback;

    .line 232
    new-instance v1, Lmiui/vip/VipPortraitView$7;

    invoke-direct {v1, p0}, Lmiui/vip/VipPortraitView$7;-><init>(Lmiui/vip/VipPortraitView;)V

    iput-object v1, p0, Lmiui/vip/VipPortraitView;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 275
    sget-object v1, Lcom/miui/system/internal/R$styleable;->VipPortraitView:[I

    sget v2, Lcom/miui/system/internal/R$attr;->vipShowModel:I

    invoke-virtual {p1, p2, v1, v2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 279
    .local v1, "a":Landroid/content/res/TypedArray;
    sget v2, Lcom/miui/system/internal/R$styleable;->VipPortraitView_vipShowModel:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lmiui/vip/VipPortraitView;->mShowModel:I

    .line 280
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 281
    return-void

    :array_0
    .array-data 4
        0x10
        0x40
    .end array-data
.end method

.method static synthetic access$000(Lmiui/vip/VipPortraitView;Lmiui/vip/VipUserInfo;)V
    .locals 0
    .param p0, "x0"    # Lmiui/vip/VipPortraitView;
    .param p1, "x1"    # Lmiui/vip/VipUserInfo;

    .line 44
    invoke-direct {p0, p1}, Lmiui/vip/VipPortraitView;->setVipLevel(Lmiui/vip/VipUserInfo;)V

    return-void
.end method

.method static synthetic access$100(Ljava/util/List;Ljava/util/List;Ljava/util/Comparator;)Z
    .locals 1
    .param p0, "x0"    # Ljava/util/List;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/util/Comparator;

    .line 44
    invoke-static {p0, p1, p2}, Lmiui/vip/VipPortraitView;->isSameList(Ljava/util/List;Ljava/util/List;Ljava/util/Comparator;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lmiui/vip/VipPortraitView;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lmiui/vip/VipPortraitView;
    .param p1, "x1"    # Ljava/util/List;

    .line 44
    invoke-direct {p0, p1}, Lmiui/vip/VipPortraitView;->setAchievements(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$300(Lmiui/vip/VipPortraitView;)V
    .locals 0
    .param p0, "x0"    # Lmiui/vip/VipPortraitView;

    .line 44
    invoke-direct {p0}, Lmiui/vip/VipPortraitView;->clearVipInfo()V

    return-void
.end method

.method static synthetic access$400(Lmiui/vip/VipPortraitView;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lmiui/vip/VipPortraitView;
    .param p1, "x1"    # Ljava/util/List;

    .line 44
    invoke-direct {p0, p1}, Lmiui/vip/VipPortraitView;->saveBannerData(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$500(Lmiui/vip/VipPortraitView;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lmiui/vip/VipPortraitView;
    .param p1, "x1"    # Ljava/util/List;

    .line 44
    invoke-direct {p0, p1}, Lmiui/vip/VipPortraitView;->setBanners(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$600(Lmiui/vip/VipPortraitView;)V
    .locals 0
    .param p0, "x0"    # Lmiui/vip/VipPortraitView;

    .line 44
    invoke-direct {p0}, Lmiui/vip/VipPortraitView;->setAccountData()V

    return-void
.end method

.method private static addAchievementIcon(Landroid/widget/LinearLayout;Lmiui/vip/VipAchievement;III)V
    .locals 8
    .param p0, "container"    # Landroid/widget/LinearLayout;
    .param p1, "info"    # Lmiui/vip/VipAchievement;
    .param p2, "showModel"    # I
    .param p3, "size"    # I
    .param p4, "margin"    # I

    .line 772
    const-string v0, "addAchievementIcon, info.badgeId = %d, info.name = %s, info.url = %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v2, p1, Lmiui/vip/VipAchievement;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p1, Lmiui/vip/VipAchievement;->name:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    iget-object v2, p1, Lmiui/vip/VipAchievement;->url:Ljava/lang/String;

    const/4 v4, 0x2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 774
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 775
    .local v0, "ctx":Landroid/content/Context;
    sget v1, Lcom/miui/system/internal/R$layout;->vip_achievement_icon:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lmiui/vip/VipPortraitView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 776
    .local v1, "achievementView":Landroid/view/View;
    invoke-virtual {v1, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 778
    sget v2, Lcom/miui/system/internal/R$id;->vip_id_achieve_icon:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 779
    .local v2, "iconView":Landroid/widget/ImageView;
    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 780
    .local v4, "iconLp":Landroid/widget/RelativeLayout$LayoutParams;
    iput p3, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 781
    iput p3, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 782
    iget-object v5, p1, Lmiui/vip/VipAchievement;->url:Ljava/lang/String;

    iget-wide v6, p1, Lmiui/vip/VipAchievement;->id:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v5, v6, v2}, Lcom/miui/internal/vip/utils/ImageDownloader;->loadImage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 784
    sget v5, Lcom/miui/system/internal/R$id;->vip_id_achieve_name:I

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 785
    .local v5, "nameView":Landroid/widget/TextView;
    if-nez p2, :cond_0

    const/16 v3, 0x8

    nop

    :cond_0
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 786
    iget-object v3, p1, Lmiui/vip/VipAchievement;->name:Ljava/lang/String;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 788
    const/4 v3, -0x1

    invoke-static {p0, v1, v3, p4}, Lmiui/vip/VipPortraitView;->addViewToAchievements(Landroid/widget/LinearLayout;Landroid/view/View;II)V

    .line 789
    return-void
.end method

.method private addAchievementIconToLinearLayout(Landroid/widget/LinearLayout;Ljava/util/List;I)V
    .locals 6
    .param p1, "container"    # Landroid/widget/LinearLayout;
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/LinearLayout;",
            "Ljava/util/List<",
            "Lmiui/vip/VipAchievement;",
            ">;I)V"
        }
    .end annotation

    .line 651
    .local p2, "infoList":Ljava/util/List;, "Ljava/util/List<Lmiui/vip/VipAchievement;>;"
    iget-object v2, p0, Lmiui/vip/VipPortraitView;->mLockIcon:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lmiui/vip/VipPortraitView;->mShowModel:I

    invoke-virtual {p0}, Lmiui/vip/VipPortraitView;->getWidth()I

    move-result v5

    move-object v0, p1

    move-object v1, p2

    move v4, p3

    invoke-static/range {v0 .. v5}, Lmiui/vip/VipPortraitView;->addAchievementIconToLinearLayout(Landroid/widget/LinearLayout;Ljava/util/List;Landroid/graphics/drawable/Drawable;III)V

    .line 652
    return-void
.end method

.method private static addAchievementIconToLinearLayout(Landroid/widget/LinearLayout;Ljava/util/List;Landroid/graphics/drawable/Drawable;III)V
    .locals 8
    .param p0, "container"    # Landroid/widget/LinearLayout;
    .param p2, "lockIcon"    # Landroid/graphics/drawable/Drawable;
    .param p3, "showModel"    # I
    .param p4, "size"    # I
    .param p5, "maxWidth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/LinearLayout;",
            "Ljava/util/List<",
            "Lmiui/vip/VipAchievement;",
            ">;",
            "Landroid/graphics/drawable/Drawable;",
            "III)V"
        }
    .end annotation

    .line 660
    .local p1, "infoList":Ljava/util/List;, "Ljava/util/List<Lmiui/vip/VipAchievement;>;"
    invoke-static {p1}, Lmiui/vip/VipPortraitView;->getAchievementCount(Ljava/util/List;)I

    move-result v0

    .line 661
    .local v0, "count":I
    add-int/lit8 v1, v0, -0x1

    .line 662
    .local v1, "maxIndex":I
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 664
    .local v2, "ctx":Landroid/content/Context;
    if-nez p3, :cond_0

    .line 665
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/miui/system/internal/R$dimen;->vip_margin_4:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .local v3, "margin":I
    goto :goto_0

    .line 667
    .end local v3    # "margin":I
    :cond_0
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/miui/system/internal/R$dimen;->vip_margin_8:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 668
    .local v3, "sideMargin":I
    mul-int/lit8 v4, v3, 0x2

    sub-int v4, p5, v4

    mul-int v5, p4, v0

    sub-int/2addr v4, v5

    div-int v3, v4, v1

    .line 670
    .local v3, "margin":I
    :goto_0
    const/4 v4, 0x0

    move v5, v4

    .local v5, "i":I
    :goto_1
    if-ge v5, v0, :cond_2

    .line 671
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/vip/VipAchievement;

    if-ne v5, v1, :cond_1

    move v7, v4

    goto :goto_2

    :cond_1
    move v7, v3

    :goto_2
    invoke-static {p0, v6, p3, p4, v7}, Lmiui/vip/VipPortraitView;->addAchievementIcon(Landroid/widget/LinearLayout;Lmiui/vip/VipAchievement;III)V

    .line 670
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 673
    .end local v5    # "i":I
    :cond_2
    invoke-static {p0, p2, p4}, Lmiui/vip/VipPortraitView;->drawAchievementLock(Landroid/widget/LinearLayout;Landroid/graphics/drawable/Drawable;I)V

    .line 674
    return-void
.end method

.method private static addIconCover(Landroid/view/View;ILandroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p0, "iconView"    # Landroid/view/View;
    .param p1, "size"    # I
    .param p2, "lockIcon"    # Landroid/graphics/drawable/Drawable;

    .line 610
    sget v0, Lcom/miui/system/internal/R$id;->vip_id_achieve_cover:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 611
    .local v0, "cover":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 612
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 613
    .local v1, "coverLp":Landroid/widget/RelativeLayout$LayoutParams;
    iput p1, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 614
    iput p1, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 615
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 617
    .end local v1    # "coverLp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method private static addViewToAchievements(Landroid/widget/LinearLayout;Landroid/view/View;II)V
    .locals 2
    .param p0, "container"    # Landroid/widget/LinearLayout;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "size"    # I
    .param p3, "margin"    # I

    .line 792
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 794
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 795
    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    .line 796
    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 797
    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 799
    :cond_0
    invoke-virtual {p0, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 800
    return-void
.end method

.method private changeModel(I)V
    .locals 1
    .param p1, "newModel"    # I

    .line 486
    iget v0, p0, Lmiui/vip/VipPortraitView;->mShowModel:I

    if-eq v0, p1, :cond_0

    .line 487
    iput p1, p0, Lmiui/vip/VipPortraitView;->mShowModel:I

    .line 488
    invoke-virtual {p0}, Lmiui/vip/VipPortraitView;->removeAllViews()V

    .line 489
    invoke-direct {p0}, Lmiui/vip/VipPortraitView;->initView()V

    .line 490
    invoke-direct {p0}, Lmiui/vip/VipPortraitView;->loadData()V

    .line 492
    :cond_0
    return-void
.end method

.method private clearVipInfo()V
    .locals 2

    .line 535
    const-string v0, "clearVipInfo"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 536
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiui/vip/VipPortraitView;->setVipLevel(Lmiui/vip/VipUserInfo;)V

    .line 537
    invoke-direct {p0, v0}, Lmiui/vip/VipPortraitView;->setAchievements(Ljava/util/List;)V

    .line 538
    invoke-direct {p0, v0}, Lmiui/vip/VipPortraitView;->setBanners(Ljava/util/List;)V

    .line 539
    return-void
.end method

.method private static drawAchievementLock(Landroid/widget/LinearLayout;Landroid/graphics/drawable/Drawable;I)V
    .locals 5
    .param p0, "container"    # Landroid/widget/LinearLayout;
    .param p1, "lockIcon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "size"    # I

    .line 597
    if-eqz p1, :cond_1

    .line 598
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 599
    .local v0, "iconCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 600
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 601
    .local v2, "iconView":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 602
    .local v3, "tag":Ljava/lang/Object;
    instance-of v4, v3, Lmiui/vip/VipAchievement;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Lmiui/vip/VipAchievement;

    iget-boolean v4, v4, Lmiui/vip/VipAchievement;->isOwned:Z

    if-nez v4, :cond_0

    .line 603
    invoke-static {v2, p2, p1}, Lmiui/vip/VipPortraitView;->addIconCover(Landroid/view/View;ILandroid/graphics/drawable/Drawable;)V

    .line 599
    .end local v2    # "iconView":Landroid/view/View;
    .end local v3    # "tag":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 607
    .end local v0    # "iconCount":I
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private static getAchievementCount(Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmiui/vip/VipAchievement;",
            ">;)I"
        }
    .end annotation

    .line 644
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lmiui/vip/VipAchievement;>;"
    if-nez p0, :cond_0

    .line 645
    const/4 v0, 0x0

    return v0

    .line 647
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private getAchievementIconSize()I
    .locals 2

    .line 677
    invoke-virtual {p0}, Lmiui/vip/VipPortraitView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lmiui/vip/VipPortraitView;->mShowModel:I

    invoke-static {v0, v1}, Lmiui/vip/VipPortraitView;->getAchievementIconSize(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method private static getAchievementIconSize(Landroid/content/Context;I)I
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "model"    # I

    .line 681
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lmiui/vip/VipPortraitView;->BadgeIconSize:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public static getAchievementView(Landroid/content/Context;Ljava/util/List;)Landroid/view/View;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lmiui/vip/VipAchievement;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 413
    .local p1, "achievementList":Ljava/util/List;, "Ljava/util/List<Lmiui/vip/VipAchievement;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method private getBannerTypeName(J)Ljava/lang/String;
    .locals 2
    .param p1, "bannerId"    # J

    .line 685
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "banner"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized getPref()Lcom/miui/internal/vip/utils/VipDataPref;
    .locals 3

    monitor-enter p0

    .line 461
    :try_start_0
    iget-object v0, p0, Lmiui/vip/VipPortraitView;->mPref:Lcom/miui/internal/vip/utils/VipDataPref;

    if-nez v0, :cond_0

    .line 462
    new-instance v0, Lcom/miui/internal/vip/utils/VipDataPref;

    invoke-virtual {p0}, Lmiui/vip/VipPortraitView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "portrait_view"

    invoke-direct {v0, v1, v2}, Lcom/miui/internal/vip/utils/VipDataPref;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/vip/VipPortraitView;->mPref:Lcom/miui/internal/vip/utils/VipDataPref;

    .line 464
    :cond_0
    iget-object v0, p0, Lmiui/vip/VipPortraitView;->mPref:Lcom/miui/internal/vip/utils/VipDataPref;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 460
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lmiui/vip/VipPortraitView;
    throw v0
.end method

.method private initBanner()V
    .locals 1

    .line 530
    sget v0, Lcom/miui/system/internal/R$id;->vip_id_banner_group:I

    invoke-virtual {p0, v0}, Lmiui/vip/VipPortraitView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiui/vip/VipPortraitView;->mBannerGroup:Landroid/view/View;

    .line 531
    sget v0, Lcom/miui/system/internal/R$id;->vip_id_banner:I

    invoke-virtual {p0, v0}, Lmiui/vip/VipPortraitView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lmiui/vip/VipPortraitView;->mBanner:Landroid/widget/LinearLayout;

    .line 532
    return-void
.end method

.method private initView()V
    .locals 3

    .line 505
    const-string v0, "initView"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 506
    invoke-virtual {p0}, Lmiui/vip/VipPortraitView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lmiui/vip/VipPortraitView;->LayoutId:[I

    iget v2, p0, Lmiui/vip/VipPortraitView;->mShowModel:I

    aget v1, v1, v2

    invoke-static {v0, v1, p0}, Lmiui/vip/VipPortraitView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 508
    sget v0, Lcom/miui/system/internal/R$id;->vip_id_frame:I

    invoke-virtual {p0, v0}, Lmiui/vip/VipPortraitView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiui/vip/VipPortraitView;->mFrame:Landroid/view/View;

    .line 509
    iget-object v0, p0, Lmiui/vip/VipPortraitView;->mFrame:Landroid/view/View;

    iget-object v1, p0, Lmiui/vip/VipPortraitView;->mAvatarClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 510
    sget v0, Lcom/miui/system/internal/R$id;->vip_id_avatar:I

    invoke-virtual {p0, v0}, Lmiui/vip/VipPortraitView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lmiui/vip/VipPortraitView;->mAvatar:Landroid/widget/ImageView;

    .line 511
    sget v0, Lcom/miui/system/internal/R$id;->vip_id_title:I

    invoke-virtual {p0, v0}, Lmiui/vip/VipPortraitView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmiui/vip/VipPortraitView;->mTitle:Landroid/widget/TextView;

    .line 512
    iget-object v0, p0, Lmiui/vip/VipPortraitView;->mTitle:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 513
    sget v0, Lcom/miui/system/internal/R$id;->vip_id_name:I

    invoke-virtual {p0, v0}, Lmiui/vip/VipPortraitView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmiui/vip/VipPortraitView;->mName:Landroid/widget/TextView;

    .line 514
    sget v0, Lcom/miui/system/internal/R$id;->vip_id_user_id:I

    invoke-virtual {p0, v0}, Lmiui/vip/VipPortraitView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmiui/vip/VipPortraitView;->mIdView:Landroid/widget/TextView;

    .line 515
    sget v0, Lcom/miui/system/internal/R$id;->vip_id_badge:I

    invoke-virtual {p0, v0}, Lmiui/vip/VipPortraitView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lmiui/vip/VipPortraitView;->mBadge:Landroid/widget/ImageView;

    .line 516
    sget v0, Lcom/miui/system/internal/R$id;->vip_id_sign_group:I

    invoke-virtual {p0, v0}, Lmiui/vip/VipPortraitView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiui/vip/VipPortraitView;->mSignGroup:Landroid/view/View;

    .line 517
    iget-object v0, p0, Lmiui/vip/VipPortraitView;->mSignGroup:Landroid/view/View;

    iget-object v1, p0, Lmiui/vip/VipPortraitView;->mSignClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 518
    sget v0, Lcom/miui/system/internal/R$id;->vip_id_sign:I

    invoke-virtual {p0, v0}, Lmiui/vip/VipPortraitView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmiui/vip/VipPortraitView;->mSign:Landroid/widget/TextView;

    .line 519
    sget v0, Lcom/miui/system/internal/R$id;->vip_id_achievements:I

    invoke-virtual {p0, v0}, Lmiui/vip/VipPortraitView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lmiui/vip/VipPortraitView;->mAchievements:Landroid/widget/LinearLayout;

    .line 520
    sget v0, Lcom/miui/system/internal/R$id;->vip_id_custom_action:I

    invoke-virtual {p0, v0}, Lmiui/vip/VipPortraitView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lmiui/vip/VipPortraitView;->mAction:Landroid/widget/ImageView;

    .line 522
    sget v0, Lcom/miui/system/internal/R$id;->vip_id_arrow:I

    invoke-virtual {p0, v0}, Lmiui/vip/VipPortraitView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiui/vip/VipPortraitView;->mArrow:Landroid/view/View;

    .line 523
    iget v0, p0, Lmiui/vip/VipPortraitView;->mArrowStyle:I

    invoke-virtual {p0, v0}, Lmiui/vip/VipPortraitView;->setArrowStyle(I)V

    .line 525
    invoke-virtual {p0}, Lmiui/vip/VipPortraitView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/system/internal/R$drawable;->vip_icon_default_achievement:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lmiui/vip/VipPortraitView;->mLockIcon:Landroid/graphics/drawable/Drawable;

    .line 526
    invoke-direct {p0}, Lmiui/vip/VipPortraitView;->initBanner()V

    .line 527
    return-void
.end method

.method private initViewAndSetData()V
    .locals 2

    .line 450
    iget-object v0, p0, Lmiui/vip/VipPortraitView;->mFrame:Landroid/view/View;

    if-nez v0, :cond_0

    .line 451
    invoke-virtual {p0}, Lmiui/vip/VipPortraitView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/system/internal/R$dimen;->vip_margin_arrow_right:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lmiui/vip/VipPortraitView;->mArrowListMargin:I

    .line 452
    invoke-virtual {p0}, Lmiui/vip/VipPortraitView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/system/internal/R$dimen;->vip_margin_frame_left:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lmiui/vip/VipPortraitView;->mArrowCardMargin:I

    .line 454
    invoke-direct {p0}, Lmiui/vip/VipPortraitView;->initView()V

    .line 455
    invoke-direct {p0}, Lmiui/vip/VipPortraitView;->setAccountData()V

    .line 456
    invoke-direct {p0}, Lmiui/vip/VipPortraitView;->loadBannerData()V

    .line 458
    :cond_0
    return-void
.end method

.method private static isSameList(Ljava/util/List;Ljava/util/List;Ljava/util/Comparator;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/Comparator<",
            "TT;>;)Z"
        }
    .end annotation

    .line 251
    .local p0, "left":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "right":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p2, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_1

    .line 252
    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    .line 253
    :cond_1
    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_4

    .line 254
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 255
    .local v2, "count":I
    move v3, v1

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_3

    .line 256
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p2, v4, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-eqz v4, :cond_2

    .line 257
    return v1

    .line 255
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 260
    .end local v3    # "i":I
    :cond_3
    return v0

    .line 262
    .end local v2    # "count":I
    :cond_4
    return v1
.end method

.method private loadAvatarFile(Landroid/accounts/Account;Landroid/accounts/AccountManager;)V
    .locals 6
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "am"    # Landroid/accounts/AccountManager;

    .line 752
    const-string v0, "loadAvatarFile, account = %s"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v2}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 753
    iget-object v0, p0, Lmiui/vip/VipPortraitView;->mAvatar:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 754
    if-nez p1, :cond_0

    .line 755
    iget-object v0, p0, Lmiui/vip/VipPortraitView;->mAvatar:Landroid/widget/ImageView;

    sget v1, Lcom/miui/system/internal/R$drawable;->vip_default_avatar:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 757
    :cond_0
    const-string v0, "acc_avatar_url"

    invoke-virtual {p2, p1, v0}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 758
    .local v0, "avatarUrl":Ljava/lang/String;
    const-string v2, "acc_avatar_file_name"

    invoke-virtual {p2, p1, v2}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 759
    .local v2, "fileName":Ljava/lang/String;
    const-string v4, "loadAvatarFile, avatarUrl = %s, fileName = %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v3

    aput-object v2, v5, v1

    invoke-static {v4, v5}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 761
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 762
    iget-object v3, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v4, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v4}, Lcom/miui/internal/vip/utils/Utils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 763
    .local v3, "dirName":Ljava/lang/String;
    invoke-virtual {p0}, Lmiui/vip/VipPortraitView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lmiui/vip/VipPortraitView;->mAvatar:Landroid/widget/ImageView;

    invoke-static {v4, v0, v3, v5, v1}, Lcom/miui/internal/vip/utils/ImageDownloader;->loadImage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;Z)V

    .line 764
    .end local v3    # "dirName":Ljava/lang/String;
    goto :goto_0

    .line 765
    :cond_1
    iget-object v1, p0, Lmiui/vip/VipPortraitView;->mAvatar:Landroid/widget/ImageView;

    sget v3, Lcom/miui/system/internal/R$drawable;->vip_default_avatar:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 769
    .end local v0    # "avatarUrl":Ljava/lang/String;
    .end local v2    # "fileName":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void
.end method

.method private loadBannerData()V
    .locals 6

    .line 475
    iget-wide v0, p0, Lmiui/vip/VipPortraitView;->mUserId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 476
    invoke-direct {p0}, Lmiui/vip/VipPortraitView;->getPref()Lcom/miui/internal/vip/utils/VipDataPref;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "banner"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lmiui/vip/VipPortraitView;->mUserId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/internal/vip/utils/VipDataPref;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 477
    .local v0, "bannerJson":Ljava/lang/String;
    const-class v1, Lmiui/vip/VipBanner;

    invoke-static {v0, v1}, Lcom/miui/internal/vip/utils/JsonParser;->parseJsonArrayAsList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 478
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lmiui/vip/VipBanner;>;"
    const-string v2, "VipPortraitView.loadBannerData, list = %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 479
    invoke-static {v1}, Lcom/miui/internal/vip/utils/Utils;->hasData(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 480
    invoke-direct {p0, v1}, Lmiui/vip/VipPortraitView;->setBanners(Ljava/util/List;)V

    .line 483
    .end local v0    # "bannerJson":Ljava/lang/String;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lmiui/vip/VipBanner;>;"
    :cond_0
    return-void
.end method

.method private loadData()V
    .locals 2

    .line 495
    const-string v0, "loadData"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 496
    invoke-direct {p0}, Lmiui/vip/VipPortraitView;->setAccountData()V

    .line 497
    invoke-direct {p0}, Lmiui/vip/VipPortraitView;->loadBannerData()V

    .line 498
    iget-object v0, p0, Lmiui/vip/VipPortraitView;->mUserInfo:Lmiui/vip/VipUserInfo;

    invoke-direct {p0, v0}, Lmiui/vip/VipPortraitView;->setVipLevel(Lmiui/vip/VipUserInfo;)V

    .line 499
    iget-object v0, p0, Lmiui/vip/VipPortraitView;->mUserSign:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lmiui/vip/VipPortraitView;->setSignature(Ljava/lang/String;)V

    .line 500
    iget-object v0, p0, Lmiui/vip/VipPortraitView;->mActionIcon:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lmiui/vip/VipPortraitView;->mActionClick:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0, v1}, Lmiui/vip/VipPortraitView;->setCustomButton(Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)V

    .line 501
    iget-object v0, p0, Lmiui/vip/VipPortraitView;->mAchievementList:Ljava/util/List;

    invoke-direct {p0, v0}, Lmiui/vip/VipPortraitView;->setAchievements(Ljava/util/List;)V

    .line 502
    return-void
.end method

.method private saveBannerData(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmiui/vip/VipBanner;",
            ">;)V"
        }
    .end annotation

    .line 468
    .local p1, "bannerList":Ljava/util/List;, "Ljava/util/List<Lmiui/vip/VipBanner;>;"
    invoke-static {p1}, Lcom/miui/internal/vip/utils/JsonParser;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 469
    .local v0, "bannerJson":Ljava/lang/String;
    const-string v1, "VipPortraitView.saveBannerData, bannerList = %s, bannerJson = %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 471
    invoke-direct {p0}, Lmiui/vip/VipPortraitView;->getPref()Lcom/miui/internal/vip/utils/VipDataPref;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "banner"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lmiui/vip/VipPortraitView;->mUserId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/miui/internal/vip/utils/VipDataPref;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    return-void
.end method

.method private setAccountData()V
    .locals 11

    .line 559
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 560
    .local v0, "time":J
    iget-object v2, p0, Lmiui/vip/VipPortraitView;->mExtAccount:Landroid/accounts/Account;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmiui/vip/VipPortraitView;->mExtAccount:Landroid/accounts/Account;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lmiui/vip/VipPortraitView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lmiui/accounts/ExtraAccountManager;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v2

    .line 561
    .local v2, "account":Landroid/accounts/Account;
    :goto_0
    const-string v3, "setAccountData, account = %s"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-static {v3, v5}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 562
    iget-object v3, p0, Lmiui/vip/VipPortraitView;->mName:Landroid/widget/TextView;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lmiui/vip/VipPortraitView;->mIdView:Landroid/widget/TextView;

    if-eqz v3, :cond_8

    .line 563
    invoke-virtual {p0}, Lmiui/vip/VipPortraitView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    .line 564
    .local v3, "am":Landroid/accounts/AccountManager;
    if-eqz v2, :cond_7

    .line 565
    iget-object v5, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    goto :goto_1

    :cond_1
    const-wide/16 v7, 0x0

    :goto_1
    iput-wide v7, p0, Lmiui/vip/VipPortraitView;->mUserId:J

    .line 566
    iget-object v5, p0, Lmiui/vip/VipPortraitView;->mFrame:Landroid/view/View;

    iget-object v7, p0, Lmiui/vip/VipPortraitView;->mAvatarClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 567
    iget-object v5, p0, Lmiui/vip/VipPortraitView;->mBackgroundClick:Landroid/view/View$OnClickListener;

    invoke-super {p0, v5}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 568
    iget-object v5, p0, Lmiui/vip/VipPortraitView;->mIdView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 569
    .local v5, "oldId":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 570
    :cond_2
    const-string v7, "setAccountData, data is changed"

    new-array v8, v6, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 571
    iget-object v7, p0, Lmiui/vip/VipPortraitView;->mIdView:Landroid/widget/TextView;

    iget-object v8, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 573
    :cond_3
    iget-object v7, p0, Lmiui/vip/VipPortraitView;->mName:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 574
    .local v7, "name":Ljava/lang/String;
    const-string v8, "acc_user_name"

    invoke-virtual {v3, v2, v8}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 575
    .local v8, "userName":Ljava/lang/String;
    const-string v9, "setAccountData, userName = %s"

    new-array v10, v4, [Ljava/lang/Object;

    aput-object v8, v10, v6

    invoke-static {v9, v10}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 576
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 577
    :cond_4
    iget-object v9, p0, Lmiui/vip/VipPortraitView;->mName:Landroid/widget/TextView;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    goto :goto_2

    :cond_5
    move-object v10, v8

    :goto_2
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 579
    .end local v5    # "oldId":Ljava/lang/String;
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "userName":Ljava/lang/String;
    :cond_6
    goto :goto_3

    .line 580
    :cond_7
    const-string v5, "setAccountData, user isn\'t signed in"

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v5, v7}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 581
    iget-object v5, p0, Lmiui/vip/VipPortraitView;->mName:Landroid/widget/TextView;

    sget v7, Lcom/miui/system/internal/R$string;->vip_not_login:I

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    .line 582
    iget-object v5, p0, Lmiui/vip/VipPortraitView;->mIdView:Landroid/widget/TextView;

    sget v7, Lcom/miui/system/internal/R$string;->vip_login:I

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    .line 583
    iget-object v5, p0, Lmiui/vip/VipPortraitView;->mFrame:Landroid/view/View;

    iget-object v7, p0, Lmiui/vip/VipPortraitView;->mAccountWelcomeClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 584
    iget-object v5, p0, Lmiui/vip/VipPortraitView;->mAccountWelcomeClick:Landroid/view/View$OnClickListener;

    invoke-super {p0, v5}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 585
    invoke-direct {p0}, Lmiui/vip/VipPortraitView;->clearVipInfo()V

    .line 587
    :goto_3
    invoke-direct {p0, v2, v3}, Lmiui/vip/VipPortraitView;->loadAvatarFile(Landroid/accounts/Account;Landroid/accounts/AccountManager;)V

    .line 589
    .end local v3    # "am":Landroid/accounts/AccountManager;
    :cond_8
    const-string v3, "setAccountData end, elapsed %d"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 590
    return-void
.end method

.method private setAchievements(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmiui/vip/VipAchievement;",
            ">;)V"
        }
    .end annotation

    .line 620
    .local p1, "infoList":Ljava/util/List;, "Ljava/util/List<Lmiui/vip/VipAchievement;>;"
    const-string v0, "setAchievements"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 621
    iget-object v0, p0, Lmiui/vip/VipPortraitView;->mAchievements:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    .line 622
    iget-object v0, p0, Lmiui/vip/VipPortraitView;->mAchievements:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 623
    .local v0, "viewCount":I
    invoke-static {p1}, Lcom/miui/internal/vip/utils/Utils;->hasData(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 624
    if-lez v0, :cond_0

    .line 625
    const-string v2, "setAchievements, no achievement, remove all views"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 626
    iget-object v2, p0, Lmiui/vip/VipPortraitView;->mAchievements:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 628
    :cond_0
    invoke-direct {p0, v1}, Lmiui/vip/VipPortraitView;->showAchievement(Z)V

    goto :goto_0

    .line 630
    :cond_1
    iget-object v2, p0, Lmiui/vip/VipPortraitView;->mAchievementList:Ljava/util/List;

    iget-object v3, p0, Lmiui/vip/VipPortraitView;->mCmpVipAchievement:Ljava/util/Comparator;

    invoke-static {v2, p1, v3}, Lmiui/vip/VipPortraitView;->isSameList(Ljava/util/List;Ljava/util/List;Ljava/util/Comparator;)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    .line 631
    .local v2, "changed":Z
    if-nez v2, :cond_2

    if-nez v0, :cond_3

    .line 632
    :cond_2
    const-string v4, "setAchievements, set achievement list"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4, v1}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 633
    iget-object v1, p0, Lmiui/vip/VipPortraitView;->mAchievements:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 634
    invoke-direct {p0, v3}, Lmiui/vip/VipPortraitView;->showAchievement(Z)V

    .line 635
    iget-object v1, p0, Lmiui/vip/VipPortraitView;->mAchievements:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lmiui/vip/VipPortraitView;->getAchievementIconSize()I

    move-result v3

    invoke-direct {p0, v1, p1, v3}, Lmiui/vip/VipPortraitView;->addAchievementIconToLinearLayout(Landroid/widget/LinearLayout;Ljava/util/List;I)V

    .line 636
    iget-object v1, p0, Lmiui/vip/VipPortraitView;->mAchievements:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 640
    .end local v0    # "viewCount":I
    .end local v2    # "changed":Z
    :cond_3
    :goto_0
    iput-object p1, p0, Lmiui/vip/VipPortraitView;->mAchievementList:Ljava/util/List;

    .line 641
    return-void
.end method

.method private setBannerView(Ljava/util/List;I)V
    .locals 6
    .param p2, "viewCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmiui/vip/VipBanner;",
            ">;I)V"
        }
    .end annotation

    .line 705
    .local p1, "bannerList":Ljava/util/List;, "Ljava/util/List<Lmiui/vip/VipBanner;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 706
    .local v0, "count":I
    const/4 v1, 0x0

    if-le v0, p2, :cond_0

    .line 707
    move v2, v1

    .local v2, "i":I
    :goto_0
    sub-int v3, v0, p2

    if-ge v2, v3, :cond_1

    .line 708
    invoke-virtual {p0}, Lmiui/vip/VipPortraitView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/miui/system/internal/R$layout;->vip_banner:I

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lmiui/vip/VipPortraitView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 709
    .local v3, "bannerView":Landroid/view/View;
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 711
    .local v4, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 712
    iget-object v5, p0, Lmiui/vip/VipPortraitView;->mBanner:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 707
    .end local v3    # "bannerView":Landroid/view/View;
    .end local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 714
    .end local v2    # "i":I
    :cond_0
    if-le p2, v0, :cond_1

    .line 715
    move v2, v1

    .restart local v2    # "i":I
    :goto_1
    sub-int v3, p2, v0

    if-ge v2, v3, :cond_1

    .line 716
    iget-object v3, p0, Lmiui/vip/VipPortraitView;->mBanner:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 715
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 719
    .end local v2    # "i":I
    :cond_1
    nop

    .local v1, "i":I
    :goto_2
    if-ge v1, v0, :cond_2

    .line 720
    iget-object v2, p0, Lmiui/vip/VipPortraitView;->mBanner:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/vip/VipBanner;

    invoke-direct {p0, v2, v3}, Lmiui/vip/VipPortraitView;->setBannerViewData(Landroid/view/View;Lmiui/vip/VipBanner;)V

    .line 719
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 722
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method private setBannerViewData(Landroid/view/View;Lmiui/vip/VipBanner;)V
    .locals 8
    .param p1, "bannerView"    # Landroid/view/View;
    .param p2, "banner"    # Lmiui/vip/VipBanner;

    .line 725
    sget v0, Lcom/miui/system/internal/R$id;->vip_id_banner_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 726
    .local v0, "bannerIcon":Landroid/widget/ImageView;
    iget-object v1, p2, Lmiui/vip/VipBanner;->icon:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p2, Lmiui/vip/VipBanner;->icon:Ljava/lang/String;

    invoke-static {v1}, Lcom/miui/internal/vip/utils/Utils;->isStringUri(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 727
    invoke-virtual {p0}, Lmiui/vip/VipPortraitView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p2, Lmiui/vip/VipBanner;->icon:Ljava/lang/String;

    iget-wide v3, p2, Lmiui/vip/VipBanner;->id:J

    invoke-direct {p0, v3, v4}, Lmiui/vip/VipPortraitView;->getBannerTypeName(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/miui/internal/vip/utils/ImageDownloader;->loadImage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_0

    .line 729
    :cond_0
    sget v1, Lcom/miui/system/internal/R$drawable;->vip_icon_chalice:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 731
    :goto_0
    sget v1, Lcom/miui/system/internal/R$id;->vip_id_banner_name:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 732
    .local v1, "nameView":Landroid/widget/TextView;
    iget-object v2, p2, Lmiui/vip/VipBanner;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 733
    sget v2, Lcom/miui/system/internal/R$id;->vip_id_banner_info:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 734
    .local v2, "infoView":Landroid/widget/TextView;
    iget-object v3, p2, Lmiui/vip/VipBanner;->info:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 735
    iget-object v3, p2, Lmiui/vip/VipBanner;->info:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 737
    :cond_1
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 739
    :goto_1
    const-string v3, "setBannerViewData, banner = %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-static {v3, v4}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 740
    iget-object v3, p2, Lmiui/vip/VipBanner;->action:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 741
    new-instance v3, Lmiui/vip/VipPortraitView$8;

    invoke-direct {v3, p0, p2}, Lmiui/vip/VipPortraitView$8;-><init>(Lmiui/vip/VipPortraitView;Lmiui/vip/VipBanner;)V

    .line 747
    .local v3, "bannerClick":Landroid/view/View$OnClickListener;
    new-instance v4, Lmiui/vip/VipPortraitView$ClickListenerWrapper;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "portrait_banner_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p2, Lmiui/vip/VipBanner;->id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lmiui/vip/VipPortraitView$ClickListenerWrapper;-><init>(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 749
    .end local v3    # "bannerClick":Landroid/view/View$OnClickListener;
    :cond_2
    return-void
.end method

.method private setBanners(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmiui/vip/VipBanner;",
            ">;)V"
        }
    .end annotation

    .line 689
    .local p1, "bannerList":Ljava/util/List;, "Ljava/util/List<Lmiui/vip/VipBanner;>;"
    iget-object v0, p0, Lmiui/vip/VipPortraitView;->mBanner:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    .line 690
    iget-boolean v0, p0, Lmiui/vip/VipPortraitView;->mShowBanner:Z

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/miui/internal/vip/utils/Utils;->hasData(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 693
    :cond_0
    iget-object v0, p0, Lmiui/vip/VipPortraitView;->mBannerGroup:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 694
    iget-object v0, p0, Lmiui/vip/VipPortraitView;->mBanner:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 695
    .local v0, "viewCount":I
    if-eqz v0, :cond_1

    iget-object v1, p0, Lmiui/vip/VipPortraitView;->mBannerList:Ljava/util/List;

    iget-object v2, p0, Lmiui/vip/VipPortraitView;->mCmpVipBanner:Ljava/util/Comparator;

    invoke-static {v1, p1, v2}, Lmiui/vip/VipPortraitView;->isSameList(Ljava/util/List;Ljava/util/List;Ljava/util/Comparator;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 696
    :cond_1
    invoke-direct {p0, p1, v0}, Lmiui/vip/VipPortraitView;->setBannerView(Ljava/util/List;I)V

    .line 698
    :cond_2
    iget-object v1, p0, Lmiui/vip/VipPortraitView;->mBanner:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->requestLayout()V

    .end local v0    # "viewCount":I
    goto :goto_1

    .line 691
    :cond_3
    :goto_0
    iget-object v0, p0, Lmiui/vip/VipPortraitView;->mBannerGroup:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 701
    :cond_4
    :goto_1
    iput-object p1, p0, Lmiui/vip/VipPortraitView;->mBannerList:Ljava/util/List;

    .line 702
    return-void
.end method

.method private setVipLevel(Lmiui/vip/VipUserInfo;)V
    .locals 5
    .param p1, "user"    # Lmiui/vip/VipUserInfo;

    .line 542
    const-string v0, "setVipLevel"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 543
    iget-object v0, p0, Lmiui/vip/VipPortraitView;->mBackgroundClick:Landroid/view/View$OnClickListener;

    invoke-super {p0, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 544
    iget-object v0, p0, Lmiui/vip/VipPortraitView;->mFrame:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 545
    if-nez p1, :cond_0

    iget-object v0, p0, Lmiui/vip/VipPortraitView;->mUserInfo:Lmiui/vip/VipUserInfo;

    if-eqz v0, :cond_0

    .line 546
    const-string v0, "setVipLevel, hide views of vip frame and level"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 547
    iget-object v0, p0, Lmiui/vip/VipPortraitView;->mBadge:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 548
    :cond_0
    if-eqz p1, :cond_2

    iget v0, p1, Lmiui/vip/VipUserInfo;->level:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lmiui/vip/VipPortraitView;->mUserInfo:Lmiui/vip/VipUserInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/vip/VipPortraitView;->mUserInfo:Lmiui/vip/VipUserInfo;

    iget v0, v0, Lmiui/vip/VipUserInfo;->level:I

    iget v2, p1, Lmiui/vip/VipUserInfo;->level:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lmiui/vip/VipPortraitView;->mBadge:Landroid/widget/ImageView;

    .line 549
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_2

    .line 550
    :cond_1
    const-string v0, "setVipLevel, level = %d"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget v4, p1, Lmiui/vip/VipUserInfo;->level:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 551
    invoke-virtual {p0}, Lmiui/vip/VipPortraitView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "https://rs.vip.miui.com/h5/level_icons/icon_level_%d.webp"

    new-array v2, v2, [Ljava/lang/Object;

    iget v4, p1, Lmiui/vip/VipUserInfo;->level:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "level_icon"

    iget-object v3, p0, Lmiui/vip/VipPortraitView;->mBadge:Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Lcom/miui/internal/vip/utils/ImageDownloader;->loadImage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 555
    :cond_2
    :goto_0
    iput-object p1, p0, Lmiui/vip/VipPortraitView;->mUserInfo:Lmiui/vip/VipUserInfo;

    .line 556
    return-void
.end method

.method private showAchievement(Z)V
    .locals 2
    .param p1, "show"    # Z

    .line 593
    iget-object v0, p0, Lmiui/vip/VipPortraitView;->mAchievements:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 594
    return-void
.end method


# virtual methods
.method public connect()V
    .locals 2

    .line 430
    invoke-static {}, Lmiui/vip/VipService;->instance()Lmiui/vip/VipService;

    move-result-object v0

    iget-object v1, p0, Lmiui/vip/VipPortraitView;->mListener:Lcom/miui/internal/vip/VipInternalCallback;

    invoke-virtual {v0, v1}, Lmiui/vip/VipService;->connect(Lmiui/vip/QueryCallback;)V

    .line 431
    return-void
.end method

.method public disconnect()V
    .locals 2

    .line 437
    invoke-static {}, Lmiui/vip/VipService;->instance()Lmiui/vip/VipService;

    move-result-object v0

    iget-object v1, p0, Lmiui/vip/VipPortraitView;->mListener:Lcom/miui/internal/vip/VipInternalCallback;

    invoke-virtual {v0, v1}, Lmiui/vip/VipService;->disconnect(Lmiui/vip/QueryCallback;)V

    .line 438
    return-void
.end method

.method public isShowCompactModel()Z
    .locals 1

    .line 323
    iget v0, p0, Lmiui/vip/VipPortraitView;->mShowModel:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 285
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 286
    const-string v0, "VipPortraitView.onAttachedToWindow"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 287
    invoke-virtual {p0}, Lmiui/vip/VipPortraitView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lmiui/vip/VipPortraitView;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Lcom/miui/internal/vip/utils/Utils;->ACCOUNT_CHANGE_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 288
    invoke-virtual {p0}, Lmiui/vip/VipPortraitView;->connect()V

    .line 289
    invoke-direct {p0}, Lmiui/vip/VipPortraitView;->initViewAndSetData()V

    .line 290
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 294
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 295
    const-string v0, "VipPortraitView.onDetachedToWindow"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 296
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/vip/VipPortraitView;->mExtAccount:Landroid/accounts/Account;

    .line 297
    invoke-static {}, Lcom/miui/internal/vip/utils/ImageDownloader;->stop()V

    .line 298
    invoke-virtual {p0}, Lmiui/vip/VipPortraitView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lmiui/vip/VipPortraitView;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 299
    invoke-virtual {p0}, Lmiui/vip/VipPortraitView;->disconnect()V

    .line 300
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 304
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 305
    invoke-direct {p0}, Lmiui/vip/VipPortraitView;->initViewAndSetData()V

    .line 306
    return-void
.end method

.method public setArrowStyle(I)V
    .locals 2
    .param p1, "style"    # I

    .line 331
    iget-object v0, p0, Lmiui/vip/VipPortraitView;->mArrow:Landroid/view/View;

    if-eqz v0, :cond_1

    iget v0, p0, Lmiui/vip/VipPortraitView;->mShowModel:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 332
    iget-object v0, p0, Lmiui/vip/VipPortraitView;->mArrow:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 333
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iget v1, p0, Lmiui/vip/VipPortraitView;->ARROW_STYLE_CARD:I

    if-ne p1, v1, :cond_0

    iget v1, p0, Lmiui/vip/VipPortraitView;->mArrowCardMargin:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lmiui/vip/VipPortraitView;->mArrowListMargin:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    .line 335
    .end local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    iput p1, p0, Lmiui/vip/VipPortraitView;->mArrowStyle:I

    .line 336
    return-void
.end method

.method public setAvatarViewClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .line 344
    if-eqz p1, :cond_0

    new-instance v0, Lmiui/vip/VipPortraitView$ClickListenerWrapper;

    const-string v1, "portrait_avatar"

    invoke-direct {v0, v1, p1}, Lmiui/vip/VipPortraitView$ClickListenerWrapper;-><init>(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 345
    :cond_0
    iget-object v0, p0, Lmiui/vip/VipPortraitView;->mUserDetailClick:Landroid/view/View$OnClickListener;

    :goto_0
    iput-object v0, p0, Lmiui/vip/VipPortraitView;->mAvatarClick:Landroid/view/View$OnClickListener;

    .line 346
    iget-object v0, p0, Lmiui/vip/VipPortraitView;->mFrame:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 347
    iget-object v0, p0, Lmiui/vip/VipPortraitView;->mFrame:Landroid/view/View;

    iget-object v1, p0, Lmiui/vip/VipPortraitView;->mAvatarClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 349
    :cond_1
    return-void
.end method

.method public setCustomButton(Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "onClick"    # Landroid/view/View$OnClickListener;

    .line 376
    iput-object p1, p0, Lmiui/vip/VipPortraitView;->mActionIcon:Landroid/graphics/drawable/Drawable;

    .line 377
    new-instance v0, Lmiui/vip/VipPortraitView$ClickListenerWrapper;

    const-string v1, "portrait_custom_button"

    invoke-direct {v0, v1, p2}, Lmiui/vip/VipPortraitView$ClickListenerWrapper;-><init>(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lmiui/vip/VipPortraitView;->mActionClick:Landroid/view/View$OnClickListener;

    .line 378
    iget-object v0, p0, Lmiui/vip/VipPortraitView;->mAction:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lmiui/vip/VipPortraitView;->mAction:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 380
    iget-object v0, p0, Lmiui/vip/VipPortraitView;->mAction:Landroid/widget/ImageView;

    iget-object v1, p0, Lmiui/vip/VipPortraitView;->mActionClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 382
    :cond_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .line 365
    if-eqz p1, :cond_0

    new-instance v0, Lmiui/vip/VipPortraitView$ClickListenerWrapper;

    const-string v1, "portrait_background"

    invoke-direct {v0, v1, p1}, Lmiui/vip/VipPortraitView$ClickListenerWrapper;-><init>(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 366
    :cond_0
    iget-boolean v0, p0, Lmiui/vip/VipPortraitView;->mServiceAvailable:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/vip/VipPortraitView;->mVipLevelListClick:Landroid/view/View$OnClickListener;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lmiui/vip/VipPortraitView;->mBackgroundClick:Landroid/view/View$OnClickListener;

    .line 367
    iget-object v0, p0, Lmiui/vip/VipPortraitView;->mBackgroundClick:Landroid/view/View$OnClickListener;

    invoke-super {p0, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 368
    return-void
.end method

.method public setSignature(Ljava/lang/String;)V
    .locals 3
    .param p1, "signature"    # Ljava/lang/String;

    .line 390
    iget-object v0, p0, Lmiui/vip/VipPortraitView;->mSignGroup:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 391
    iget-object v0, p0, Lmiui/vip/VipPortraitView;->mSign:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 392
    .local v0, "sign":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 393
    iget-object v1, p0, Lmiui/vip/VipPortraitView;->mSignGroup:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 394
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 395
    iget-object v1, p0, Lmiui/vip/VipPortraitView;->mSign:Landroid/widget/TextView;

    iget-object v2, p0, Lmiui/vip/VipPortraitView;->mUserSign:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 398
    :cond_0
    iget-object v1, p0, Lmiui/vip/VipPortraitView;->mSignGroup:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 401
    .end local v0    # "sign":Ljava/lang/String;
    :cond_1
    :goto_0
    iput-object p1, p0, Lmiui/vip/VipPortraitView;->mUserSign:Ljava/lang/String;

    .line 402
    return-void
.end method

.method public setSignatureViewClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .line 357
    new-instance v0, Lmiui/vip/VipPortraitView$ClickListenerWrapper;

    const-string v1, "portrait_sign"

    invoke-direct {v0, v1, p1}, Lmiui/vip/VipPortraitView$ClickListenerWrapper;-><init>(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lmiui/vip/VipPortraitView;->mSignClick:Landroid/view/View$OnClickListener;

    .line 358
    iget-object v0, p0, Lmiui/vip/VipPortraitView;->mSignGroup:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lmiui/vip/VipPortraitView;->mSignGroup:Landroid/view/View;

    iget-object v1, p0, Lmiui/vip/VipPortraitView;->mSignClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 361
    :cond_0
    return-void
.end method

.method public setXiaomiAccount(Landroid/accounts/Account;)V
    .locals 0
    .param p1, "account"    # Landroid/accounts/Account;

    .line 422
    iput-object p1, p0, Lmiui/vip/VipPortraitView;->mExtAccount:Landroid/accounts/Account;

    .line 423
    invoke-direct {p0}, Lmiui/vip/VipPortraitView;->setAccountData()V

    .line 424
    return-void
.end method

.method public showBanner(Z)V
    .locals 1
    .param p1, "show"    # Z

    .line 314
    iput-boolean p1, p0, Lmiui/vip/VipPortraitView;->mShowBanner:Z

    .line 315
    iget-object v0, p0, Lmiui/vip/VipPortraitView;->mBannerList:Ljava/util/List;

    invoke-direct {p0, v0}, Lmiui/vip/VipPortraitView;->setBanners(Ljava/util/List;)V

    .line 316
    return-void
.end method

.method public showBottomDivider(Z)V
    .locals 2
    .param p1, "show"    # Z

    .line 446
    sget v0, Lcom/miui/system/internal/R$id;->vip_bottom_divider:I

    invoke-virtual {p0, v0}, Lmiui/vip/VipPortraitView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 447
    return-void
.end method
