.class public Lcom/miui/gallery/editor/photo/app/PhotoEditor;
.super Landroid/app/Activity;
.source "PhotoEditor.java"

# interfaces
.implements Lcom/miui/gallery/permission/core/PermissionCheckCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/editor/photo/app/PhotoEditor$LoadModuleCallback;,
        Lcom/miui/gallery/editor/photo/app/PhotoEditor$LoadModuleJob;,
        Lcom/miui/gallery/editor/photo/app/PhotoEditor$TransitionConfiguration;,
        Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;,
        Lcom/miui/gallery/editor/photo/app/PhotoEditor$FragmentData;
    }
.end annotation


# instance fields
.field private mActivatedEffects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mActivityIntent:Landroid/content/Intent;

.field private mActivityResult:I

.field private mAlertDialogCallbacks:Lcom/miui/gallery/editor/photo/app/AlertDialogFragment$Callbacks;

.field private mBrightnessManager:Lcom/miui/gallery/view/BrightnessManager;

.field private mCreateTime:J

.field private mDecoderCallbacks:Lcom/miui/gallery/editor/photo/app/InitializeController$Callbacks;

.field private mDraftManager:Lcom/miui/gallery/editor/photo/app/DraftManager;

.field private mEditorOriginHandler:Lcom/miui/gallery/editor/photo/origin/EditorOriginHandler;

.field private mExportCallbacks:Lcom/miui/gallery/editor/photo/app/ExportFragment$Callbacks;

.field private mFragmentData:[Lcom/miui/gallery/editor/photo/app/PhotoEditor$FragmentData;

.field private mFragments:Landroid/app/FragmentManager;

.field private mGLMaskOutReadyListener:Lcom/miui/gallery/editor/photo/app/PreviewFragment$OnViewReadyListener;

.field private mGLReadyListener:Lcom/miui/gallery/editor/photo/core/GLFragment$GLContext$OnCreatedListener;

.field private mInitializeController:Lcom/miui/gallery/editor/photo/app/InitializeController;

.field private mMenuCallback:Lcom/miui/gallery/editor/photo/app/MenuFragment$Callbacks;

.field private mNavigatorCallbacks:Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$Callbacks;

.field private mNeedConfirmPassword:Z

.field private mPermissionCheckHelper:Lcom/miui/gallery/permission/core/PermissionCheckHelper;

.field private mPreviewCallbacks:Lcom/miui/gallery/editor/photo/app/PreviewFragment$Callbacks;

.field private mPreviewSaveCallback:Lcom/miui/gallery/editor/photo/utils/Callback;

.field private mResumed:Z

.field private mSampleTags:[Ljava/lang/String;

.field private mSampler:Lcom/miui/gallery/editor/photo/app/Sampler;

.field private mSuspendInputs:Z

.field private mTaskInfo:Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;

.field private mTransitionConfig:Lcom/miui/gallery/editor/photo/app/PhotoEditor$TransitionConfiguration;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 108
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 133
    invoke-static {}, Lcom/miui/gallery/editor/photo/core/Effect;->values()[Lcom/miui/gallery/editor/photo/core/Effect;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Lcom/miui/gallery/editor/photo/app/PhotoEditor$FragmentData;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mFragmentData:[Lcom/miui/gallery/editor/photo/app/PhotoEditor$FragmentData;

    .line 134
    invoke-static {}, Lcom/miui/gallery/editor/photo/core/Effect;->values()[Lcom/miui/gallery/editor/photo/core/Effect;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mSampleTags:[Ljava/lang/String;

    .line 138
    new-instance v0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TransitionConfiguration;

    invoke-direct {v0, p0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TransitionConfiguration;-><init>(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mTransitionConfig:Lcom/miui/gallery/editor/photo/app/PhotoEditor$TransitionConfiguration;

    .line 149
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mActivityResult:I

    .line 494
    new-instance v0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor$2;-><init>(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mDecoderCallbacks:Lcom/miui/gallery/editor/photo/app/InitializeController$Callbacks;

    .line 566
    new-instance v0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$3;

    invoke-direct {v0, p0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor$3;-><init>(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mPreviewCallbacks:Lcom/miui/gallery/editor/photo/app/PreviewFragment$Callbacks;

    .line 583
    new-instance v0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$4;

    invoke-direct {v0, p0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor$4;-><init>(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mNavigatorCallbacks:Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$Callbacks;

    .line 711
    new-instance v0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$5;

    invoke-direct {v0, p0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor$5;-><init>(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mMenuCallback:Lcom/miui/gallery/editor/photo/app/MenuFragment$Callbacks;

    .line 774
    new-instance v0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$6;

    invoke-direct {v0, p0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor$6;-><init>(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mAlertDialogCallbacks:Lcom/miui/gallery/editor/photo/app/AlertDialogFragment$Callbacks;

    .line 807
    new-instance v0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$7;

    invoke-direct {v0, p0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor$7;-><init>(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mPreviewSaveCallback:Lcom/miui/gallery/editor/photo/utils/Callback;

    .line 850
    new-instance v0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$8;

    invoke-direct {v0, p0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor$8;-><init>(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mGLMaskOutReadyListener:Lcom/miui/gallery/editor/photo/app/PreviewFragment$OnViewReadyListener;

    .line 863
    new-instance v0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$9;

    invoke-direct {v0, p0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor$9;-><init>(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mGLReadyListener:Lcom/miui/gallery/editor/photo/core/GLFragment$GLContext$OnCreatedListener;

    .line 939
    new-instance v0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$10;

    invoke-direct {v0, p0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor$10;-><init>(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mExportCallbacks:Lcom/miui/gallery/editor/photo/app/ExportFragment$Callbacks;

    .line 1330
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mFragmentData:[Lcom/miui/gallery/editor/photo/app/PhotoEditor$FragmentData;

    sget-object v1, Lcom/miui/gallery/editor/photo/core/Effect;->BEAUTIFY:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/Effect;->ordinal()I

    move-result v1

    new-instance v2, Lcom/miui/gallery/editor/photo/app/PhotoEditor$FragmentData;

    const-class v3, Lcom/miui/gallery/editor/photo/app/beautify/BeautifyFragment;

    sget-object v4, Lcom/miui/gallery/editor/photo/core/Effect;->BEAUTIFY:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-direct {v2, v3, v4}, Lcom/miui/gallery/editor/photo/app/PhotoEditor$FragmentData;-><init>(Ljava/lang/Class;Lcom/miui/gallery/editor/photo/core/Effect;)V

    aput-object v2, v0, v1

    .line 1331
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mFragmentData:[Lcom/miui/gallery/editor/photo/app/PhotoEditor$FragmentData;

    sget-object v1, Lcom/miui/gallery/editor/photo/core/Effect;->ADJUST:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/Effect;->ordinal()I

    move-result v1

    new-instance v2, Lcom/miui/gallery/editor/photo/app/PhotoEditor$FragmentData;

    const-class v3, Lcom/miui/gallery/editor/photo/app/adjust/AdjustFragment;

    sget-object v4, Lcom/miui/gallery/editor/photo/core/Effect;->ADJUST:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-direct {v2, v3, v4}, Lcom/miui/gallery/editor/photo/app/PhotoEditor$FragmentData;-><init>(Ljava/lang/Class;Lcom/miui/gallery/editor/photo/core/Effect;)V

    aput-object v2, v0, v1

    .line 1332
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mFragmentData:[Lcom/miui/gallery/editor/photo/app/PhotoEditor$FragmentData;

    sget-object v1, Lcom/miui/gallery/editor/photo/core/Effect;->FILTER:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/Effect;->ordinal()I

    move-result v1

    new-instance v2, Lcom/miui/gallery/editor/photo/app/PhotoEditor$FragmentData;

    const-class v3, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;

    sget-object v4, Lcom/miui/gallery/editor/photo/core/Effect;->FILTER:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-direct {v2, v3, v4}, Lcom/miui/gallery/editor/photo/app/PhotoEditor$FragmentData;-><init>(Ljava/lang/Class;Lcom/miui/gallery/editor/photo/core/Effect;)V

    aput-object v2, v0, v1

    .line 1333
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mFragmentData:[Lcom/miui/gallery/editor/photo/app/PhotoEditor$FragmentData;

    sget-object v1, Lcom/miui/gallery/editor/photo/core/Effect;->CROP:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/Effect;->ordinal()I

    move-result v1

    new-instance v2, Lcom/miui/gallery/editor/photo/app/PhotoEditor$FragmentData;

    const-class v3, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;

    sget-object v4, Lcom/miui/gallery/editor/photo/core/Effect;->CROP:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-direct {v2, v3, v4}, Lcom/miui/gallery/editor/photo/app/PhotoEditor$FragmentData;-><init>(Ljava/lang/Class;Lcom/miui/gallery/editor/photo/core/Effect;)V

    aput-object v2, v0, v1

    .line 1334
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mFragmentData:[Lcom/miui/gallery/editor/photo/app/PhotoEditor$FragmentData;

    sget-object v1, Lcom/miui/gallery/editor/photo/core/Effect;->TEXT:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/Effect;->ordinal()I

    move-result v1

    new-instance v2, Lcom/miui/gallery/editor/photo/app/PhotoEditor$FragmentData;

    const-class v3, Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment;

    sget-object v4, Lcom/miui/gallery/editor/photo/core/Effect;->TEXT:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-direct {v2, v3, v4}, Lcom/miui/gallery/editor/photo/app/PhotoEditor$FragmentData;-><init>(Ljava/lang/Class;Lcom/miui/gallery/editor/photo/core/Effect;)V

    aput-object v2, v0, v1

    .line 1335
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mFragmentData:[Lcom/miui/gallery/editor/photo/app/PhotoEditor$FragmentData;

    sget-object v1, Lcom/miui/gallery/editor/photo/core/Effect;->DOODLE:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/Effect;->ordinal()I

    move-result v1

    new-instance v2, Lcom/miui/gallery/editor/photo/app/PhotoEditor$FragmentData;

    const-class v3, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;

    sget-object v4, Lcom/miui/gallery/editor/photo/core/Effect;->DOODLE:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-direct {v2, v3, v4}, Lcom/miui/gallery/editor/photo/app/PhotoEditor$FragmentData;-><init>(Ljava/lang/Class;Lcom/miui/gallery/editor/photo/core/Effect;)V

    aput-object v2, v0, v1

    .line 1336
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mFragmentData:[Lcom/miui/gallery/editor/photo/app/PhotoEditor$FragmentData;

    sget-object v1, Lcom/miui/gallery/editor/photo/core/Effect;->STICKER:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/Effect;->ordinal()I

    move-result v1

    new-instance v2, Lcom/miui/gallery/editor/photo/app/PhotoEditor$FragmentData;

    const-class v3, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;

    sget-object v4, Lcom/miui/gallery/editor/photo/core/Effect;->STICKER:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-direct {v2, v3, v4}, Lcom/miui/gallery/editor/photo/app/PhotoEditor$FragmentData;-><init>(Ljava/lang/Class;Lcom/miui/gallery/editor/photo/core/Effect;)V

    aput-object v2, v0, v1

    .line 1337
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mFragmentData:[Lcom/miui/gallery/editor/photo/app/PhotoEditor$FragmentData;

    sget-object v1, Lcom/miui/gallery/editor/photo/core/Effect;->LONG_CROP:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/Effect;->ordinal()I

    move-result v1

    new-instance v2, Lcom/miui/gallery/editor/photo/app/PhotoEditor$FragmentData;

    const-class v3, Lcom/miui/gallery/editor/photo/app/longcrop/LongCropFragment;

    sget-object v4, Lcom/miui/gallery/editor/photo/core/Effect;->LONG_CROP:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-direct {v2, v3, v4}, Lcom/miui/gallery/editor/photo/app/PhotoEditor$FragmentData;-><init>(Ljava/lang/Class;Lcom/miui/gallery/editor/photo/core/Effect;)V

    aput-object v2, v0, v1

    .line 1338
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mFragmentData:[Lcom/miui/gallery/editor/photo/app/PhotoEditor$FragmentData;

    sget-object v1, Lcom/miui/gallery/editor/photo/core/Effect;->MOSAIC:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/Effect;->ordinal()I

    move-result v1

    new-instance v2, Lcom/miui/gallery/editor/photo/app/PhotoEditor$FragmentData;

    const-class v3, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;

    sget-object v4, Lcom/miui/gallery/editor/photo/core/Effect;->MOSAIC:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-direct {v2, v3, v4}, Lcom/miui/gallery/editor/photo/app/PhotoEditor$FragmentData;-><init>(Ljava/lang/Class;Lcom/miui/gallery/editor/photo/core/Effect;)V

    aput-object v2, v0, v1

    .line 1339
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mFragmentData:[Lcom/miui/gallery/editor/photo/app/PhotoEditor$FragmentData;

    sget-object v1, Lcom/miui/gallery/editor/photo/core/Effect;->REMOVER:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/Effect;->ordinal()I

    move-result v1

    new-instance v2, Lcom/miui/gallery/editor/photo/app/PhotoEditor$FragmentData;

    const-class v3, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;

    sget-object v4, Lcom/miui/gallery/editor/photo/core/Effect;->REMOVER:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-direct {v2, v3, v4}, Lcom/miui/gallery/editor/photo/app/PhotoEditor$FragmentData;-><init>(Ljava/lang/Class;Lcom/miui/gallery/editor/photo/core/Effect;)V

    aput-object v2, v0, v1

    .line 1340
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mFragmentData:[Lcom/miui/gallery/editor/photo/app/PhotoEditor$FragmentData;

    sget-object v1, Lcom/miui/gallery/editor/photo/core/Effect;->MIUIBEAUTIFY:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/Effect;->ordinal()I

    move-result v1

    new-instance v2, Lcom/miui/gallery/editor/photo/app/PhotoEditor$FragmentData;

    const-class v3, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;

    sget-object v4, Lcom/miui/gallery/editor/photo/core/Effect;->MIUIBEAUTIFY:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-direct {v2, v3, v4}, Lcom/miui/gallery/editor/photo/app/PhotoEditor$FragmentData;-><init>(Ljava/lang/Class;Lcom/miui/gallery/editor/photo/core/Effect;)V

    aput-object v2, v0, v1

    .line 1341
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mFragmentData:[Lcom/miui/gallery/editor/photo/app/PhotoEditor$FragmentData;

    sget-object v1, Lcom/miui/gallery/editor/photo/core/Effect;->FRAME:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/Effect;->ordinal()I

    move-result v1

    new-instance v2, Lcom/miui/gallery/editor/photo/app/PhotoEditor$FragmentData;

    const-class v3, Lcom/miui/gallery/editor/photo/app/frame/FrameMenuFragment;

    sget-object v4, Lcom/miui/gallery/editor/photo/core/Effect;->FRAME:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-direct {v2, v3, v4}, Lcom/miui/gallery/editor/photo/app/PhotoEditor$FragmentData;-><init>(Ljava/lang/Class;Lcom/miui/gallery/editor/photo/core/Effect;)V

    aput-object v2, v0, v1

    .line 1343
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mSampleTags:[Ljava/lang/String;

    sget-object v1, Lcom/miui/gallery/editor/photo/core/Effect;->BEAUTIFY:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/Effect;->ordinal()I

    move-result v1

    const-string v2, "_beautify"

    aput-object v2, v0, v1

    .line 1344
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mSampleTags:[Ljava/lang/String;

    sget-object v1, Lcom/miui/gallery/editor/photo/core/Effect;->ADJUST:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/Effect;->ordinal()I

    move-result v1

    const-string v2, "_enhance"

    aput-object v2, v0, v1

    .line 1345
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mSampleTags:[Ljava/lang/String;

    sget-object v1, Lcom/miui/gallery/editor/photo/core/Effect;->FILTER:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/Effect;->ordinal()I

    move-result v1

    const-string v2, "_filter"

    aput-object v2, v0, v1

    .line 1346
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mSampleTags:[Ljava/lang/String;

    sget-object v1, Lcom/miui/gallery/editor/photo/core/Effect;->CROP:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/Effect;->ordinal()I

    move-result v1

    const-string v2, "_crop"

    aput-object v2, v0, v1

    .line 1347
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mSampleTags:[Ljava/lang/String;

    sget-object v1, Lcom/miui/gallery/editor/photo/core/Effect;->STICKER:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/Effect;->ordinal()I

    move-result v1

    const-string v2, "_sticker"

    aput-object v2, v0, v1

    .line 1348
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mSampleTags:[Ljava/lang/String;

    sget-object v1, Lcom/miui/gallery/editor/photo/core/Effect;->LONG_CROP:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/Effect;->ordinal()I

    move-result v1

    const-string v2, "_beautify"

    aput-object v2, v0, v1

    .line 1349
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mSampleTags:[Ljava/lang/String;

    sget-object v1, Lcom/miui/gallery/editor/photo/core/Effect;->TEXT:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/Effect;->ordinal()I

    move-result v1

    const-string v2, "_text"

    aput-object v2, v0, v1

    .line 1350
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mSampleTags:[Ljava/lang/String;

    sget-object v1, Lcom/miui/gallery/editor/photo/core/Effect;->MOSAIC:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/Effect;->ordinal()I

    move-result v1

    const-string v2, "_mosaic"

    aput-object v2, v0, v1

    .line 1351
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mSampleTags:[Ljava/lang/String;

    sget-object v1, Lcom/miui/gallery/editor/photo/core/Effect;->DOODLE:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/Effect;->ordinal()I

    move-result v1

    const-string v2, "_doodle"

    aput-object v2, v0, v1

    .line 1352
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mSampleTags:[Ljava/lang/String;

    sget-object v1, Lcom/miui/gallery/editor/photo/core/Effect;->REMOVER:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/Effect;->ordinal()I

    move-result v1

    const-string v2, "_remover"

    aput-object v2, v0, v1

    .line 1353
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mSampleTags:[Ljava/lang/String;

    sget-object v1, Lcom/miui/gallery/editor/photo/core/Effect;->MIUIBEAUTIFY:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/Effect;->ordinal()I

    move-result v1

    const-string v2, "_miuibeautify"

    aput-object v2, v0, v1

    .line 1354
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mSampleTags:[Ljava/lang/String;

    sget-object v1, Lcom/miui/gallery/editor/photo/core/Effect;->FRAME:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/Effect;->ordinal()I

    move-result v1

    const-string v2, "_frame"

    aput-object v2, v0, v1

    .line 1382
    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)Lcom/miui/gallery/editor/photo/app/DraftManager;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mDraftManager:Lcom/miui/gallery/editor/photo/app/DraftManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)J
    .locals 2
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    .prologue
    .line 108
    iget-wide v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mCreateTime:J

    return-wide v0
.end method

.method static synthetic access$1100(Lcom/miui/gallery/editor/photo/app/PhotoEditor;Lcom/miui/gallery/editor/photo/app/MenuFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/PhotoEditor;
    .param p1, "x1"    # Lcom/miui/gallery/editor/photo/app/MenuFragment;

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->onExit(Lcom/miui/gallery/editor/photo/app/MenuFragment;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)Lcom/miui/gallery/editor/photo/utils/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mPreviewSaveCallback:Lcom/miui/gallery/editor/photo/utils/Callback;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$Callbacks;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mNavigatorCallbacks:Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$Callbacks;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)Lcom/miui/gallery/editor/photo/app/MenuFragment$Callbacks;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mMenuCallback:Lcom/miui/gallery/editor/photo/app/MenuFragment$Callbacks;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/miui/gallery/editor/photo/app/PhotoEditor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/PhotoEditor;
    .param p1, "x1"    # Z

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mSuspendInputs:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)Lcom/miui/gallery/editor/photo/app/MenuFragment;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->findActiveMenu()Lcom/miui/gallery/editor/photo/app/MenuFragment;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mResumed:Z

    return v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)Lcom/miui/gallery/editor/photo/origin/EditorOriginHandler;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mEditorOriginHandler:Lcom/miui/gallery/editor/photo/origin/EditorOriginHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)Landroid/app/FragmentManager;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mFragments:Landroid/app/FragmentManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)Lcom/miui/gallery/editor/photo/app/PhotoEditor$TransitionConfiguration;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mTransitionConfig:Lcom/miui/gallery/editor/photo/app/PhotoEditor$TransitionConfiguration;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)[Lcom/miui/gallery/editor/photo/app/PhotoEditor$FragmentData;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mFragmentData:[Lcom/miui/gallery/editor/photo/app/PhotoEditor$FragmentData;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/gallery/editor/photo/app/PhotoEditor;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/PhotoEditor;
    .param p1, "x1"    # Z

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->onActivityFinish(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mTaskInfo:Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;

    return-object v0
.end method

.method static synthetic access$800(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mSampleTags:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)Lcom/miui/gallery/editor/photo/app/Sampler;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mSampler:Lcom/miui/gallery/editor/photo/app/Sampler;

    return-object v0
.end method

.method private calculationPreviewSize()V
    .locals 12

    .prologue
    .line 269
    invoke-static {}, Lcom/miui/gallery/util/ScreenUtils;->getScreenWidth()I

    move-result v6

    .line 270
    .local v6, "screenWidth":I
    int-to-float v8, v6

    const/high16 v9, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b0004

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    mul-float/2addr v9, v10

    sub-float v7, v8, v9

    .line 271
    .local v7, "width":F
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090006

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    int-to-float v8, v8

    div-float v8, v7, v8

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f090005

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v8, v9

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b0006

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    add-float/2addr v8, v9

    float-to-int v2, v8

    .line 273
    .local v2, "height":I
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0005

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v5, v8

    .line 274
    .local v5, "paddingBottom":I
    const v8, 0x7f120231

    invoke-virtual {p0, v8}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 275
    .local v1, "displayPanel":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 276
    .local v0, "displayLps":Landroid/view/ViewGroup$LayoutParams;
    iput v6, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 277
    add-int v8, v2, v5

    iput v8, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 278
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 280
    const v8, 0x7f120185

    invoke-virtual {p0, v8}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 281
    .local v4, "menuPanel":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 282
    .local v3, "menuLps":Landroid/view/ViewGroup$LayoutParams;
    iput v6, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 283
    invoke-static {}, Lcom/miui/gallery/util/ScreenUtils;->getScreenHeight()I

    move-result v8

    iget v9, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v8, v9

    iput v8, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 284
    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 285
    return-void
.end method

.method private findActiveMenu()Lcom/miui/gallery/editor/photo/app/MenuFragment;
    .locals 3

    .prologue
    .line 1009
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mFragments:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 1010
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mFragments:Landroid/app/FragmentManager;

    const v2, 0x7f120185

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    .line 1011
    .local v0, "active":Landroid/app/Fragment;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1012
    instance-of v1, v0, Lcom/miui/gallery/editor/photo/app/MenuFragment;

    if-eqz v1, :cond_0

    .line 1013
    check-cast v0, Lcom/miui/gallery/editor/photo/app/MenuFragment;

    .line 1021
    .end local v0    # "active":Landroid/app/Fragment;
    :goto_0
    return-object v0

    .line 1015
    .restart local v0    # "active":Landroid/app/Fragment;
    :cond_0
    const-string v1, "PhotoEditor"

    const-string v2, "not menu in menu panel: %s"

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1020
    .end local v0    # "active":Landroid/app/Fragment;
    :cond_1
    const-string v1, "PhotoEditor"

    const-string v2, "no active menu fragment found"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initScreenBrightness()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/high16 v4, -0x40800000    # -1.0f

    .line 230
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 231
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 232
    const-string v3, "photo-brightness-manual"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v2

    .line 233
    .local v2, "manualBrightness":F
    const-string v3, "photo-brightness-auto"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v0

    .line 234
    .local v0, "autoBrightness":F
    cmpl-float v3, v2, v5

    if-gez v3, :cond_0

    cmpl-float v3, v0, v5

    if-ltz v3, :cond_1

    .line 235
    :cond_0
    new-instance v3, Lcom/miui/gallery/view/BrightnessManager;

    invoke-direct {v3, p0, v2, v0}, Lcom/miui/gallery/view/BrightnessManager;-><init>(Landroid/app/Activity;FF)V

    iput-object v3, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mBrightnessManager:Lcom/miui/gallery/view/BrightnessManager;

    .line 236
    iget-boolean v3, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mResumed:Z

    if-eqz v3, :cond_1

    .line 237
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mBrightnessManager:Lcom/miui/gallery/view/BrightnessManager;

    invoke-virtual {v3}, Lcom/miui/gallery/view/BrightnessManager;->onResume()V

    .line 241
    .end local v0    # "autoBrightness":F
    .end local v2    # "manualBrightness":F
    :cond_1
    return-void
.end method

.method private isNeedConfirmPassword()Z
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mDraftManager:Lcom/miui/gallery/editor/photo/app/DraftManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mDraftManager:Lcom/miui/gallery/editor/photo/app/DraftManager;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/app/DraftManager;->isSecret()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mNeedConfirmPassword:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onActivityFinish(Z)V
    .locals 3
    .param p1, "exported"    # Z

    .prologue
    .line 455
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mTransitionConfig:Lcom/miui/gallery/editor/photo/app/PhotoEditor$TransitionConfiguration;

    invoke-virtual {v1, p1}, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TransitionConfiguration;->onExit(Z)V

    .line 456
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mFragments:Landroid/app/FragmentManager;

    const v2, 0x7f120231

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    .line 457
    .local v0, "fragment":Landroid/app/Fragment;
    instance-of v1, v0, Lcom/miui/gallery/editor/photo/app/PreviewFragment;

    if-eqz v1, :cond_0

    .line 458
    check-cast v0, Lcom/miui/gallery/editor/photo/app/PreviewFragment;

    .end local v0    # "fragment":Landroid/app/Fragment;
    invoke-virtual {v0, p1}, Lcom/miui/gallery/editor/photo/app/PreviewFragment;->onExit(Z)V

    .line 460
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->isNeedConfirmPassword()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 461
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->setPhotoSecretFinishResult()V

    .line 463
    :cond_1
    return-void
.end method

.method private onExit(Lcom/miui/gallery/editor/photo/app/MenuFragment;)V
    .locals 11
    .param p1, "menu"    # Lcom/miui/gallery/editor/photo/app/MenuFragment;

    .prologue
    const/4 v10, 0x1

    .line 877
    invoke-virtual {p1}, Lcom/miui/gallery/editor/photo/app/MenuFragment;->getRenderFragment()Lcom/miui/gallery/editor/photo/core/RenderFragment;

    move-result-object v8

    instance-of v4, v8, Lcom/miui/gallery/editor/photo/core/GLFragment;

    .line 878
    .local v4, "glRender":Z
    if-eqz v4, :cond_5

    .line 880
    const-string v8, "PhotoEditor"

    const-string v9, "exiting gl render view"

    invoke-static {v8, v9}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    iget-object v8, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mFragments:Landroid/app/FragmentManager;

    const-string v9, "gl_mask_in"

    invoke-virtual {v8, v9}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v5

    .line 883
    .local v5, "inMask":Landroid/app/Fragment;
    if-nez v5, :cond_4

    .line 884
    iget-object v8, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mFragments:Landroid/app/FragmentManager;

    const-string v9, "gl_mask_out"

    invoke-virtual {v8, v9}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v7

    .line 885
    .local v7, "outMask":Landroid/app/Fragment;
    if-nez v7, :cond_1

    .line 886
    const-string v8, "PhotoEditor"

    const-string v9, "display mask first"

    invoke-static {v8, v9}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    new-instance v7, Lcom/miui/gallery/editor/photo/app/PreviewFragment;

    .end local v7    # "outMask":Landroid/app/Fragment;
    invoke-direct {v7}, Lcom/miui/gallery/editor/photo/app/PreviewFragment;-><init>()V

    .line 888
    .restart local v7    # "outMask":Landroid/app/Fragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 889
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v8, "overwrite_background"

    invoke-virtual {v0, v8, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 890
    invoke-virtual {v7, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 891
    iget-object v8, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mFragments:Landroid/app/FragmentManager;

    invoke-virtual {v8}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v8

    const v9, 0x7f120231

    const-string v10, "gl_mask_out"

    .line 892
    invoke-virtual {v8, v9, v7, v10}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v8

    .line 893
    invoke-virtual {v8}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 894
    iget-object v8, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mFragments:Landroid/app/FragmentManager;

    invoke-virtual {v8}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 937
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v5    # "inMask":Landroid/app/Fragment;
    .end local v7    # "outMask":Landroid/app/Fragment;
    :cond_0
    :goto_0
    return-void

    .line 897
    .restart local v5    # "inMask":Landroid/app/Fragment;
    .restart local v7    # "outMask":Landroid/app/Fragment;
    :cond_1
    const-string v8, "PhotoEditor"

    const-string v9, "mask displayed, remove render view"

    invoke-static {v8, v9}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    .end local v5    # "inMask":Landroid/app/Fragment;
    .end local v7    # "outMask":Landroid/app/Fragment;
    :goto_1
    iget-object v8, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mFragments:Landroid/app/FragmentManager;

    invoke-virtual {v8}, Landroid/app/FragmentManager;->popBackStackImmediate()Z

    .line 911
    iget-object v8, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mFragments:Landroid/app/FragmentManager;

    invoke-virtual {v8}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 912
    .local v2, "ft":Landroid/app/FragmentTransaction;
    invoke-virtual {p1}, Lcom/miui/gallery/editor/photo/app/MenuFragment;->getRenderFragment()Lcom/miui/gallery/editor/photo/core/RenderFragment;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 913
    invoke-virtual {p1}, Lcom/miui/gallery/editor/photo/app/MenuFragment;->getGestureFragment()Landroid/app/Fragment;

    move-result-object v3

    .line 914
    .local v3, "gesture":Landroid/app/Fragment;
    if-eqz v3, :cond_2

    .line 915
    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 917
    :cond_2
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 918
    iget-object v8, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mFragments:Landroid/app/FragmentManager;

    invoke-virtual {v8}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 920
    if-eqz v4, :cond_0

    .line 921
    iget-object v8, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mDraftManager:Lcom/miui/gallery/editor/photo/app/DraftManager;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mDraftManager:Lcom/miui/gallery/editor/photo/app/DraftManager;

    invoke-virtual {v8}, Lcom/miui/gallery/editor/photo/app/DraftManager;->getStepCount()I

    move-result v8

    if-lt v8, v10, :cond_3

    .line 922
    iget-object v8, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mFragments:Landroid/app/FragmentManager;

    const-string v9, "navigator"

    invoke-virtual {v8, v9}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;

    .line 923
    .local v1, "fragment":Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;
    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;->isAdded()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;->getView()Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 924
    invoke-virtual {v1, v10}, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;->setExportEnabled(Z)V

    .line 928
    .end local v1    # "fragment":Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;
    :cond_3
    iget-object v8, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mFragments:Landroid/app/FragmentManager;

    const-string v9, "gl_mask_out"

    invoke-virtual {v8, v9}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v6

    .line 929
    .local v6, "mask":Landroid/app/Fragment;
    if-eqz v6, :cond_0

    .line 930
    const-string v8, "PhotoEditor"

    const-string v9, "remove mask view"

    invoke-static {v8, v9}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 931
    iget-object v8, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mFragments:Landroid/app/FragmentManager;

    invoke-virtual {v8}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v8

    .line 932
    invoke-virtual {v8, v6}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v8

    .line 933
    invoke-virtual {v8}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 934
    iget-object v8, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mFragments:Landroid/app/FragmentManager;

    invoke-virtual {v8}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    goto :goto_0

    .line 900
    .end local v2    # "ft":Landroid/app/FragmentTransaction;
    .end local v3    # "gesture":Landroid/app/Fragment;
    .end local v6    # "mask":Landroid/app/Fragment;
    .restart local v5    # "inMask":Landroid/app/Fragment;
    :cond_4
    const-string v8, "PhotoEditor"

    const-string v9, "gl not ready"

    invoke-static {v8, v9}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    iget-object v8, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mFragments:Landroid/app/FragmentManager;

    invoke-virtual {v8}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v8

    .line 902
    invoke-virtual {v8, v5}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v8

    .line 903
    invoke-virtual {v8}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 904
    iget-object v8, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mFragments:Landroid/app/FragmentManager;

    invoke-virtual {v8}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    goto/16 :goto_1

    .line 907
    .end local v5    # "inMask":Landroid/app/Fragment;
    :cond_5
    const-string v8, "PhotoEditor"

    const-string v9, "no gl view on top, do exit"

    invoke-static {v8, v9}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private prepareNavigator()V
    .locals 8

    .prologue
    .line 537
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->resolveEffects(Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mActivatedEffects:Ljava/util/ArrayList;

    .line 539
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mActivatedEffects:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 541
    .local v0, "effect":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/miui/gallery/editor/photo/core/Effect;->values()[Lcom/miui/gallery/editor/photo/core/Effect;

    move-result-object v1

    .line 542
    .local v1, "effects":[Lcom/miui/gallery/editor/photo/core/Effect;
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 543
    .local v2, "index":I
    sget-object v4, Lcom/miui/gallery/editor/photo/core/SdkManager;->INSTANCE:Lcom/miui/gallery/editor/photo/core/SdkManager;

    aget-object v6, v1, v2

    invoke-virtual {v4, v6}, Lcom/miui/gallery/editor/photo/core/SdkManager;->getProvider(Lcom/miui/gallery/editor/photo/core/Effect;)Lcom/miui/gallery/editor/photo/core/SdkProvider;

    move-result-object v3

    .line 544
    .local v3, "provider":Lcom/miui/gallery/editor/photo/core/SdkProvider;
    if-nez v3, :cond_0

    .line 545
    const-string v4, "PhotoEditor"

    const-string v6, "%s not supported, skip"

    aget-object v7, v1, v2

    invoke-static {v4, v6, v7}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 546
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mActivatedEffects:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 549
    .end local v2    # "index":I
    .end local v3    # "provider":Lcom/miui/gallery/editor/photo/core/SdkProvider;
    :cond_1
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->showNavigator()V

    .line 550
    return-void
.end method

.method private prepareResult(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 484
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mDraftManager:Lcom/miui/gallery/editor/photo/app/DraftManager;

    if-eqz v0, :cond_0

    .line 485
    const-string v0, "photo_edit_exported_width"

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mDraftManager:Lcom/miui/gallery/editor/photo/app/DraftManager;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/app/DraftManager;->getExportedWidth()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 486
    const-string v0, "photo_edit_exported_height"

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mDraftManager:Lcom/miui/gallery/editor/photo/app/DraftManager;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/app/DraftManager;->getExportedHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 488
    :cond_0
    return-void
.end method

.method private resolveEffects(Landroid/os/Bundle;)Ljava/util/ArrayList;
    .locals 9
    .param p1, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1025
    if-eqz p1, :cond_2

    sget-object v2, Lcom/miui/gallery/sdk/editor/Constants;->EXTRA_IS_SCREENSHOT:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1026
    sget-object v2, Lcom/miui/gallery/sdk/editor/Constants;->EXTRA_IS_LONG_SCREENSHOT:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1027
    new-instance v1, Ljava/util/ArrayList;

    new-array v2, v7, [Ljava/lang/Integer;

    sget-object v3, Lcom/miui/gallery/editor/photo/core/Effect;->LONG_CROP:Lcom/miui/gallery/editor/photo/core/Effect;

    .line 1028
    invoke-virtual {v3}, Lcom/miui/gallery/editor/photo/core/Effect;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    sget-object v3, Lcom/miui/gallery/editor/photo/core/Effect;->DOODLE:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-virtual {v3}, Lcom/miui/gallery/editor/photo/core/Effect;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    sget-object v3, Lcom/miui/gallery/editor/photo/core/Effect;->MOSAIC:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-virtual {v3}, Lcom/miui/gallery/editor/photo/core/Effect;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1047
    :cond_0
    :goto_0
    return-object v1

    .line 1030
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    new-array v2, v8, [Ljava/lang/Integer;

    sget-object v3, Lcom/miui/gallery/editor/photo/core/Effect;->CROP:Lcom/miui/gallery/editor/photo/core/Effect;

    .line 1031
    invoke-virtual {v3}, Lcom/miui/gallery/editor/photo/core/Effect;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    sget-object v3, Lcom/miui/gallery/editor/photo/core/Effect;->DOODLE:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-virtual {v3}, Lcom/miui/gallery/editor/photo/core/Effect;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    sget-object v3, Lcom/miui/gallery/editor/photo/core/Effect;->TEXT:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-virtual {v3}, Lcom/miui/gallery/editor/photo/core/Effect;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    sget-object v3, Lcom/miui/gallery/editor/photo/core/Effect;->MOSAIC:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-virtual {v3}, Lcom/miui/gallery/editor/photo/core/Effect;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    .line 1034
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/Integer;

    sget-object v3, Lcom/miui/gallery/editor/photo/core/Effect;->BEAUTIFY:Lcom/miui/gallery/editor/photo/core/Effect;

    .line 1035
    invoke-virtual {v3}, Lcom/miui/gallery/editor/photo/core/Effect;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    sget-object v3, Lcom/miui/gallery/editor/photo/core/Effect;->CROP:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-virtual {v3}, Lcom/miui/gallery/editor/photo/core/Effect;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    sget-object v3, Lcom/miui/gallery/editor/photo/core/Effect;->FILTER:Lcom/miui/gallery/editor/photo/core/Effect;

    .line 1036
    invoke-virtual {v3}, Lcom/miui/gallery/editor/photo/core/Effect;->ordinal()I

    move-result v3

    .line 1035
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    sget-object v3, Lcom/miui/gallery/editor/photo/core/Effect;->STICKER:Lcom/miui/gallery/editor/photo/core/Effect;

    .line 1036
    invoke-virtual {v3}, Lcom/miui/gallery/editor/photo/core/Effect;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    sget-object v3, Lcom/miui/gallery/editor/photo/core/Effect;->DOODLE:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-virtual {v3}, Lcom/miui/gallery/editor/photo/core/Effect;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    const/4 v3, 0x5

    sget-object v4, Lcom/miui/gallery/editor/photo/core/Effect;->TEXT:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-virtual {v4}, Lcom/miui/gallery/editor/photo/core/Effect;->ordinal()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    sget-object v4, Lcom/miui/gallery/editor/photo/core/Effect;->ADJUST:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-virtual {v4}, Lcom/miui/gallery/editor/photo/core/Effect;->ordinal()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    sget-object v4, Lcom/miui/gallery/editor/photo/core/Effect;->FRAME:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-virtual {v4}, Lcom/miui/gallery/editor/photo/core/Effect;->ordinal()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    sget-object v4, Lcom/miui/gallery/editor/photo/core/Effect;->MOSAIC:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-virtual {v4}, Lcom/miui/gallery/editor/photo/core/Effect;->ordinal()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1035
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1038
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/miui/arcsoftbeauty/ArcsoftBeautyJni;->idBeautyAvailable()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1040
    sget-object v2, Lcom/miui/gallery/editor/photo/core/Effect;->FILTER:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-virtual {v2}, Lcom/miui/gallery/editor/photo/core/Effect;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1041
    .local v0, "index":I
    sget-object v2, Lcom/miui/gallery/editor/photo/core/Effect;->MIUIBEAUTIFY:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-virtual {v2}, Lcom/miui/gallery/editor/photo/core/Effect;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1042
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mSampler:Lcom/miui/gallery/editor/photo/app/Sampler;

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mSampleTags:[Ljava/lang/String;

    sget-object v4, Lcom/miui/gallery/editor/photo/core/Effect;->MIUIBEAUTIFY:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-virtual {v4}, Lcom/miui/gallery/editor/photo/core/Effect;->ordinal()I

    move-result v4

    aget-object v3, v3, v4

    const-string v4, "category_show"

    invoke-virtual {v2, v3, v4}, Lcom/miui/gallery/editor/photo/app/Sampler;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1044
    .end local v0    # "index":I
    :cond_3
    invoke-static {}, Lcom/miui/gallery/editor/photo/app/remover/Inpaint;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1045
    sget-object v2, Lcom/miui/gallery/editor/photo/core/Effect;->REMOVER:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-virtual {v2}, Lcom/miui/gallery/editor/photo/core/Effect;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private resolveNavigator(Landroid/os/Bundle;)Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 1052
    if-eqz p1, :cond_0

    sget-object v0, Lcom/miui/gallery/sdk/editor/Constants;->EXTRA_IS_SCREENSHOT:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1053
    new-instance v0, Lcom/miui/gallery/editor/photo/app/navigator/ScreenshotNaviFragment;

    invoke-direct {v0}, Lcom/miui/gallery/editor/photo/app/navigator/ScreenshotNaviFragment;-><init>()V

    .line 1055
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment;

    invoke-direct {v0}, Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment;-><init>()V

    goto :goto_0
.end method

.method private setPhotoSecretFinishResult()V
    .locals 3

    .prologue
    .line 474
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mActivityIntent:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 475
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mActivityIntent:Landroid/content/Intent;

    .line 477
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mActivityIntent:Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->prepareResult(Landroid/content/Intent;)V

    .line 478
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mActivityIntent:Landroid/content/Intent;

    const-string v1, "photo_secret_finish"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 479
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mActivityIntent:Landroid/content/Intent;

    const-string v1, "extra_photo_edit_type"

    const-string v2, "extra_photo_editor_type_common"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 480
    iget v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mActivityResult:I

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mActivityIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->setResult(ILandroid/content/Intent;)V

    .line 481
    return-void
.end method

.method private showNavigator()V
    .locals 5

    .prologue
    .line 553
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->resolveNavigator(Landroid/os/Bundle;)Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;

    move-result-object v1

    .line 554
    .local v1, "navi":Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 555
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "content"

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mActivatedEffects:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 556
    invoke-virtual {v1, v0}, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;->setArguments(Landroid/os/Bundle;)V

    .line 558
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mFragments:Landroid/app/FragmentManager;

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    const/16 v3, 0x2002

    .line 560
    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    move-result-object v2

    const v3, 0x7f120185

    const-string v4, "navigator"

    .line 561
    invoke-virtual {v2, v3, v1, v4}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 562
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 563
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mFragments:Landroid/app/FragmentManager;

    invoke-virtual {v2}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 564
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 451
    iget-boolean v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mSuspendInputs:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 446
    iget-boolean v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mSuspendInputs:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRuntimePermissions()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 245
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public isPermissionRequired(Ljava/lang/String;)Z
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 250
    const/4 v0, 0x1

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 322
    packed-switch p1, :pswitch_data_0

    .line 332
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 333
    return-void

    .line 324
    :pswitch_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 325
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->setPhotoSecretFinishResult()V

    .line 326
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->finish()V

    goto :goto_0

    .line 328
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mNeedConfirmPassword:Z

    goto :goto_0

    .line 322
    nop

    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_0
    .end packed-switch
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 8
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 379
    instance-of v6, p1, Lcom/miui/gallery/editor/photo/app/MenuFragment;

    if-eqz v6, :cond_2

    move-object v3, p1

    .line 380
    check-cast v3, Lcom/miui/gallery/editor/photo/app/MenuFragment;

    .line 381
    .local v3, "menu":Lcom/miui/gallery/editor/photo/app/MenuFragment;
    iget-object v6, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mMenuCallback:Lcom/miui/gallery/editor/photo/app/MenuFragment$Callbacks;

    iput-object v6, v3, Lcom/miui/gallery/editor/photo/app/MenuFragment;->mCallbacks:Lcom/miui/gallery/editor/photo/app/MenuFragment$Callbacks;

    .line 399
    .end local v3    # "menu":Lcom/miui/gallery/editor/photo/app/MenuFragment;
    :cond_0
    :goto_0
    instance-of v6, p1, Lcom/miui/gallery/editor/photo/core/GLFragment;

    if-eqz v6, :cond_1

    move-object v2, p1

    .line 400
    check-cast v2, Lcom/miui/gallery/editor/photo/core/GLFragment;

    .line 401
    .local v2, "glFragment":Lcom/miui/gallery/editor/photo/core/GLFragment;
    invoke-interface {v2}, Lcom/miui/gallery/editor/photo/core/GLFragment;->getGLContext()Lcom/miui/gallery/editor/photo/core/GLFragment$GLContext;

    move-result-object v6

    iget-object v7, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mGLReadyListener:Lcom/miui/gallery/editor/photo/core/GLFragment$GLContext$OnCreatedListener;

    invoke-virtual {v6, v7}, Lcom/miui/gallery/editor/photo/core/GLFragment$GLContext;->setOnCreatedListener(Lcom/miui/gallery/editor/photo/core/GLFragment$GLContext$OnCreatedListener;)V

    .line 403
    .end local v2    # "glFragment":Lcom/miui/gallery/editor/photo/core/GLFragment;
    :cond_1
    return-void

    .line 382
    :cond_2
    instance-of v6, p1, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;

    if-eqz v6, :cond_3

    move-object v4, p1

    .line 383
    check-cast v4, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;

    .line 384
    .local v4, "navi":Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;
    iget-object v6, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mNavigatorCallbacks:Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$Callbacks;

    iput-object v6, v4, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;->mCallbacks:Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$Callbacks;

    goto :goto_0

    .line 385
    .end local v4    # "navi":Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;
    :cond_3
    instance-of v6, p1, Lcom/miui/gallery/editor/photo/app/PreviewFragment;

    if-eqz v6, :cond_4

    move-object v5, p1

    .line 386
    check-cast v5, Lcom/miui/gallery/editor/photo/app/PreviewFragment;

    .line 387
    .local v5, "preview":Lcom/miui/gallery/editor/photo/app/PreviewFragment;
    iget-object v6, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mPreviewCallbacks:Lcom/miui/gallery/editor/photo/app/PreviewFragment$Callbacks;

    iput-object v6, v5, Lcom/miui/gallery/editor/photo/app/PreviewFragment;->mCallbacks:Lcom/miui/gallery/editor/photo/app/PreviewFragment$Callbacks;

    .line 388
    const-string v6, "gl_mask_out"

    invoke-virtual {v5}, Lcom/miui/gallery/editor/photo/app/PreviewFragment;->getTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 389
    iget-object v6, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mGLMaskOutReadyListener:Lcom/miui/gallery/editor/photo/app/PreviewFragment$OnViewReadyListener;

    iput-object v6, v5, Lcom/miui/gallery/editor/photo/app/PreviewFragment;->mOnViewReadyListener:Lcom/miui/gallery/editor/photo/app/PreviewFragment$OnViewReadyListener;

    goto :goto_0

    .line 391
    .end local v5    # "preview":Lcom/miui/gallery/editor/photo/app/PreviewFragment;
    :cond_4
    instance-of v6, p1, Lcom/miui/gallery/editor/photo/app/ExportFragment;

    if-eqz v6, :cond_5

    move-object v1, p1

    .line 392
    check-cast v1, Lcom/miui/gallery/editor/photo/app/ExportFragment;

    .line 393
    .local v1, "export":Lcom/miui/gallery/editor/photo/app/ExportFragment;
    iget-object v6, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mExportCallbacks:Lcom/miui/gallery/editor/photo/app/ExportFragment$Callbacks;

    iput-object v6, v1, Lcom/miui/gallery/editor/photo/app/ExportFragment;->mCallbacks:Lcom/miui/gallery/editor/photo/app/ExportFragment$Callbacks;

    goto :goto_0

    .line 394
    .end local v1    # "export":Lcom/miui/gallery/editor/photo/app/ExportFragment;
    :cond_5
    instance-of v6, p1, Lcom/miui/gallery/editor/photo/app/AlertDialogFragment;

    if-eqz v6, :cond_0

    move-object v0, p1

    .line 395
    check-cast v0, Lcom/miui/gallery/editor/photo/app/AlertDialogFragment;

    .line 396
    .local v0, "dialog":Lcom/miui/gallery/editor/photo/app/AlertDialogFragment;
    iget-object v6, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mAlertDialogCallbacks:Lcom/miui/gallery/editor/photo/app/AlertDialogFragment$Callbacks;

    invoke-virtual {v0, v6}, Lcom/miui/gallery/editor/photo/app/AlertDialogFragment;->setCallbacks(Lcom/miui/gallery/editor/photo/app/AlertDialogFragment$Callbacks;)V

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 189
    invoke-static {p0}, Lcom/android/internal/WindowCompat;->isNotch(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/util/SystemUiUtil;->extendToStatusBar(Landroid/view/View;)V

    .line 192
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 407
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mFragments:Landroid/app/FragmentManager;

    const v3, 0x7f120185

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    .line 408
    .local v0, "fragment":Landroid/app/Fragment;
    instance-of v2, v0, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;

    if-eqz v2, :cond_0

    .line 409
    const-string v2, "PhotoEditor"

    const-string v3, "back pressed on navigator"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mDraftManager:Lcom/miui/gallery/editor/photo/app/DraftManager;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mDraftManager:Lcom/miui/gallery/editor/photo/app/DraftManager;

    invoke-virtual {v2}, Lcom/miui/gallery/editor/photo/app/DraftManager;->getStepCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 411
    const-string v2, "PhotoEditor"

    const-string v3, "have pending operation"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    new-instance v2, Lcom/miui/gallery/editor/photo/app/AlertDialogFragment$Builder;

    invoke-direct {v2}, Lcom/miui/gallery/editor/photo/app/AlertDialogFragment$Builder;-><init>()V

    const v3, 0x7f0c0296

    .line 413
    invoke-virtual {v2, v3}, Lcom/miui/gallery/editor/photo/app/AlertDialogFragment$Builder;->setMessage(I)Lcom/miui/gallery/editor/photo/app/AlertDialogFragment$Builder;

    move-result-object v2

    const v3, 0x7f0c0298

    .line 414
    invoke-virtual {v2, v3}, Lcom/miui/gallery/editor/photo/app/AlertDialogFragment$Builder;->setPositiveButton(I)Lcom/miui/gallery/editor/photo/app/AlertDialogFragment$Builder;

    move-result-object v2

    const v3, 0x7f0c0297

    .line 415
    invoke-virtual {v2, v3}, Lcom/miui/gallery/editor/photo/app/AlertDialogFragment$Builder;->setNegativeButton(I)Lcom/miui/gallery/editor/photo/app/AlertDialogFragment$Builder;

    move-result-object v2

    .line 416
    invoke-virtual {v2, v4}, Lcom/miui/gallery/editor/photo/app/AlertDialogFragment$Builder;->setCancellable(Z)Lcom/miui/gallery/editor/photo/app/AlertDialogFragment$Builder;

    move-result-object v2

    .line 417
    invoke-virtual {v2}, Lcom/miui/gallery/editor/photo/app/AlertDialogFragment$Builder;->build()Lcom/miui/gallery/editor/photo/app/AlertDialogFragment;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mFragments:Landroid/app/FragmentManager;

    const-string v4, "main_alert_dialog"

    .line 418
    invoke-virtual {v2, v3, v4}, Lcom/miui/gallery/editor/photo/app/AlertDialogFragment;->showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 442
    :goto_0
    return-void

    .line 421
    :cond_0
    instance-of v2, v0, Lcom/miui/gallery/editor/photo/app/MenuFragment;

    if-eqz v2, :cond_2

    .line 422
    const-string v2, "PhotoEditor"

    const-string v3, "back pressed on menu"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    .line 423
    check-cast v1, Lcom/miui/gallery/editor/photo/app/MenuFragment;

    .line 424
    .local v1, "menu":Lcom/miui/gallery/editor/photo/app/MenuFragment;
    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/app/MenuFragment;->getRenderFragment()Lcom/miui/gallery/editor/photo/core/RenderFragment;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/app/MenuFragment;->getRenderFragment()Lcom/miui/gallery/editor/photo/core/RenderFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/editor/photo/core/RenderFragment;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 425
    const-string v2, "PhotoEditor"

    const-string v3, "menu has pending operation"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    new-instance v2, Lcom/miui/gallery/editor/photo/app/AlertDialogFragment$Builder;

    invoke-direct {v2}, Lcom/miui/gallery/editor/photo/app/AlertDialogFragment$Builder;-><init>()V

    const v3, 0x7f0c04c4

    .line 427
    invoke-virtual {v2, v3}, Lcom/miui/gallery/editor/photo/app/AlertDialogFragment$Builder;->setMessage(I)Lcom/miui/gallery/editor/photo/app/AlertDialogFragment$Builder;

    move-result-object v2

    const v3, 0x7f0c04c6

    .line 428
    invoke-virtual {v2, v3}, Lcom/miui/gallery/editor/photo/app/AlertDialogFragment$Builder;->setPositiveButton(I)Lcom/miui/gallery/editor/photo/app/AlertDialogFragment$Builder;

    move-result-object v2

    const v3, 0x7f0c04c5

    .line 429
    invoke-virtual {v2, v3}, Lcom/miui/gallery/editor/photo/app/AlertDialogFragment$Builder;->setNegativeButton(I)Lcom/miui/gallery/editor/photo/app/AlertDialogFragment$Builder;

    move-result-object v2

    .line 430
    invoke-virtual {v2, v4}, Lcom/miui/gallery/editor/photo/app/AlertDialogFragment$Builder;->setCancellable(Z)Lcom/miui/gallery/editor/photo/app/AlertDialogFragment$Builder;

    move-result-object v2

    .line 431
    invoke-virtual {v2}, Lcom/miui/gallery/editor/photo/app/AlertDialogFragment$Builder;->build()Lcom/miui/gallery/editor/photo/app/AlertDialogFragment;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mFragments:Landroid/app/FragmentManager;

    const-string v4, "menu_alert_dialog"

    .line 432
    invoke-virtual {v2, v3, v4}, Lcom/miui/gallery/editor/photo/app/AlertDialogFragment;->showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 436
    :cond_1
    invoke-direct {p0, v1}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->onExit(Lcom/miui/gallery/editor/photo/app/MenuFragment;)V

    goto :goto_0

    .line 439
    .end local v1    # "menu":Lcom/miui/gallery/editor/photo/app/MenuFragment;
    :cond_2
    const-string v2, "PhotoEditor"

    const-string v3, "neither handled back press event, just call default"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->onActivityFinish(Z)V

    .line 441
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 158
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "allow_use_on_offline_global"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Lcom/miui/gallery/preference/GalleryPreferences$CTA;->setToAllowUseOnOfflineGlobal(Z)V

    .line 161
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 162
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/WindowCompat;->setCutoutModeShortEdges(Landroid/view/Window;)V

    .line 164
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mTransitionConfig:Lcom/miui/gallery/editor/photo/app/PhotoEditor$TransitionConfiguration;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TransitionConfiguration;->onActivityCreate()V

    .line 166
    invoke-static {p0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;->from(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mTaskInfo:Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;

    .line 168
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mTaskInfo:Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;

    if-nez v0, :cond_0

    .line 169
    invoke-static {p0}, Lcom/miui/gallery/compat/app/ActivityCompat;->finishAfterTransition(Landroid/app/Activity;)V

    .line 170
    const v0, 0x7f0c025d

    invoke-static {p0, v0}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;I)V

    .line 185
    :goto_0
    return-void

    .line 174
    :cond_0
    const v0, 0x7f0400f1

    invoke-virtual {p0, v0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->setContentView(I)V

    .line 176
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/app/Sampler;->from(Landroid/os/Bundle;)Lcom/miui/gallery/editor/photo/app/Sampler;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mSampler:Lcom/miui/gallery/editor/photo/app/Sampler;

    .line 178
    new-instance v0, Lcom/miui/gallery/editor/photo/origin/EditorOriginHandler;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mTaskInfo:Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;->getSource()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/editor/photo/origin/EditorOriginHandler;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mEditorOriginHandler:Lcom/miui/gallery/editor/photo/origin/EditorOriginHandler;

    .line 179
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mFragments:Landroid/app/FragmentManager;

    .line 180
    new-instance v0, Lcom/miui/gallery/editor/photo/app/DraftManager;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mTaskInfo:Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;->getSource()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/miui/gallery/editor/photo/app/DraftManager;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mDraftManager:Lcom/miui/gallery/editor/photo/app/DraftManager;

    .line 183
    new-instance v0, Lcom/miui/gallery/permission/core/PermissionCheckHelper;

    invoke-direct {v0, p0, v3, p0}, Lcom/miui/gallery/permission/core/PermissionCheckHelper;-><init>(Landroid/app/Activity;ZLcom/miui/gallery/permission/core/PermissionCheckCallback;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mPermissionCheckHelper:Lcom/miui/gallery/permission/core/PermissionCheckHelper;

    .line 184
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mPermissionCheckHelper:Lcom/miui/gallery/permission/core/PermissionCheckHelper;

    invoke-virtual {v0}, Lcom/miui/gallery/permission/core/PermissionCheckHelper;->checkPermission()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 364
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 365
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mDraftManager:Lcom/miui/gallery/editor/photo/app/DraftManager;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mDraftManager:Lcom/miui/gallery/editor/photo/app/DraftManager;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/app/DraftManager;->release()V

    .line 367
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mDraftManager:Lcom/miui/gallery/editor/photo/app/DraftManager;

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mTaskInfo:Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;

    if-eqz v0, :cond_1

    .line 370
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mTaskInfo:Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;->closeExportDialog()V

    .line 372
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mEditorOriginHandler:Lcom/miui/gallery/editor/photo/origin/EditorOriginHandler;

    if-eqz v0, :cond_2

    .line 373
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mEditorOriginHandler:Lcom/miui/gallery/editor/photo/origin/EditorOriginHandler;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/origin/EditorOriginHandler;->onDestroy()V

    .line 375
    :cond_2
    return-void
.end method

.method protected onPause()V
    .locals 4

    .prologue
    .line 337
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mResumed:Z

    .line 338
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 339
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->findActiveMenu()Lcom/miui/gallery/editor/photo/app/MenuFragment;

    move-result-object v0

    .line 340
    .local v0, "fragment":Lcom/miui/gallery/editor/photo/app/MenuFragment;
    if-eqz v0, :cond_0

    .line 341
    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/app/MenuFragment;->getRenderFragment()Lcom/miui/gallery/editor/photo/core/RenderFragment;

    move-result-object v2

    .line 342
    .local v2, "render":Lcom/miui/gallery/editor/photo/core/RenderFragment;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/miui/gallery/editor/photo/core/RenderFragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_0

    instance-of v3, v2, Lcom/miui/gallery/editor/photo/core/GLFragment;

    if-eqz v3, :cond_0

    .line 343
    check-cast v2, Lcom/miui/gallery/editor/photo/core/GLFragment;

    .end local v2    # "render":Lcom/miui/gallery/editor/photo/core/RenderFragment;
    invoke-interface {v2}, Lcom/miui/gallery/editor/photo/core/GLFragment;->getGLContext()Lcom/miui/gallery/editor/photo/core/GLFragment$GLContext;

    move-result-object v1

    .line 344
    .local v1, "glContext":Lcom/miui/gallery/editor/photo/core/GLFragment$GLContext;
    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/GLFragment$GLContext;->performPause()V

    .line 347
    .end local v1    # "glContext":Lcom/miui/gallery/editor/photo/core/GLFragment$GLContext;
    :cond_0
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mBrightnessManager:Lcom/miui/gallery/view/BrightnessManager;

    if-eqz v3, :cond_1

    .line 348
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mBrightnessManager:Lcom/miui/gallery/view/BrightnessManager;

    invoke-virtual {v3}, Lcom/miui/gallery/view/BrightnessManager;->onPause()V

    .line 350
    :cond_1
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mSampler:Lcom/miui/gallery/editor/photo/app/Sampler;

    invoke-virtual {v3, p0}, Lcom/miui/gallery/editor/photo/app/Sampler;->recordPageEnd(Landroid/app/Activity;)V

    .line 351
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->onPagePause()V

    .line 352
    return-void
.end method

.method public onPermissionsChecked([Ljava/lang/String;[I)V
    .locals 4
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "grantResults"    # [I

    .prologue
    .line 196
    new-instance v1, Lcom/miui/gallery/editor/photo/app/InitializeController;

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mDecoderCallbacks:Lcom/miui/gallery/editor/photo/app/InitializeController$Callbacks;

    invoke-direct {v1, p0, v2}, Lcom/miui/gallery/editor/photo/app/InitializeController;-><init>(Landroid/app/Activity;Lcom/miui/gallery/editor/photo/app/InitializeController$Callbacks;)V

    iput-object v1, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mInitializeController:Lcom/miui/gallery/editor/photo/app/InitializeController;

    .line 197
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mInitializeController:Lcom/miui/gallery/editor/photo/app/InitializeController;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/app/InitializeController;->doInitialize()V

    .line 198
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mCreateTime:J

    .line 199
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mSampler:Lcom/miui/gallery/editor/photo/app/Sampler;

    const-string v2, "_main"

    const-string v3, "enter"

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/editor/photo/app/Sampler;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/filtersdk/BeautificationSDK;->init(Landroid/content/Context;)V

    .line 203
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mTransitionConfig:Lcom/miui/gallery/editor/photo/app/PhotoEditor$TransitionConfiguration;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TransitionConfiguration;->postActivityCreate()V

    .line 204
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->calculationPreviewSize()V

    .line 206
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery/editor/photo/app/PhotoEditor$1;

    invoke-direct {v2, p0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor$1;-><init>(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 217
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->initScreenBrightness()V

    .line 219
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mEditorOriginHandler:Lcom/miui/gallery/editor/photo/origin/EditorOriginHandler;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/origin/EditorOriginHandler;->onStart()V

    .line 220
    new-instance v0, Lcom/miui/gallery/editor/photo/app/PreviewFragment;

    invoke-direct {v0}, Lcom/miui/gallery/editor/photo/app/PreviewFragment;-><init>()V

    .line 221
    .local v0, "preview":Lcom/miui/gallery/editor/photo/app/PreviewFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/app/PreviewFragment;->setLoadDone(Z)V

    .line 223
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mFragments:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f120231

    const-string v3, "preview"

    .line 224
    invoke-virtual {v1, v2, v0, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 225
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 226
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->prepareNavigator()V

    .line 227
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 259
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mPermissionCheckHelper:Lcom/miui/gallery/permission/core/PermissionCheckHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/gallery/permission/core/PermissionCheckHelper;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 260
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 289
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 290
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->findActiveMenu()Lcom/miui/gallery/editor/photo/app/MenuFragment;

    move-result-object v0

    .line 291
    .local v0, "fragment":Lcom/miui/gallery/editor/photo/app/MenuFragment;
    if-eqz v0, :cond_0

    .line 292
    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/app/MenuFragment;->getRenderFragment()Lcom/miui/gallery/editor/photo/core/RenderFragment;

    move-result-object v2

    .line 293
    .local v2, "render":Lcom/miui/gallery/editor/photo/core/RenderFragment;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/miui/gallery/editor/photo/core/RenderFragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_0

    instance-of v3, v2, Lcom/miui/gallery/editor/photo/core/GLFragment;

    if-eqz v3, :cond_0

    .line 294
    check-cast v2, Lcom/miui/gallery/editor/photo/core/GLFragment;

    .end local v2    # "render":Lcom/miui/gallery/editor/photo/core/RenderFragment;
    invoke-interface {v2}, Lcom/miui/gallery/editor/photo/core/GLFragment;->getGLContext()Lcom/miui/gallery/editor/photo/core/GLFragment$GLContext;

    move-result-object v1

    .line 295
    .local v1, "glContext":Lcom/miui/gallery/editor/photo/core/GLFragment$GLContext;
    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/GLFragment$GLContext;->performResume()V

    .line 298
    .end local v1    # "glContext":Lcom/miui/gallery/editor/photo/core/GLFragment$GLContext;
    :cond_0
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mBrightnessManager:Lcom/miui/gallery/view/BrightnessManager;

    if-eqz v3, :cond_1

    .line 299
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mBrightnessManager:Lcom/miui/gallery/view/BrightnessManager;

    invoke-virtual {v3}, Lcom/miui/gallery/view/BrightnessManager;->onResume()V

    .line 301
    :cond_1
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mSampler:Lcom/miui/gallery/editor/photo/app/Sampler;

    invoke-virtual {v3, p0}, Lcom/miui/gallery/editor/photo/app/Sampler;->recordPageStart(Landroid/app/Activity;)V

    .line 302
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mResumed:Z

    .line 303
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->onPageResume()V

    .line 305
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->isNeedConfirmPassword()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 307
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mNeedConfirmPassword:Z

    .line 308
    const/16 v3, 0x1b

    invoke-static {p0, v3}, Lcom/miui/privacy/LockSettingsHelper;->startAuthenticatePasswordActivity(Landroid/app/Activity;I)V

    .line 312
    :cond_2
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 265
    const-string v0, "PhotoEditor"

    const-string v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 316
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mNeedConfirmPassword:Z

    .line 317
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 318
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 356
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 357
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mBrightnessManager:Lcom/miui/gallery/view/BrightnessManager;

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mBrightnessManager:Lcom/miui/gallery/view/BrightnessManager;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/view/BrightnessManager;->onWindowFocusChanged(Z)V

    .line 360
    :cond_0
    return-void
.end method

.method public setActivityResult(ILandroid/content/Intent;)V
    .locals 2
    .param p1, "result"    # I
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 466
    iput p1, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mActivityResult:I

    .line 467
    iput-object p2, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mActivityIntent:Landroid/content/Intent;

    .line 468
    invoke-direct {p0, p2}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->prepareResult(Landroid/content/Intent;)V

    .line 469
    const-string v0, "extra_photo_edit_type"

    const-string v1, "extra_photo_editor_type_common"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 470
    iget v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mActivityResult:I

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mActivityIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->setResult(ILandroid/content/Intent;)V

    .line 471
    return-void
.end method

.method public showPermissionIntroduction(Landroid/app/Activity;Ljava/lang/String;Lcom/miui/gallery/permission/core/OnPermissionIntroduced;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/miui/gallery/permission/core/OnPermissionIntroduced;

    .prologue
    .line 255
    invoke-static {p1, p2, p3}, Lcom/miui/gallery/permission/PermissionIntroductionUtils;->showPermissionIntroduction(Landroid/app/Activity;Ljava/lang/String;Lcom/miui/gallery/permission/core/OnPermissionIntroduced;)V

    .line 256
    return-void
.end method
