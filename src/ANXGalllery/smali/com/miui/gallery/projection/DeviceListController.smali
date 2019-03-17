.class public Lcom/miui/gallery/projection/DeviceListController;
.super Ljava/lang/Object;
.source "DeviceListController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/projection/DeviceListController$DeviceSelectorAdapter;,
        Lcom/miui/gallery/projection/DeviceListController$OnItemClickListener;
    }
.end annotation


# static fields
.field public static MOBILE_NAME:Ljava/lang/String;


# instance fields
.field private mActiveDeviceIndex:I

.field private mActivity:Landroid/app/Activity;

.field private mDeviceAdapter:Lcom/miui/gallery/projection/DeviceListController$DeviceSelectorAdapter;

.field private mDeviceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDeviceListDialog:Lmiui/app/AlertDialog;

.field private mDeviceNotFoundDialog:Lmiui/app/AlertDialog;

.field private mDeviceScanDialog:Lmiui/app/ProgressDialog;

.field private mItemClickListener:Lcom/miui/gallery/projection/DeviceListController$OnItemClickListener;

.field private mNeedShowDeviceList:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mScanTimeoutRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gallery/projection/DeviceListController;->mActiveDeviceIndex:I

    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/miui/gallery/projection/DeviceListController;->mNeedShowDeviceList:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 371
    new-instance v0, Lcom/miui/gallery/projection/DeviceListController$6;

    invoke-direct {v0, p0}, Lcom/miui/gallery/projection/DeviceListController$6;-><init>(Lcom/miui/gallery/projection/DeviceListController;)V

    iput-object v0, p0, Lcom/miui/gallery/projection/DeviceListController;->mScanTimeoutRunnable:Ljava/lang/Runnable;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/projection/DeviceListController;->mDeviceList:Ljava/util/ArrayList;

    .line 54
    iput-object p1, p0, Lcom/miui/gallery/projection/DeviceListController;->mActivity:Landroid/app/Activity;

    .line 55
    const v0, 0x7f0c03db

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/projection/DeviceListController;->MOBILE_NAME:Ljava/lang/String;

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/projection/DeviceListController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/projection/DeviceListController;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/miui/gallery/projection/DeviceListController;->isActive()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/projection/DeviceListController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/projection/DeviceListController;
    .param p1, "x1"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/miui/gallery/projection/DeviceListController;->switchTo(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/miui/gallery/projection/DeviceListController;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/projection/DeviceListController;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/miui/gallery/projection/DeviceListController;->showDeviceNotFoundDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/gallery/projection/DeviceListController;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/projection/DeviceListController;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/miui/gallery/projection/DeviceListController;->mNeedShowDeviceList:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/projection/DeviceListController;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/projection/DeviceListController;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/miui/gallery/projection/DeviceListController;->mScanTimeoutRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/projection/DeviceListController;)Lcom/miui/gallery/projection/DeviceListController$DeviceSelectorAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/projection/DeviceListController;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/miui/gallery/projection/DeviceListController;->mDeviceAdapter:Lcom/miui/gallery/projection/DeviceListController$DeviceSelectorAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/projection/DeviceListController;)Lmiui/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/projection/DeviceListController;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/miui/gallery/projection/DeviceListController;->mDeviceScanDialog:Lmiui/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/gallery/projection/DeviceListController;Landroid/app/Dialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/projection/DeviceListController;
    .param p1, "x1"    # Landroid/app/Dialog;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/miui/gallery/projection/DeviceListController;->dismissSafely(Landroid/app/Dialog;)V

    return-void
.end method

.method static synthetic access$700(Lcom/miui/gallery/projection/DeviceListController;)Lmiui/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/projection/DeviceListController;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/miui/gallery/projection/DeviceListController;->mDeviceNotFoundDialog:Lmiui/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$800(Lcom/miui/gallery/projection/DeviceListController;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/projection/DeviceListController;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/miui/gallery/projection/DeviceListController;->showDeviceListDialog()V

    return-void
.end method

.method static synthetic access$900(Lcom/miui/gallery/projection/DeviceListController;)Lmiui/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/projection/DeviceListController;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/miui/gallery/projection/DeviceListController;->mDeviceListDialog:Lmiui/app/AlertDialog;

    return-object v0
.end method

.method private activityAlive()Z
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/miui/gallery/projection/DeviceListController;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/projection/DeviceListController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/projection/DeviceListController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private dismissSafely(Landroid/app/Dialog;)V
    .locals 1
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 366
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 369
    :cond_0
    return-void
.end method

.method private invalidate()V
    .locals 2

    .prologue
    .line 305
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/projection/DeviceListController;->mScanTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/CompatHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 307
    new-instance v0, Lcom/miui/gallery/projection/DeviceListController$5;

    invoke-direct {v0, p0}, Lcom/miui/gallery/projection/DeviceListController$5;-><init>(Lcom/miui/gallery/projection/DeviceListController;)V

    invoke-static {v0}, Lcom/miui/gallery/threadpool/ThreadManager;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 333
    return-void
.end method

.method private isActive()Z
    .locals 2

    .prologue
    .line 238
    iget v0, p0, Lcom/miui/gallery/projection/DeviceListController;->mActiveDeviceIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showDeviceListDialog()V
    .locals 6

    .prologue
    const v1, 0x7f0c03e1

    const v2, 0x7f0c03d8

    .line 196
    invoke-direct {p0}, Lcom/miui/gallery/projection/DeviceListController;->activityAlive()Z

    move-result v3

    if-nez v3, :cond_0

    .line 235
    :goto_0
    return-void

    .line 197
    :cond_0
    iget-object v3, p0, Lcom/miui/gallery/projection/DeviceListController;->mDeviceListDialog:Lmiui/app/AlertDialog;

    if-nez v3, :cond_4

    .line 198
    iget-object v3, p0, Lcom/miui/gallery/projection/DeviceListController;->mDeviceAdapter:Lcom/miui/gallery/projection/DeviceListController$DeviceSelectorAdapter;

    if-nez v3, :cond_1

    .line 199
    new-instance v3, Lcom/miui/gallery/projection/DeviceListController$DeviceSelectorAdapter;

    iget-object v4, p0, Lcom/miui/gallery/projection/DeviceListController;->mActivity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/miui/gallery/projection/DeviceListController;->mDeviceList:Ljava/util/ArrayList;

    invoke-direct {v3, v4, v5}, Lcom/miui/gallery/projection/DeviceListController$DeviceSelectorAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v3, p0, Lcom/miui/gallery/projection/DeviceListController;->mDeviceAdapter:Lcom/miui/gallery/projection/DeviceListController$DeviceSelectorAdapter;

    .line 201
    :cond_1
    new-instance v3, Lmiui/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/miui/gallery/projection/DeviceListController;->mActivity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0c03dc

    .line 202
    invoke-virtual {v3, v4}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/gallery/projection/DeviceListController;->mDeviceAdapter:Lcom/miui/gallery/projection/DeviceListController$DeviceSelectorAdapter;

    iget v5, p0, Lcom/miui/gallery/projection/DeviceListController;->mActiveDeviceIndex:I

    .line 203
    invoke-virtual {v3, v4, v5, p0}, Lmiui/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/miui/gallery/projection/DeviceListController$2;

    invoke-direct {v4, p0}, Lcom/miui/gallery/projection/DeviceListController$2;-><init>(Lcom/miui/gallery/projection/DeviceListController;)V

    .line 204
    invoke-virtual {v3, v4}, Lmiui/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v3

    .line 211
    invoke-direct {p0}, Lcom/miui/gallery/projection/DeviceListController;->isActive()Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_1
    new-instance v2, Lcom/miui/gallery/projection/DeviceListController$1;

    invoke-direct {v2, p0}, Lcom/miui/gallery/projection/DeviceListController$1;-><init>(Lcom/miui/gallery/projection/DeviceListController;)V

    .line 210
    invoke-virtual {v3, v1, v2}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    .line 221
    invoke-virtual {v1}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/projection/DeviceListController;->mDeviceListDialog:Lmiui/app/AlertDialog;

    .line 227
    :goto_2
    iget-object v1, p0, Lcom/miui/gallery/projection/DeviceListController;->mDeviceListDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v1}, Lmiui/app/AlertDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_2

    .line 228
    iget-object v1, p0, Lcom/miui/gallery/projection/DeviceListController;->mDeviceListDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v1}, Lmiui/app/AlertDialog;->show()V

    .line 232
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/projection/DeviceListController;->mDeviceListDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v1}, Lmiui/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 233
    .local v0, "listView":Landroid/widget/ListView;
    iget v1, p0, Lcom/miui/gallery/projection/DeviceListController;->mActiveDeviceIndex:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 234
    iget v1, p0, Lcom/miui/gallery/projection/DeviceListController;->mActiveDeviceIndex:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    .end local v0    # "listView":Landroid/widget/ListView;
    :cond_3
    move v1, v2

    .line 211
    goto :goto_1

    .line 224
    :cond_4
    iget-object v3, p0, Lcom/miui/gallery/projection/DeviceListController;->mDeviceListDialog:Lmiui/app/AlertDialog;

    const/4 v4, -0x2

    invoke-virtual {v3, v4}, Lmiui/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    invoke-direct {p0}, Lcom/miui/gallery/projection/DeviceListController;->isActive()Z

    move-result v4

    if-eqz v4, :cond_5

    :goto_3
    invoke-virtual {v3, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_2

    :cond_5
    move v1, v2

    goto :goto_3
.end method

.method private showDeviceNotFoundDialog()V
    .locals 3

    .prologue
    .line 242
    invoke-direct {p0}, Lcom/miui/gallery/projection/DeviceListController;->activityAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 258
    :goto_0
    return-void

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/projection/DeviceListController;->mDeviceNotFoundDialog:Lmiui/app/AlertDialog;

    if-nez v0, :cond_1

    .line 244
    new-instance v0, Lmiui/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/miui/gallery/projection/DeviceListController;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c00d2

    .line 245
    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c00d1

    .line 246
    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 247
    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setCancelable(Z)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0244

    const/4 v2, 0x0

    .line 248
    invoke-virtual {v0, v1, v2}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/projection/DeviceListController$3;

    invoke-direct {v1, p0}, Lcom/miui/gallery/projection/DeviceListController$3;-><init>(Lcom/miui/gallery/projection/DeviceListController;)V

    .line 249
    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    .line 255
    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/projection/DeviceListController;->mDeviceNotFoundDialog:Lmiui/app/AlertDialog;

    .line 257
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/projection/DeviceListController;->mDeviceNotFoundDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private showScanDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 275
    invoke-direct {p0}, Lcom/miui/gallery/projection/DeviceListController;->activityAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 293
    :goto_0
    return-void

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/projection/DeviceListController;->mDeviceScanDialog:Lmiui/app/ProgressDialog;

    if-nez v0, :cond_1

    .line 277
    new-instance v0, Lmiui/app/ProgressDialog;

    iget-object v1, p0, Lcom/miui/gallery/projection/DeviceListController;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lmiui/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gallery/projection/DeviceListController;->mDeviceScanDialog:Lmiui/app/ProgressDialog;

    .line 278
    iget-object v0, p0, Lcom/miui/gallery/projection/DeviceListController;->mDeviceScanDialog:Lmiui/app/ProgressDialog;

    invoke-virtual {v0, v3}, Lmiui/app/ProgressDialog;->setIndeterminate(Z)V

    .line 279
    iget-object v0, p0, Lcom/miui/gallery/projection/DeviceListController;->mDeviceScanDialog:Lmiui/app/ProgressDialog;

    iget-object v1, p0, Lcom/miui/gallery/projection/DeviceListController;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0c0462

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 280
    iget-object v0, p0, Lcom/miui/gallery/projection/DeviceListController;->mDeviceScanDialog:Lmiui/app/ProgressDialog;

    invoke-virtual {v0, v3}, Lmiui/app/ProgressDialog;->setCancelable(Z)V

    .line 281
    iget-object v0, p0, Lcom/miui/gallery/projection/DeviceListController;->mDeviceScanDialog:Lmiui/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 282
    iget-object v0, p0, Lcom/miui/gallery/projection/DeviceListController;->mDeviceScanDialog:Lmiui/app/ProgressDialog;

    new-instance v1, Lcom/miui/gallery/projection/DeviceListController$4;

    invoke-direct {v1, p0}, Lcom/miui/gallery/projection/DeviceListController$4;-><init>(Lcom/miui/gallery/projection/DeviceListController;)V

    invoke-virtual {v0, v1}, Lmiui/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 290
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/projection/DeviceListController;->mDeviceScanDialog:Lmiui/app/ProgressDialog;

    invoke-virtual {v0}, Lmiui/app/ProgressDialog;->show()V

    .line 291
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/projection/DeviceListController;->mScanTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/CompatHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 292
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/projection/DeviceListController;->mScanTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/CompatHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private declared-synchronized switchTo(I)V
    .locals 3
    .param p1, "which"    # I

    .prologue
    .line 341
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/projection/DeviceListController;->mItemClickListener:Lcom/miui/gallery/projection/DeviceListController$OnItemClickListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 359
    :goto_0
    monitor-exit p0

    return-void

    .line 345
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/miui/gallery/projection/DeviceListController;->mDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 346
    iget-object v0, p0, Lcom/miui/gallery/projection/DeviceListController;->mDeviceListDialog:Lmiui/app/AlertDialog;

    invoke-direct {p0, v0}, Lcom/miui/gallery/projection/DeviceListController;->dismissSafely(Landroid/app/Dialog;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 341
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 351
    :cond_1
    :try_start_2
    iget v0, p0, Lcom/miui/gallery/projection/DeviceListController;->mActiveDeviceIndex:I

    if-ne v0, p1, :cond_2

    .line 352
    iget-object v0, p0, Lcom/miui/gallery/projection/DeviceListController;->mDeviceListDialog:Lmiui/app/AlertDialog;

    invoke-direct {p0, v0}, Lcom/miui/gallery/projection/DeviceListController;->dismissSafely(Landroid/app/Dialog;)V

    goto :goto_0

    .line 355
    :cond_2
    iput p1, p0, Lcom/miui/gallery/projection/DeviceListController;->mActiveDeviceIndex:I

    .line 358
    iget-object v1, p0, Lcom/miui/gallery/projection/DeviceListController;->mItemClickListener:Lcom/miui/gallery/projection/DeviceListController$OnItemClickListener;

    iget v0, p0, Lcom/miui/gallery/projection/DeviceListController;->mActiveDeviceIndex:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_3

    sget-object v0, Lcom/miui/gallery/projection/DeviceListController;->MOBILE_NAME:Ljava/lang/String;

    :goto_1
    invoke-interface {v1, v0}, Lcom/miui/gallery/projection/DeviceListController$OnItemClickListener;->onItemClicked(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/miui/gallery/projection/DeviceListController;->mDeviceList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/miui/gallery/projection/DeviceListController;->mActiveDeviceIndex:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized addNewDevice(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "deviceName"    # Ljava/lang/String;
    .param p2, "isActive"    # Z

    .prologue
    .line 87
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/projection/DeviceListController;->mScanTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/android/internal/CompatHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 89
    iget-object v1, p0, Lcom/miui/gallery/projection/DeviceListController;->mDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 90
    .local v0, "already":Z
    if-eqz v0, :cond_0

    .line 105
    :goto_0
    monitor-exit p0

    return-void

    .line 94
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/miui/gallery/projection/DeviceListController;->mDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object v1, p0, Lcom/miui/gallery/projection/DeviceListController;->mDeviceScanDialog:Lmiui/app/ProgressDialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/gallery/projection/DeviceListController;->mDeviceScanDialog:Lmiui/app/ProgressDialog;

    invoke-virtual {v1}, Lmiui/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 97
    iget-object v1, p0, Lcom/miui/gallery/projection/DeviceListController;->mDeviceScanDialog:Lmiui/app/ProgressDialog;

    invoke-virtual {v1}, Lmiui/app/ProgressDialog;->dismiss()V

    .line 100
    :cond_1
    if-eqz p2, :cond_2

    .line 101
    iget-object v1, p0, Lcom/miui/gallery/projection/DeviceListController;->mDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/miui/gallery/projection/DeviceListController;->mActiveDeviceIndex:I

    .line 104
    :cond_2
    invoke-direct {p0}, Lcom/miui/gallery/projection/DeviceListController;->invalidate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 87
    .end local v0    # "already":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized dismiss()V
    .locals 2

    .prologue
    .line 296
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/projection/DeviceListController;->mScanTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/CompatHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 297
    iget-object v0, p0, Lcom/miui/gallery/projection/DeviceListController;->mNeedShowDeviceList:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 299
    iget-object v0, p0, Lcom/miui/gallery/projection/DeviceListController;->mDeviceScanDialog:Lmiui/app/ProgressDialog;

    invoke-direct {p0, v0}, Lcom/miui/gallery/projection/DeviceListController;->dismissSafely(Landroid/app/Dialog;)V

    .line 300
    iget-object v0, p0, Lcom/miui/gallery/projection/DeviceListController;->mDeviceListDialog:Lmiui/app/AlertDialog;

    invoke-direct {p0, v0}, Lcom/miui/gallery/projection/DeviceListController;->dismissSafely(Landroid/app/Dialog;)V

    .line 301
    iget-object v0, p0, Lcom/miui/gallery/projection/DeviceListController;->mDeviceNotFoundDialog:Lmiui/app/AlertDialog;

    invoke-direct {p0, v0}, Lcom/miui/gallery/projection/DeviceListController;->dismissSafely(Landroid/app/Dialog;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    monitor-exit p0

    return-void

    .line 296
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hasAirkanDevice()Z
    .locals 1

    .prologue
    .line 78
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/projection/DeviceListController;->mDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 337
    invoke-direct {p0, p2}, Lcom/miui/gallery/projection/DeviceListController;->switchTo(I)V

    .line 338
    return-void
.end method

.method public declared-synchronized refreshDevices(Ljava/util/ArrayList;Ljava/lang/String;)Z
    .locals 10
    .param p2, "curDevice"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "devices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v9, -0x1

    .line 112
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v0, v8, [Z

    .line 113
    .local v0, "findInOldDeviceList":[Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v1, v8, :cond_0

    .line 114
    const/4 v8, 0x0

    aput-boolean v8, v0, v1

    .line 113
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 117
    :cond_0
    const/4 v1, 0x0

    :goto_1
    iget-object v8, p0, Lcom/miui/gallery/projection/DeviceListController;->mDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v1, v8, :cond_4

    .line 118
    iget-object v8, p0, Lcom/miui/gallery/projection/DeviceListController;->mDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 120
    .local v4, "item":Ljava/lang/String;
    const/4 v6, 0x1

    .line 122
    .local v6, "shouldRemoveDevice":Z
    const/4 v5, 0x0

    .local v5, "newIndex":I
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v5, v8, :cond_1

    .line 123
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v4, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 124
    const/4 v8, 0x1

    aput-boolean v8, v0, v5

    .line 125
    const/4 v6, 0x0

    .line 130
    :cond_1
    if-eqz v6, :cond_2

    .line 132
    invoke-virtual {p0, v4}, Lcom/miui/gallery/projection/DeviceListController;->removeDevice(Ljava/lang/String;)Z

    .line 117
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 122
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 137
    .end local v4    # "item":Ljava/lang/String;
    .end local v5    # "newIndex":I
    .end local v6    # "shouldRemoveDevice":Z
    :cond_4
    const/4 v7, 0x0

    .line 138
    .local v7, "toggleActive":Z
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v1, v8, :cond_6

    .line 139
    aget-boolean v8, v0, v1

    if-nez v8, :cond_5

    .line 140
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v8, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    .line 141
    .local v3, "isActive":Z
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {p0, v8, v3}, Lcom/miui/gallery/projection/DeviceListController;->addNewDevice(Ljava/lang/String;Z)V

    .line 142
    if-eqz v3, :cond_5

    .line 143
    const/4 v7, 0x1

    .line 138
    .end local v3    # "isActive":Z
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 148
    :cond_6
    if-eqz p2, :cond_8

    .line 149
    iget-object v8, p0, Lcom/miui/gallery/projection/DeviceListController;->mDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v8, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 150
    .local v2, "index":I
    if-eq v2, v9, :cond_7

    iget v8, p0, Lcom/miui/gallery/projection/DeviceListController;->mActiveDeviceIndex:I

    if-eq v8, v2, :cond_7

    .line 151
    iput v2, p0, Lcom/miui/gallery/projection/DeviceListController;->mActiveDeviceIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    .end local v2    # "index":I
    :cond_7
    :goto_4
    monitor-exit p0

    return v7

    .line 153
    :cond_8
    :try_start_1
    invoke-direct {p0}, Lcom/miui/gallery/projection/DeviceListController;->isActive()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 155
    const/4 v8, -0x1

    iput v8, p0, Lcom/miui/gallery/projection/DeviceListController;->mActiveDeviceIndex:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    const/4 v7, 0x1

    goto :goto_4

    .line 112
    .end local v0    # "findInOldDeviceList":[Z
    .end local v1    # "i":I
    .end local v7    # "toggleActive":Z
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method public removeActive()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 189
    iget v0, p0, Lcom/miui/gallery/projection/DeviceListController;->mActiveDeviceIndex:I

    if-eq v0, v2, :cond_0

    .line 190
    const-string v0, "grap_device_bar"

    const-string/jumbo v1, "~~~~remove the active for device"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iput v2, p0, Lcom/miui/gallery/projection/DeviceListController;->mActiveDeviceIndex:I

    .line 193
    :cond_0
    return-void
.end method

.method public declared-synchronized removeDevice(Ljava/lang/String;)Z
    .locals 4
    .param p1, "deviceName"    # Ljava/lang/String;

    .prologue
    .line 166
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/miui/gallery/projection/DeviceListController;->mDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 167
    .local v0, "deviceCount":I
    const/4 v1, 0x0

    .line 168
    .local v1, "index":I
    const/4 v2, 0x0

    .line 169
    .local v2, "ret":Z
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 170
    iget-object v3, p0, Lcom/miui/gallery/projection/DeviceListController;->mDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 171
    iget-object v3, p0, Lcom/miui/gallery/projection/DeviceListController;->mDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 172
    iget v3, p0, Lcom/miui/gallery/projection/DeviceListController;->mActiveDeviceIndex:I

    if-ne v3, v1, :cond_0

    .line 173
    const/4 v3, -0x1

    iput v3, p0, Lcom/miui/gallery/projection/DeviceListController;->mActiveDeviceIndex:I

    .line 174
    const/4 v2, 0x1

    .line 176
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/projection/DeviceListController;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    :cond_1
    monitor-exit p0

    return v2

    .line 169
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 166
    .end local v0    # "deviceCount":I
    .end local v1    # "index":I
    .end local v2    # "ret":Z
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public setOnItemClickListener(Lcom/miui/gallery/projection/DeviceListController$OnItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/miui/gallery/projection/DeviceListController$OnItemClickListener;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/miui/gallery/projection/DeviceListController;->mItemClickListener:Lcom/miui/gallery/projection/DeviceListController$OnItemClickListener;

    .line 75
    return-void
.end method

.method public declared-synchronized show()V
    .locals 2

    .prologue
    .line 261
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/miui/gallery/projection/DeviceListController;->dismiss()V

    .line 262
    iget-object v0, p0, Lcom/miui/gallery/projection/DeviceListController;->mNeedShowDeviceList:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 264
    iget-object v0, p0, Lcom/miui/gallery/projection/DeviceListController;->mDeviceList:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 265
    invoke-static {}, Lcom/miui/gallery/projection/ConnectController;->getInstance()Lcom/miui/gallery/projection/ConnectController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/projection/ConnectController;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 266
    invoke-static {}, Lcom/miui/gallery/projection/ConnectController;->getInstance()Lcom/miui/gallery/projection/ConnectController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/projection/ConnectController;->open()V

    .line 268
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/projection/DeviceListController;->showScanDialog()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    :goto_0
    monitor-exit p0

    return-void

    .line 270
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/miui/gallery/projection/DeviceListController;->showDeviceListDialog()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 261
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
