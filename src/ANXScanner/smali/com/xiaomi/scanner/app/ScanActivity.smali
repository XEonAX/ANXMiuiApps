.class public Lcom/xiaomi/scanner/app/ScanActivity;
.super Lmiui/app/Activity;
.source "ScanActivity.java"

# interfaces
.implements Lcom/xiaomi/scanner/app/AppController;
.implements Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;
.implements Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigTask$CloudConfigResponse;
.implements Landroid/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback;
.implements Lcom/xiaomi/scanner/camera/OrientationManager$OrientationChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/scanner/app/ScanActivity$OnStorageUpdateDoneListener;,
        Lcom/xiaomi/scanner/app/ScanActivity$ResumeTaskSync;,
        Lcom/xiaomi/scanner/app/ScanActivity$MainHandler;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final BEEP_VOLUME:F = 0.1f

.field private static final DEFAULT_TRY_FAIL_COUNT:I = 0x3

.field private static final MODULE_REQUEST_SHIFT:I = 0x10

.field private static final MSG_CLEAR_SCREEN_ON_FLAG:I = 0x2

.field private static final MSG_OPEN_CAMERA:I = 0x1

.field private static final ON_RESUME_DELAY_NON_SECURE_MILLIS:J = 0xfL

.field private static final ON_RESUME_DELAY_SECURE_MILLIS:J = 0x1eL

.field private static final OPEN_CAMERA_DELAY_MS:J = 0x64L

.field public static final REQUEST_DECODE_IMAGE:I = 0x1

.field public static final REQUEST_DECODE_IMAGE_CROPPED:I = 0x2

.field public static final REQUEST_KOREA_PERMISSION:I = 0x64

.field public static final REQUEST_PERMISSION:I = 0x3

.field private static final RUNTIME_PERMISSIONS:[Ljava/lang/String;

.field private static final SCREEN_DELAY_MS:J = 0x7530L

.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

.field private static final VIBRATE_DURATION:J = 0xc8L


# instance fields
.field private mAmazonAssistantHelper:Lcom/xiaomi/scanner/module/amazoncloudconfig/AmazonAssistantHelper;

.field private mAppContext:Landroid/content/Context;

.field private mAppUI:Lcom/xiaomi/scanner/app/AppUI;

.field private mCameraController:Lcom/xiaomi/scanner/camera/CameraController;

.field private final mCameraExceptionCallback:Lcom/android/ex/camera2/portability/CameraExceptionHandler$CameraExceptionCallback;

.field private mCameraFatalError:Z

.field private mCameraIsAvailable:Z

.field private mCaptureModule:Lcom/xiaomi/scanner/camera/CaptureModule;

.field private mClearTasks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mConfirmDialog:Lcom/xiaomi/scanner/dialog/CtaDialog;

.field private final mConnectivityReceiver:Landroid/content/BroadcastReceiver;

.field private mCurrentModule:Lcom/xiaomi/scanner/module/ModuleController;

.field private mCurrentModuleIndex:I

.field private mExtraIntentBundle:Landroid/os/Bundle;

.field private mFailureRetryTimes:I

.field private mFatalErrorHandler:Lcom/xiaomi/scanner/camera/FatalErrorHandler;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mImagePath:Ljava/lang/String;

.field private mIsBusinessCardScan:Z

.field private mKeepScreenOn:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mMainHandler:Landroid/os/Handler;

.field private mMainThreadId:J

.field private mModuleManager:Lcom/xiaomi/scanner/module/ModuleManager;

.field private mOnCreateTask:Ljava/lang/Runnable;

.field private final mOnResumeTasks:Ljava/lang/Runnable;

.field private mOrientationManager:Lcom/xiaomi/scanner/camera/OrientationManagerImpl;

.field private mPaused:Z

.field private mPendingIntent:Landroid/content/Intent;

.field private mPendingModuleIndex:I

.field private mPendingRequestCode:I

.field private mPendingResultCode:I

.field private mResetToPreviewOnResume:Z

.field private mResumeTask:Landroid/os/AsyncTask;

.field private mSettingsManager:Lcom/xiaomi/scanner/settings/SettingsManager;

.field private mSkippedFirstOnResume:Z

.field private mSoundPlayer:Lcom/xiaomi/scanner/camera/SoundPlayer;

.field private mStorageHint:Lcom/xiaomi/scanner/ui/OnScreenHint;

.field private mStorageSpaceBytes:J

.field private final mStorageSpaceLock:Ljava/lang/Object;

.field private mToast:Landroid/widget/Toast;

.field private mWarnDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 91
    const-class v0, Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/xiaomi/scanner/app/ScanActivity;->$assertionsDisabled:Z

    .line 95
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v3, "ScanActivity"

    invoke-direct {v0, v3}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/app/ScanActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    .line 214
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "android.permission.CAMERA"

    aput-object v3, v0, v2

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/xiaomi/scanner/app/ScanActivity;->RUNTIME_PERMISSIONS:[Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    .line 91
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 91
    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    .line 123
    iput-object v2, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mAmazonAssistantHelper:Lcom/xiaomi/scanner/module/amazoncloudconfig/AmazonAssistantHelper;

    .line 130
    iput-boolean v3, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCameraFatalError:Z

    .line 136
    iput-boolean v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mResetToPreviewOnResume:Z

    .line 137
    iput-boolean v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mPaused:Z

    .line 149
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mStorageSpaceLock:Ljava/lang/Object;

    .line 150
    const-wide/32 v0, 0x2faf080

    iput-wide v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mStorageSpaceBytes:J

    .line 157
    const/4 v0, 0x3

    iput v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mFailureRetryTimes:I

    .line 173
    iput-object v2, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mConfirmDialog:Lcom/xiaomi/scanner/dialog/CtaDialog;

    .line 174
    iput-object v2, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mWarnDialog:Landroid/app/AlertDialog;

    .line 176
    iput-object v2, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 182
    iput-boolean v3, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mSkippedFirstOnResume:Z

    .line 187
    new-instance v0, Lcom/xiaomi/scanner/app/ScanActivity$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/scanner/app/ScanActivity$1;-><init>(Lcom/xiaomi/scanner/app/ScanActivity;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mOnResumeTasks:Ljava/lang/Runnable;

    .line 202
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mPendingModuleIndex:I

    .line 209
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mClearTasks:Landroid/util/SparseArray;

    .line 1490
    new-instance v0, Lcom/xiaomi/scanner/app/ScanActivity$9;

    invoke-direct {v0, p0}, Lcom/xiaomi/scanner/app/ScanActivity$9;-><init>(Lcom/xiaomi/scanner/app/ScanActivity;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCameraExceptionCallback:Lcom/android/ex/camera2/portability/CameraExceptionHandler$CameraExceptionCallback;

    .line 1533
    new-instance v0, Lcom/xiaomi/scanner/app/ScanActivity$10;

    invoke-direct {v0, p0}, Lcom/xiaomi/scanner/app/ScanActivity$10;-><init>(Lcom/xiaomi/scanner/app/ScanActivity;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/scanner/app/ScanActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/app/ScanActivity;

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mSkippedFirstOnResume:Z

    return v0
.end method

.method static synthetic access$002(Lcom/xiaomi/scanner/app/ScanActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/scanner/app/ScanActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mSkippedFirstOnResume:Z

    return p1
.end method

.method static synthetic access$100()Lcom/xiaomi/scanner/debug/Log$Tag;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/xiaomi/scanner/app/ScanActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/xiaomi/scanner/app/ScanActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/scanner/app/ScanActivity;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->initGestureDetector()V

    return-void
.end method

.method static synthetic access$1100(Lcom/xiaomi/scanner/app/ScanActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/scanner/app/ScanActivity;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->onCtaAgreeToRun()V

    return-void
.end method

.method static synthetic access$1200(Lcom/xiaomi/scanner/app/ScanActivity;)Lcom/xiaomi/scanner/camera/SoundPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/app/ScanActivity;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mSoundPlayer:Lcom/xiaomi/scanner/camera/SoundPlayer;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/xiaomi/scanner/app/ScanActivity;Lcom/xiaomi/scanner/camera/SoundPlayer;)Lcom/xiaomi/scanner/camera/SoundPlayer;
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/scanner/app/ScanActivity;
    .param p1, "x1"    # Lcom/xiaomi/scanner/camera/SoundPlayer;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mSoundPlayer:Lcom/xiaomi/scanner/camera/SoundPlayer;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/xiaomi/scanner/app/ScanActivity;)Lcom/xiaomi/scanner/camera/OrientationManagerImpl;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/app/ScanActivity;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mOrientationManager:Lcom/xiaomi/scanner/camera/OrientationManagerImpl;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/xiaomi/scanner/app/ScanActivity;Lcom/xiaomi/scanner/camera/OrientationManagerImpl;)Lcom/xiaomi/scanner/camera/OrientationManagerImpl;
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/scanner/app/ScanActivity;
    .param p1, "x1"    # Lcom/xiaomi/scanner/camera/OrientationManagerImpl;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mOrientationManager:Lcom/xiaomi/scanner/camera/OrientationManagerImpl;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/xiaomi/scanner/app/ScanActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/app/ScanActivity;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/xiaomi/scanner/app/ScanActivity;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/app/ScanActivity;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mStorageSpaceLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/xiaomi/scanner/app/ScanActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/xiaomi/scanner/app/ScanActivity;

    .prologue
    .line 91
    iget-wide v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mStorageSpaceBytes:J

    return-wide v0
.end method

.method static synthetic access$1602(Lcom/xiaomi/scanner/app/ScanActivity;J)J
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/app/ScanActivity;
    .param p1, "x1"    # J

    .prologue
    .line 91
    iput-wide p1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mStorageSpaceBytes:J

    return-wide p1
.end method

.method static synthetic access$1700(Lcom/xiaomi/scanner/app/ScanActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/app/ScanActivity;

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCameraFatalError:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/xiaomi/scanner/app/ScanActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/scanner/app/ScanActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCameraFatalError:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/xiaomi/scanner/app/ScanActivity;)Lcom/xiaomi/scanner/camera/FatalErrorHandler;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/app/ScanActivity;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mFatalErrorHandler:Lcom/xiaomi/scanner/camera/FatalErrorHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/xiaomi/scanner/app/ScanActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/scanner/app/ScanActivity;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->onResumeTasks()V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaomi/scanner/app/ScanActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/app/ScanActivity;

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mPaused:Z

    return v0
.end method

.method static synthetic access$400(Lcom/xiaomi/scanner/app/ScanActivity;)Lcom/xiaomi/scanner/app/AppUI;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/app/ScanActivity;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mAppUI:Lcom/xiaomi/scanner/app/AppUI;

    return-object v0
.end method

.method static synthetic access$500(Lcom/xiaomi/scanner/app/ScanActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/scanner/app/ScanActivity;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->removeAmazonAssistantMenu()V

    return-void
.end method

.method static synthetic access$700(Lcom/xiaomi/scanner/app/ScanActivity;)Lcom/xiaomi/scanner/camera/CaptureModule;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/app/ScanActivity;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCaptureModule:Lcom/xiaomi/scanner/camera/CaptureModule;

    return-object v0
.end method

.method static synthetic access$800(Lcom/xiaomi/scanner/app/ScanActivity;)Lcom/xiaomi/scanner/module/ModuleController;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/app/ScanActivity;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCurrentModule:Lcom/xiaomi/scanner/module/ModuleController;

    return-object v0
.end method

.method static synthetic access$900(Lcom/xiaomi/scanner/app/ScanActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/app/ScanActivity;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method private checkIntentExtraData(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 748
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mExtraIntentBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 749
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mExtraIntentBundle:Landroid/os/Bundle;

    .line 754
    :goto_0
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mExtraIntentBundle:Landroid/os/Bundle;

    const-string v1, "isBackToThirdApp"

    const-string v2, "isBackToThirdApp"

    const/4 v3, 0x0

    .line 755
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 754
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 756
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SEND"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 757
    iget-object v1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mExtraIntentBundle:Landroid/os/Bundle;

    const-string v2, "imagePath"

    const-string v0, "android.intent.extra.STREAM"

    .line 758
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-static {v0}, Lcom/xiaomi/scanner/module/code/utils/Utils;->getFilePathFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 757
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    :goto_1
    return-void

    .line 751
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mExtraIntentBundle:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    goto :goto_0

    .line 760
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mExtraIntentBundle:Landroid/os/Bundle;

    const-string v1, "imagePath"

    const-string v2, "imagePath"

    .line 761
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 760
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private checkPermissions()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 221
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 222
    .local v1, "permissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v3, Lcom/xiaomi/scanner/app/ScanActivity;->RUNTIME_PERMISSIONS:[Ljava/lang/String;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v0, v3, v2

    .line 223
    .local v0, "permission":Ljava/lang/String;
    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    .line 225
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 228
    .end local v0    # "permission":Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method private closeModule(Lcom/xiaomi/scanner/module/ModuleController;)V
    .locals 1
    .param p1, "module"    # Lcom/xiaomi/scanner/module/ModuleController;

    .prologue
    .line 1377
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mAppUI:Lcom/xiaomi/scanner/app/AppUI;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/AppUI;->clearModuleUI()V

    .line 1378
    invoke-interface {p1}, Lcom/xiaomi/scanner/module/ModuleController;->onPause()V

    .line 1379
    invoke-interface {p1}, Lcom/xiaomi/scanner/module/ModuleController;->onStop()V

    .line 1380
    invoke-interface {p1}, Lcom/xiaomi/scanner/module/ModuleController;->onDestroy()V

    .line 1381
    return-void
.end method

.method private doResumeOnGetAllPermission()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 421
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mAppUI:Lcom/xiaomi/scanner/app/AppUI;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/AppUI;->resume()V

    .line 422
    const/4 v0, 0x3

    iput v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mFailureRetryTimes:I

    .line 423
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCurrentModule:Lcom/xiaomi/scanner/module/ModuleController;

    invoke-interface {v0}, Lcom/xiaomi/scanner/module/ModuleController;->onResume()V

    .line 425
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mResetToPreviewOnResume:Z

    .line 427
    invoke-direct {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->keepScreenOnForAWhile()V

    .line 428
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mResumeTask:Landroid/os/AsyncTask;

    if-nez v0, :cond_1

    .line 429
    new-instance v0, Lcom/xiaomi/scanner/app/ScanActivity$ResumeTaskSync;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/scanner/app/ScanActivity$ResumeTaskSync;-><init>(Lcom/xiaomi/scanner/app/ScanActivity;Lcom/xiaomi/scanner/app/ScanActivity$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/app/ScanActivity$ResumeTaskSync;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mResumeTask:Landroid/os/AsyncTask;

    .line 433
    :goto_0
    iget v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mPendingModuleIndex:I

    if-eq v0, v2, :cond_0

    .line 434
    invoke-direct {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->handlePendingIntent()V

    .line 435
    iput v2, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mPendingModuleIndex:I

    .line 437
    :cond_0
    return-void

    .line 431
    :cond_1
    sget-object v0, Lcom/xiaomi/scanner/app/ScanActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "task is not null, drop this operation"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getClearTask(I)Ljava/lang/Runnable;
    .locals 5
    .param p1, "moduleId"    # I

    .prologue
    .line 1435
    iget-object v2, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mClearTasks:Landroid/util/SparseArray;

    monitor-enter v2

    .line 1436
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mClearTasks:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 1437
    .local v0, "runnable":Ljava/lang/Runnable;
    sget-object v1, Lcom/xiaomi/scanner/app/ScanActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getClearTask: moduleId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " task="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 1438
    monitor-exit v2

    return-object v0

    .line 1439
    .end local v0    # "runnable":Ljava/lang/Runnable;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getModuleIndex(Landroid/content/Intent;)I
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 697
    invoke-virtual {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e0004

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 698
    .local v1, "defaultIndex":I
    if-nez p1, :cond_0

    .line 699
    sget-object v6, Lcom/xiaomi/scanner/app/ScanActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v7, "getModuleIndex fail, null intent"

    invoke-static {v6, v7}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 732
    .end local v1    # "defaultIndex":I
    :goto_0
    return v1

    .line 702
    .restart local v1    # "defaultIndex":I
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 703
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 704
    .local v5, "uri":Landroid/net/Uri;
    sget-object v6, Lcom/xiaomi/scanner/app/ScanActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getModuleIndex action="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 705
    const-string v6, "android.intent.action.scanner"

    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "miui.intent.action.scanner"

    .line 706
    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 707
    :cond_1
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/app/ScanActivity;->checkIntentExtraData(Landroid/content/Intent;)V

    .line 708
    const-string v6, "extra_intent_module_index"

    invoke-virtual {p1, v6, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-direct {p0, v6, v1}, Lcom/xiaomi/scanner/app/ScanActivity;->getRealIndex(II)I

    move-result v1

    goto :goto_0

    .line 709
    :cond_2
    const-string v6, "android.intent.action.scanbarcode"

    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "android.intent.action.SEND"

    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "miui.intent.action.scanbarcode"

    .line 710
    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 711
    :cond_3
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/app/ScanActivity;->checkIntentExtraData(Landroid/content/Intent;)V

    .line 712
    invoke-virtual {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e0007

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    goto :goto_0

    .line 713
    :cond_4
    const-string v6, "miui.intent.action.scanbusinesscard"

    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 714
    invoke-virtual {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e0006

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    goto :goto_0

    .line 715
    :cond_5
    if-eqz v5, :cond_7

    .line 716
    const-string v6, "extra_intent_module_index"

    invoke-virtual {v5, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 717
    .local v3, "moduleStr":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 718
    sget-object v6, Lcom/xiaomi/scanner/app/ScanActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v7, "moduleStr is empty"

    invoke-static {v6, v7}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 722
    :cond_6
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {p0, v6, v1}, Lcom/xiaomi/scanner/app/ScanActivity;->getRealIndex(II)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto/16 :goto_0

    .line 723
    :catch_0
    move-exception v2

    .line 724
    .local v2, "e":Ljava/lang/NumberFormatException;
    sget-object v6, Lcom/xiaomi/scanner/app/ScanActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v7, "parse moduleStr error"

    invoke-static {v6, v7, v2}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 728
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .end local v3    # "moduleStr":Ljava/lang/String;
    :cond_7
    const-string v6, "defaultFunctionSelect"

    invoke-static {v6, v1}, Lcom/xiaomi/scanner/util/SPUtils;->getLocal(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 729
    .local v4, "settingIndex":I
    const/16 v6, -0x64

    if-ne v4, v6, :cond_8

    .line 730
    const-string v6, "lastUseModuleId"

    invoke-static {v6, v1}, Lcom/xiaomi/scanner/util/SPUtils;->getLocal(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 732
    :cond_8
    invoke-direct {p0, v4, v1}, Lcom/xiaomi/scanner/app/ScanActivity;->getRealIndex(II)I

    move-result v1

    goto/16 :goto_0
.end method

.method private getRealIndex(II)I
    .locals 1
    .param p1, "tempIndex"    # I
    .param p2, "defaultIndex"    # I

    .prologue
    .line 766
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mModuleManager:Lcom/xiaomi/scanner/module/ModuleManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mModuleManager:Lcom/xiaomi/scanner/module/ModuleManager;

    invoke-interface {v0, p1}, Lcom/xiaomi/scanner/module/ModuleManager;->getModuleAgent(I)Lcom/xiaomi/scanner/module/ModuleManager$ModuleAgent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 769
    .end local p1    # "tempIndex":I
    :goto_0
    return p1

    .restart local p1    # "tempIndex":I
    :cond_0
    move p1, p2

    goto :goto_0
.end method

.method private handleIntentFrom(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 345
    const-string v0, "miui.intent.action.scanbusinesscard"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mIsBusinessCardScan:Z

    .line 346
    return-void
.end method

.method private handlePendingIntent()V
    .locals 4

    .prologue
    .line 561
    iget v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCurrentModuleIndex:I

    iget v1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mPendingModuleIndex:I

    if-ne v0, v1, :cond_0

    .line 562
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCurrentModule:Lcom/xiaomi/scanner/module/ModuleController;

    iget v1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mPendingRequestCode:I

    iget v2, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mPendingResultCode:I

    iget-object v3, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mPendingIntent:Landroid/content/Intent;

    invoke-interface {v0, v1, v2, v3}, Lcom/xiaomi/scanner/module/ModuleController;->onActivityResult(IILandroid/content/Intent;)V

    .line 567
    :goto_0
    return-void

    .line 564
    :cond_0
    sget-object v0, Lcom/xiaomi/scanner/app/ScanActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlePendingIntent: current module_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCurrentModuleIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " drops module_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mPendingModuleIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'s request"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initGestureDetector()V
    .locals 2

    .prologue
    .line 1472
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/xiaomi/scanner/app/ScanActivity$8;

    invoke-direct {v1, p0}, Lcom/xiaomi/scanner/app/ScanActivity$8;-><init>(Lcom/xiaomi/scanner/app/ScanActivity;)V

    invoke-direct {v0, p0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mGestureDetector:Landroid/view/GestureDetector;

    .line 1484
    return-void
.end method

.method private isKeyguardLocked()Z
    .locals 1

    .prologue
    .line 570
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_0

    .line 571
    invoke-static {}, Lcom/xiaomi/scanner/util/AndroidServices;->instance()Lcom/xiaomi/scanner/util/AndroidServices;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/scanner/util/AndroidServices;->provideKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 573
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v0, :cond_1

    .line 574
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    .line 576
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isKeyguardSecure()Z
    .locals 1

    .prologue
    .line 580
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_0

    .line 581
    invoke-static {}, Lcom/xiaomi/scanner/util/AndroidServices;->instance()Lcom/xiaomi/scanner/util/AndroidServices;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/scanner/util/AndroidServices;->provideKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 583
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v0, :cond_1

    .line 584
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v0

    .line 586
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private keepScreenOnForAWhile()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 1443
    iget-boolean v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mKeepScreenOn:Z

    if-eqz v0, :cond_0

    .line 1449
    :goto_0
    return-void

    .line 1446
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1447
    invoke-virtual {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1448
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private onCTAAndPermissionAgree()V
    .locals 1

    .prologue
    .line 686
    invoke-direct {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->doResumeOnGetAllPermission()V

    .line 687
    invoke-virtual {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->checkAppStartRun()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCurrentModule:Lcom/xiaomi/scanner/module/ModuleController;

    if-eqz v0, :cond_0

    .line 688
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCurrentModule:Lcom/xiaomi/scanner/module/ModuleController;

    invoke-interface {v0}, Lcom/xiaomi/scanner/module/ModuleController;->onCTAAndPermissionAgree()V

    .line 690
    :cond_0
    return-void
.end method

.method private onCreateTasks(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 595
    sget-object v1, Lcom/xiaomi/scanner/app/ScanActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v2, "onCreateTasks"

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 596
    invoke-static {p0}, Lcom/xiaomi/scanner/util/AppUtil;->hideNavigationLayout(Landroid/app/Activity;)V

    .line 597
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/xiaomi/scanner/app/ScanActivity;->setVolumeControlStream(I)V

    .line 598
    invoke-virtual {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mAppContext:Landroid/content/Context;

    .line 599
    new-instance v1, Lcom/xiaomi/scanner/app/ScanActivity$MainHandler;

    invoke-virtual {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/xiaomi/scanner/app/ScanActivity$MainHandler;-><init>(Lcom/xiaomi/scanner/app/ScanActivity;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mMainHandler:Landroid/os/Handler;

    .line 600
    new-instance v1, Lcom/xiaomi/scanner/camera/FatalErrorHandlerImpl;

    invoke-direct {v1, p0}, Lcom/xiaomi/scanner/camera/FatalErrorHandlerImpl;-><init>(Lcom/xiaomi/scanner/app/ScanActivity;)V

    iput-object v1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mFatalErrorHandler:Lcom/xiaomi/scanner/camera/FatalErrorHandler;

    .line 601
    new-instance v1, Lcom/xiaomi/scanner/settings/SettingsManager;

    iget-object v2, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mAppContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/xiaomi/scanner/settings/SettingsManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mSettingsManager:Lcom/xiaomi/scanner/settings/SettingsManager;

    .line 604
    :try_start_0
    new-instance v1, Lcom/xiaomi/scanner/camera/CameraController;

    iget-object v2, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mMainHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mAppContext:Landroid/content/Context;

    sget-object v4, Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;->API_1:Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;

    .line 605
    invoke-static {v3, v4}, Lcom/android/ex/camera2/portability/CameraAgentFactory;->getAndroidCameraAgent(Landroid/content/Context;Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;)Lcom/android/ex/camera2/portability/CameraAgent;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/xiaomi/scanner/camera/CameraController;-><init>(Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent;)V

    iput-object v1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCameraController:Lcom/xiaomi/scanner/camera/CameraController;

    .line 608
    iget-object v1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCameraController:Lcom/xiaomi/scanner/camera/CameraController;

    new-instance v2, Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    iget-object v3, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCameraExceptionCallback:Lcom/android/ex/camera2/portability/CameraExceptionHandler$CameraExceptionCallback;

    iget-object v4, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mMainHandler:Landroid/os/Handler;

    invoke-direct {v2, v3, v4}, Lcom/android/ex/camera2/portability/CameraExceptionHandler;-><init>(Lcom/android/ex/camera2/portability/CameraExceptionHandler$CameraExceptionCallback;Landroid/os/Handler;)V

    invoke-virtual {v1, v2}, Lcom/xiaomi/scanner/camera/CameraController;->setCameraExceptionHandler(Lcom/android/ex/camera2/portability/CameraExceptionHandler;)V
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0

    .line 615
    :goto_0
    new-instance v1, Lcom/xiaomi/scanner/module/ModuleManagerImpl;

    invoke-direct {v1}, Lcom/xiaomi/scanner/module/ModuleManagerImpl;-><init>()V

    iput-object v1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mModuleManager:Lcom/xiaomi/scanner/module/ModuleManager;

    .line 616
    iget-object v1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mAppContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mModuleManager:Lcom/xiaomi/scanner/module/ModuleManager;

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/module/ModulesInfo;->setupModules(Landroid/content/Context;Lcom/xiaomi/scanner/module/ModuleManager;)V

    .line 618
    new-instance v1, Lcom/xiaomi/scanner/module/amazoncloudconfig/AmazonAssistantHelper;

    invoke-direct {v1, p0}, Lcom/xiaomi/scanner/module/amazoncloudconfig/AmazonAssistantHelper;-><init>(Lcom/xiaomi/scanner/app/ScanActivity;)V

    iput-object v1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mAmazonAssistantHelper:Lcom/xiaomi/scanner/module/amazoncloudconfig/AmazonAssistantHelper;

    .line 619
    iget-object v1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mAmazonAssistantHelper:Lcom/xiaomi/scanner/module/amazoncloudconfig/AmazonAssistantHelper;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/module/amazoncloudconfig/AmazonAssistantHelper;->amazonAssistantCloudConfigCall()V

    .line 621
    const v1, 0x7f03001f

    invoke-virtual {p0, v1}, Lcom/xiaomi/scanner/app/ScanActivity;->setContentView(I)V

    .line 622
    new-instance v2, Lcom/xiaomi/scanner/app/AppUI;

    const v1, 0x7f0d0086

    invoke-virtual {p0, v1}, Lcom/xiaomi/scanner/app/ScanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-direct {v2, p0, v1}, Lcom/xiaomi/scanner/app/AppUI;-><init>(Lcom/xiaomi/scanner/app/AppController;Landroid/widget/FrameLayout;)V

    iput-object v2, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mAppUI:Lcom/xiaomi/scanner/app/AppUI;

    .line 623
    invoke-virtual {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/xiaomi/scanner/app/ScanActivity;->getModuleIndex(Landroid/content/Intent;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/xiaomi/scanner/app/ScanActivity;->setModuleFromModeIndex(I)V

    .line 624
    iget-object v1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mAppUI:Lcom/xiaomi/scanner/app/AppUI;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/app/AppUI;->prepareModuleUI()V

    .line 626
    new-instance v1, Lcom/xiaomi/scanner/camera/CaptureModule;

    invoke-direct {v1, p0}, Lcom/xiaomi/scanner/camera/CaptureModule;-><init>(Lcom/xiaomi/scanner/app/ScanActivity;)V

    iput-object v1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCaptureModule:Lcom/xiaomi/scanner/camera/CaptureModule;

    .line 627
    iget-object v1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mAppUI:Lcom/xiaomi/scanner/app/AppUI;

    iget-object v2, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCaptureModule:Lcom/xiaomi/scanner/camera/CaptureModule;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/scanner/app/AppUI;->addOrRemoveShutterListener(Lcom/xiaomi/scanner/ui/ShutterButton$OnShutterButtonListener;Z)V

    .line 628
    iget-object v1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCurrentModule:Lcom/xiaomi/scanner/module/ModuleController;

    invoke-interface {v1, p0}, Lcom/xiaomi/scanner/module/ModuleController;->init(Lcom/xiaomi/scanner/app/ScanActivity;)V

    .line 629
    invoke-direct {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->registerIntentReceiver()V

    .line 630
    new-instance v1, Lcom/xiaomi/scanner/app/ScanActivity$4;

    invoke-direct {v1, p0}, Lcom/xiaomi/scanner/app/ScanActivity$4;-><init>(Lcom/xiaomi/scanner/app/ScanActivity;)V

    iput-object v1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mOnCreateTask:Ljava/lang/Runnable;

    .line 637
    iget-object v1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mMainHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mOnCreateTask:Ljava/lang/Runnable;

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 638
    return-void

    .line 610
    :catch_0
    move-exception v0

    .line 611
    .local v0, "e":Ljava/lang/AssertionError;
    sget-object v1, Lcom/xiaomi/scanner/app/ScanActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v2, "Creating camera controller failed."

    invoke-static {v1, v2, v0}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 612
    iget-object v1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mFatalErrorHandler:Lcom/xiaomi/scanner/camera/FatalErrorHandler;

    invoke-interface {v1}, Lcom/xiaomi/scanner/camera/FatalErrorHandler;->onGenericCameraAccessFailure()V

    goto :goto_0
.end method

.method private onCtaAgreeToRun()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 680
    invoke-static {v0}, Lcom/xiaomi/scanner/util/AppUtil;->saveUserAgreeToRun(Z)V

    .line 681
    invoke-direct {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->showPermissionRequestOrRun()V

    .line 682
    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/app/ScanActivity;->queryFromServer(Z)V

    .line 683
    return-void
.end method

.method private onPauseTasks()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 859
    invoke-static {}, Lcom/xiaomi/scanner/stats/UsageStatistics;->recordPageEnd()V

    .line 860
    iput-boolean v2, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mPaused:Z

    .line 861
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mResumeTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 862
    sget-object v0, Lcom/xiaomi/scanner/app/ScanActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "mResumeTask not null, Interrupt it"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 863
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mResumeTask:Landroid/os/AsyncTask;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 864
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mResumeTask:Landroid/os/AsyncTask;

    .line 866
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCaptureModule:Lcom/xiaomi/scanner/camera/CaptureModule;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/CaptureModule;->pause()V

    .line 867
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCurrentModule:Lcom/xiaomi/scanner/module/ModuleController;

    invoke-interface {v0}, Lcom/xiaomi/scanner/module/ModuleController;->onPause()V

    .line 868
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mOrientationManager:Lcom/xiaomi/scanner/camera/OrientationManagerImpl;

    if-eqz v0, :cond_1

    .line 869
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mOrientationManager:Lcom/xiaomi/scanner/camera/OrientationManagerImpl;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/OrientationManagerImpl;->pause()V

    .line 871
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mSoundPlayer:Lcom/xiaomi/scanner/camera/SoundPlayer;

    if-eqz v0, :cond_2

    .line 872
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mSoundPlayer:Lcom/xiaomi/scanner/camera/SoundPlayer;

    const/high16 v1, 0x7f060000

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/camera/SoundPlayer;->unloadSound(I)V

    .line 873
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mSoundPlayer:Lcom/xiaomi/scanner/camera/SoundPlayer;

    const v1, 0x7f060001

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/camera/SoundPlayer;->unloadSound(I)V

    .line 875
    :cond_2
    invoke-direct {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->resetScreenOn()V

    .line 876
    invoke-direct {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->resetOpenCamera()V

    .line 880
    iget-boolean v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCameraFatalError:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_4

    .line 881
    sget-object v0, Lcom/xiaomi/scanner/app/ScanActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "onPause when camera is in fatal state, call Activity.finish()"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 882
    invoke-virtual {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->finish()V

    .line 891
    :cond_3
    :goto_0
    return-void

    .line 885
    :cond_4
    sget-object v0, Lcom/xiaomi/scanner/app/ScanActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "onPause closing camera"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 886
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCameraController:Lcom/xiaomi/scanner/camera/CameraController;

    if-eqz v0, :cond_3

    .line 887
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCameraController:Lcom/xiaomi/scanner/camera/CameraController;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/CameraController;->closeCamera()V

    .line 888
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCameraIsAvailable:Z

    goto :goto_0
.end method

.method private onResumeTasks()V
    .locals 2

    .prologue
    .line 782
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mPaused:Z

    .line 783
    const-string v0, "ScanActivity"

    invoke-static {p0, v0}, Lcom/xiaomi/scanner/stats/UsageStatistics;->recordPageStart(Landroid/app/Activity;Ljava/lang/String;)V

    .line 785
    invoke-static {p0}, Lcom/xiaomi/scanner/util/AppUtil;->shouldRedrawMenuAgain(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 786
    invoke-direct {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->removeAAShopping()V

    .line 788
    :cond_0
    invoke-static {}, Lcom/xiaomi/scanner/util/DeviceUtil;->isKoreaRegion()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/xiaomi/scanner/util/AppUtil;->isKoreaPermissionShowed()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x64

    invoke-static {p0, v0}, Lcom/xiaomi/scanner/util/AppJumpUtils;->toShowKoreaPermission(Landroid/app/Activity;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 789
    sget-object v0, Lcom/xiaomi/scanner/app/ScanActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "toShowKoreaPermission success"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->i(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 799
    :goto_0
    return-void

    .line 790
    :cond_1
    invoke-static {}, Lcom/xiaomi/scanner/util/AppUtil;->isUserAgreeToRun()Z

    move-result v0

    if-nez v0, :cond_2

    .line 791
    invoke-direct {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->showConfirmDialog()V

    goto :goto_0

    .line 793
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mConfirmDialog:Lcom/xiaomi/scanner/dialog/CtaDialog;

    if-eqz v0, :cond_3

    .line 794
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mConfirmDialog:Lcom/xiaomi/scanner/dialog/CtaDialog;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/dialog/CtaDialog;->dismiss()V

    .line 795
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mConfirmDialog:Lcom/xiaomi/scanner/dialog/CtaDialog;

    .line 797
    :cond_3
    invoke-direct {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->showPermissionRequestOrRun()V

    goto :goto_0
.end method

.method private openModule(Lcom/xiaomi/scanner/module/ModuleController;)V
    .locals 1
    .param p1, "module"    # Lcom/xiaomi/scanner/module/ModuleController;

    .prologue
    .line 1363
    invoke-interface {p1, p0}, Lcom/xiaomi/scanner/module/ModuleController;->init(Lcom/xiaomi/scanner/app/ScanActivity;)V

    .line 1364
    invoke-interface {p1}, Lcom/xiaomi/scanner/module/ModuleController;->onStart()V

    .line 1365
    iget-boolean v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mPaused:Z

    if-nez v0, :cond_0

    .line 1366
    invoke-interface {p1}, Lcom/xiaomi/scanner/module/ModuleController;->onResume()V

    .line 1368
    :cond_0
    return-void
.end method

.method private queryFromServer(Z)V
    .locals 1
    .param p1, "ignoreCheck"    # Z

    .prologue
    .line 339
    if-nez p1, :cond_0

    invoke-static {}, Lcom/xiaomi/scanner/util/AppUtil;->isUserAgreeToRun()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 340
    :cond_0
    sget-object v0, Lcom/xiaomi/scanner/config/ConfigModel;->instance:Lcom/xiaomi/scanner/config/ConfigModel;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/config/ConfigModel;->queryScanRuleConfig()V

    .line 342
    :cond_1
    return-void
.end method

.method private registerIntentReceiver()V
    .locals 2

    .prologue
    .line 641
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 642
    .local v0, "connectivityFilter":Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 643
    iget-object v1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/xiaomi/scanner/app/ScanActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 644
    return-void
.end method

.method private removeAAShopping()V
    .locals 1

    .prologue
    .line 405
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/xiaomi/scanner/util/AppUtil;->setAAFeatureShown(Z)V

    .line 406
    new-instance v0, Lcom/xiaomi/scanner/app/ScanActivity$2;

    invoke-direct {v0, p0}, Lcom/xiaomi/scanner/app/ScanActivity$2;-><init>(Lcom/xiaomi/scanner/app/ScanActivity;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/app/ScanActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 418
    return-void
.end method

.method private removeAmazonAssistantMenu()V
    .locals 6

    .prologue
    .line 1548
    invoke-static {}, Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;->getInstance()Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;->getModuleInfoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;

    .line 1549
    .local v0, "info":Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;
    invoke-interface {v0}, Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;->getScopeNamespace()Ljava/lang/String;

    move-result-object v2

    .line 1551
    .local v2, "moduleNameSpace":Ljava/lang/String;
    const-string v4, "module_amazon_shopping"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1552
    invoke-interface {v0}, Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;->getModuleId()I

    move-result v1

    .line 1553
    .local v1, "moduleID":I
    iget-object v3, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mModuleManager:Lcom/xiaomi/scanner/module/ModuleManager;

    invoke-interface {v3, v1}, Lcom/xiaomi/scanner/module/ModuleManager;->unregisterModule(I)Z

    .line 1554
    sget-object v3, Lcom/xiaomi/scanner/app/ScanActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v4, "registeredModuleAgent -deleted- MODULE_AMAZON_SHOPPING  "

    invoke-static {v3, v4}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 1555
    iget-object v3, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mAppUI:Lcom/xiaomi/scanner/app/AppUI;

    invoke-static {}, Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;->getInstance()Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;->getModuleListBySortId()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->getCurrentModuleIndex()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/xiaomi/scanner/app/AppUI;->addOrUpdateModuleList(Ljava/util/List;I)V

    .line 1559
    .end local v0    # "info":Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;
    .end local v1    # "moduleID":I
    .end local v2    # "moduleNameSpace":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private reportEnterFrom(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 349
    sget-object v4, Lcom/xiaomi/scanner/app/ScanActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleIntentFrom from action = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", category = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", extra = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 350
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 351
    .local v0, "action":Ljava/lang/String;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 352
    .local v3, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "android.intent.action.MAIN"

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 353
    const-string v4, "from_type"

    const-string v5, "app"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    :goto_0
    const-string v4, "enter_app"

    invoke-static {v4, v3}, Lcom/xiaomi/scanner/stats/UsageStatistics;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 364
    return-void

    .line 354
    :cond_0
    const-string v4, "android.intent.action.scanner"

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "miui.intent.action.scanner"

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 355
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0004

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 356
    .local v1, "defaultIndex":I
    const-string v4, "extra_intent_module_index"

    invoke-virtual {p1, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-direct {p0, v4, v1}, Lcom/xiaomi/scanner/app/ScanActivity;->getRealIndex(II)I

    move-result v2

    .line 357
    .local v2, "index":I
    const-string v4, "from_type"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "home_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 358
    .end local v1    # "defaultIndex":I
    .end local v2    # "index":I
    :cond_2
    const-string v4, "android.intent.action.scanbarcode"

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "miui.intent.action.scanbarcode"

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 359
    :cond_3
    const-string v4, "from_type"

    const-string v5, "browser"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 361
    :cond_4
    const-string v4, "from_type"

    const-string v5, "other"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private resetOpenCamera()V
    .locals 2

    .prologue
    .line 1458
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1459
    return-void
.end method

.method private resetScreenOn()V
    .locals 2

    .prologue
    .line 1452
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mKeepScreenOn:Z

    .line 1453
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1454
    invoke-virtual {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 1455
    return-void
.end method

.method private setModuleFromModeIndex(I)V
    .locals 1
    .param p1, "moduleIndex"    # I

    .prologue
    .line 777
    iput p1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCurrentModuleIndex:I

    .line 778
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mModuleManager:Lcom/xiaomi/scanner/module/ModuleManager;

    invoke-interface {v0, p1, p0}, Lcom/xiaomi/scanner/module/ModuleManager;->getModule(ILcom/xiaomi/scanner/app/ScanActivity;)Lcom/xiaomi/scanner/module/ModuleController;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCurrentModule:Lcom/xiaomi/scanner/module/ModuleController;

    .line 779
    return-void
.end method

.method private showConfirmDialog()V
    .locals 4

    .prologue
    .line 647
    invoke-static {}, Lcom/xiaomi/scanner/util/AppUtil;->isRightVersion()Z

    move-result v0

    if-nez v0, :cond_2

    .line 648
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mWarnDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    .line 649
    new-instance v0, Lcom/xiaomi/scanner/app/ScanActivity$5;

    invoke-direct {v0, p0}, Lcom/xiaomi/scanner/app/ScanActivity$5;-><init>(Lcom/xiaomi/scanner/app/ScanActivity;)V

    const/4 v1, 0x0

    const v2, 0x7f07006e

    .line 653
    invoke-virtual {p0, v2}, Lcom/xiaomi/scanner/app/ScanActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f07005f

    invoke-virtual {p0, v3}, Lcom/xiaomi/scanner/app/ScanActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 649
    invoke-static {p0, v0, v1, v2, v3}, Lcom/xiaomi/scanner/util/DialogUtil;->createConfirmAlert(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mWarnDialog:Landroid/app/AlertDialog;

    .line 655
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mWarnDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 656
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mWarnDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 677
    :cond_1
    :goto_0
    return-void

    .line 659
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mConfirmDialog:Lcom/xiaomi/scanner/dialog/CtaDialog;

    if-nez v0, :cond_3

    .line 660
    new-instance v0, Lcom/xiaomi/scanner/app/ScanActivity$6;

    invoke-direct {v0, p0}, Lcom/xiaomi/scanner/app/ScanActivity$6;-><init>(Lcom/xiaomi/scanner/app/ScanActivity;)V

    invoke-static {p0, v0}, Lcom/xiaomi/scanner/util/DialogUtil;->showCTADialog(Landroid/content/Context;Lcom/xiaomi/scanner/dialog/CtaDialog$CTAClick;)Lcom/xiaomi/scanner/dialog/CtaDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mConfirmDialog:Lcom/xiaomi/scanner/dialog/CtaDialog;

    .line 673
    :cond_3
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mConfirmDialog:Lcom/xiaomi/scanner/dialog/CtaDialog;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/dialog/CtaDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 674
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mConfirmDialog:Lcom/xiaomi/scanner/dialog/CtaDialog;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/dialog/CtaDialog;->show()V

    goto :goto_0
.end method

.method private showPermissionRequestOrRun()V
    .locals 3

    .prologue
    .line 440
    invoke-direct {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->checkPermissions()Ljava/util/ArrayList;

    move-result-object v0

    .line 441
    .local v0, "permissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 442
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 443
    .local v1, "requestPermissions":[Ljava/lang/String;
    const/4 v2, 0x3

    invoke-static {p0, v1, v2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 448
    .end local v1    # "requestPermissions":[Ljava/lang/String;
    :goto_0
    return-void

    .line 446
    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->onCTAAndPermissionAgree()V

    goto :goto_0
.end method


# virtual methods
.method public addPreviewAreaSizeChangedListener(Lcom/xiaomi/scanner/ui/PreviewStatusListener$PreviewAreaChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/xiaomi/scanner/ui/PreviewStatusListener$PreviewAreaChangedListener;

    .prologue
    .line 1099
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mAppUI:Lcom/xiaomi/scanner/app/AppUI;

    invoke-virtual {v0, p1}, Lcom/xiaomi/scanner/app/AppUI;->addPreviewAreaChangedListener(Lcom/xiaomi/scanner/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 1100
    return-void
.end method

.method public canUseShutterCallback()Z
    .locals 1

    .prologue
    .line 851
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mSoundPlayer:Lcom/xiaomi/scanner/camera/SoundPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mSoundPlayer:Lcom/xiaomi/scanner/camera/SoundPlayer;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/SoundPlayer;->isCanPlaySound()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->isHeadset()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkAppStartRun()Z
    .locals 1

    .prologue
    .line 988
    invoke-static {}, Lcom/xiaomi/scanner/util/AppUtil;->isUserAgreeToRun()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->checkPermissions()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearIntentData()V
    .locals 1

    .prologue
    .line 1465
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mExtraIntentBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 1466
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mExtraIntentBundle:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 1467
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mExtraIntentBundle:Landroid/os/Bundle;

    .line 1469
    :cond_0
    return-void
.end method

.method public doPrething()V
    .locals 1

    .prologue
    .line 981
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCurrentModule:Lcom/xiaomi/scanner/module/ModuleController;

    if-eqz v0, :cond_0

    .line 982
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCurrentModule:Lcom/xiaomi/scanner/module/ModuleController;

    invoke-interface {v0}, Lcom/xiaomi/scanner/module/ModuleController;->doPrething()V

    .line 984
    :cond_0
    return-void
.end method

.method public enableKeepScreenOn(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 1163
    iget-boolean v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mPaused:Z

    if-eqz v0, :cond_0

    .line 1174
    :goto_0
    return-void

    .line 1167
    :cond_0
    iput-boolean p1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mKeepScreenOn:Z

    .line 1168
    iget-boolean v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mKeepScreenOn:Z

    if-eqz v0, :cond_1

    .line 1169
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1170
    invoke-virtual {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    .line 1172
    :cond_1
    invoke-direct {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->keepScreenOnForAWhile()V

    goto :goto_0
.end method

.method public getAndroidContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 1057
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method public getAppUI()Lcom/xiaomi/scanner/app/AppUI;
    .locals 1

    .prologue
    .line 953
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mAppUI:Lcom/xiaomi/scanner/app/AppUI;

    return-object v0
.end method

.method public getCameraOpenErrorCallback()Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;
    .locals 1

    .prologue
    .line 1396
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCameraController:Lcom/xiaomi/scanner/camera/CameraController;

    return-object v0
.end method

.method public getCameraProvider()Lcom/xiaomi/scanner/camera/CameraProvider;
    .locals 1

    .prologue
    .line 1178
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCameraController:Lcom/xiaomi/scanner/camera/CameraController;

    return-object v0
.end method

.method public getCameraScope()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1082
    iget-object v1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCameraController:Lcom/xiaomi/scanner/camera/CameraController;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/camera/CameraController;->getCurrentCameraId()I

    move-result v0

    .line 1083
    .local v0, "cameraId":I
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/scanner/settings/SettingsManager;->getCameraSettingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getCameraSettings()Lcom/android/ex/camera2/portability/CameraSettings;
    .locals 1

    .prologue
    .line 1404
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCaptureModule:Lcom/xiaomi/scanner/camera/CaptureModule;

    if-eqz v0, :cond_0

    .line 1405
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCaptureModule:Lcom/xiaomi/scanner/camera/CaptureModule;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/CaptureModule;->getCameraSettings()Lcom/android/ex/camera2/portability/CameraSettings;

    move-result-object v0

    .line 1407
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCaptureModule()Lcom/xiaomi/scanner/camera/CaptureModule;
    .locals 1

    .prologue
    .line 1400
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCaptureModule:Lcom/xiaomi/scanner/camera/CaptureModule;

    return-object v0
.end method

.method public getCurrentModuleController()Lcom/xiaomi/scanner/module/ModuleController;
    .locals 1

    .prologue
    .line 1088
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCurrentModule:Lcom/xiaomi/scanner/module/ModuleController;

    return-object v0
.end method

.method public getCurrentModuleIndex()I
    .locals 1

    .prologue
    .line 1062
    iget v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCurrentModuleIndex:I

    return v0
.end method

.method public getFatalErrorHandler()Lcom/xiaomi/scanner/camera/FatalErrorHandler;
    .locals 1

    .prologue
    .line 1359
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mFatalErrorHandler:Lcom/xiaomi/scanner/camera/FatalErrorHandler;

    return-object v0
.end method

.method public getImagePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1385
    iget-object v1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mImagePath:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1386
    sget-object v1, Lmiui/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/xiaomi/scanner/app/ScanActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1387
    .local v0, "pictureDirectory":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 1388
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mImagePath:Ljava/lang/String;

    .line 1392
    .end local v0    # "pictureDirectory":Ljava/io/File;
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mImagePath:Ljava/lang/String;

    return-object v1
.end method

.method public getIntentData()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 1462
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mExtraIntentBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getModuleId(I)I
    .locals 2
    .param p1, "moduleIndex"    # I

    .prologue
    .line 1345
    invoke-static {}, Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;->getInstance()Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;->getModuleBaseInfo(I)Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;

    move-result-object v0

    .line 1346
    .local v0, "agent":Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;
    if-nez v0, :cond_0

    .line 1347
    const/4 v1, -0x1

    .line 1349
    :goto_0
    return v1

    :cond_0
    invoke-interface {v0}, Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;->getModuleId()I

    move-result v1

    goto :goto_0
.end method

.method public getModuleLayoutRoot()Landroid/view/View;
    .locals 1

    .prologue
    .line 1125
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mAppUI:Lcom/xiaomi/scanner/app/AppUI;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/AppUI;->getModuleRootView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getModuleScope()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1076
    invoke-static {}, Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;->getInstance()Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;

    move-result-object v1

    iget v2, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCurrentModuleIndex:I

    invoke-virtual {v1, v2}, Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;->getModuleBaseInfo(I)Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;

    move-result-object v0

    .line 1077
    .local v0, "agent":Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;
    invoke-interface {v0}, Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;->getScopeNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/scanner/settings/SettingsManager;->getModuleSettingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getOrientationManager()Lcom/xiaomi/scanner/camera/OrientationManager;
    .locals 1

    .prologue
    .line 1183
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mOrientationManager:Lcom/xiaomi/scanner/camera/OrientationManagerImpl;

    return-object v0
.end method

.method public getPreviewTransform()Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 1411
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCaptureModule:Lcom/xiaomi/scanner/camera/CaptureModule;

    if-eqz v0, :cond_0

    .line 1412
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCaptureModule:Lcom/xiaomi/scanner/camera/CaptureModule;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/CaptureModule;->getPreviewTransform()Landroid/graphics/Matrix;

    move-result-object v0

    .line 1414
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getServices()Lcom/xiaomi/scanner/camera/CameraServices;
    .locals 1

    .prologue
    .line 1354
    invoke-static {}, Lcom/xiaomi/scanner/camera/CameraServicesImpl;->instance()Lcom/xiaomi/scanner/camera/CameraServicesImpl;

    move-result-object v0

    return-object v0
.end method

.method public getSettingsManager()Lcom/xiaomi/scanner/settings/SettingsManager;
    .locals 1

    .prologue
    .line 591
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mSettingsManager:Lcom/xiaomi/scanner/settings/SettingsManager;

    return-object v0
.end method

.method public getStorageSpaceBytes()J
    .locals 4

    .prologue
    .line 1242
    iget-object v1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mStorageSpaceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1243
    :try_start_0
    iget-wide v2, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mStorageSpaceBytes:J

    monitor-exit v1

    return-wide v2

    .line 1244
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "what"    # I
    .param p2, "sender"    # I
    .param p3, "extra1"    # Ljava/lang/Object;
    .param p4, "extra2"    # Ljava/lang/Object;

    .prologue
    .line 958
    const/4 v0, 0x0

    return v0
.end method

.method public isCaptureNeeded()Z
    .locals 1

    .prologue
    .line 1147
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCurrentModule:Lcom/xiaomi/scanner/module/ModuleController;

    if-eqz v0, :cond_0

    .line 1148
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCurrentModule:Lcom/xiaomi/scanner/module/ModuleController;

    invoke-interface {v0}, Lcom/xiaomi/scanner/module/ModuleController;->isCaptureNeeded()Z

    move-result v0

    .line 1150
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFrameValid()Z
    .locals 2

    .prologue
    .line 530
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCaptureModule:Lcom/xiaomi/scanner/camera/CaptureModule;

    if-nez v0, :cond_0

    .line 531
    sget-object v0, Lcom/xiaomi/scanner/app/ScanActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "isFrameValid error, null CaptureModule"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 532
    const/4 v0, 0x0

    .line 534
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCaptureModule:Lcom/xiaomi/scanner/camera/CaptureModule;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/CaptureModule;->isPreviewFrameValid()Z

    move-result v0

    goto :goto_0
.end method

.method public isHeadset()Z
    .locals 1

    .prologue
    .line 855
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mSoundPlayer:Lcom/xiaomi/scanner/camera/SoundPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mSoundPlayer:Lcom/xiaomi/scanner/camera/SoundPlayer;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/SoundPlayer;->isUseHeadset()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOnlyBusinessCardScan()Z
    .locals 1

    .prologue
    .line 993
    iget-boolean v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mIsBusinessCardScan:Z

    return v0
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 1327
    iget-boolean v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mPaused:Z

    return v0
.end method

.method public isPickerNeeded()Z
    .locals 1

    .prologue
    .line 1155
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCurrentModule:Lcom/xiaomi/scanner/module/ModuleController;

    if-eqz v0, :cond_0

    .line 1156
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCurrentModule:Lcom/xiaomi/scanner/module/ModuleController;

    invoke-interface {v0}, Lcom/xiaomi/scanner/module/ModuleController;->isPickerNeeded()Z

    move-result v0

    .line 1158
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPrerequisiteSatisfied()Z
    .locals 1

    .prologue
    .line 963
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCurrentModule:Lcom/xiaomi/scanner/module/ModuleController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCurrentModule:Lcom/xiaomi/scanner/module/ModuleController;

    invoke-interface {v0}, Lcom/xiaomi/scanner/module/ModuleController;->isNetworkRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 966
    invoke-static {}, Lcom/xiaomi/scanner/util/NetworkUtil;->isNetworkConnected()Z

    move-result v0

    .line 968
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isPreviewReady(I)Z
    .locals 2
    .param p1, "moduleId"    # I

    .prologue
    .line 1418
    iget-boolean v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCameraIsAvailable:Z

    if-nez v0, :cond_0

    .line 1419
    sget-object v0, Lcom/xiaomi/scanner/app/ScanActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "camera is not available"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 1421
    :cond_0
    iget-boolean v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCameraIsAvailable:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/app/ScanActivity;->getClearTask(I)Ljava/lang/Runnable;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSdkReady()Z
    .locals 1

    .prologue
    .line 973
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCurrentModule:Lcom/xiaomi/scanner/module/ModuleController;

    if-eqz v0, :cond_0

    .line 974
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCurrentModule:Lcom/xiaomi/scanner/module/ModuleController;

    invoke-interface {v0}, Lcom/xiaomi/scanner/module/ModuleController;->isSdkReady()Z

    move-result v0

    .line 976
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isShutterEnabled()Z
    .locals 1

    .prologue
    .line 1135
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mAppUI:Lcom/xiaomi/scanner/app/AppUI;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/AppUI;->isShutterButtonEnabled()Z

    move-result v0

    return v0
.end method

.method public launchActivityByIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1068
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mResetToPreviewOnResume:Z

    .line 1069
    const/high16 v0, 0x80000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1071
    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/app/ScanActivity;->startActivity(Landroid/content/Intent;)V

    .line 1072
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 539
    sget-object v0, Lcom/xiaomi/scanner/app/ScanActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult: request="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->t(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 541
    invoke-super {p0, p1, p2, p3}, Lmiui/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 542
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 543
    invoke-static {}, Lcom/xiaomi/scanner/util/AppUtil;->saveKoreaPermissionShowed()V

    .line 550
    :goto_0
    return-void

    .line 546
    :cond_0
    iput-object p3, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mPendingIntent:Landroid/content/Intent;

    .line 547
    shr-int/lit8 v0, p1, 0x10

    iput v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mPendingModuleIndex:I

    .line 548
    const v0, 0xffff

    and-int/2addr v0, p1

    iput v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mPendingRequestCode:I

    .line 549
    iput p2, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mPendingResultCode:I

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 1220
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mAppUI:Lcom/xiaomi/scanner/app/AppUI;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/AppUI;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1221
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCurrentModule:Lcom/xiaomi/scanner/module/ModuleController;

    invoke-interface {v0}, Lcom/xiaomi/scanner/module/ModuleController;->isCaptureNeeded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCaptureModule:Lcom/xiaomi/scanner/camera/CaptureModule;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/CaptureModule;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1228
    :cond_0
    :goto_0
    return-void

    .line 1224
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCurrentModule:Lcom/xiaomi/scanner/module/ModuleController;

    invoke-interface {v0}, Lcom/xiaomi/scanner/module/ModuleController;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1225
    invoke-virtual {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->finish()V

    goto :goto_0
.end method

.method public onCameraClosed()V
    .locals 1

    .prologue
    .line 1562
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCurrentModule:Lcom/xiaomi/scanner/module/ModuleController;

    if-eqz v0, :cond_0

    .line 1563
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCurrentModule:Lcom/xiaomi/scanner/module/ModuleController;

    invoke-interface {v0}, Lcom/xiaomi/scanner/module/ModuleController;->onCameraClosed()V

    .line 1565
    :cond_0
    return-void
.end method

.method public onCameraDisabled(I)V
    .locals 3
    .param p1, "cameraId"    # I

    .prologue
    .line 1029
    sget-object v0, Lcom/xiaomi/scanner/app/ScanActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Camera disabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 1030
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mFatalErrorHandler:Lcom/xiaomi/scanner/camera/FatalErrorHandler;

    invoke-interface {v0}, Lcom/xiaomi/scanner/camera/FatalErrorHandler;->onCameraDisabledFailure()V

    .line 1031
    return-void
.end method

.method public onCameraOpened(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 4
    .param p1, "camera"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .prologue
    const/4 v3, 0x0

    .line 1005
    sget-object v1, Lcom/xiaomi/scanner/app/ScanActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v2, "onCameraOpened"

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 1006
    iget-boolean v1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mPaused:Z

    if-eqz v1, :cond_1

    .line 1010
    sget-object v1, Lcom/xiaomi/scanner/app/ScanActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v2, "received onCameraOpened but activity is paused, closing Camera"

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 1011
    iget-object v1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCameraController:Lcom/xiaomi/scanner/camera/CameraController;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/camera/CameraController;->closeCamera()V

    .line 1012
    iput-boolean v3, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCameraIsAvailable:Z

    .line 1025
    :cond_0
    :goto_0
    return-void

    .line 1015
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCaptureModule:Lcom/xiaomi/scanner/camera/CaptureModule;

    if-eqz v1, :cond_0

    .line 1017
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCaptureModule:Lcom/xiaomi/scanner/camera/CaptureModule;

    invoke-virtual {v1, p1}, Lcom/xiaomi/scanner/camera/CaptureModule;->onCameraAvailable(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V

    .line 1018
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCameraIsAvailable:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1019
    :catch_0
    move-exception v0

    .line 1020
    .local v0, "ex":Ljava/lang/RuntimeException;
    sget-object v1, Lcom/xiaomi/scanner/app/ScanActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v2, "Error connecting to camera"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1021
    iget-object v1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mFatalErrorHandler:Lcom/xiaomi/scanner/camera/FatalErrorHandler;

    invoke-interface {v1}, Lcom/xiaomi/scanner/camera/FatalErrorHandler;->onCameraOpenFailure()V

    .line 1022
    iput-boolean v3, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCameraIsAvailable:Z

    goto :goto_0
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 329
    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 330
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mMainHandler:Landroid/os/Handler;

    .line 331
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mMainThreadId:J

    .line 332
    invoke-virtual {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/app/ScanActivity;->handleIntentFrom(Landroid/content/Intent;)V

    .line 333
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/app/ScanActivity;->onCreateTasks(Landroid/os/Bundle;)V

    .line 334
    invoke-virtual {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/app/ScanActivity;->reportEnterFrom(Landroid/content/Intent;)V

    .line 335
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/app/ScanActivity;->queryFromServer(Z)V

    .line 336
    return-void
.end method

.method protected final onDestroy()V
    .locals 2

    .prologue
    .line 507
    sget-object v0, Lcom/xiaomi/scanner/app/ScanActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 508
    invoke-virtual {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->onDestroyTasks()V

    .line 509
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mAmazonAssistantHelper:Lcom/xiaomi/scanner/module/amazoncloudconfig/AmazonAssistantHelper;

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mAmazonAssistantHelper:Lcom/xiaomi/scanner/module/amazoncloudconfig/AmazonAssistantHelper;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/module/amazoncloudconfig/AmazonAssistantHelper;->cleanUpCloudTask()V

    .line 512
    :cond_0
    invoke-super {p0}, Lmiui/app/Activity;->onDestroy()V

    .line 513
    return-void
.end method

.method public onDestroyTasks()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 912
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mPaused:Z

    .line 913
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/app/ScanActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 914
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mMainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 915
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mOnCreateTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 917
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mAppUI:Lcom/xiaomi/scanner/app/AppUI;

    if-eqz v0, :cond_1

    .line 918
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mAppUI:Lcom/xiaomi/scanner/app/AppUI;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/AppUI;->onDestroy()V

    .line 920
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCaptureModule:Lcom/xiaomi/scanner/camera/CaptureModule;

    if-eqz v0, :cond_2

    .line 921
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCaptureModule:Lcom/xiaomi/scanner/camera/CaptureModule;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/CaptureModule;->destroy()V

    .line 922
    iput-object v2, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCaptureModule:Lcom/xiaomi/scanner/camera/CaptureModule;

    .line 924
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCurrentModule:Lcom/xiaomi/scanner/module/ModuleController;

    if-eqz v0, :cond_3

    .line 925
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCurrentModule:Lcom/xiaomi/scanner/module/ModuleController;

    invoke-interface {v0}, Lcom/xiaomi/scanner/module/ModuleController;->onActivityDestroy()V

    .line 926
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCurrentModule:Lcom/xiaomi/scanner/module/ModuleController;

    invoke-interface {v0}, Lcom/xiaomi/scanner/module/ModuleController;->onDestroy()V

    .line 927
    iput-object v2, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCurrentModule:Lcom/xiaomi/scanner/module/ModuleController;

    .line 929
    :cond_3
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mFatalErrorHandler:Lcom/xiaomi/scanner/camera/FatalErrorHandler;

    if-eqz v0, :cond_4

    .line 930
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mFatalErrorHandler:Lcom/xiaomi/scanner/camera/FatalErrorHandler;

    invoke-interface {v0}, Lcom/xiaomi/scanner/camera/FatalErrorHandler;->dismisssErrorDialog()V

    .line 932
    :cond_4
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mConfirmDialog:Lcom/xiaomi/scanner/dialog/CtaDialog;

    invoke-static {v0}, Lcom/xiaomi/scanner/util/DialogUtil;->dismissDialog(Landroid/app/Dialog;)V

    .line 933
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mWarnDialog:Landroid/app/AlertDialog;

    invoke-static {v0}, Lcom/xiaomi/scanner/util/DialogUtil;->dismissDialog(Landroid/app/Dialog;)V

    .line 934
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mSettingsManager:Lcom/xiaomi/scanner/settings/SettingsManager;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/settings/SettingsManager;->removeAllListeners()V

    .line 935
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCameraController:Lcom/xiaomi/scanner/camera/CameraController;

    if-eqz v0, :cond_5

    .line 936
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCameraController:Lcom/xiaomi/scanner/camera/CameraController;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/CameraController;->removeCallbackReceiver()V

    .line 937
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCameraController:Lcom/xiaomi/scanner/camera/CameraController;

    invoke-virtual {v0, v2}, Lcom/xiaomi/scanner/camera/CameraController;->setCameraExceptionHandler(Lcom/android/ex/camera2/portability/CameraExceptionHandler;)V

    .line 939
    :cond_5
    iput-object v2, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mSettingsManager:Lcom/xiaomi/scanner/settings/SettingsManager;

    .line 940
    iput-object v2, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mOrientationManager:Lcom/xiaomi/scanner/camera/OrientationManagerImpl;

    .line 942
    iget-object v1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mClearTasks:Landroid/util/SparseArray;

    monitor-enter v1

    .line 943
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mClearTasks:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 944
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 945
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mSoundPlayer:Lcom/xiaomi/scanner/camera/SoundPlayer;

    if-eqz v0, :cond_6

    .line 946
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mSoundPlayer:Lcom/xiaomi/scanner/camera/SoundPlayer;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/SoundPlayer;->release()V

    .line 948
    :cond_6
    sget-object v0, Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;->API_1:Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/CameraAgentFactory;->recycle(Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;)V

    .line 949
    return-void

    .line 944
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onDeviceOpenFailure(ILjava/lang/String;)V
    .locals 4
    .param p1, "cameraId"    # I
    .param p2, "info"    # Ljava/lang/String;

    .prologue
    .line 1035
    sget-object v0, Lcom/xiaomi/scanner/app/ScanActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Camera open failure: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 1036
    iget v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mFailureRetryTimes:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mFailureRetryTimes:I

    if-gez v0, :cond_0

    .line 1037
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mFatalErrorHandler:Lcom/xiaomi/scanner/camera/FatalErrorHandler;

    invoke-interface {v0}, Lcom/xiaomi/scanner/camera/FatalErrorHandler;->onCameraOpenFailure()V

    .line 1041
    :goto_0
    return-void

    .line 1039
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public onDeviceOpenedAlready(ILjava/lang/String;)V
    .locals 3
    .param p1, "cameraId"    # I
    .param p2, "info"    # Ljava/lang/String;

    .prologue
    .line 1045
    sget-object v0, Lcom/xiaomi/scanner/app/ScanActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Camera open already: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 1046
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mFatalErrorHandler:Lcom/xiaomi/scanner/camera/FatalErrorHandler;

    invoke-interface {v0}, Lcom/xiaomi/scanner/camera/FatalErrorHandler;->onGenericCameraAccessFailure()V

    .line 1047
    return-void
.end method

.method public onError()V
    .locals 2

    .prologue
    .line 267
    sget-object v0, Lcom/xiaomi/scanner/app/ScanActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "Amazon Cloud configNetwork response failed"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 268
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 1188
    sget-object v1, Lcom/xiaomi/scanner/app/ScanActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyDown: keyCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 1189
    iget-object v1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCurrentModule:Lcom/xiaomi/scanner/module/ModuleController;

    invoke-interface {v1, p1, p2}, Lcom/xiaomi/scanner/module/ModuleController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1201
    :cond_0
    :goto_0
    return v0

    .line 1192
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCurrentModule:Lcom/xiaomi/scanner/module/ModuleController;

    invoke-interface {v1}, Lcom/xiaomi/scanner/module/ModuleController;->shouldConsumeCameraKey()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCaptureModule:Lcom/xiaomi/scanner/camera/CaptureModule;

    invoke-virtual {v1, p1, p2}, Lcom/xiaomi/scanner/camera/CaptureModule;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1196
    :cond_2
    const/16 v1, 0x54

    if-ne p1, v1, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1197
    sget-object v1, Lcom/xiaomi/scanner/app/ScanActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v2, "long press keycode search"

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 1201
    :cond_3
    invoke-super {p0, p1, p2}, Lmiui/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 1208
    iget-object v1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCurrentModule:Lcom/xiaomi/scanner/module/ModuleController;

    invoke-interface {v1, p1, p2}, Lcom/xiaomi/scanner/module/ModuleController;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1215
    :cond_0
    :goto_0
    return v0

    .line 1211
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCurrentModule:Lcom/xiaomi/scanner/module/ModuleController;

    invoke-interface {v1}, Lcom/xiaomi/scanner/module/ModuleController;->shouldConsumeCameraKey()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCaptureModule:Lcom/xiaomi/scanner/camera/CaptureModule;

    invoke-virtual {v1, p1, p2}, Lcom/xiaomi/scanner/camera/CaptureModule;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1215
    :cond_2
    invoke-super {p0, p1, p2}, Lmiui/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onModuleSelected(I)V
    .locals 3
    .param p1, "moduleIndex"    # I

    .prologue
    .line 1332
    iget v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCurrentModuleIndex:I

    if-eq v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1341
    :cond_0
    :goto_0
    return-void

    .line 1336
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCurrentModule:Lcom/xiaomi/scanner/module/ModuleController;

    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/app/ScanActivity;->closeModule(Lcom/xiaomi/scanner/module/ModuleController;)V

    .line 1337
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/app/ScanActivity;->setModuleFromModeIndex(I)V

    .line 1338
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mAppUI:Lcom/xiaomi/scanner/app/AppUI;

    iget-object v1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCurrentModule:Lcom/xiaomi/scanner/module/ModuleController;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/scanner/app/AppUI;->addOrRemoveShutterListener(Lcom/xiaomi/scanner/ui/ShutterButton$OnShutterButtonListener;Z)V

    .line 1339
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCurrentModule:Lcom/xiaomi/scanner/module/ModuleController;

    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/app/ScanActivity;->openModule(Lcom/xiaomi/scanner/module/ModuleController;)V

    .line 1340
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCaptureModule:Lcom/xiaomi/scanner/camera/CaptureModule;

    iget-object v1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCurrentModule:Lcom/xiaomi/scanner/module/ModuleController;

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/camera/CaptureModule;->requestUpdateZoom(Lcom/xiaomi/scanner/module/ModuleController;)V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 452
    invoke-super {p0, p1}, Lmiui/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 453
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/app/ScanActivity;->handleIntentFrom(Landroid/content/Intent;)V

    .line 454
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/app/ScanActivity;->reportEnterFrom(Landroid/content/Intent;)V

    .line 455
    sget-object v1, Lcom/xiaomi/scanner/app/ScanActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v2, "onNewIntent"

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 456
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.MAIN"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 457
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/app/ScanActivity;->getModuleIndex(Landroid/content/Intent;)I

    move-result v0

    .line 458
    .local v0, "moduleIndex":I
    iget-object v1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCurrentModule:Lcom/xiaomi/scanner/module/ModuleController;

    if-nez v1, :cond_0

    .line 459
    sget-object v1, Lcom/xiaomi/scanner/app/ScanActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v2, "onNewIntent fail, null CurrentModule"

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 472
    .end local v0    # "moduleIndex":I
    :goto_0
    return-void

    .line 462
    .restart local v0    # "moduleIndex":I
    :cond_0
    iget v1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCurrentModuleIndex:I

    if-eq v1, v0, :cond_1

    .line 463
    iget-object v1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCurrentModule:Lcom/xiaomi/scanner/module/ModuleController;

    invoke-direct {p0, v1}, Lcom/xiaomi/scanner/app/ScanActivity;->closeModule(Lcom/xiaomi/scanner/module/ModuleController;)V

    .line 464
    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/app/ScanActivity;->setModuleFromModeIndex(I)V

    .line 465
    iget-object v1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mAppUI:Lcom/xiaomi/scanner/app/AppUI;

    iget-object v2, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCurrentModule:Lcom/xiaomi/scanner/module/ModuleController;

    invoke-virtual {v1, v2, v4}, Lcom/xiaomi/scanner/app/AppUI;->addOrRemoveShutterListener(Lcom/xiaomi/scanner/ui/ShutterButton$OnShutterButtonListener;Z)V

    .line 466
    iget-object v1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mAppUI:Lcom/xiaomi/scanner/app/AppUI;

    invoke-static {}, Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;->getInstance()Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;->getModuleListBySortId()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->getCurrentModuleIndex()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/scanner/app/AppUI;->addOrUpdateModuleList(Ljava/util/List;I)V

    .line 468
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCurrentModule:Lcom/xiaomi/scanner/module/ModuleController;

    invoke-interface {v1, p0}, Lcom/xiaomi/scanner/module/ModuleController;->init(Lcom/xiaomi/scanner/app/ScanActivity;)V

    .line 470
    .end local v0    # "moduleIndex":I
    :cond_2
    iget-object v1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mAppUI:Lcom/xiaomi/scanner/app/AppUI;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/app/AppUI;->createOrUpdateBottomUi()V

    .line 471
    iget-object v1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mAppUI:Lcom/xiaomi/scanner/app/AppUI;

    iget-object v2, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCaptureModule:Lcom/xiaomi/scanner/camera/CaptureModule;

    invoke-virtual {v1, v2, v4}, Lcom/xiaomi/scanner/app/AppUI;->addOrRemoveShutterListener(Lcom/xiaomi/scanner/ui/ShutterButton$OnShutterButtonListener;Z)V

    goto :goto_0
.end method

.method public onOrientationChange(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 289
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCurrentModule:Lcom/xiaomi/scanner/module/ModuleController;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCurrentModule:Lcom/xiaomi/scanner/module/ModuleController;

    invoke-interface {v0, p1}, Lcom/xiaomi/scanner/module/ModuleController;->onOrientationChange(I)V

    .line 292
    :cond_0
    return-void
.end method

.method protected final onPause()V
    .locals 2

    .prologue
    .line 476
    sget-object v0, Lcom/xiaomi/scanner/app/ScanActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 477
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mOnResumeTasks:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 482
    iget-boolean v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mSkippedFirstOnResume:Z

    if-nez v0, :cond_0

    .line 483
    sget-object v0, Lcom/xiaomi/scanner/app/ScanActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "onPause --> onPauseTasks()"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 484
    invoke-direct {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->onPauseTasks()V

    .line 486
    :cond_0
    invoke-super {p0}, Lmiui/app/Activity;->onPause()V

    .line 487
    return-void
.end method

.method public onPreviewStarted()V
    .locals 1

    .prologue
    .line 1093
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mAppUI:Lcom/xiaomi/scanner/app/AppUI;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/AppUI;->onPreviewStarted()V

    .line 1094
    return-void
.end method

.method public onReconnectionFailure(Lcom/android/ex/camera2/portability/CameraAgent;Ljava/lang/String;)V
    .locals 3
    .param p1, "mgr"    # Lcom/android/ex/camera2/portability/CameraAgent;
    .param p2, "info"    # Ljava/lang/String;

    .prologue
    .line 1051
    sget-object v0, Lcom/xiaomi/scanner/app/ScanActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Camera reconnection failure:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 1052
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mFatalErrorHandler:Lcom/xiaomi/scanner/camera/FatalErrorHandler;

    invoke-interface {v0}, Lcom/xiaomi/scanner/camera/FatalErrorHandler;->onCameraReconnectFailure()V

    .line 1053
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 236
    sget-object v1, Lcom/xiaomi/scanner/app/ScanActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPermissionsResult: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 237
    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    array-length v2, p3

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_3

    aget v0, p3, v1

    .line 241
    .local v0, "result":I
    if-eqz v0, :cond_2

    .line 242
    const v1, 0x7f070059

    invoke-static {v1}, Lcom/xiaomi/scanner/util/ToastUtils;->showCenterToast(I)V

    .line 243
    invoke-virtual {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->finish()V

    goto :goto_0

    .line 240
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 247
    .end local v0    # "result":I
    :cond_3
    sget-boolean v1, Lcom/xiaomi/scanner/app/ScanActivity;->$assertionsDisabled:Z

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->isPaused()Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 248
    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->isPaused()Z

    move-result v1

    if-nez v1, :cond_0

    .line 249
    invoke-direct {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->onCTAAndPermissionAgree()V

    goto :goto_0
.end method

.method public onResponse(Z)V
    .locals 6
    .param p1, "isAAEnabled"    # Z

    .prologue
    .line 255
    sget-object v0, Lcom/xiaomi/scanner/app/ScanActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResponse - amazon assistant enabled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mSettingsManager:Lcom/xiaomi/scanner/settings/SettingsManager;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mSettingsManager:Lcom/xiaomi/scanner/settings/SettingsManager;

    const-string v1, "default_scope"

    const-string v2, "enable_amazon_assistant_timestamp"

    .line 258
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 257
    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/scanner/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mSettingsManager:Lcom/xiaomi/scanner/settings/SettingsManager;

    const-string v1, "default_scope"

    const-string v2, "enable_amazon_assistant"

    invoke-virtual {v0, v1, v2, p1}, Lcom/xiaomi/scanner/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 261
    sget-object v0, Lcom/xiaomi/scanner/app/ScanActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "onResponse - amazon assistant tags registered "

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 263
    :cond_0
    return-void
.end method

.method protected final onRestart()V
    .locals 2

    .prologue
    .line 501
    sget-object v0, Lcom/xiaomi/scanner/app/ScanActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "onRestart"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 502
    invoke-super {p0}, Lmiui/app/Activity;->onRestart()V

    .line 503
    return-void
.end method

.method protected final onResume()V
    .locals 5

    .prologue
    .line 384
    sget-object v2, Lcom/xiaomi/scanner/app/ScanActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResume(): isKeyguardLocked() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->isKeyguardLocked()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 385
    iget-object v2, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mMainHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mOnResumeTasks:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 386
    invoke-direct {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mSkippedFirstOnResume:Z

    if-nez v2, :cond_1

    .line 388
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mSkippedFirstOnResume:Z

    .line 389
    invoke-direct {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->isKeyguardSecure()Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/16 v0, 0x1e

    .line 391
    .local v0, "delay":J
    :goto_0
    sget-object v2, Lcom/xiaomi/scanner/app/ScanActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResume() --> postDelayed(mOnResumeTasks,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 392
    iget-object v2, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mMainHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mOnResumeTasks:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 399
    .end local v0    # "delay":J
    :goto_1
    invoke-super {p0}, Lmiui/app/Activity;->onResume()V

    .line 402
    return-void

    .line 389
    :cond_0
    const-wide/16 v0, 0xf

    goto :goto_0

    .line 394
    :cond_1
    sget-object v2, Lcom/xiaomi/scanner/app/ScanActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v3, "onResume --> onResumeTasks()"

    invoke-static {v2, v3}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 396
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mSkippedFirstOnResume:Z

    .line 397
    invoke-direct {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->onResumeTasks()V

    goto :goto_1
.end method

.method protected final onStart()V
    .locals 2

    .prologue
    .line 368
    sget-object v0, Lcom/xiaomi/scanner/app/ScanActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 369
    invoke-virtual {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->onStartTasks()V

    .line 370
    invoke-super {p0}, Lmiui/app/Activity;->onStart()V

    .line 371
    return-void
.end method

.method public onStartTasks()V
    .locals 1

    .prologue
    .line 894
    iget-boolean v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mResetToPreviewOnResume:Z

    if-eqz v0, :cond_0

    .line 895
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mAppUI:Lcom/xiaomi/scanner/app/AppUI;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/AppUI;->resume()V

    .line 896
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mResetToPreviewOnResume:Z

    .line 899
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCurrentModule:Lcom/xiaomi/scanner/module/ModuleController;

    if-eqz v0, :cond_1

    .line 900
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCurrentModule:Lcom/xiaomi/scanner/module/ModuleController;

    invoke-interface {v0}, Lcom/xiaomi/scanner/module/ModuleController;->onStart()V

    .line 902
    :cond_1
    return-void
.end method

.method protected final onStop()V
    .locals 2

    .prologue
    .line 491
    sget-object v0, Lcom/xiaomi/scanner/app/ScanActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 492
    invoke-virtual {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 493
    sget-object v0, Lcom/xiaomi/scanner/app/ScanActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "changing configurations"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 495
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->onStopTasks()V

    .line 496
    invoke-super {p0}, Lmiui/app/Activity;->onStop()V

    .line 497
    return-void
.end method

.method protected onStopTasks()V
    .locals 1

    .prologue
    .line 905
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCurrentModule:Lcom/xiaomi/scanner/module/ModuleController;

    if-eqz v0, :cond_0

    .line 906
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCurrentModule:Lcom/xiaomi/scanner/module/ModuleController;

    invoke-interface {v0}, Lcom/xiaomi/scanner/module/ModuleController;->onStop()V

    .line 908
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "m"    # Landroid/view/MotionEvent;

    .prologue
    .line 1232
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_0

    .line 1233
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1235
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mAppUI:Lcom/xiaomi/scanner/app/AppUI;

    if-eqz v0, :cond_1

    .line 1236
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mAppUI:Lcom/xiaomi/scanner/app/AppUI;

    invoke-virtual {v0, p1}, Lcom/xiaomi/scanner/app/AppUI;->updateTouchEvent(Landroid/view/MotionEvent;)V

    .line 1238
    :cond_1
    invoke-super {p0, p1}, Lmiui/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onUserInteraction()V
    .locals 1

    .prologue
    .line 554
    invoke-super {p0}, Lmiui/app/Activity;->onUserInteraction()V

    .line 555
    invoke-virtual {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 556
    invoke-direct {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->keepScreenOnForAWhile()V

    .line 558
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 738
    invoke-super {p0, p1}, Lmiui/app/Activity;->onWindowFocusChanged(Z)V

    .line 739
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mAppUI:Lcom/xiaomi/scanner/app/AppUI;

    if-eqz v0, :cond_0

    .line 740
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mAppUI:Lcom/xiaomi/scanner/app/AppUI;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/AppUI;->updateBottomCover()V

    .line 742
    :cond_0
    return-void
.end method

.method public playBeepAndVibrate()V
    .locals 4

    .prologue
    .line 833
    const/high16 v1, 0x7f060000

    const v2, 0x3dcccccd    # 0.1f

    invoke-virtual {p0, v1, v2}, Lcom/xiaomi/scanner/app/ScanActivity;->playSound(IF)V

    .line 834
    invoke-virtual {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 835
    .local v0, "vibrator":Landroid/os/Vibrator;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 836
    return-void
.end method

.method public playSound(IF)V
    .locals 1
    .param p1, "resourceId"    # I
    .param p2, "volume"    # F

    .prologue
    .line 845
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mSoundPlayer:Lcom/xiaomi/scanner/camera/SoundPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mSoundPlayer:Lcom/xiaomi/scanner/camera/SoundPlayer;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/SoundPlayer;->isReleased()Z

    move-result v0

    if-nez v0, :cond_0

    .line 846
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mSoundPlayer:Lcom/xiaomi/scanner/camera/SoundPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/scanner/camera/SoundPlayer;->play(IF)V

    .line 848
    :cond_0
    return-void
.end method

.method public removePreviewAreaSizeChangedListener(Lcom/xiaomi/scanner/ui/PreviewStatusListener$PreviewAreaChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/xiaomi/scanner/ui/PreviewStatusListener$PreviewAreaChangedListener;

    .prologue
    .line 1105
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mAppUI:Lcom/xiaomi/scanner/app/AppUI;

    invoke-virtual {v0, p1}, Lcom/xiaomi/scanner/app/AppUI;->removePreviewAreaChangedListener(Lcom/xiaomi/scanner/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 1106
    return-void
.end method

.method public requestPreviewFrame()V
    .locals 1

    .prologue
    .line 517
    new-instance v0, Lcom/xiaomi/scanner/app/ScanActivity$3;

    invoke-direct {v0, p0}, Lcom/xiaomi/scanner/app/ScanActivity$3;-><init>(Lcom/xiaomi/scanner/app/ScanActivity;)V

    invoke-static {v0}, Lcom/xiaomi/scanner/util/ScannerThreadPool;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 527
    return-void
.end method

.method public setClearTask(ILjava/lang/Runnable;)V
    .locals 4
    .param p1, "moduleId"    # I
    .param p2, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 1425
    iget-object v1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mClearTasks:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1426
    :try_start_0
    sget-object v0, Lcom/xiaomi/scanner/app/ScanActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setClearTask: moduleId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " task="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 1427
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mClearTasks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1428
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1429
    if-eqz p2, :cond_0

    .line 1430
    invoke-static {p2}, Lcom/xiaomi/scanner/util/ScannerThreadPool;->poolExecute(Ljava/lang/Runnable;)V

    .line 1432
    :cond_0
    return-void

    .line 1428
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setInPictureTakenState(Z)V
    .locals 1
    .param p1, "inPictureState"    # Z

    .prologue
    .line 1140
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mAppUI:Lcom/xiaomi/scanner/app/AppUI;

    if-eqz v0, :cond_0

    .line 1141
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mAppUI:Lcom/xiaomi/scanner/app/AppUI;

    invoke-virtual {v0, p1}, Lcom/xiaomi/scanner/app/AppUI;->setInPictureTakenState(Z)V

    .line 1143
    :cond_0
    return-void
.end method

.method public setPreviewStatusListener(Lcom/xiaomi/scanner/ui/PreviewStatusListener;)V
    .locals 1
    .param p1, "previewStatusListener"    # Lcom/xiaomi/scanner/ui/PreviewStatusListener;

    .prologue
    .line 1120
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mAppUI:Lcom/xiaomi/scanner/app/AppUI;

    invoke-virtual {v0, p1}, Lcom/xiaomi/scanner/app/AppUI;->setPreviewStatusListener(Lcom/xiaomi/scanner/ui/PreviewStatusListener;)V

    .line 1121
    return-void
.end method

.method public setShutterEventsListener(Lcom/xiaomi/scanner/app/AppController$ShutterEventsListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/xiaomi/scanner/app/AppController$ShutterEventsListener;

    .prologue
    .line 1131
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 1372
    iget v1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCurrentModuleIndex:I

    shl-int/lit8 v1, v1, 0x10

    or-int v0, v1, p2

    .line 1373
    .local v0, "innerRequestCode":I
    invoke-super {p0, p1, v0}, Lmiui/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1374
    return-void
.end method

.method public updatePreviewAspectRatio(F)V
    .locals 1
    .param p1, "aspectRatio"    # F

    .prologue
    .line 1110
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mAppUI:Lcom/xiaomi/scanner/app/AppUI;

    invoke-virtual {v0, p1}, Lcom/xiaomi/scanner/app/AppUI;->updatePreviewAspectRatio(F)V

    .line 1111
    return-void
.end method

.method public updatePreviewTransform(Landroid/graphics/Matrix;)V
    .locals 1
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 1115
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mAppUI:Lcom/xiaomi/scanner/app/AppUI;

    invoke-virtual {v0, p1}, Lcom/xiaomi/scanner/app/AppUI;->updatePreviewTransform(Landroid/graphics/Matrix;)V

    .line 1116
    return-void
.end method

.method protected updateStorageHint(J)V
    .locals 5
    .param p1, "storageSpace"    # J

    .prologue
    .line 1290
    iget-boolean v1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mPaused:Z

    if-eqz v1, :cond_1

    .line 1323
    :cond_0
    :goto_0
    return-void

    .line 1294
    :cond_1
    const/4 v0, 0x0

    .line 1295
    .local v0, "message":Ljava/lang/String;
    const-wide/16 v2, -0x1

    cmp-long v1, p1, v2

    if-nez v1, :cond_3

    .line 1296
    const v1, 0x7f070081

    invoke-virtual {p0, v1}, Lcom/xiaomi/scanner/app/ScanActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1305
    :cond_2
    :goto_1
    if-eqz v0, :cond_7

    .line 1306
    sget-object v1, Lcom/xiaomi/scanner/app/ScanActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Storage warning: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 1307
    iget-object v1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mStorageHint:Lcom/xiaomi/scanner/ui/OnScreenHint;

    if-nez v1, :cond_6

    .line 1308
    invoke-static {p0, v0}, Lcom/xiaomi/scanner/ui/OnScreenHint;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;)Lcom/xiaomi/scanner/ui/OnScreenHint;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mStorageHint:Lcom/xiaomi/scanner/ui/OnScreenHint;

    .line 1312
    :goto_2
    iget-object v1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mStorageHint:Lcom/xiaomi/scanner/ui/OnScreenHint;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/ui/OnScreenHint;->show()V

    .line 1315
    iget-object v1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mAppUI:Lcom/xiaomi/scanner/app/AppUI;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/xiaomi/scanner/app/AppUI;->setDisableAllUserInteractions(Z)V

    goto :goto_0

    .line 1297
    :cond_3
    const-wide/16 v2, -0x2

    cmp-long v1, p1, v2

    if-nez v1, :cond_4

    .line 1298
    const v1, 0x7f070091

    invoke-virtual {p0, v1}, Lcom/xiaomi/scanner/app/ScanActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1299
    :cond_4
    const-wide/16 v2, -0x3

    cmp-long v1, p1, v2

    if-nez v1, :cond_5

    .line 1300
    const v1, 0x7f070016

    invoke-virtual {p0, v1}, Lcom/xiaomi/scanner/app/ScanActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1301
    :cond_5
    const-wide/32 v2, 0x2faf080

    cmp-long v1, p1, v2

    if-gtz v1, :cond_2

    .line 1302
    const v1, 0x7f0700a7

    invoke-virtual {p0, v1}, Lcom/xiaomi/scanner/app/ScanActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1310
    :cond_6
    iget-object v1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mStorageHint:Lcom/xiaomi/scanner/ui/OnScreenHint;

    invoke-virtual {v1, v0}, Lcom/xiaomi/scanner/ui/OnScreenHint;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1316
    :cond_7
    iget-object v1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mStorageHint:Lcom/xiaomi/scanner/ui/OnScreenHint;

    if-eqz v1, :cond_0

    .line 1317
    iget-object v1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mStorageHint:Lcom/xiaomi/scanner/ui/OnScreenHint;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/ui/OnScreenHint;->cancel()V

    .line 1318
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mStorageHint:Lcom/xiaomi/scanner/ui/OnScreenHint;

    .line 1321
    iget-object v1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mAppUI:Lcom/xiaomi/scanner/app/AppUI;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/xiaomi/scanner/app/AppUI;->setDisableAllUserInteractions(Z)V

    goto/16 :goto_0
.end method

.method public updateStorageSpaceAndHint(Lcom/xiaomi/scanner/app/ScanActivity$OnStorageUpdateDoneListener;)V
    .locals 1
    .param p1, "callback"    # Lcom/xiaomi/scanner/app/ScanActivity$OnStorageUpdateDoneListener;

    .prologue
    .line 1266
    new-instance v0, Lcom/xiaomi/scanner/app/ScanActivity$7;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/scanner/app/ScanActivity$7;-><init>(Lcom/xiaomi/scanner/app/ScanActivity;Lcom/xiaomi/scanner/app/ScanActivity$OnStorageUpdateDoneListener;)V

    invoke-static {v0}, Lcom/xiaomi/scanner/util/ScannerThreadPool;->poolExecute(Lcom/xiaomi/scanner/util/ScannerThreadPool$ScanThreadCallback;)V

    .line 1287
    return-void
.end method

.method public updateWordTranslateUI(Z)V
    .locals 1
    .param p1, "lock"    # Z

    .prologue
    .line 998
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCurrentModule:Lcom/xiaomi/scanner/module/ModuleController;

    if-eqz v0, :cond_0

    .line 999
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCurrentModule:Lcom/xiaomi/scanner/module/ModuleController;

    invoke-interface {v0, p1}, Lcom/xiaomi/scanner/module/ModuleController;->updateWordTranslateUI(Z)V

    .line 1001
    :cond_0
    return-void
.end method

.method public visibleChange(Z)V
    .locals 2
    .param p1, "showFull"    # Z

    .prologue
    .line 272
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCaptureModule:Lcom/xiaomi/scanner/camera/CaptureModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCameraController:Lcom/xiaomi/scanner/camera/CameraController;

    if-nez v0, :cond_1

    .line 285
    :cond_0
    :goto_0
    return-void

    .line 275
    :cond_1
    if-eqz p1, :cond_2

    .line 276
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCaptureModule:Lcom/xiaomi/scanner/camera/CaptureModule;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/CaptureModule;->pause()V

    .line 277
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCameraController:Lcom/xiaomi/scanner/camera/CameraController;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/CameraController;->closeCamera()V

    .line 278
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCameraIsAvailable:Z

    goto :goto_0

    .line 280
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mAppUI:Lcom/xiaomi/scanner/app/AppUI;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/AppUI;->resetFlashState()V

    .line 281
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCaptureModule:Lcom/xiaomi/scanner/camera/CaptureModule;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/CaptureModule;->resume()V

    .line 282
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCurrentModule:Lcom/xiaomi/scanner/module/ModuleController;

    invoke-virtual {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->getOrientationManager()Lcom/xiaomi/scanner/camera/OrientationManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/xiaomi/scanner/camera/OrientationManager;->getDeviceOrientation()Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaomi/scanner/module/ModuleController;->onOrientationChange(I)V

    goto :goto_0
.end method
