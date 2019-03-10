.class public Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;
.super Landroid/app/Activity;
.source "ScreenRecorderHomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity$DeleteRecordersTask;,
        Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity$HomeHandler;
    }
.end annotation


# static fields
.field private static final DEFAULT_SCREEN_RADIO:F = 1.778f

.field private static final FRESH_DATA:I = 0x1

.field private static final MEDIA_URL:Landroid/net/Uri;

.field private static final MIME_TYPE:Ljava/lang/String; = "video/mp4"

.field private static final REQUEST_CODE_SEND:I = 0x1

.field private static final SETTINGS_ACTION:Ljava/lang/String; = "miui.intent.action.SCREENRECORDER_SETTINGS"

.field private static final TAG:Ljava/lang/String; = "ScreenRecorderHomeActivity"


# instance fields
.field private mActionBarLeft:Landroid/widget/TextView;

.field private mActionBarRight:Landroid/widget/TextView;

.field private mActionBarTitle:Landroid/widget/TextView;

.field private mAdapter:Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/screenrecorder/data/GridItem;",
            ">;"
        }
    .end annotation
.end field

.field private mDeleteDialog:Lcom/miui/screenrecorder/view/ScreenRecordAlertDialog;

.field private mEmptyView:Landroid/widget/RelativeLayout;

.field private mHandler:Landroid/os/Handler;

.field private mHasClickSendAction:Z

.field private mHeadGridView:Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;

.field private mIsFromSendAction:Z

.field private mIsInAllSelectMode:Z

.field private mIsInEditMode:Z

.field private mLocale:Ljava/util/Locale;

.field private mProgressBar:Landroid/view/View;

.field private mScannerController:Lcom/miui/screenrecorder/controller/MiuiScreenRecorderScannerController;

.field private mScannerListener:Lcom/miui/screenrecorder/controller/MiuiScreenRecorderScannerController$ScannerListener;

.field private mSelectedItem:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mStopForSending:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->MEDIA_URL:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mDataList:Ljava/util/ArrayList;

    .line 79
    iput-boolean v1, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mIsInAllSelectMode:Z

    .line 80
    iput-boolean v1, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mIsFromSendAction:Z

    .line 81
    iput-boolean v1, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mHasClickSendAction:Z

    .line 82
    iput-boolean v1, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mStopForSending:Z

    .line 258
    new-instance v0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity$8;

    invoke-direct {v0, p0}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity$8;-><init>(Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;)V

    iput-object v0, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mScannerListener:Lcom/miui/screenrecorder/controller/MiuiScreenRecorderScannerController$ScannerListener;

    .line 643
    new-instance v0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity$11;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity$11;-><init>(Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mContentObserver:Landroid/database/ContentObserver;

    .line 690
    return-void
.end method

.method static synthetic access$100(Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->goSettings()V

    return-void
.end method

.method static synthetic access$1000(Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;
    .param p1, "x1"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->playVideo(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;
    .param p1, "x1"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->launchEdit(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->startLoading()V

    return-void
.end method

.method static synthetic access$1300(Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->stopLoading()V

    return-void
.end method

.method static synthetic access$1400(Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->showEmptyView()V

    return-void
.end method

.method static synthetic access$1500(Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mSelectedItem:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;Ljava/util/HashSet;)Ljava/util/HashSet;
    .locals 0
    .param p0, "x0"    # Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;
    .param p1, "x1"    # Ljava/util/HashSet;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mSelectedItem:Ljava/util/HashSet;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;)Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mAdapter:Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->updateActionBarTitle()V

    return-void
.end method

.method static synthetic access$1800(Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->showDataView()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->cancelEdit()V

    return-void
.end method

.method static synthetic access$2000(Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;)Lcom/miui/screenrecorder/view/ScreenRecordAlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mDeleteDialog:Lcom/miui/screenrecorder/view/ScreenRecordAlertDialog;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;Lcom/miui/screenrecorder/view/ScreenRecordAlertDialog;)Lcom/miui/screenrecorder/view/ScreenRecordAlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;
    .param p1, "x1"    # Lcom/miui/screenrecorder/view/ScreenRecordAlertDialog;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mDeleteDialog:Lcom/miui/screenrecorder/view/ScreenRecordAlertDialog;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->deleteRecorders()V

    return-void
.end method

.method static synthetic access$2200(Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->refreshData()V

    return-void
.end method

.method static synthetic access$2400()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->MEDIA_URL:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mIsInAllSelectMode:Z

    return v0
.end method

.method static synthetic access$400(Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->deselect()V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->selectAll()V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->startRecordService()V

    return-void
.end method

.method static synthetic access$700(Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mDataList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$702(Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mDataList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$800(Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mIsInEditMode:Z

    return v0
.end method

.method static synthetic access$900(Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;
    .param p1, "x1"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->selectOneItem(I)V

    return-void
.end method

.method private cancelEdit()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 386
    iput-boolean v1, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mIsInEditMode:Z

    .line 387
    iput-boolean v1, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mIsInAllSelectMode:Z

    .line 388
    invoke-direct {p0}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->initActionBarInNormal()V

    .line 389
    invoke-virtual {p0}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->invalidateOptionsMenu()V

    .line 390
    iget-object v0, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mAdapter:Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter;

    invoke-virtual {v0, v1}, Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter;->setIsEditMode(Z)V

    .line 391
    iget-object v0, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mSelectedItem:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mSelectedItem:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mAdapter:Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter;

    invoke-virtual {v0}, Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter;->notifyDataSetChanged()V

    .line 395
    return-void
.end method

.method private deleteDialog()V
    .locals 9

    .prologue
    const v8, 0x7f080036

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 482
    iget-object v2, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mSelectedItem:Ljava/util/HashSet;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mSelectedItem:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 520
    :cond_0
    :goto_0
    return-void

    .line 483
    :cond_1
    iget-object v2, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mDeleteDialog:Lcom/miui/screenrecorder/view/ScreenRecordAlertDialog;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mDeleteDialog:Lcom/miui/screenrecorder/view/ScreenRecordAlertDialog;

    invoke-virtual {v2}, Lcom/miui/screenrecorder/view/ScreenRecordAlertDialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 484
    :cond_2
    iget-object v2, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mDeleteDialog:Lcom/miui/screenrecorder/view/ScreenRecordAlertDialog;

    if-nez v2, :cond_4

    .line 485
    const/4 v0, 0x5

    .line 486
    .local v0, "dialogTheme":I
    invoke-static {}, Lcom/miui/screenrecorder/ScreenRecorderApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/screenrecorder/tools/DisplayUtils;->isNightMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 487
    const/4 v0, 0x4

    .line 489
    :cond_3
    new-instance v2, Lcom/miui/screenrecorder/view/ScreenRecordAlertDialog;

    invoke-direct {v2, p0, v0}, Lcom/miui/screenrecorder/view/ScreenRecordAlertDialog;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mDeleteDialog:Lcom/miui/screenrecorder/view/ScreenRecordAlertDialog;

    .line 490
    iget-object v2, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mDeleteDialog:Lcom/miui/screenrecorder/view/ScreenRecordAlertDialog;

    invoke-virtual {v2, v7}, Lcom/miui/screenrecorder/view/ScreenRecordAlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 491
    iget-object v2, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mDeleteDialog:Lcom/miui/screenrecorder/view/ScreenRecordAlertDialog;

    invoke-virtual {v2, v5}, Lcom/miui/screenrecorder/view/ScreenRecordAlertDialog;->setCancelable(Z)V

    .line 493
    .end local v0    # "dialogTheme":I
    :cond_4
    iget-object v2, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mDeleteDialog:Lcom/miui/screenrecorder/view/ScreenRecordAlertDialog;

    invoke-virtual {p0, v8}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/screenrecorder/view/ScreenRecordAlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 495
    invoke-virtual {p0}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f070000

    iget-object v4, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mSelectedItem:Ljava/util/HashSet;

    .line 496
    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mSelectedItem:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    .line 495
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 497
    .local v1, "str":Ljava/lang/String;
    iget-object v2, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mDeleteDialog:Lcom/miui/screenrecorder/view/ScreenRecordAlertDialog;

    invoke-virtual {v2, v1}, Lcom/miui/screenrecorder/view/ScreenRecordAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 499
    iget-object v2, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mDeleteDialog:Lcom/miui/screenrecorder/view/ScreenRecordAlertDialog;

    const/4 v3, -0x1

    .line 500
    invoke-virtual {p0, v8}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity$9;

    invoke-direct {v5, p0}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity$9;-><init>(Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;)V

    .line 499
    invoke-virtual {v2, v3, v4, v5}, Lcom/miui/screenrecorder/view/ScreenRecordAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 511
    iget-object v2, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mDeleteDialog:Lcom/miui/screenrecorder/view/ScreenRecordAlertDialog;

    const/4 v3, -0x2

    const v4, 0x7f08000c

    .line 512
    invoke-virtual {p0, v4}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity$10;

    invoke-direct {v5, p0}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity$10;-><init>(Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;)V

    .line 511
    invoke-virtual {v2, v3, v4, v5}, Lcom/miui/screenrecorder/view/ScreenRecordAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 519
    iget-object v2, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mDeleteDialog:Lcom/miui/screenrecorder/view/ScreenRecordAlertDialog;

    invoke-virtual {v2}, Lcom/miui/screenrecorder/view/ScreenRecordAlertDialog;->show()V

    goto :goto_0
.end method

.method private deleteRecorders()V
    .locals 3

    .prologue
    .line 412
    iget-object v0, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mSelectedItem:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mSelectedItem:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 416
    :cond_0
    :goto_0
    return-void

    .line 415
    :cond_1
    new-instance v0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity$DeleteRecordersTask;

    iget-object v1, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mSelectedItem:Ljava/util/HashSet;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity$DeleteRecordersTask;-><init>(Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;Ljava/util/HashSet;Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity$DeleteRecordersTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private deselect()V
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mDataList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mSelectedItem:Ljava/util/HashSet;

    if-nez v0, :cond_1

    .line 479
    :cond_0
    :goto_0
    return-void

    .line 473
    :cond_1
    iget-object v0, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mSelectedItem:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 474
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mIsInAllSelectMode:Z

    .line 475
    invoke-direct {p0}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->updateSelectBtnText()V

    .line 476
    invoke-direct {p0}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->updateActionBarTitle()V

    .line 477
    iget-object v0, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mAdapter:Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter;

    invoke-virtual {v0}, Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter;->notifyDataSetChanged()V

    .line 478
    invoke-virtual {p0}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->invalidateOptionsMenu()V

    goto :goto_0
.end method

.method private goSettings()V
    .locals 2

    .prologue
    .line 334
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 335
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "miui.intent.action.SCREENRECORDER_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 336
    invoke-virtual {p0, v0}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 337
    return-void
.end method

.method private hideDataView()V
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mHeadGridView:Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->setVisibility(I)V

    .line 319
    return-void
.end method

.method private hideEmptyView()V
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mEmptyView:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 315
    return-void
.end method

.method private init()V
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    .line 180
    iput-boolean v8, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mIsInEditMode:Z

    .line 181
    iput-boolean v8, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mIsInAllSelectMode:Z

    .line 182
    iput-boolean v8, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mHasClickSendAction:Z

    .line 183
    const v6, 0x7f0b0018

    invoke-virtual {p0, v6}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mEmptyView:Landroid/widget/RelativeLayout;

    .line 185
    const v6, 0x7f0b001c

    invoke-virtual {p0, v6}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lmiui/widget/FloatingActionButton;

    .line 186
    .local v5, "recordBtn":Lmiui/widget/FloatingActionButton;
    new-instance v6, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity$4;

    invoke-direct {v6, p0}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity$4;-><init>(Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;)V

    invoke-virtual {v5, v6}, Lmiui/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    const v6, 0x7f0b0019

    invoke-virtual {p0, v6}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 194
    .local v2, "emptyBtn":Landroid/view/View;
    new-instance v6, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity$5;

    invoke-direct {v6, p0}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity$5;-><init>(Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    const v6, 0x7f0b0017

    invoke-virtual {p0, v6}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;

    iput-object v6, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mHeadGridView:Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;

    .line 203
    invoke-virtual {p0}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 204
    .local v0, "display":Landroid/view/Display;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 205
    .local v1, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 206
    iget v6, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-nez v6, :cond_1

    move v6, v7

    :goto_0
    iget v9, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    if-nez v9, :cond_2

    :goto_1
    or-int/2addr v6, v7

    if-eqz v6, :cond_3

    .line 207
    const v4, 0x3fe39581    # 1.778f

    .line 216
    .local v4, "radio":F
    :cond_0
    :goto_2
    iget v6, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v7, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    const/high16 v7, 0x41880000    # 17.0f

    invoke-static {p0, v7}, Lcom/miui/screenrecorder/tools/DisplayUtils;->dip2px(Landroid/content/Context;F)I

    move-result v7

    sub-int v3, v6, v7

    .line 217
    .local v3, "gridViewWidth":I
    iget-object v6, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mHeadGridView:Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;

    invoke-virtual {v6, v3}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->setColumnWidth(I)V

    .line 218
    iget-object v6, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mHeadGridView:Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;

    const/high16 v7, 0x41000000    # 8.0f

    invoke-static {p0, v7}, Lcom/miui/screenrecorder/tools/DisplayUtils;->dip2px(Landroid/content/Context;F)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->setHorizontalSpacing(I)V

    .line 219
    new-instance v6, Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter;

    invoke-direct {v6, p0, v4, v3}, Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter;-><init>(Landroid/content/Context;FI)V

    iput-object v6, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mAdapter:Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter;

    .line 220
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    iput-object v6, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mSelectedItem:Ljava/util/HashSet;

    .line 221
    iget-object v6, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mAdapter:Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter;

    iget-object v7, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mSelectedItem:Ljava/util/HashSet;

    invoke-virtual {v6, v7}, Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter;->setSelectedItem(Ljava/util/HashSet;)V

    .line 222
    iget-object v6, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mHeadGridView:Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;

    iget-object v7, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mAdapter:Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter;

    invoke-virtual {v6, v7}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 223
    iget-object v6, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mHeadGridView:Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;

    new-instance v7, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity$6;

    invoke-direct {v7, p0}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity$6;-><init>(Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;)V

    invoke-virtual {v6, v7}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 236
    iget-object v6, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mHeadGridView:Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;

    new-instance v7, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity$7;

    invoke-direct {v7, p0}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity$7;-><init>(Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;)V

    invoke-virtual {v6, v7}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 249
    return-void

    .end local v3    # "gridViewWidth":I
    .end local v4    # "radio":F
    :cond_1
    move v6, v8

    .line 206
    goto :goto_0

    :cond_2
    move v7, v8

    goto :goto_1

    .line 209
    :cond_3
    iget v6, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v6, v6

    iget v7, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v7, v7

    div-float v4, v6, v7

    .line 210
    .restart local v4    # "radio":F
    cmpg-float v6, v4, v10

    if-gez v6, :cond_0

    .line 211
    div-float v4, v10, v4

    goto :goto_2
.end method

.method private initActionBarInEdit()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v4, -0x1

    .line 146
    iget-object v3, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mActionBarTitle:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mActionBarLeft:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mActionBarRight:Landroid/widget/TextView;

    if-nez v3, :cond_2

    .line 147
    :cond_0
    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    const/16 v3, 0x11

    invoke-direct {v2, v4, v4, v3}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    .line 148
    .local v2, "lp":Landroid/app/ActionBar$LayoutParams;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030001

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 149
    .local v1, "actionBarView":Landroid/view/View;
    const v3, 0x1020016

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mActionBarTitle:Landroid/widget/TextView;

    .line 150
    const v3, 0x1020019

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mActionBarLeft:Landroid/widget/TextView;

    .line 151
    const v3, 0x102001a

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mActionBarRight:Landroid/widget/TextView;

    .line 152
    invoke-virtual {p0}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 153
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-nez v0, :cond_1

    .line 177
    .end local v0    # "actionBar":Landroid/app/ActionBar;
    .end local v1    # "actionBarView":Landroid/view/View;
    .end local v2    # "lp":Landroid/app/ActionBar$LayoutParams;
    :goto_0
    return-void

    .line 154
    .restart local v0    # "actionBar":Landroid/app/ActionBar;
    .restart local v1    # "actionBarView":Landroid/view/View;
    .restart local v2    # "lp":Landroid/app/ActionBar$LayoutParams;
    :cond_1
    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 156
    .end local v0    # "actionBar":Landroid/app/ActionBar;
    .end local v1    # "actionBarView":Landroid/view/View;
    .end local v2    # "lp":Landroid/app/ActionBar$LayoutParams;
    :cond_2
    invoke-direct {p0}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->updateActionBarTitle()V

    .line 157
    iget-object v3, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mActionBarLeft:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 158
    iget-object v3, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mActionBarLeft:Landroid/widget/TextView;

    const v4, 0x7f020028

    invoke-virtual {p0, v4}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 159
    iget-object v3, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mActionBarLeft:Landroid/widget/TextView;

    new-instance v4, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity$2;

    invoke-direct {v4, p0}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity$2;-><init>(Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iget-object v3, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mActionBarRight:Landroid/widget/TextView;

    const v4, 0x7f080044

    invoke-virtual {p0, v4}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v3, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mActionBarRight:Landroid/widget/TextView;

    const v4, 0x7f020030

    invoke-virtual {p0, v4}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 167
    iget-object v3, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mActionBarRight:Landroid/widget/TextView;

    new-instance v4, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity$3;

    invoke-direct {v4, p0}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity$3;-><init>(Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private initActionBarInNormal()V
    .locals 8

    .prologue
    const v7, 0x7f020001

    const/4 v4, -0x1

    const/4 v6, 0x0

    .line 104
    iget-object v3, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mActionBarTitle:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mActionBarLeft:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mActionBarRight:Landroid/widget/TextView;

    if-nez v3, :cond_2

    .line 105
    :cond_0
    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    const/16 v3, 0x11

    invoke-direct {v2, v4, v4, v3}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    .line 106
    .local v2, "lp":Landroid/app/ActionBar$LayoutParams;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030001

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 107
    .local v1, "actionBarView":Landroid/view/View;
    const v3, 0x1020016

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mActionBarTitle:Landroid/widget/TextView;

    .line 108
    const v3, 0x1020019

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mActionBarLeft:Landroid/widget/TextView;

    .line 109
    const v3, 0x102001a

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mActionBarRight:Landroid/widget/TextView;

    .line 110
    invoke-virtual {p0}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 111
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-nez v0, :cond_1

    .line 133
    .end local v0    # "actionBar":Landroid/app/ActionBar;
    .end local v1    # "actionBarView":Landroid/view/View;
    .end local v2    # "lp":Landroid/app/ActionBar$LayoutParams;
    :goto_0
    return-void

    .line 112
    .restart local v0    # "actionBar":Landroid/app/ActionBar;
    .restart local v1    # "actionBarView":Landroid/view/View;
    .restart local v2    # "lp":Landroid/app/ActionBar$LayoutParams;
    :cond_1
    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 116
    .end local v0    # "actionBar":Landroid/app/ActionBar;
    .end local v1    # "actionBarView":Landroid/view/View;
    .end local v2    # "lp":Landroid/app/ActionBar$LayoutParams;
    :cond_2
    iget-object v3, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mActionBarTitle:Landroid/widget/TextView;

    const/high16 v4, 0x7f080000

    invoke-virtual {p0, v4}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v3, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mActionBarLeft:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 120
    iget-object v3, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mActionBarLeft:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v3, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mActionBarLeft:Landroid/widget/TextView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 124
    iget-object v3, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mActionBarRight:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 125
    iget-object v3, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mActionBarRight:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v3, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mActionBarRight:Landroid/widget/TextView;

    const v4, 0x7f080045

    invoke-virtual {p0, v4}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v3, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mActionBarRight:Landroid/widget/TextView;

    new-instance v4, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity$1;

    invoke-direct {v4, p0}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity$1;-><init>(Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private launchEdit(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 356
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mIsInEditMode:Z

    .line 357
    invoke-direct {p0}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->initActionBarInEdit()V

    .line 358
    invoke-virtual {p0}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->invalidateOptionsMenu()V

    .line 359
    iget-object v0, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mAdapter:Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter;

    iget-boolean v1, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mIsInEditMode:Z

    invoke-virtual {v0, v1}, Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter;->setIsEditMode(Z)V

    .line 360
    invoke-direct {p0, p1}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->selectOneItem(I)V

    .line 361
    return-void
.end method

.method private playVideo(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 343
    iget-object v1, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mDataList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    if-gez p1, :cond_1

    iget-object v1, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 350
    :cond_0
    :goto_0
    return-void

    .line 346
    :cond_1
    new-instance v0, Lcom/xiaomi/stat/MiStatParams;

    invoke-direct {v0}, Lcom/xiaomi/stat/MiStatParams;-><init>()V

    .line 347
    .local v0, "miStatParams":Lcom/xiaomi/stat/MiStatParams;
    const-string v1, "app_action"

    const-string v2, "play_video"

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    const-string v1, "Screenrecorder_home_page"

    const-string v2, "homepage_action"

    invoke-static {v1, v2, v0}, Lcom/miui/screenrecorder/tools/MiStatInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/stat/MiStatParams;)V

    .line 349
    iget-object v1, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/screenrecorder/data/GridItem;

    invoke-virtual {v1}, Lcom/miui/screenrecorder/data/GridItem;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/miui/screenrecorder/tools/ScreenRecorderUtils;->playVideoInHome(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private refreshData()V
    .locals 3

    .prologue
    .line 629
    iget-object v1, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mScannerController:Lcom/miui/screenrecorder/controller/MiuiScreenRecorderScannerController;

    if-nez v1, :cond_0

    .line 630
    new-instance v1, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderScannerController;

    invoke-direct {v1}, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderScannerController;-><init>()V

    iput-object v1, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mScannerController:Lcom/miui/screenrecorder/controller/MiuiScreenRecorderScannerController;

    .line 632
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 633
    .local v0, "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/screenrecorder/data/GridItem;>;"
    iget-object v1, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 634
    iget-object v1, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mScannerController:Lcom/miui/screenrecorder/controller/MiuiScreenRecorderScannerController;

    iget-object v2, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mScannerListener:Lcom/miui/screenrecorder/controller/MiuiScreenRecorderScannerController$ScannerListener;

    invoke-virtual {v1, v2, v0}, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderScannerController;->scanRecorders(Lcom/miui/screenrecorder/controller/MiuiScreenRecorderScannerController$ScannerListener;Ljava/util/ArrayList;)V

    .line 635
    return-void
.end method

.method private selectAll()V
    .locals 4

    .prologue
    .line 451
    iget-object v2, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mDataList:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 467
    :goto_0
    return-void

    .line 454
    :cond_0
    iget-object v2, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mSelectedItem:Ljava/util/HashSet;

    if-nez v2, :cond_1

    .line 455
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mSelectedItem:Ljava/util/HashSet;

    .line 456
    iget-object v2, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mAdapter:Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter;

    iget-object v3, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mSelectedItem:Ljava/util/HashSet;

    invoke-virtual {v2, v3}, Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter;->setSelectedItem(Ljava/util/HashSet;)V

    .line 458
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 459
    iget-object v2, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/screenrecorder/data/GridItem;

    .line 460
    .local v1, "item":Lcom/miui/screenrecorder/data/GridItem;
    iget-object v2, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mSelectedItem:Ljava/util/HashSet;

    invoke-virtual {v1}, Lcom/miui/screenrecorder/data/GridItem;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 458
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 462
    .end local v1    # "item":Lcom/miui/screenrecorder/data/GridItem;
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mIsInAllSelectMode:Z

    .line 463
    invoke-direct {p0}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->updateSelectBtnText()V

    .line 464
    invoke-direct {p0}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->updateActionBarTitle()V

    .line 465
    iget-object v2, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mAdapter:Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter;

    invoke-virtual {v2}, Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter;->notifyDataSetChanged()V

    .line 466
    invoke-virtual {p0}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->invalidateOptionsMenu()V

    goto :goto_0
.end method

.method private selectOneItem(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 364
    iget-object v2, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mDataList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    if-gez p1, :cond_1

    iget-object v2, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt p1, v2, :cond_1

    .line 383
    :cond_0
    :goto_0
    return-void

    .line 367
    :cond_1
    iget-object v2, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mSelectedItem:Ljava/util/HashSet;

    if-nez v2, :cond_2

    .line 368
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mSelectedItem:Ljava/util/HashSet;

    .line 369
    iget-object v2, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mAdapter:Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter;

    iget-object v3, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mSelectedItem:Ljava/util/HashSet;

    invoke-virtual {v2, v3}, Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter;->setSelectedItem(Ljava/util/HashSet;)V

    .line 371
    :cond_2
    iget-object v2, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/screenrecorder/data/GridItem;

    .line 372
    .local v0, "item":Lcom/miui/screenrecorder/data/GridItem;
    invoke-virtual {v0}, Lcom/miui/screenrecorder/data/GridItem;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 373
    .local v1, "path":Ljava/lang/String;
    iget-object v2, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mSelectedItem:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 374
    iget-object v2, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mSelectedItem:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 378
    :goto_1
    iget-object v2, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mSelectedItem:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    iget-object v3, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v2, v3, :cond_4

    const/4 v2, 0x1

    :goto_2
    iput-boolean v2, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mIsInAllSelectMode:Z

    .line 379
    invoke-direct {p0}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->updateSelectBtnText()V

    .line 380
    invoke-direct {p0}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->updateActionBarTitle()V

    .line 381
    iget-object v2, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mAdapter:Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter;

    invoke-virtual {v2}, Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter;->notifyDataSetChanged()V

    .line 382
    invoke-virtual {p0}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->invalidateOptionsMenu()V

    goto :goto_0

    .line 376
    :cond_3
    iget-object v2, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mSelectedItem:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 378
    :cond_4
    const/4 v2, 0x0

    goto :goto_2
.end method

.method private sendRecorder()V
    .locals 13

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 419
    iget-object v11, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mSelectedItem:Ljava/util/HashSet;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mSelectedItem:Ljava/util/HashSet;

    invoke-virtual {v11}, Ljava/util/HashSet;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 448
    :cond_0
    :goto_0
    return-void

    .line 422
    :cond_1
    new-instance v4, Lcom/xiaomi/stat/MiStatParams;

    invoke-direct {v4}, Lcom/xiaomi/stat/MiStatParams;-><init>()V

    .line 423
    .local v4, "miStatParams":Lcom/xiaomi/stat/MiStatParams;
    const-string v11, "app_action"

    const-string v12, "send_video"

    invoke-virtual {v4, v11, v12}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    const-string v11, "Screenrecorder_home_page"

    const-string v12, "homepage_action"

    invoke-static {v11, v12, v4}, Lcom/miui/screenrecorder/tools/MiStatInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/stat/MiStatParams;)V

    .line 425
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 426
    .local v8, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    iget-object v11, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mSelectedItem:Ljava/util/HashSet;

    invoke-virtual {v11}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 428
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 429
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 430
    .local v6, "path":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 431
    .local v1, "ff":Ljava/io/File;
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    .line 432
    .local v7, "u":Landroid/net/Uri;
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 434
    .end local v1    # "ff":Ljava/io/File;
    .end local v6    # "path":Ljava/lang/String;
    .end local v7    # "u":Landroid/net/Uri;
    :cond_2
    iget-object v11, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mSelectedItem:Ljava/util/HashSet;

    invoke-virtual {v11}, Ljava/util/HashSet;->size()I

    move-result v11

    if-le v11, v10, :cond_3

    move v5, v10

    .line 436
    .local v5, "multiple":Z
    :goto_2
    if-eqz v5, :cond_4

    .line 437
    new-instance v2, Landroid/content/Intent;

    const-string v9, "android.intent.action.SEND_MULTIPLE"

    invoke-direct {v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 438
    .local v2, "intent":Landroid/content/Intent;
    const-string v9, "android.intent.extra.STREAM"

    invoke-virtual {v2, v9, v8}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 443
    :goto_3
    invoke-virtual {v2, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 444
    const-string v9, "video/mp4"

    invoke-virtual {v2, v9}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 445
    const v9, 0x7f080037

    invoke-virtual {p0, v9}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 446
    .local v0, "chooseIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0, v10}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 447
    iput-boolean v10, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mHasClickSendAction:Z

    goto :goto_0

    .end local v0    # "chooseIntent":Landroid/content/Intent;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v5    # "multiple":Z
    :cond_3
    move v5, v9

    .line 434
    goto :goto_2

    .line 440
    .restart local v5    # "multiple":Z
    :cond_4
    new-instance v2, Landroid/content/Intent;

    const-string v11, "android.intent.action.SEND"

    invoke-direct {v2, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 441
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v11, "android.intent.extra.STREAM"

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Parcelable;

    invoke-virtual {v2, v11, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_3
.end method

.method private setDefaultValue()V
    .locals 1

    .prologue
    .line 638
    sget-object v0, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->defaultResolution:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 639
    invoke-static {p0}, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->setDefaultValue(Landroid/app/Activity;)V

    .line 641
    :cond_0
    return-void
.end method

.method private showDataView()V
    .locals 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mHeadGridView:Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->setVisibility(I)V

    .line 323
    invoke-direct {p0}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->hideEmptyView()V

    .line 324
    iget-object v0, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mAdapter:Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter;

    iget-object v1, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter;->notifyDataSetChanged(Ljava/util/ArrayList;)V

    .line 325
    return-void
.end method

.method private showEmptyView()V
    .locals 2

    .prologue
    .line 308
    invoke-direct {p0}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->cancelEdit()V

    .line 309
    iget-object v0, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mEmptyView:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 310
    invoke-direct {p0}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->hideDataView()V

    .line 311
    return-void
.end method

.method private showPermissionsForKorea()V
    .locals 0

    .prologue
    .line 255
    invoke-static {p0}, Lcom/miui/screenrecorder/tools/KoreaRegionUtils;->showPermissionsForKorea(Landroid/app/Activity;)Z

    .line 256
    return-void
.end method

.method private startLoading()V
    .locals 2

    .prologue
    .line 398
    iget-object v0, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mProgressBar:Landroid/view/View;

    if-nez v0, :cond_0

    .line 399
    const v0, 0x7f0b001d

    invoke-virtual {p0, v0}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mProgressBar:Landroid/view/View;

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mProgressBar:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 402
    return-void
.end method

.method private startRecordService()V
    .locals 2

    .prologue
    .line 328
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/screenrecorder/service/RecorderService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 329
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 330
    invoke-virtual {p0}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->finish()V

    .line 331
    return-void
.end method

.method private stopLoading()V
    .locals 2

    .prologue
    .line 405
    iget-object v0, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mProgressBar:Landroid/view/View;

    if-nez v0, :cond_0

    .line 406
    const v0, 0x7f0b001d

    invoke-virtual {p0, v0}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mProgressBar:Landroid/view/View;

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mProgressBar:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 409
    return-void
.end method

.method private updateActionBarTitle()V
    .locals 7

    .prologue
    .line 136
    iget-object v1, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mSelectedItem:Ljava/util/HashSet;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mSelectedItem:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 137
    :cond_0
    iget-object v1, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mActionBarTitle:Landroid/widget/TextView;

    const v2, 0x7f080026

    invoke-virtual {p0, v2}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    :goto_0
    return-void

    .line 139
    :cond_1
    invoke-virtual {p0}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070001

    iget-object v3, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mSelectedItem:Ljava/util/HashSet;

    .line 140
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mSelectedItem:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 139
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "str":Ljava/lang/String;
    iget-object v1, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mActionBarTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateSelectBtnText()V
    .locals 2

    .prologue
    .line 557
    iget-boolean v0, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mIsInAllSelectMode:Z

    if-eqz v0, :cond_0

    .line 558
    iget-object v0, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mActionBarRight:Landroid/widget/TextView;

    const v1, 0x7f02002e

    invoke-virtual {p0, v1}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 559
    iget-object v0, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mActionBarRight:Landroid/widget/TextView;

    const v1, 0x7f080016

    invoke-virtual {p0, v1}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 564
    :goto_0
    return-void

    .line 561
    :cond_0
    iget-object v0, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mActionBarRight:Landroid/widget/TextView;

    const v1, 0x7f020030

    invoke-virtual {p0, v1}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 562
    iget-object v0, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mActionBarRight:Landroid/widget/TextView;

    const v1, 0x7f080044

    invoke-virtual {p0, v1}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 624
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 625
    invoke-static {p1, p2}, Lcom/miui/screenrecorder/tools/KoreaRegionUtils;->processCallBack(II)Z

    .line 626
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 748
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 749
    invoke-static {p1}, Lcom/miui/screenrecorder/tools/ScreenRecorderUtils;->getLocaleFromConfig(Landroid/content/res/Configuration;)Ljava/util/Locale;

    move-result-object v0

    .line 750
    .local v0, "locale":Ljava/util/Locale;
    iget-object v1, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mLocale:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 752
    iput-object v0, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mLocale:Ljava/util/Locale;

    .line 753
    invoke-static {p0}, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->setDefaultValue(Landroid/app/Activity;)V

    .line 754
    iget-object v1, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mActionBarTitle:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 755
    iget-object v1, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mActionBarTitle:Landroid/widget/TextView;

    const/high16 v2, 0x7f080000

    invoke-virtual {p0, v2}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 757
    :cond_0
    iget-object v1, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mEmptyView:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_1

    .line 758
    iget-object v1, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mEmptyView:Landroid/widget/RelativeLayout;

    const v2, 0x7f0b001a

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f080033

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 759
    iget-object v1, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mEmptyView:Landroid/widget/RelativeLayout;

    const v2, 0x7f0b001b

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f080034

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 762
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V
    invoke-static {p0}, Lcom/aeonax/PermissionsAsker;->Ask(Landroid/app/Activity;)V
    
    .line 93
    invoke-virtual {p0}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/screenrecorder/tools/ScreenRecorderUtils;->getLocaleFromConfig(Landroid/content/res/Configuration;)Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mLocale:Ljava/util/Locale;

    .line 94
    invoke-direct {p0}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->initActionBarInNormal()V

    .line 95
    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->setContentView(I)V

    .line 96
    new-instance v0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity$HomeHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity$HomeHandler;-><init>(Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity$1;)V

    iput-object v0, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mHandler:Landroid/os/Handler;

    .line 97
    invoke-virtual {p0}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->MEDIA_URL:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 98
    invoke-direct {p0}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->startLoading()V

    .line 99
    invoke-direct {p0}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->setDefaultValue()V

    .line 100
    invoke-direct {p0}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->init()V

    .line 101
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 524
    const v0, 0x1020019

    const v1, 0x7f080037

    invoke-virtual {p0, v1}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    sget v1, Lmiui/R$attr;->actionBarSendIcon:I

    .line 525
    invoke-static {p0, v1}, Lmiui/util/AttributeResolver;->resolve(Landroid/content/Context;I)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 526
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 527
    const v0, 0x102001a

    const v1, 0x7f080036

    invoke-virtual {p0, v1}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    sget v1, Lmiui/R$attr;->actionBarDeleteIcon:I

    .line 528
    invoke-static {p0, v1}, Lmiui/util/AttributeResolver;->resolve(Landroid/content/Context;I)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 529
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 530
    return v3
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 606
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 607
    iget-object v0, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 608
    invoke-virtual {p0}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 609
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 613
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 614
    iget-boolean v0, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mIsInEditMode:Z

    if-eqz v0, :cond_0

    .line 615
    invoke-direct {p0}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->cancelEdit()V

    .line 616
    const/4 v0, 0x1

    .line 619
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 535
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x1020019

    if-ne v0, v1, :cond_1

    .line 536
    invoke-direct {p0}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->sendRecorder()V

    .line 537
    invoke-direct {p0}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->cancelEdit()V

    .line 541
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 538
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102001a

    if-ne v0, v1, :cond_0

    .line 539
    invoke-direct {p0}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->deleteDialog()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 600
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 601
    const-string v0, "ScreenRecorderHomePage"

    invoke-static {v0}, Lcom/miui/screenrecorder/tools/MiStatInterfaceUtils;->recordPageEnd(Ljava/lang/String;)V

    .line 602
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 546
    if-eqz p1, :cond_1

    .line 547
    iget-boolean v2, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mIsInEditMode:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mSelectedItem:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    .line 548
    .local v1, "isEnable":Z
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 549
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iget-boolean v3, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mIsInEditMode:Z

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 550
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 548
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 547
    .end local v0    # "i":I
    .end local v1    # "isEnable":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 553
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2
.end method

.method protected onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 587
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 588
    const-string v0, "ScreenRecorderHomePage"

    invoke-static {v0}, Lcom/miui/screenrecorder/tools/MiStatInterfaceUtils;->recordPageStart(Ljava/lang/String;)V

    .line 589
    invoke-direct {p0}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->showPermissionsForKorea()V

    .line 590
    iget-boolean v0, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mStopForSending:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mIsFromSendAction:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mIsInEditMode:Z

    if-eqz v0, :cond_0

    .line 591
    invoke-direct {p0}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->cancelEdit()V

    .line 593
    :cond_0
    iput-boolean v1, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mStopForSending:Z

    .line 594
    iput-boolean v1, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mIsFromSendAction:Z

    .line 595
    iput-boolean v1, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mHasClickSendAction:Z

    .line 596
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 577
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 578
    iget-boolean v0, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mIsFromSendAction:Z

    if-nez v0, :cond_0

    .line 580
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mStopForSending:Z

    .line 582
    :cond_0
    invoke-direct {p0}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->refreshData()V

    .line 583
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 568
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 569
    iget-boolean v0, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mHasClickSendAction:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mIsInEditMode:Z

    if-eqz v0, :cond_0

    .line 570
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mHasClickSendAction:Z

    .line 571
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->mStopForSending:Z

    .line 573
    :cond_0
    return-void
.end method
