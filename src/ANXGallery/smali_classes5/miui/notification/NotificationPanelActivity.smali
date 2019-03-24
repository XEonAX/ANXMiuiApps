.class public abstract Lmiui/notification/NotificationPanelActivity;
.super Landroid/app/Activity;
.source "NotificationPanelActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/notification/NotificationPanelActivity$NotificationClicker;,
        Lmiui/notification/NotificationPanelActivity$NotificationActionClicker;,
        Lmiui/notification/NotificationPanelActivity$LoadDataTask;
    }
.end annotation


# static fields
.field private static final STATUS_BAR_TRANSIENT:I = 0x4000000

.field public static final TAG:Ljava/lang/String;


# instance fields
.field mAppInfo:Landroid/widget/TextView;

.field mAppTitle:Ljava/lang/String;

.field mClearButton:Landroid/widget/ImageView;

.field private mClearButtonListener:Landroid/view/View$OnClickListener;

.field mClosing:Z

.field mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiui/notification/NotificationItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mHandler:Landroid/os/Handler;

.field protected mInflater:Landroid/view/LayoutInflater;

.field mNoNotificationTips:Landroid/widget/TextView;

.field mNotificationHeight:I

.field mNotificationList:Lmiui/notification/NotificationRowLayout;

.field mOpenAnimation:Ljava/lang/Runnable;

.field mPostCollapseCleanup:Ljava/lang/Runnable;

.field mScrollView:Landroid/widget/ScrollView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    const-class v0, Lmiui/notification/NotificationPanelActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/notification/NotificationPanelActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 239
    new-instance v0, Lmiui/notification/NotificationPanelActivity$2;

    invoke-direct {v0, p0}, Lmiui/notification/NotificationPanelActivity$2;-><init>(Lmiui/notification/NotificationPanelActivity;)V

    iput-object v0, p0, Lmiui/notification/NotificationPanelActivity;->mClearButtonListener:Landroid/view/View$OnClickListener;

    .line 245
    new-instance v0, Lmiui/notification/NotificationPanelActivity$3;

    invoke-direct {v0, p0}, Lmiui/notification/NotificationPanelActivity$3;-><init>(Lmiui/notification/NotificationPanelActivity;)V

    iput-object v0, p0, Lmiui/notification/NotificationPanelActivity;->mOpenAnimation:Ljava/lang/Runnable;

    .line 322
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/notification/NotificationPanelActivity;->mPostCollapseCleanup:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lmiui/notification/NotificationPanelActivity;Lmiui/notification/NotificationItem;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lmiui/notification/NotificationPanelActivity;
    .param p1, "x1"    # Lmiui/notification/NotificationItem;

    .line 30
    invoke-direct {p0, p1}, Lmiui/notification/NotificationPanelActivity;->inflateNotificationView(Lmiui/notification/NotificationItem;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lmiui/notification/NotificationPanelActivity;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lmiui/notification/NotificationPanelActivity;
    .param p1, "x1"    # Landroid/view/View;

    .line 30
    invoke-direct {p0, p1}, Lmiui/notification/NotificationPanelActivity;->removeNotificationView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$200(Lmiui/notification/NotificationPanelActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lmiui/notification/NotificationPanelActivity;
    .param p1, "x1"    # Z

    .line 30
    invoke-direct {p0, p1}, Lmiui/notification/NotificationPanelActivity;->startClearButtonAnimation(Z)V

    return-void
.end method

.method static synthetic access$300(Lmiui/notification/NotificationPanelActivity;)V
    .locals 0
    .param p0, "x0"    # Lmiui/notification/NotificationPanelActivity;

    .line 30
    invoke-direct {p0}, Lmiui/notification/NotificationPanelActivity;->closeAnimation()V

    return-void
.end method

.method private closeAnimation()V
    .locals 9

    .line 275
    iget-boolean v0, p0, Lmiui/notification/NotificationPanelActivity;->mClosing:Z

    if-nez v0, :cond_0

    .line 276
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/notification/NotificationPanelActivity;->mClosing:Z

    .line 277
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 278
    .local v1, "set":Landroid/animation/AnimatorSet;
    invoke-virtual {p0}, Lmiui/notification/NotificationPanelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x10e0000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 279
    const/4 v2, 0x3

    new-array v2, v2, [Landroid/animation/Animator;

    iget-object v3, p0, Lmiui/notification/NotificationPanelActivity;->mScrollView:Landroid/widget/ScrollView;

    const-string v4, "scaleY"

    const/4 v5, 0x2

    new-array v6, v5, [F

    fill-array-data v6, :array_0

    .line 280
    invoke-static {v3, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lmiui/notification/NotificationPanelActivity;->mAppInfo:Landroid/widget/TextView;

    const-string v6, "translationY"

    new-array v7, v0, [F

    iget-object v8, p0, Lmiui/notification/NotificationPanelActivity;->mScrollView:Landroid/widget/ScrollView;

    .line 281
    invoke-virtual {v8}, Landroid/widget/ScrollView;->getHeight()I

    move-result v8

    div-int/2addr v8, v5

    int-to-float v8, v8

    aput v8, v7, v4

    invoke-static {v3, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v0

    iget-object v3, p0, Lmiui/notification/NotificationPanelActivity;->mClearButton:Landroid/widget/ImageView;

    const-string v6, "alpha"

    new-array v0, v0, [F

    const/4 v7, 0x0

    aput v7, v0, v4

    .line 282
    invoke-static {v3, v6, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v2, v5

    .line 279
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 284
    new-instance v0, Lmiui/notification/NotificationPanelActivity$4;

    invoke-direct {v0, p0}, Lmiui/notification/NotificationPanelActivity$4;-><init>(Lmiui/notification/NotificationPanelActivity;)V

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 298
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 300
    .end local v1    # "set":Landroid/animation/AnimatorSet;
    :cond_0
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private inflateNotificationView(Lmiui/notification/NotificationItem;)Landroid/view/View;
    .locals 3
    .param p1, "item"    # Lmiui/notification/NotificationItem;

    .line 108
    iget-object v0, p0, Lmiui/notification/NotificationPanelActivity;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/miui/system/internal/R$layout;->status_bar_notification:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 109
    .local v0, "row":Landroid/view/View;
    invoke-direct {p0, v0, p1}, Lmiui/notification/NotificationPanelActivity;->setRowValue(Landroid/view/View;Lmiui/notification/NotificationItem;)V

    .line 110
    return-object v0
.end method

.method private removeNotificationView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 233
    iget-object v0, p0, Lmiui/notification/NotificationPanelActivity;->mNotificationList:Lmiui/notification/NotificationRowLayout;

    invoke-virtual {v0, p1}, Lmiui/notification/NotificationRowLayout;->removeView(Landroid/view/View;)V

    .line 234
    iget-object v0, p0, Lmiui/notification/NotificationPanelActivity;->mNotificationList:Lmiui/notification/NotificationRowLayout;

    invoke-virtual {v0}, Lmiui/notification/NotificationRowLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 235
    invoke-direct {p0}, Lmiui/notification/NotificationPanelActivity;->closeAnimation()V

    .line 237
    :cond_0
    return-void
.end method

.method private setRowValue(Landroid/view/View;Lmiui/notification/NotificationItem;)V
    .locals 6
    .param p1, "row"    # Landroid/view/View;
    .param p2, "item"    # Lmiui/notification/NotificationItem;

    .line 114
    const v0, 0x1020006

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 115
    .local v0, "icon":Landroid/widget/ImageView;
    sget v1, Lcom/miui/system/internal/R$id;->title:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 116
    .local v1, "title":Landroid/widget/TextView;
    sget v2, Lcom/miui/system/internal/R$id;->content:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 117
    .local v2, "content":Landroid/widget/TextView;
    sget v3, Lcom/miui/system/internal/R$id;->action:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 119
    .local v3, "action":Landroid/widget/TextView;
    invoke-virtual {p2}, Lmiui/notification/NotificationItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/16 v5, 0x8

    if-nez v4, :cond_0

    .line 120
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 123
    :cond_0
    invoke-virtual {p2}, Lmiui/notification/NotificationItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 125
    :goto_0
    invoke-virtual {p2}, Lmiui/notification/NotificationItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    invoke-virtual {p2}, Lmiui/notification/NotificationItem;->getContent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    invoke-virtual {p2}, Lmiui/notification/NotificationItem;->getAction()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    invoke-virtual {p2}, Lmiui/notification/NotificationItem;->getActionIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_1

    .line 129
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 132
    :cond_1
    new-instance v4, Lmiui/notification/NotificationPanelActivity$NotificationActionClicker;

    invoke-virtual {p2}, Lmiui/notification/NotificationItem;->getClickActionIntent()Landroid/app/PendingIntent;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lmiui/notification/NotificationPanelActivity$NotificationActionClicker;-><init>(Lmiui/notification/NotificationPanelActivity;Landroid/app/PendingIntent;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    invoke-virtual {p2}, Lmiui/notification/NotificationItem;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    invoke-virtual {p2}, Lmiui/notification/NotificationItem;->getActionIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 135
    invoke-virtual {p2}, Lmiui/notification/NotificationItem;->getActionIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 138
    :cond_2
    :goto_1
    invoke-virtual {p2}, Lmiui/notification/NotificationItem;->getClearIntent()Landroid/app/PendingIntent;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lmiui/notification/NotificationPanelActivity;->updateNotificationVetoButton(Landroid/view/View;Landroid/app/PendingIntent;)V

    .line 139
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 140
    invoke-virtual {p2}, Lmiui/notification/NotificationItem;->getId()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/View;->setId(I)V

    .line 141
    new-instance v4, Lmiui/notification/NotificationPanelActivity$NotificationClicker;

    invoke-virtual {p2}, Lmiui/notification/NotificationItem;->getClickIntent()Landroid/app/PendingIntent;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lmiui/notification/NotificationPanelActivity$NotificationClicker;-><init>(Lmiui/notification/NotificationPanelActivity;Landroid/app/PendingIntent;)V

    invoke-virtual {p1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    return-void
.end method

.method private startClearButtonAnimation(Z)V
    .locals 5
    .param p1, "show"    # Z

    .line 266
    iget-object v0, p0, Lmiui/notification/NotificationPanelActivity;->mClearButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_1

    .line 267
    iget-object v0, p0, Lmiui/notification/NotificationPanelActivity;->mClearButton:Landroid/widget/ImageView;

    const-string v1, "alpha"

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 268
    invoke-virtual {p0}, Lmiui/notification/NotificationPanelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x10e0000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 269
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 270
    iget-object v0, p0, Lmiui/notification/NotificationPanelActivity;->mClearButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 272
    :cond_1
    return-void
.end method

.method private updateNotificationVetoButton(Landroid/view/View;Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "row"    # Landroid/view/View;
    .param p2, "clearIntent"    # Landroid/app/PendingIntent;

    .line 216
    sget v0, Lcom/miui/system/internal/R$id;->veto:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 217
    .local v0, "vetoButton":Landroid/view/View;
    new-instance v1, Lmiui/notification/NotificationPanelActivity$1;

    invoke-direct {v1, p0, p2}, Lmiui/notification/NotificationPanelActivity$1;-><init>(Lmiui/notification/NotificationPanelActivity;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    return-void
.end method


# virtual methods
.method protected addNotification(Lmiui/notification/NotificationItem;)V
    .locals 3
    .param p1, "item"    # Lmiui/notification/NotificationItem;

    .line 145
    if-nez p1, :cond_0

    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lmiui/notification/NotificationPanelActivity;->mNotificationList:Lmiui/notification/NotificationRowLayout;

    invoke-virtual {v0}, Lmiui/notification/NotificationRowLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 147
    iget-object v0, p0, Lmiui/notification/NotificationPanelActivity;->mNoNotificationTips:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 148
    iget-object v0, p0, Lmiui/notification/NotificationPanelActivity;->mNotificationList:Lmiui/notification/NotificationRowLayout;

    invoke-virtual {v0, v1}, Lmiui/notification/NotificationRowLayout;->setVisibility(I)V

    .line 149
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lmiui/notification/NotificationPanelActivity;->startClearButtonAnimation(Z)V

    .line 151
    :cond_1
    iget-object v0, p0, Lmiui/notification/NotificationPanelActivity;->mNotificationList:Lmiui/notification/NotificationRowLayout;

    invoke-direct {p0, p1}, Lmiui/notification/NotificationPanelActivity;->inflateNotificationView(Lmiui/notification/NotificationItem;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lmiui/notification/NotificationRowLayout;->addView(Landroid/view/View;I)V

    .line 152
    return-void
.end method

.method public clearAllNotification(Landroid/widget/ScrollView;Lmiui/notification/NotificationRowLayout;)V
    .locals 8
    .param p1, "scrollView"    # Landroid/widget/ScrollView;
    .param p2, "list"    # Lmiui/notification/NotificationRowLayout;

    .line 326
    invoke-virtual {p2}, Lmiui/notification/NotificationRowLayout;->getChildCount()I

    move-result v0

    .line 328
    .local v0, "numChildren":I
    invoke-virtual {p1}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    .line 329
    .local v1, "scrollTop":I
    invoke-virtual {p1}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    add-int/2addr v2, v1

    .line 330
    .local v2, "scrollBottom":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 331
    .local v3, "snapshot":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 332
    .local v4, "clearableViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v0, :cond_2

    .line 333
    invoke-virtual {p2, v5}, Lmiui/notification/NotificationRowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 334
    .local v6, "child":Landroid/view/View;
    invoke-virtual {p2, v6}, Lmiui/notification/NotificationRowLayout;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v7

    if-le v7, v1, :cond_0

    .line 335
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v7

    if-ge v7, v2, :cond_0

    .line 336
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    :cond_0
    invoke-virtual {p2, v6}, Lmiui/notification/NotificationRowLayout;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 339
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    .end local v6    # "child":Landroid/view/View;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 342
    .end local v5    # "i":I
    :cond_2
    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lmiui/notification/NotificationPanelActivity$5;

    invoke-direct {v6, p0, p2, v4, v3}, Lmiui/notification/NotificationPanelActivity$5;-><init>(Lmiui/notification/NotificationPanelActivity;Lmiui/notification/NotificationRowLayout;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 394
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 395
    return-void
.end method

.method public finish()V
    .locals 1

    .line 318
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 319
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lmiui/notification/NotificationPanelActivity;->overridePendingTransition(II)V

    .line 320
    return-void
.end method

.method protected abstract getAppTitle()Ljava/lang/String;
.end method

.method protected abstract getData()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmiui/notification/NotificationItem;",
            ">;"
        }
    .end annotation
.end method

.method public onBackPressed()V
    .locals 0

    .line 313
    invoke-direct {p0}, Lmiui/notification/NotificationPanelActivity;->closeAnimation()V

    .line 314
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 50
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    sget v0, Lcom/miui/system/internal/R$layout;->notification_panel:I

    invoke-virtual {p0, v0}, Lmiui/notification/NotificationPanelActivity;->setContentView(I)V

    .line 53
    invoke-virtual {p0}, Lmiui/notification/NotificationPanelActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 54
    invoke-virtual {p0}, Lmiui/notification/NotificationPanelActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 55
    invoke-virtual {p0}, Lmiui/notification/NotificationPanelActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Lmiui/system/R$color;->blur_background_mask:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 57
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lmiui/notification/NotificationPanelActivity;->overridePendingTransition(II)V

    .line 59
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lmiui/notification/NotificationPanelActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 60
    sget v1, Lcom/miui/system/internal/R$id;->app_info:I

    invoke-virtual {p0, v1}, Lmiui/notification/NotificationPanelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lmiui/notification/NotificationPanelActivity;->mAppInfo:Landroid/widget/TextView;

    .line 61
    sget v1, Lcom/miui/system/internal/R$id;->list:I

    invoke-virtual {p0, v1}, Lmiui/notification/NotificationPanelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmiui/notification/NotificationRowLayout;

    iput-object v1, p0, Lmiui/notification/NotificationPanelActivity;->mNotificationList:Lmiui/notification/NotificationRowLayout;

    .line 62
    sget v1, Lcom/miui/system/internal/R$id;->no_notification_tips:I

    invoke-virtual {p0, v1}, Lmiui/notification/NotificationPanelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lmiui/notification/NotificationPanelActivity;->mNoNotificationTips:Landroid/widget/TextView;

    .line 63
    sget v1, Lcom/miui/system/internal/R$id;->scroll:I

    invoke-virtual {p0, v1}, Lmiui/notification/NotificationPanelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lmiui/notification/NotificationPanelActivity;->mScrollView:Landroid/widget/ScrollView;

    .line 64
    iget-object v1, p0, Lmiui/notification/NotificationPanelActivity;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 65
    sget v1, Lcom/miui/system/internal/R$id;->clear_button:I

    invoke-virtual {p0, v1}, Lmiui/notification/NotificationPanelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lmiui/notification/NotificationPanelActivity;->mClearButton:Landroid/widget/ImageView;

    .line 66
    iget-object v1, p0, Lmiui/notification/NotificationPanelActivity;->mClearButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 67
    iget-object v1, p0, Lmiui/notification/NotificationPanelActivity;->mClearButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lmiui/notification/NotificationPanelActivity;->mClearButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    invoke-virtual {p0}, Lmiui/notification/NotificationPanelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/system/internal/R$dimen;->notification_row_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lmiui/notification/NotificationPanelActivity;->mNotificationHeight:I

    .line 70
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lmiui/notification/NotificationPanelActivity;->mHandler:Landroid/os/Handler;

    .line 72
    new-instance v1, Lmiui/notification/NotificationPanelActivity$LoadDataTask;

    invoke-direct {v1, p0}, Lmiui/notification/NotificationPanelActivity$LoadDataTask;-><init>(Lmiui/notification/NotificationPanelActivity;)V

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lmiui/notification/NotificationPanelActivity$LoadDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 73
    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 77
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 78
    invoke-direct {p0}, Lmiui/notification/NotificationPanelActivity;->closeAnimation()V

    .line 79
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 304
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 305
    invoke-direct {p0}, Lmiui/notification/NotificationPanelActivity;->closeAnimation()V

    .line 306
    const/4 v0, 0x1

    return v0

    .line 308
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected removeNotification(I)V
    .locals 2
    .param p1, "id"    # I

    .line 165
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lmiui/notification/NotificationPanelActivity;->mNotificationList:Lmiui/notification/NotificationRowLayout;

    invoke-virtual {v1}, Lmiui/notification/NotificationRowLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 166
    iget-object v1, p0, Lmiui/notification/NotificationPanelActivity;->mNotificationList:Lmiui/notification/NotificationRowLayout;

    invoke-virtual {v1, v0}, Lmiui/notification/NotificationRowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 167
    iget-object v1, p0, Lmiui/notification/NotificationPanelActivity;->mNotificationList:Lmiui/notification/NotificationRowLayout;

    invoke-virtual {v1, v0}, Lmiui/notification/NotificationRowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lmiui/notification/NotificationPanelActivity;->removeNotificationView(Landroid/view/View;)V

    .line 165
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 170
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method protected updateNotification(ILmiui/notification/NotificationItem;)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "item"    # Lmiui/notification/NotificationItem;

    .line 155
    if-nez p2, :cond_0

    return-void

    .line 156
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lmiui/notification/NotificationPanelActivity;->mNotificationList:Lmiui/notification/NotificationRowLayout;

    invoke-virtual {v1}, Lmiui/notification/NotificationRowLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 157
    iget-object v1, p0, Lmiui/notification/NotificationPanelActivity;->mNotificationList:Lmiui/notification/NotificationRowLayout;

    invoke-virtual {v1, v0}, Lmiui/notification/NotificationRowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 158
    .local v1, "row":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 159
    invoke-direct {p0, v1, p2}, Lmiui/notification/NotificationPanelActivity;->setRowValue(Landroid/view/View;Lmiui/notification/NotificationItem;)V

    .line 156
    .end local v1    # "row":Landroid/view/View;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 162
    .end local v0    # "i":I
    :cond_2
    return-void
.end method
