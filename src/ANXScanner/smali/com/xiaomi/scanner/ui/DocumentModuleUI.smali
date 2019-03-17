.class public Lcom/xiaomi/scanner/ui/DocumentModuleUI;
.super Ljava/lang/Object;
.source "DocumentModuleUI.java"

# interfaces
.implements Lcom/xiaomi/scanner/ui/MessageDispatcher;
.implements Lcom/xiaomi/scanner/ui/LanguageChooser$LanguageSwitchListener;


# static fields
.field public static final INDEX_GRAY_SCALE:I = 0x3

.field public static final INDEX_OCR:I = 0x1

.field public static final INDEX_PREVIEW:I = -0x1

.field public static final INDEX_PROCESS:I = 0x0

.field public static final INDEX_RECTIFY:I = 0x2

.field private static final NotesActivity:Ljava/lang/String; = "com.miui.notes.ui.NotesListActivity"

.field private static final NotesPackage:Ljava/lang/String; = "com.miui.notes"

.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;


# instance fields
.field private isTakePhotoType:Z

.field private final mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

.field private final mAppRoot:Landroid/view/View;

.field private mAppUtilListener:Lcom/xiaomi/scanner/util/AppUtil$AppUtilListener;

.field private mCurrentVisibleIndex:I

.field private final mFullScreenRoot:Landroid/view/ViewGroup;

.field private mMessageDispatcher:Lcom/xiaomi/scanner/ui/MessageDispatcher;

.field private final mModuleRoot:Landroid/view/ViewGroup;

.field private mOcrLayout:Lcom/xiaomi/scanner/ui/DocumentOcrLayout;

.field private final mOwner:Lcom/xiaomi/scanner/module/DocumentModule;

.field private mPreviewCropView:Lcom/xiaomi/scanner/ui/DocumentPreviewCropView;

.field private mProcessLayout:Lcom/xiaomi/scanner/ui/ProcessDocumentLayout;

.field private mRecognizeResult:Lcom/xiaomi/recognizer/RecognizeResult;

.field private mRectifiedBitmap:Landroid/graphics/Bitmap;

.field private mRectifyLayout:Lcom/xiaomi/scanner/ui/RectifyImageLayout;

.field private mSourceBitmap:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "DocumentModuleUI"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/scanner/app/ScanActivity;Lcom/xiaomi/scanner/module/DocumentModule;Landroid/view/View;)V
    .locals 6
    .param p1, "activity"    # Lcom/xiaomi/scanner/app/ScanActivity;
    .param p2, "owner"    # Lcom/xiaomi/scanner/module/DocumentModule;
    .param p3, "parent"    # Landroid/view/View;

    .prologue
    const/4 v5, -0x1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput v5, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->mCurrentVisibleIndex:I

    .line 428
    new-instance v1, Lcom/xiaomi/scanner/ui/DocumentModuleUI$3;

    invoke-direct {v1, p0}, Lcom/xiaomi/scanner/ui/DocumentModuleUI$3;-><init>(Lcom/xiaomi/scanner/ui/DocumentModuleUI;)V

    iput-object v1, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->mAppUtilListener:Lcom/xiaomi/scanner/util/AppUtil$AppUtilListener;

    .line 58
    iput-object p1, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    .line 59
    iput-object p2, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->mOwner:Lcom/xiaomi/scanner/module/DocumentModule;

    .line 60
    iput-object p3, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->mAppRoot:Landroid/view/View;

    .line 62
    iget-object v1, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->mAppRoot:Landroid/view/View;

    const v2, 0x7f0d008c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->mModuleRoot:Landroid/view/ViewGroup;

    .line 63
    iget-object v1, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/app/ScanActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030038

    iget-object v3, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->mModuleRoot:Landroid/view/ViewGroup;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 64
    iget-object v1, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->mAppRoot:Landroid/view/View;

    const v2, 0x7f0d0090

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->mFullScreenRoot:Landroid/view/ViewGroup;

    .line 65
    iput v5, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->mCurrentVisibleIndex:I

    .line 66
    iget-object v1, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->mModuleRoot:Landroid/view/ViewGroup;

    const v2, 0x7f0d00d8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/scanner/ui/DocumentPreviewCropView;

    iput-object v1, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->mPreviewCropView:Lcom/xiaomi/scanner/ui/DocumentPreviewCropView;

    .line 68
    iget-object v1, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/app/ScanActivity;->getAppUI()Lcom/xiaomi/scanner/app/AppUI;

    move-result-object v0

    .line 69
    .local v0, "appUI":Lcom/xiaomi/scanner/app/AppUI;
    if-eqz v0, :cond_0

    .line 70
    const v1, 0x7f07004e

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/app/AppUI;->setTitle(I)V

    .line 72
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/scanner/ui/DocumentModuleUI;)Lcom/xiaomi/scanner/app/ScanActivity;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/ui/DocumentModuleUI;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaomi/scanner/ui/DocumentModuleUI;)Lcom/xiaomi/scanner/util/AppUtil$AppUtilListener;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/ui/DocumentModuleUI;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->mAppUtilListener:Lcom/xiaomi/scanner/util/AppUtil$AppUtilListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/xiaomi/scanner/ui/DocumentModuleUI;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/scanner/ui/DocumentModuleUI;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->startNoteActivity(Ljava/lang/String;)V

    return-void
.end method

.method private changeFrontUI(IIIII)V
    .locals 1
    .param p1, "currentIndex"    # I
    .param p2, "fullScreenUI"    # I
    .param p3, "processUI"    # I
    .param p4, "rectifyUI"    # I
    .param p5, "ocrUI"    # I

    .prologue
    .line 195
    iput p1, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->mCurrentVisibleIndex:I

    .line 196
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->mFullScreenRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 198
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->mProcessLayout:Lcom/xiaomi/scanner/ui/ProcessDocumentLayout;

    if-nez v0, :cond_3

    .line 199
    if-nez p3, :cond_0

    .line 200
    invoke-direct {p0}, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->initProcessUI()V

    .line 201
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->mProcessLayout:Lcom/xiaomi/scanner/ui/ProcessDocumentLayout;

    invoke-virtual {v0, p3}, Lcom/xiaomi/scanner/ui/ProcessDocumentLayout;->setVisibility(I)V

    .line 207
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->mRectifyLayout:Lcom/xiaomi/scanner/ui/RectifyImageLayout;

    if-nez v0, :cond_4

    .line 208
    if-nez p4, :cond_1

    .line 209
    invoke-direct {p0}, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->initRectifyUI()V

    .line 210
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->mRectifyLayout:Lcom/xiaomi/scanner/ui/RectifyImageLayout;

    invoke-virtual {v0, p4}, Lcom/xiaomi/scanner/ui/RectifyImageLayout;->setVisibility(I)V

    .line 216
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->mOcrLayout:Lcom/xiaomi/scanner/ui/DocumentOcrLayout;

    if-nez v0, :cond_5

    .line 217
    if-nez p5, :cond_2

    .line 218
    invoke-direct {p0}, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->initOcrUI()V

    .line 219
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->mOcrLayout:Lcom/xiaomi/scanner/ui/DocumentOcrLayout;

    invoke-virtual {v0, p5}, Lcom/xiaomi/scanner/ui/DocumentOcrLayout;->setVisibility(I)V

    .line 224
    :cond_2
    :goto_2
    return-void

    .line 204
    :cond_3
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->mProcessLayout:Lcom/xiaomi/scanner/ui/ProcessDocumentLayout;

    invoke-virtual {v0, p3}, Lcom/xiaomi/scanner/ui/ProcessDocumentLayout;->setVisibility(I)V

    goto :goto_0

    .line 213
    :cond_4
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->mRectifyLayout:Lcom/xiaomi/scanner/ui/RectifyImageLayout;

    invoke-virtual {v0, p4}, Lcom/xiaomi/scanner/ui/RectifyImageLayout;->setVisibility(I)V

    goto :goto_1

    .line 222
    :cond_5
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->mOcrLayout:Lcom/xiaomi/scanner/ui/DocumentOcrLayout;

    invoke-virtual {v0, p5}, Lcom/xiaomi/scanner/ui/DocumentOcrLayout;->setVisibility(I)V

    goto :goto_2
.end method

.method private checkPreviewSize()V
    .locals 5

    .prologue
    .line 244
    iget-object v2, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->mPreviewCropView:Lcom/xiaomi/scanner/ui/DocumentPreviewCropView;

    invoke-virtual {v2}, Lcom/xiaomi/scanner/ui/DocumentPreviewCropView;->hasSetPreviewSize()Z

    move-result v2

    if-nez v2, :cond_0

    .line 245
    iget-object v2, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v2}, Lcom/xiaomi/scanner/app/ScanActivity;->getCameraSettings()Lcom/android/ex/camera2/portability/CameraSettings;

    move-result-object v0

    .line 246
    .local v0, "cameraSettings":Lcom/android/ex/camera2/portability/CameraSettings;
    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentPreviewSize()Lcom/android/ex/camera2/portability/Size;

    move-result-object v1

    .line 248
    .local v1, "previewSize":Lcom/android/ex/camera2/portability/Size;
    iget-object v2, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->mPreviewCropView:Lcom/xiaomi/scanner/ui/DocumentPreviewCropView;

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/Size;->width()I

    move-result v3

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/Size;->height()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/xiaomi/scanner/ui/DocumentPreviewCropView;->setPreviewSize(II)V

    .line 251
    .end local v0    # "cameraSettings":Lcom/android/ex/camera2/portability/CameraSettings;
    .end local v1    # "previewSize":Lcom/android/ex/camera2/portability/Size;
    :cond_0
    return-void
.end method

.method private cornersToPoints([F)[Landroid/graphics/Point;
    .locals 7
    .param p1, "corners"    # [F

    .prologue
    .line 141
    if-nez p1, :cond_0

    const/4 v3, 0x0

    .line 142
    .local v3, "size":I
    :goto_0
    sget-object v4, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cornerSize="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 143
    new-array v2, v3, [Landroid/graphics/Point;

    .line 144
    .local v2, "points":[Landroid/graphics/Point;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v3, :cond_1

    .line 145
    new-instance v1, Landroid/graphics/Point;

    mul-int/lit8 v4, v0, 0x2

    aget v4, p1, v4

    float-to-int v4, v4

    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x1

    aget v5, p1, v5

    float-to-int v5, v5

    invoke-direct {v1, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 146
    .local v1, "p":Landroid/graphics/Point;
    aput-object v1, v2, v0

    .line 144
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 141
    .end local v0    # "i":I
    .end local v1    # "p":Landroid/graphics/Point;
    .end local v2    # "points":[Landroid/graphics/Point;
    .end local v3    # "size":I
    :cond_0
    array-length v4, p1

    div-int/lit8 v3, v4, 0x2

    goto :goto_0

    .line 149
    .restart local v0    # "i":I
    .restart local v2    # "points":[Landroid/graphics/Point;
    .restart local v3    # "size":I
    :cond_1
    return-object v2
.end method

.method private initOcrUI()V
    .locals 4

    .prologue
    .line 272
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->mOcrLayout:Lcom/xiaomi/scanner/ui/DocumentOcrLayout;

    if-nez v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030039

    iget-object v2, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->mFullScreenRoot:Landroid/view/ViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 274
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->mFullScreenRoot:Landroid/view/ViewGroup;

    const v1, 0x7f0d00d9

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/scanner/ui/DocumentOcrLayout;

    iput-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->mOcrLayout:Lcom/xiaomi/scanner/ui/DocumentOcrLayout;

    .line 275
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->mOcrLayout:Lcom/xiaomi/scanner/ui/DocumentOcrLayout;

    invoke-virtual {v0, p0}, Lcom/xiaomi/scanner/ui/DocumentOcrLayout;->setLanguageChooserListener(Lcom/xiaomi/scanner/ui/LanguageChooser$LanguageSwitchListener;)V

    .line 276
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->mOcrLayout:Lcom/xiaomi/scanner/ui/DocumentOcrLayout;

    invoke-virtual {v0, p0}, Lcom/xiaomi/scanner/ui/DocumentOcrLayout;->setMessageDispatcher(Lcom/xiaomi/scanner/ui/MessageDispatcher;)V

    .line 278
    :cond_0
    return-void
.end method

.method private initProcessUI()V
    .locals 4

    .prologue
    .line 255
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->mProcessLayout:Lcom/xiaomi/scanner/ui/ProcessDocumentLayout;

    if-nez v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03003a

    iget-object v2, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->mFullScreenRoot:Landroid/view/ViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 257
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->mFullScreenRoot:Landroid/view/ViewGroup;

    const v1, 0x7f0d00e2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/scanner/ui/ProcessDocumentLayout;

    iput-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->mProcessLayout:Lcom/xiaomi/scanner/ui/ProcessDocumentLayout;

    .line 258
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->mProcessLayout:Lcom/xiaomi/scanner/ui/ProcessDocumentLayout;

    invoke-virtual {v0, p0}, Lcom/xiaomi/scanner/ui/ProcessDocumentLayout;->setMessageDispatcher(Lcom/xiaomi/scanner/ui/MessageDispatcher;)V

    .line 260
    :cond_0
    return-void
.end method

.method private initRectifyUI()V
    .locals 4

    .prologue
    .line 263
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->mRectifyLayout:Lcom/xiaomi/scanner/ui/RectifyImageLayout;

    if-nez v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03003b

    iget-object v2, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->mFullScreenRoot:Landroid/view/ViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 265
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->mFullScreenRoot:Landroid/view/ViewGroup;

    const v1, 0x7f0d00ed

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/scanner/ui/RectifyImageLayout;

    iput-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->mRectifyLayout:Lcom/xiaomi/scanner/ui/RectifyImageLayout;

    .line 266
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->mRectifyLayout:Lcom/xiaomi/scanner/ui/RectifyImageLayout;

    invoke-virtual {v0, p0}, Lcom/xiaomi/scanner/ui/RectifyImageLayout;->setMessageDispatcher(Lcom/xiaomi/scanner/ui/MessageDispatcher;)V

    .line 267
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->mRectifyLayout:Lcom/xiaomi/scanner/ui/RectifyImageLayout;

    const v1, 0x7f070041

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/ui/RectifyImageLayout;->setTitle(I)V

    .line 269
    :cond_0
    return-void
.end method

.method private onGrayScale(Ljava/lang/Boolean;)V
    .locals 6
    .param p1, "toGrayScale"    # Ljava/lang/Boolean;

    .prologue
    .line 356
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->mMessageDispatcher:Lcom/xiaomi/scanner/ui/MessageDispatcher;

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->mMessageDispatcher:Lcom/xiaomi/scanner/ui/MessageDispatcher;

    const/4 v1, 0x0

    const v2, 0x7f0d00e8

    const/4 v3, 0x2

    const/4 v5, 0x0

    move-object v4, p1

    invoke-interface/range {v0 .. v5}, Lcom/xiaomi/scanner/ui/MessageDispatcher;->dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 362
    :cond_0
    return-void
.end method

.method private onOcr()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 339
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->mMessageDispatcher:Lcom/xiaomi/scanner/ui/MessageDispatcher;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->mMessageDispatcher:Lcom/xiaomi/scanner/ui/MessageDispatcher;

    const/4 v1, 0x0

    const v2, 0x7f0d00e9

    const/4 v3, 0x2

    move-object v5, v4

    invoke-interface/range {v0 .. v5}, Lcom/xiaomi/scanner/ui/MessageDispatcher;->dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 345
    :cond_0
    return-void
.end method

.method private onOcrBack()V
    .locals 0

    .prologue
    .line 348
    invoke-direct {p0}, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->showProcessUI()V

    .line 349
    return-void
.end method

.method private onRectify()V
    .locals 0

    .prologue
    .line 352
    invoke-direct {p0}, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->showRectifyUI()V

    .line 353
    return-void
.end method

.method private onRectifyDone(Lcom/xiaomi/recognizer/RecognizeResult;)V
    .locals 6
    .param p1, "result"    # Lcom/xiaomi/recognizer/RecognizeResult;

    .prologue
    .line 369
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->mMessageDispatcher:Lcom/xiaomi/scanner/ui/MessageDispatcher;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->mMessageDispatcher:Lcom/xiaomi/scanner/ui/MessageDispatcher;

    const/4 v1, 0x0

    const v2, 0x7f0d00f2

    const/4 v3, 0x2

    const/4 v5, 0x0

    move-object v4, p1

    invoke-interface/range {v0 .. v5}, Lcom/xiaomi/scanner/ui/MessageDispatcher;->dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 378
    :goto_0
    return-void

    .line 375
    :cond_0
    sget-object v0, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "null messageDispatcher"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 376
    invoke-direct {p0}, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->showProcessUI()V

    goto :goto_0
.end method

.method private onRetake()V
    .locals 0

    .prologue
    .line 326
    invoke-direct {p0}, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->showPreviewUI()V

    .line 327
    return-void
.end method

.method private onSaveDocument(Ljava/lang/Boolean;)V
    .locals 6
    .param p1, "grayScale"    # Ljava/lang/Boolean;

    .prologue
    .line 330
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->mMessageDispatcher:Lcom/xiaomi/scanner/ui/MessageDispatcher;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->mMessageDispatcher:Lcom/xiaomi/scanner/ui/MessageDispatcher;

    const/4 v1, 0x0

    const v2, 0x7f0d00ec

    const/4 v3, 0x2

    const/4 v5, 0x0

    move-object v4, p1

    invoke-interface/range {v0 .. v5}, Lcom/xiaomi/scanner/ui/MessageDispatcher;->dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 336
    :cond_0
    return-void
.end method

.method private saveOcrResult(Ljava/lang/String;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 381
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 382
    :cond_0
    sget-object v0, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drop save operatioin result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 404
    :goto_0
    return-void

    .line 386
    :cond_1
    new-instance v0, Lcom/xiaomi/scanner/ui/DocumentModuleUI$1;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/scanner/ui/DocumentModuleUI$1;-><init>(Lcom/xiaomi/scanner/ui/DocumentModuleUI;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 403
    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/ui/DocumentModuleUI$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private showOcrUI()V
    .locals 6

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 170
    const/4 v1, 0x1

    move-object v0, p0

    move v4, v3

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->changeFrontUI(IIIII)V

    .line 171
    return-void
.end method

.method private showPreviewUI()V
    .locals 6

    .prologue
    const/4 v1, -0x1

    const/16 v2, 0x8

    .line 153
    move-object v0, p0

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->changeFrontUI(IIIII)V

    .line 155
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->mOwner:Lcom/xiaomi/scanner/module/DocumentModule;

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/module/DocumentModule;->onModuleSwitch(I)V

    .line 156
    return-void
.end method

.method private showProcessUI()V
    .locals 6

    .prologue
    const/16 v4, 0x8

    const/4 v1, 0x0

    .line 159
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->mRectifiedBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->mRectifiedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 160
    :cond_0
    sget-object v0, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "drop this operation, bitmap is recycled"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 167
    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object v0, p0

    move v2, v1

    move v3, v1

    move v5, v4

    .line 163
    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->changeFrontUI(IIIII)V

    .line 164
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->mProcessLayout:Lcom/xiaomi/scanner/ui/ProcessDocumentLayout;

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->mProcessLayout:Lcom/xiaomi/scanner/ui/ProcessDocumentLayout;

    iget-object v1, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->mRectifiedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/ui/ProcessDocumentLayout;->setRectifiedImage(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private showRectifyUI()V
    .locals 6

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 174
    const/4 v1, 0x2

    move-object v0, p0

    move v4, v2

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->changeFrontUI(IIIII)V

    .line 175
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->mRectifyLayout:Lcom/xiaomi/scanner/ui/RectifyImageLayout;

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->mSourceBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->mRectifyLayout:Lcom/xiaomi/scanner/ui/RectifyImageLayout;

    iget-object v1, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->mSourceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/ui/RectifyImageLayout;->setSourceImage(Landroid/graphics/Bitmap;)V

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->mRecognizeResult:Lcom/xiaomi/recognizer/RecognizeResult;

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->mRectifyLayout:Lcom/xiaomi/scanner/ui/RectifyImageLayout;

    iget-object v1, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->mRecognizeResult:Lcom/xiaomi/recognizer/RecognizeResult;

    iget-object v1, v1, Lcom/xiaomi/recognizer/RecognizeResult;->quadrangleCorners:[F

    invoke-direct {p0, v1}, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->cornersToPoints([F)[Landroid/graphics/Point;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/ui/RectifyImageLayout;->setCropCorners([Landroid/graphics/Point;)V

    .line 184
    :cond_1
    return-void
.end method

.method private startNoteActivity(Ljava/lang/String;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 408
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    if-nez v1, :cond_0

    .line 409
    sget-object v1, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v2, "null activity drop operation"

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 426
    :goto_0
    return-void

    .line 413
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    new-instance v2, Lcom/xiaomi/scanner/ui/DocumentModuleUI$2;

    invoke-direct {v2, p0, p1}, Lcom/xiaomi/scanner/ui/DocumentModuleUI$2;-><init>(Lcom/xiaomi/scanner/ui/DocumentModuleUI;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/xiaomi/scanner/app/ScanActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 423
    :catch_0
    move-exception v0

    .line 424
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v2, "save note fail"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "what"    # I
    .param p2, "sender"    # I
    .param p3, "receiver"    # I
    .param p4, "extra1"    # Ljava/lang/Object;
    .param p5, "extra2"    # Ljava/lang/Object;

    .prologue
    .line 282
    packed-switch p2, :pswitch_data_0

    .line 319
    :pswitch_0
    sget-object v2, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unexpected sender "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 322
    .end local p4    # "extra1":Ljava/lang/Object;
    :cond_0
    :goto_0
    const/4 v2, 0x1

    return v2

    .restart local p4    # "extra1":Ljava/lang/Object;
    :pswitch_1
    move-object v2, p4

    .line 284
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 285
    .local v0, "gray":Z
    check-cast p4, Ljava/lang/Boolean;

    .end local p4    # "extra1":Ljava/lang/Object;
    invoke-direct {p0, p4}, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->onGrayScale(Ljava/lang/Boolean;)V

    .line 286
    if-eqz v0, :cond_1

    const-string v1, "black_white"

    .line 287
    .local v1, "typeValue":Ljava/lang/String;
    :goto_1
    iget-boolean v2, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->isTakePhotoType:Z

    if-eqz v2, :cond_2

    const-string v2, "document_take_photo_change_color"

    :goto_2
    invoke-static {v2, v1}, Lcom/xiaomi/scanner/stats/UsageStatistics;->recordWithParamEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 286
    .end local v1    # "typeValue":Ljava/lang/String;
    :cond_1
    const-string v1, "color"

    goto :goto_1

    .line 287
    .restart local v1    # "typeValue":Ljava/lang/String;
    :cond_2
    const-string v2, "document_select_change_color"

    goto :goto_2

    .line 290
    .end local v0    # "gray":Z
    .end local v1    # "typeValue":Ljava/lang/String;
    .restart local p4    # "extra1":Ljava/lang/Object;
    :pswitch_2
    invoke-direct {p0}, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->onRectify()V

    .line 291
    iget-boolean v2, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->isTakePhotoType:Z

    if-eqz v2, :cond_3

    const-string v2, "document_take_photo_adjust"

    :goto_3
    invoke-static {v2}, Lcom/xiaomi/scanner/stats/UsageStatistics;->trackEvent(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v2, "document_select_adjust"

    goto :goto_3

    .line 294
    :pswitch_3
    invoke-direct {p0}, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->onOcr()V

    .line 295
    iget-boolean v2, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->isTakePhotoType:Z

    if-eqz v2, :cond_4

    const-string v2, "document_take_photo_recog_word"

    :goto_4
    invoke-static {v2}, Lcom/xiaomi/scanner/stats/UsageStatistics;->trackEvent(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v2, "document_select_recog_word"

    goto :goto_4

    .line 298
    :pswitch_4
    invoke-direct {p0}, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->onRetake()V

    goto :goto_0

    .line 301
    :pswitch_5
    check-cast p4, Ljava/lang/Boolean;

    .end local p4    # "extra1":Ljava/lang/Object;
    invoke-direct {p0, p4}, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->onSaveDocument(Ljava/lang/Boolean;)V

    .line 302
    iget-boolean v2, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->isTakePhotoType:Z

    if-eqz v2, :cond_5

    const-string v2, "document_take_photo_save"

    :goto_5
    invoke-static {v2}, Lcom/xiaomi/scanner/stats/UsageStatistics;->trackEvent(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v2, "document_select_save"

    goto :goto_5

    .line 305
    .restart local p4    # "extra1":Ljava/lang/Object;
    :pswitch_6
    instance-of v2, p4, Lcom/xiaomi/recognizer/RecognizeResult;

    if-eqz v2, :cond_0

    .line 306
    check-cast p4, Lcom/xiaomi/recognizer/RecognizeResult;

    .end local p4    # "extra1":Ljava/lang/Object;
    invoke-direct {p0, p4}, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->onRectifyDone(Lcom/xiaomi/recognizer/RecognizeResult;)V

    goto :goto_0

    .line 310
    .restart local p4    # "extra1":Ljava/lang/Object;
    :pswitch_7
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->onRectifyCanceled()V

    goto :goto_0

    .line 313
    :pswitch_8
    invoke-direct {p0}, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->onOcrBack()V

    goto :goto_0

    .line 316
    :pswitch_9
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->saveOcrResult(Ljava/lang/String;)V

    goto :goto_0

    .line 282
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d00df
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public isShowPreviewUI()Z
    .locals 2

    .prologue
    .line 227
    iget v0, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->mCurrentVisibleIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 79
    iget v2, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->mCurrentVisibleIndex:I

    packed-switch v2, :pswitch_data_0

    .line 99
    sget-object v1, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->mCurrentVisibleIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 102
    :goto_0
    :pswitch_0
    return v0

    .line 83
    :pswitch_1
    invoke-direct {p0}, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->showPreviewUI()V

    move v0, v1

    .line 84
    goto :goto_0

    .line 86
    :pswitch_2
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->mRectifiedBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 87
    invoke-direct {p0}, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->showPreviewUI()V

    :goto_1
    move v0, v1

    .line 91
    goto :goto_0

    .line 89
    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->showProcessUI()V

    goto :goto_1

    .line 93
    :pswitch_3
    invoke-direct {p0}, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->showProcessUI()V

    move v0, v1

    .line 94
    goto :goto_0

    .line 96
    :pswitch_4
    invoke-direct {p0}, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->showProcessUI()V

    move v0, v1

    .line 97
    goto :goto_0

    .line 79
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public onLanguageSwitched(Ljava/lang/String;)V
    .locals 2
    .param p1, "newLanguage"    # Ljava/lang/String;

    .prologue
    .line 439
    iget v0, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->mCurrentVisibleIndex:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 440
    invoke-direct {p0}, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->onOcr()V

    .line 442
    :cond_0
    return-void
.end method

.method public onRectifyCanceled()V
    .locals 0

    .prologue
    .line 365
    invoke-direct {p0}, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->showPreviewUI()V

    .line 366
    return-void
.end method

.method public setMessageDispatcher(Lcom/xiaomi/scanner/ui/MessageDispatcher;)V
    .locals 0
    .param p1, "messageDispatcher"    # Lcom/xiaomi/scanner/ui/MessageDispatcher;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->mMessageDispatcher:Lcom/xiaomi/scanner/ui/MessageDispatcher;

    .line 232
    return-void
.end method

.method public setPreviewCropRect([F)V
    .locals 1
    .param p1, "corners"    # [F

    .prologue
    .line 106
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->mPreviewCropView:Lcom/xiaomi/scanner/ui/DocumentPreviewCropView;

    if-eqz v0, :cond_0

    .line 107
    invoke-direct {p0}, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->checkPreviewSize()V

    .line 108
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->mPreviewCropView:Lcom/xiaomi/scanner/ui/DocumentPreviewCropView;

    invoke-virtual {v0, p1}, Lcom/xiaomi/scanner/ui/DocumentPreviewCropView;->setCorners([F)V

    .line 110
    :cond_0
    return-void
.end method

.method public setTakePhotoType(Z)V
    .locals 0
    .param p1, "isTakePhotoType"    # Z

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->isTakePhotoType:Z

    .line 76
    return-void
.end method

.method public updateGrayScaleView(Z)V
    .locals 1
    .param p1, "toGrayScale"    # Z

    .prologue
    .line 445
    invoke-direct {p0}, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->initProcessUI()V

    .line 446
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->mProcessLayout:Lcom/xiaomi/scanner/ui/ProcessDocumentLayout;

    invoke-virtual {v0, p1}, Lcom/xiaomi/scanner/ui/ProcessDocumentLayout;->updateGrayScaleStatus(Z)V

    .line 447
    return-void
.end method

.method public updateOcrResult(Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;)V
    .locals 2
    .param p1, "result"    # Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;

    .prologue
    .line 235
    invoke-direct {p0}, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->showOcrUI()V

    .line 236
    if-eqz p1, :cond_0

    .line 237
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->mOcrLayout:Lcom/xiaomi/scanner/ui/DocumentOcrLayout;

    invoke-virtual {p1}, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;->getOcrResult()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/ui/DocumentOcrLayout;->setResult(Ljava/lang/String;)V

    .line 241
    :goto_0
    return-void

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->mOcrLayout:Lcom/xiaomi/scanner/ui/DocumentOcrLayout;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/ui/DocumentOcrLayout;->setResult(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateProcessResult(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lcom/xiaomi/recognizer/RecognizeResult;Z)V
    .locals 3
    .param p1, "source"    # Landroid/graphics/Bitmap;
    .param p2, "rectified"    # Landroid/graphics/Bitmap;
    .param p3, "result"    # Lcom/xiaomi/recognizer/RecognizeResult;
    .param p4, "updateScaleView"    # Z

    .prologue
    .line 119
    iput-object p1, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->mSourceBitmap:Landroid/graphics/Bitmap;

    .line 120
    iput-object p2, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->mRectifiedBitmap:Landroid/graphics/Bitmap;

    .line 121
    iput-object p3, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->mRecognizeResult:Lcom/xiaomi/recognizer/RecognizeResult;

    .line 122
    sget-object v0, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateProcessResult: index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->mCurrentVisibleIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 123
    if-eqz p4, :cond_0

    .line 124
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->updateGrayScaleView(Z)V

    .line 126
    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->showProcessUI()V

    .line 127
    return-void
.end method

.method public updateRectifyResult(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lcom/xiaomi/recognizer/RecognizeResult;Z)V
    .locals 3
    .param p1, "source"    # Landroid/graphics/Bitmap;
    .param p2, "rectified"    # Landroid/graphics/Bitmap;
    .param p3, "result"    # Lcom/xiaomi/recognizer/RecognizeResult;
    .param p4, "updateScaleView"    # Z

    .prologue
    .line 130
    iput-object p1, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->mSourceBitmap:Landroid/graphics/Bitmap;

    .line 131
    iput-object p2, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->mRectifiedBitmap:Landroid/graphics/Bitmap;

    .line 132
    iput-object p3, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->mRecognizeResult:Lcom/xiaomi/recognizer/RecognizeResult;

    .line 133
    sget-object v0, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateRectifyResult: index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->mCurrentVisibleIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 134
    if-eqz p4, :cond_0

    .line 135
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->updateGrayScaleView(Z)V

    .line 137
    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->showRectifyUI()V

    .line 138
    return-void
.end method
