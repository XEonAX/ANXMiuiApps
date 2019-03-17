.class public Lcom/miui/gallery/video/editor/NexVideoEditor;
.super Lcom/miui/gallery/video/editor/VideoEditor;
.source "NexVideoEditor.java"

# interfaces
.implements Lcom/nexstreaming/nexeditorsdk/nexEngineListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/video/editor/NexVideoEditor$SmartEffectTemplate;,
        Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;,
        Lcom/miui/gallery/video/editor/NexVideoEditor$Change;,
        Lcom/miui/gallery/video/editor/NexVideoEditor$VideoEditorAdjust;,
        Lcom/miui/gallery/video/editor/NexVideoEditor$TextClip;,
        Lcom/miui/gallery/video/editor/NexVideoEditor$TrimInfo;,
        Lcom/miui/gallery/video/editor/NexVideoEditor$FilterEffect;,
        Lcom/miui/gallery/video/editor/NexVideoEditor$SourceAudioChange;,
        Lcom/miui/gallery/video/editor/NexVideoEditor$BGMEdit;,
        Lcom/miui/gallery/video/editor/NexVideoEditor$ApplyTask;
    }
.end annotation


# instance fields
.field private mApplyedEditValue:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/gallery/video/editor/NexVideoEditor$Change;",
            ">;"
        }
    .end annotation
.end field

.field private mCloneProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

.field private mContext:Landroid/content/Context;

.field private mCurrentEnocdeStateInterface:Lcom/miui/gallery/video/editor/VideoEditor$EnocdeStateInterface;

.field private mEndClip:Lcom/miui/gallery/video/editor/NexVideoEditor$TextClip;

.field private mEngin:Lcom/nexstreaming/nexeditorsdk/nexEngine;

.field private mEngineState:I

.field private mHandler:Landroid/os/Handler;

.field private mHasApplyedSmartEffect:Z

.field private mHasUsingAutoTrim:Z

.field private mIsDestroy:Z

.field private mMainVideoClip:Lcom/nexstreaming/nexeditorsdk/nexClip;

.field private mNexProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

.field private mOpenClip:Lcom/miui/gallery/video/editor/NexVideoEditor$TextClip;

.field private mPauseOnCompletedListener:Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;

.field private mRatio:F

.field private mSavedEditValue:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/gallery/video/editor/NexVideoEditor$Change;",
            ">;"
        }
    .end annotation
.end field

.field private mSeekTarget:I

.field private mTempEditValue:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/gallery/video/editor/NexVideoEditor$Change;",
            ">;"
        }
    .end annotation
.end field

.field private mThumbnailPickCursor:I

.field private mTrimStateInterface:Lcom/miui/gallery/video/editor/VideoEditor$TrimStateInterface;

.field private mVideoBitrate:I

.field private mVideoFrames:I

.field private mVideoHeight:I

.field private mVideoPath:Ljava/lang/String;

.field private mVideoRotation:I

.field private mVideoWidth:I

.field private preLoadVideoThumbnails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/video/editor/VideoThumbnail;",
            ">;"
        }
    .end annotation
.end field

.field private seekOnCompletedListener:Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;

.field private setTimeSuccess:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, -0x1

    const/4 v2, 0x0

    .line 124
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/VideoEditor;-><init>()V

    .line 93
    iput v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngineState:I

    .line 94
    iput v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mSeekTarget:I

    .line 95
    iput v2, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mThumbnailPickCursor:I

    .line 103
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mHandler:Landroid/os/Handler;

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->preLoadVideoThumbnails:Ljava/util/List;

    .line 109
    iput-boolean v2, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mHasUsingAutoTrim:Z

    .line 110
    iput-boolean v2, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mHasApplyedSmartEffect:Z

    .line 116
    iput-boolean v2, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->setTimeSuccess:Z

    .line 120
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mTempEditValue:Ljava/util/HashMap;

    .line 121
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mApplyedEditValue:Ljava/util/HashMap;

    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mSavedEditValue:Ljava/util/HashMap;

    .line 125
    iput-object p1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mContext:Landroid/content/Context;

    .line 126
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/video/editor/NexVideoEditor;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/NexVideoEditor;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->preLoadVideoThumbnails:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/video/editor/NexVideoEditor;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/NexVideoEditor;

    .prologue
    .line 54
    iget v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mVideoRotation:I

    return v0
.end method

.method static synthetic access$1000(Lcom/miui/gallery/video/editor/NexVideoEditor;)F
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/NexVideoEditor;

    .prologue
    .line 54
    iget v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mRatio:F

    return v0
.end method

.method static synthetic access$1100(Lcom/miui/gallery/video/editor/NexVideoEditor;Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/NexVideoEditor;
    .param p1, "x1"    # Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/miui/gallery/video/editor/NexVideoEditor;->loadThumbnail(Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/miui/gallery/video/editor/NexVideoEditor;I)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/NexVideoEditor;
    .param p1, "x1"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/miui/gallery/video/editor/NexVideoEditor;->doSeek(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/miui/gallery/video/editor/NexVideoEditor;)Lcom/nexstreaming/nexeditorsdk/nexClip;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/NexVideoEditor;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mMainVideoClip:Lcom/nexstreaming/nexeditorsdk/nexClip;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/miui/gallery/video/editor/NexVideoEditor;Lcom/nexstreaming/nexeditorsdk/nexClip;)Lcom/nexstreaming/nexeditorsdk/nexClip;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/NexVideoEditor;
    .param p1, "x1"    # Lcom/nexstreaming/nexeditorsdk/nexClip;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mMainVideoClip:Lcom/nexstreaming/nexeditorsdk/nexClip;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/miui/gallery/video/editor/NexVideoEditor;)Lcom/nexstreaming/nexeditorsdk/nexProject;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/NexVideoEditor;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mNexProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/miui/gallery/video/editor/NexVideoEditor;Lcom/nexstreaming/nexeditorsdk/nexProject;)Lcom/nexstreaming/nexeditorsdk/nexProject;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/NexVideoEditor;
    .param p1, "x1"    # Lcom/nexstreaming/nexeditorsdk/nexProject;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mNexProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/miui/gallery/video/editor/NexVideoEditor;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/NexVideoEditor;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mApplyedEditValue:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/miui/gallery/video/editor/NexVideoEditor;Lcom/miui/gallery/video/editor/NexVideoEditor$TextClip;)Lcom/miui/gallery/video/editor/NexVideoEditor$TextClip;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/NexVideoEditor;
    .param p1, "x1"    # Lcom/miui/gallery/video/editor/NexVideoEditor$TextClip;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mOpenClip:Lcom/miui/gallery/video/editor/NexVideoEditor$TextClip;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/miui/gallery/video/editor/NexVideoEditor;)Lcom/miui/gallery/video/editor/NexVideoEditor$TextClip;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/NexVideoEditor;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEndClip:Lcom/miui/gallery/video/editor/NexVideoEditor$TextClip;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/miui/gallery/video/editor/NexVideoEditor;Lcom/miui/gallery/video/editor/NexVideoEditor$TextClip;)Lcom/miui/gallery/video/editor/NexVideoEditor$TextClip;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/NexVideoEditor;
    .param p1, "x1"    # Lcom/miui/gallery/video/editor/NexVideoEditor$TextClip;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEndClip:Lcom/miui/gallery/video/editor/NexVideoEditor$TextClip;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/miui/gallery/video/editor/NexVideoEditor;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/NexVideoEditor;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mTempEditValue:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/video/editor/NexVideoEditor;)Lcom/nexstreaming/nexeditorsdk/nexEngine;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/NexVideoEditor;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngin:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    return-object v0
.end method

.method static synthetic access$202(Lcom/miui/gallery/video/editor/NexVideoEditor;Lcom/nexstreaming/nexeditorsdk/nexEngine;)Lcom/nexstreaming/nexeditorsdk/nexEngine;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/NexVideoEditor;
    .param p1, "x1"    # Lcom/nexstreaming/nexeditorsdk/nexEngine;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngin:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/miui/gallery/video/editor/NexVideoEditor;)Lcom/miui/gallery/video/editor/VideoEditor$TrimStateInterface;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/NexVideoEditor;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mTrimStateInterface:Lcom/miui/gallery/video/editor/VideoEditor$TrimStateInterface;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/miui/gallery/video/editor/NexVideoEditor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/NexVideoEditor;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mHasUsingAutoTrim:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/miui/gallery/video/editor/NexVideoEditor;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/NexVideoEditor;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/miui/gallery/video/editor/NexVideoEditor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/NexVideoEditor;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mHasApplyedSmartEffect:Z

    return v0
.end method

.method static synthetic access$2602(Lcom/miui/gallery/video/editor/NexVideoEditor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/NexVideoEditor;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mHasApplyedSmartEffect:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/miui/gallery/video/editor/NexVideoEditor;)Lcom/nexstreaming/nexeditorsdk/nexProject;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/NexVideoEditor;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mCloneProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/miui/gallery/video/editor/NexVideoEditor;Lcom/nexstreaming/nexeditorsdk/nexProject;)Lcom/nexstreaming/nexeditorsdk/nexProject;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/NexVideoEditor;
    .param p1, "x1"    # Lcom/nexstreaming/nexeditorsdk/nexProject;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mCloneProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/miui/gallery/video/editor/NexVideoEditor;Ljava/lang/String;)Lcom/nexstreaming/nexeditorsdk/nexColorEffect;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/NexVideoEditor;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/miui/gallery/video/editor/NexVideoEditor;->finEffect(Ljava/lang/String;)Lcom/nexstreaming/nexeditorsdk/nexColorEffect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900(Lcom/miui/gallery/video/editor/NexVideoEditor;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/NexVideoEditor;

    .prologue
    .line 54
    iget v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mVideoWidth:I

    return v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/video/editor/NexVideoEditor;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/NexVideoEditor;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/miui/gallery/video/editor/NexVideoEditor;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/NexVideoEditor;

    .prologue
    .line 54
    iget v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mVideoHeight:I

    return v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/video/editor/NexVideoEditor;I)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/NexVideoEditor;
    .param p1, "x1"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/miui/gallery/video/editor/NexVideoEditor;->setEngineState(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/gallery/video/editor/NexVideoEditor;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/NexVideoEditor;
    .param p1, "x1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/gallery/video/editor/VideoEditor$NotSupportVideoException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/miui/gallery/video/editor/NexVideoEditor;->loadVideo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/gallery/video/editor/NexVideoEditor;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/NexVideoEditor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/gallery/video/editor/VideoEditor$NotSupportVideoException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->handleHardwareSupport()V

    return-void
.end method

.method static synthetic access$700(Lcom/miui/gallery/video/editor/NexVideoEditor;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/NexVideoEditor;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->configEngine()V

    return-void
.end method

.method static synthetic access$800(Lcom/miui/gallery/video/editor/NexVideoEditor;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/NexVideoEditor;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->loadProject()V

    return-void
.end method

.method static synthetic access$900(Lcom/miui/gallery/video/editor/NexVideoEditor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/NexVideoEditor;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mIsDestroy:Z

    return v0
.end method

.method private addChange(Lcom/miui/gallery/video/editor/NexVideoEditor$Change;Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;)Z
    .locals 4
    .param p1, "change"    # Lcom/miui/gallery/video/editor/NexVideoEditor$Change;
    .param p2, "listener"    # Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1090
    iget v2, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngineState:I

    packed-switch v2, :pswitch_data_0

    .line 1119
    const-string v0, "NexVideoEditor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addChange is not allowed at EngineState :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngineState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 1122
    :cond_0
    :goto_0
    return v0

    .line 1092
    :pswitch_0
    const/16 v1, 0x65

    invoke-direct {p0, v1}, Lcom/miui/gallery/video/editor/NexVideoEditor;->setEngineState(I)V

    .line 1093
    iget-object v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngin:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    if-eqz v1, :cond_0

    .line 1094
    iget-object v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngin:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    new-instance v2, Lcom/miui/gallery/video/editor/NexVideoEditor$12;

    invoke-direct {v2, p0, p1, p2}, Lcom/miui/gallery/video/editor/NexVideoEditor$12;-><init>(Lcom/miui/gallery/video/editor/NexVideoEditor;Lcom/miui/gallery/video/editor/NexVideoEditor$Change;Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;)V

    invoke-virtual {v1, v2}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->stop(Lcom/nexstreaming/nexeditorsdk/nexEngine$OnCompletionListener;)V

    goto :goto_0

    .line 1111
    :pswitch_1
    invoke-interface {p1}, Lcom/miui/gallery/video/editor/NexVideoEditor$Change;->applyChange()V

    .line 1112
    iget-object v2, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngin:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-virtual {v2}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->updateProject()V

    .line 1113
    invoke-direct {p0, v1}, Lcom/miui/gallery/video/editor/NexVideoEditor;->setEngineState(I)V

    .line 1114
    if-eqz p2, :cond_0

    .line 1115
    invoke-interface {p2}, Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;->onCompleted()V

    goto :goto_0

    .line 1090
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private configEngine()V
    .locals 3

    .prologue
    .line 268
    const/4 v0, 0x0

    .line 269
    .local v0, "nexAspectProfile":Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;
    iget v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mVideoRotation:I

    rem-int/lit16 v1, v1, 0xb4

    if-nez v1, :cond_0

    .line 270
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;

    .end local v0    # "nexAspectProfile":Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;
    iget v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mVideoWidth:I

    iget v2, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mVideoHeight:I

    invoke-direct {v0, v1, v2}, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;-><init>(II)V

    .line 274
    .restart local v0    # "nexAspectProfile":Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;
    :goto_0
    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->setAspectProfile(Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;)V

    .line 275
    return-void

    .line 272
    :cond_0
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;

    .end local v0    # "nexAspectProfile":Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;
    iget v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mVideoHeight:I

    iget v2, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mVideoWidth:I

    invoke-direct {v0, v1, v2}, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;-><init>(II)V

    .restart local v0    # "nexAspectProfile":Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;
    goto :goto_0
.end method

.method private createProject(Lcom/nexstreaming/nexeditorsdk/nexClip;)Lcom/nexstreaming/nexeditorsdk/nexProject;
    .locals 4
    .param p1, "clip"    # Lcom/nexstreaming/nexeditorsdk/nexClip;

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 1063
    iget-object v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mNexProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

    if-eqz v1, :cond_0

    .line 1064
    iget-object v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mNexProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

    invoke-virtual {v1, v3}, Lcom/nexstreaming/nexeditorsdk/nexProject;->allClear(Z)V

    .line 1065
    iput-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mNexProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

    .line 1067
    :cond_0
    if-eqz p1, :cond_1

    .line 1068
    iget v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mVideoRotation:I

    invoke-virtual {p1, v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setRotateDegree(I)V

    .line 1069
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexProject;

    invoke-direct {v0}, Lcom/nexstreaming/nexeditorsdk/nexProject;-><init>()V

    .line 1070
    .local v0, "project":Lcom/nexstreaming/nexeditorsdk/nexProject;
    invoke-virtual {v0, p1}, Lcom/nexstreaming/nexeditorsdk/nexProject;->add(Lcom/nexstreaming/nexeditorsdk/nexClip;)I

    .line 1071
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v1

    sget-object v2, Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;->FIT:Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;

    invoke-virtual {v1, v3, v2}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->randomizeStartEndPosition(ZLcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;)V

    .line 1074
    .end local v0    # "project":Lcom/nexstreaming/nexeditorsdk/nexProject;
    :cond_1
    return-object v0
.end method

.method private doSeek(I)V
    .locals 3
    .param p1, "time"    # I

    .prologue
    .line 641
    iget v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngineState:I

    sparse-switch v0, :sswitch_data_0

    .line 653
    const-string v0, "NexVideoEditor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setFilter is not allowed at EngineState :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngineState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    :goto_0
    return-void

    .line 644
    :sswitch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->setTimeSuccess:Z

    .line 645
    const/16 v0, 0x68

    invoke-direct {p0, v0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->setEngineState(I)V

    .line 646
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngin:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-virtual {v0, p1}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->seek(I)V

    goto :goto_0

    .line 649
    :sswitch_1
    iput p1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mSeekTarget:I

    .line 650
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->updataSeek()V

    goto :goto_0

    .line 641
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_0
        0x68 -> :sswitch_1
    .end sparse-switch
.end method

.method private finEffect(Ljava/lang/String;)Lcom/nexstreaming/nexeditorsdk/nexColorEffect;
    .locals 4
    .param p1, "filterId"    # Ljava/lang/String;

    .prologue
    .line 729
    if-eqz p1, :cond_1

    .line 730
    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexColorEffect;->getPresetList()Ljava/util/List;

    move-result-object v1

    .line 731
    .local v1, "colorEffects":Ljava/util/List;, "Ljava/util/List<Lcom/nexstreaming/nexeditorsdk/nexColorEffect;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexColorEffect;

    .line 732
    .local v0, "colorEffect":Lcom/nexstreaming/nexeditorsdk/nexColorEffect;
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexColorEffect;->getPresetName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 737
    .end local v0    # "colorEffect":Lcom/nexstreaming/nexeditorsdk/nexColorEffect;
    .end local v1    # "colorEffects":Ljava/util/List;, "Ljava/util/List<Lcom/nexstreaming/nexeditorsdk/nexColorEffect;>;"
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleHardwareSupport()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/gallery/video/editor/VideoEditor$NotSupportVideoException;
        }
    .end annotation

    .prologue
    .line 301
    sget-object v9, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v10, "riva"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 305
    :cond_1
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x15

    if-lt v9, v10, :cond_0

    .line 309
    iget v9, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mVideoRotation:I

    rem-int/lit16 v9, v9, 0xb4

    if-nez v9, :cond_3

    iget-object v9, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mMainVideoClip:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v9}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getWidth()I

    move-result v8

    .line 310
    .local v8, "width":I
    :goto_1
    iget v9, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mVideoRotation:I

    rem-int/lit16 v9, v9, 0xb4

    if-nez v9, :cond_4

    iget-object v9, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mMainVideoClip:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v9}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getHeight()I

    move-result v2

    .line 312
    .local v2, "height":I
    :goto_2
    iget-object v9, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mMainVideoClip:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v9}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getVideoCodecType()Ljava/lang/String;

    move-result-object v7

    .line 313
    .local v7, "videoCodecType":Ljava/lang/String;
    const-string v9, "NexVideoEditor"

    const-string/jumbo v10, "videoCodecType: %s"

    invoke-static {v9, v10, v7}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 314
    new-instance v4, Landroid/media/MediaCodecList;

    const/4 v9, 0x0

    invoke-direct {v4, v9}, Landroid/media/MediaCodecList;-><init>(I)V

    .line 315
    .local v4, "mcl":Landroid/media/MediaCodecList;
    invoke-virtual {v4}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v10

    array-length v11, v10

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v11, :cond_a

    aget-object v1, v10, v9

    .line 316
    .local v1, "codecInfo":Landroid/media/MediaCodecInfo;
    invoke-virtual {v1}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 315
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 309
    .end local v1    # "codecInfo":Landroid/media/MediaCodecInfo;
    .end local v2    # "height":I
    .end local v4    # "mcl":Landroid/media/MediaCodecList;
    .end local v7    # "videoCodecType":Ljava/lang/String;
    .end local v8    # "width":I
    :cond_3
    iget-object v9, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mMainVideoClip:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v9}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getHeight()I

    move-result v8

    goto :goto_1

    .line 310
    .restart local v8    # "width":I
    :cond_4
    iget-object v9, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mMainVideoClip:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v9}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getWidth()I

    move-result v2

    goto :goto_2

    .line 319
    .restart local v1    # "codecInfo":Landroid/media/MediaCodecInfo;
    .restart local v2    # "height":I
    .restart local v4    # "mcl":Landroid/media/MediaCodecList;
    .restart local v7    # "videoCodecType":Ljava/lang/String;
    :cond_5
    invoke-virtual {v1}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v5

    .line 320
    .local v5, "types":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    if-eqz v5, :cond_2

    array-length v12, v5

    if-ge v3, v12, :cond_2

    .line 321
    aget-object v12, v5, v3

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_6

    aget-object v12, v5, v3

    const-string/jumbo v13, "video/"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_7

    .line 320
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 324
    :cond_7
    aget-object v12, v5, v3

    invoke-virtual {v12, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_9

    const-string/jumbo v12, "video/h264"

    .line 325
    invoke-virtual {v7, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_8

    aget-object v12, v5, v3

    const-string/jumbo v13, "video/avc"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_9

    :cond_8
    const-string/jumbo v12, "video/avc"

    .line 326
    invoke-virtual {v7, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    aget-object v12, v5, v3

    const-string/jumbo v13, "video/h264"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 328
    :cond_9
    aget-object v12, v5, v3

    invoke-virtual {v1, v12}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v0

    .line 329
    .local v0, "capabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v6

    .line 330
    .local v6, "videoCapabilities":Landroid/media/MediaCodecInfo$VideoCapabilities;
    if-eqz v6, :cond_6

    .line 333
    iget-object v12, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mMainVideoClip:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v12}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getFramesPerSecond()I

    move-result v12

    int-to-double v12, v12

    invoke-virtual {v6, v8, v2, v12, v13}, Landroid/media/MediaCodecInfo$VideoCapabilities;->areSizeAndRateSupported(IID)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 334
    const-string v9, "NexVideoEditor"

    const-string/jumbo v10, "the MediaCodecInfo name is: %s, and the  phone is supported to edit:  %s"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {v1}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const-string/jumbo v13, "true"

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 341
    .end local v0    # "capabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    .end local v1    # "codecInfo":Landroid/media/MediaCodecInfo;
    .end local v3    # "i":I
    .end local v5    # "types":[Ljava/lang/String;
    .end local v6    # "videoCapabilities":Landroid/media/MediaCodecInfo$VideoCapabilities;
    :cond_a
    const-string v9, "NexVideoEditor"

    const-string/jumbo v10, "the device can not support to edit the video."

    invoke-static {v9, v10}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    new-instance v9, Lcom/miui/gallery/video/editor/VideoEditor$NotSupportVideoException;

    invoke-direct {v9, p0}, Lcom/miui/gallery/video/editor/VideoEditor$NotSupportVideoException;-><init>(Lcom/miui/gallery/video/editor/VideoEditor;)V

    throw v9
.end method

.method private haveChange(Ljava/lang/String;)Z
    .locals 4
    .param p1, "editType"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 495
    iget-object v3, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mSavedEditValue:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 496
    .local v1, "savedValue":Ljava/lang/Object;
    iget-object v3, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mApplyedEditValue:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 497
    .local v0, "currentValue":Ljava/lang/Object;
    if-nez v1, :cond_1

    if-nez v0, :cond_1

    .line 503
    :cond_0
    :goto_0
    return v2

    .line 500
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 503
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private loadMainThumbnail(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/gallery/util/UriUtils;->toSafeString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery/video/editor/NexVideoEditor$1;

    invoke-direct {v2, p0}, Lcom/miui/gallery/video/editor/NexVideoEditor$1;-><init>(Lcom/miui/gallery/video/editor/NexVideoEditor;)V

    invoke-virtual {v0, v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 174
    return-void
.end method

.method private loadProject()V
    .locals 3

    .prologue
    .line 260
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mMainVideoClip:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-direct {p0, v0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->createProject(Lcom/nexstreaming/nexeditorsdk/nexClip;)Lcom/nexstreaming/nexeditorsdk/nexProject;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mNexProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

    .line 261
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mNexProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getLastPrimaryClip()Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mMainVideoClip:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getRotateInMeta()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setRotateDegree(I)V

    .line 262
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mNexProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getLastPrimaryClip()Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;->FIT:Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;

    invoke-virtual {v0, v1, v2}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->randomizeStartEndPosition(ZLcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;)V

    .line 263
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngin:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mNexProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->setProject(Lcom/nexstreaming/nexeditorsdk/nexProject;)V

    .line 264
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngin:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->updateProject()V

    .line 265
    return-void
.end method

.method private loadThumbnail(Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;)V
    .locals 9
    .param p1, "listener"    # Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;

    .prologue
    const/16 v0, 0xa0

    const/16 v3, 0x5a

    .line 240
    iget v4, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mVideoRotation:I

    rem-int/lit16 v4, v4, 0xb4

    if-nez v4, :cond_0

    move v1, v0

    .line 241
    .local v1, "thumbnailWidth":I
    :goto_0
    iget v4, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mVideoRotation:I

    rem-int/lit16 v4, v4, 0xb4

    if-nez v4, :cond_1

    move v2, v3

    .line 242
    .local v2, "thumbnailHeight":I
    :goto_1
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mMainVideoClip:Lcom/nexstreaming/nexeditorsdk/nexClip;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mMainVideoClip:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTotalTime()I

    move-result v4

    const/16 v5, 0x32

    iget v6, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mVideoRotation:I

    new-instance v7, Lcom/miui/gallery/video/editor/NexOnGetVideoClipDetailThumbnailsListener;

    new-instance v8, Lcom/miui/gallery/video/editor/NexVideoEditor$3;

    invoke-direct {v8, p0, p1}, Lcom/miui/gallery/video/editor/NexVideoEditor$3;-><init>(Lcom/miui/gallery/video/editor/NexVideoEditor;Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;)V

    invoke-direct {v7, v8}, Lcom/miui/gallery/video/editor/NexOnGetVideoClipDetailThumbnailsListener;-><init>(Lcom/miui/gallery/video/editor/VideoEditor$OnGetVideoThumbnailListener;)V

    invoke-virtual/range {v0 .. v7}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getVideoClipDetailThumbnails(IIIIIILcom/nexstreaming/nexeditorsdk/nexClip$OnGetVideoClipDetailThumbnailsListener;)I

    .line 257
    return-void

    .end local v1    # "thumbnailWidth":I
    .end local v2    # "thumbnailHeight":I
    :cond_0
    move v1, v3

    .line 240
    goto :goto_0

    .restart local v1    # "thumbnailWidth":I
    :cond_1
    move v2, v0

    .line 241
    goto :goto_1
.end method

.method private loadVideo(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/gallery/video/editor/VideoEditor$NotSupportVideoException;
        }
    .end annotation

    .prologue
    .line 278
    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getSupportedClip(Ljava/lang/String;Z)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v0

    .line 279
    .local v0, "clip":Lcom/nexstreaming/nexeditorsdk/nexClip;
    if-eqz v0, :cond_1

    .line 280
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mVideoWidth:I

    .line 281
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mVideoHeight:I

    .line 282
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getRotateInMeta()I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mVideoRotation:I

    .line 283
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getVideoBitrate()I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mVideoBitrate:I

    .line 284
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getFramesPerSecond()I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mVideoFrames:I

    .line 285
    iput-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mMainVideoClip:Lcom/nexstreaming/nexeditorsdk/nexClip;

    .line 286
    iget v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mVideoRotation:I

    rem-int/lit16 v1, v1, 0xb4

    if-nez v1, :cond_0

    .line 287
    iget v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mVideoWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mVideoHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mRatio:F

    .line 294
    :goto_0
    return-void

    .line 289
    :cond_0
    iget v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mVideoHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mVideoWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mRatio:F

    goto :goto_0

    .line 292
    :cond_1
    new-instance v1, Lcom/miui/gallery/video/editor/VideoEditor$NotSupportVideoException;

    invoke-direct {v1, p0}, Lcom/miui/gallery/video/editor/VideoEditor$NotSupportVideoException;-><init>(Lcom/miui/gallery/video/editor/VideoEditor;)V

    throw v1
.end method

.method private pause(Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;)V
    .locals 3
    .param p1, "onCompletedListener"    # Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;

    .prologue
    .line 548
    iget v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngineState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngin:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    if-eqz v0, :cond_0

    .line 549
    iput-object p1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mPauseOnCompletedListener:Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;

    .line 550
    const/16 v0, 0x66

    invoke-direct {p0, v0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->setEngineState(I)V

    .line 551
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngin:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->pause()V

    .line 555
    :goto_0
    return-void

    .line 553
    :cond_0
    const-string v0, "NexVideoEditor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pause is not allowed at EngineState :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngineState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setEngineState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    const/16 v2, 0xc8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 682
    sparse-switch p1, :sswitch_data_0

    .line 720
    :goto_0
    iput p1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngineState:I

    .line 721
    return-void

    .line 684
    :sswitch_0
    const/16 v0, -0x1f4

    invoke-virtual {p0, v0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->setState(I)V

    goto :goto_0

    .line 687
    :sswitch_1
    invoke-virtual {p0, v1}, Lcom/miui/gallery/video/editor/NexVideoEditor;->setState(I)V

    .line 688
    invoke-virtual {p0, v1}, Lcom/miui/gallery/video/editor/NexVideoEditor;->keepScreenOn(Z)V

    goto :goto_0

    .line 691
    :sswitch_2
    invoke-virtual {p0, v0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->setState(I)V

    .line 692
    invoke-virtual {p0, v0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->keepScreenOn(Z)V

    .line 693
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mDisplayWrapper:Lcom/miui/gallery/video/editor/widget/DisplayWrapper;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->hideThumbnail()V

    goto :goto_0

    .line 696
    :sswitch_3
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->setState(I)V

    .line 697
    invoke-virtual {p0, v1}, Lcom/miui/gallery/video/editor/NexVideoEditor;->keepScreenOn(Z)V

    goto :goto_0

    .line 700
    :sswitch_4
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->setState(I)V

    .line 701
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mDisplayWrapper:Lcom/miui/gallery/video/editor/widget/DisplayWrapper;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->hideThumbnail()V

    goto :goto_0

    .line 705
    :sswitch_5
    invoke-virtual {p0, v0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->keepScreenOn(Z)V

    .line 706
    invoke-virtual {p0, v2}, Lcom/miui/gallery/video/editor/NexVideoEditor;->setState(I)V

    goto :goto_0

    .line 713
    :sswitch_6
    invoke-virtual {p0, v2}, Lcom/miui/gallery/video/editor/NexVideoEditor;->setState(I)V

    goto :goto_0

    .line 716
    :sswitch_7
    const/16 v0, 0x1f4

    invoke-virtual {p0, v0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->setState(I)V

    .line 717
    invoke-virtual {p0, v1}, Lcom/miui/gallery/video/editor/NexVideoEditor;->keepScreenOn(Z)V

    goto :goto_0

    .line 682
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1f4 -> :sswitch_0
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x64 -> :sswitch_6
        0x65 -> :sswitch_6
        0x66 -> :sswitch_6
        0x67 -> :sswitch_6
        0x68 -> :sswitch_4
        0x69 -> :sswitch_5
        0x6a -> :sswitch_5
        0x6b -> :sswitch_6
        0x1f4 -> :sswitch_7
    .end sparse-switch
.end method

.method private setTrimInfo(Lcom/miui/gallery/video/editor/NexVideoEditor$TrimInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/miui/gallery/video/editor/NexVideoEditor$TrimInfo;

    .prologue
    .line 418
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mTempEditValue:Ljava/util/HashMap;

    const-string/jumbo v1, "trim"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    return-void
.end method

.method private updataSeek()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 659
    iget v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngineState:I

    const/16 v1, 0x68

    if-ne v0, v1, :cond_0

    .line 660
    iget v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mSeekTarget:I

    if-eq v0, v3, :cond_2

    .line 661
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngin:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->getCurrentPlayTimeTime()I

    move-result v0

    iget v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mSeekTarget:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x96

    if-le v0, v1, :cond_1

    .line 662
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngin:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    iget v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mSeekTarget:I

    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->seekIDROnly(I)V

    .line 663
    const-string v0, "NexVideoEditor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SEEK IDR progress :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mSeekTarget:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    :goto_0
    iput v3, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mSeekTarget:I

    .line 679
    :cond_0
    :goto_1
    return-void

    .line 665
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngin:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    iget v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mSeekTarget:I

    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->seek(I)V

    .line 666
    const-string v0, "NexVideoEditor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "progress :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mSeekTarget:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 670
    :cond_2
    iget-boolean v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->setTimeSuccess:Z

    if-eqz v0, :cond_3

    .line 671
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->setEngineState(I)V

    .line 675
    :goto_2
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->seekOnCompletedListener:Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;

    if-eqz v0, :cond_0

    .line 676
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->seekOnCompletedListener:Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;

    invoke-interface {v0}, Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;->onCompleted()V

    goto :goto_1

    .line 673
    :cond_3
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->setEngineState(I)V

    goto :goto_2
.end method


# virtual methods
.method public adjustBrightness(I)V
    .locals 2
    .param p1, "bright"    # I

    .prologue
    .line 1506
    iget v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngineState:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngineState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1507
    :cond_0
    new-instance v0, Lcom/miui/gallery/video/editor/NexVideoEditor$13;

    invoke-direct {v0, p0}, Lcom/miui/gallery/video/editor/NexVideoEditor$13;-><init>(Lcom/miui/gallery/video/editor/NexVideoEditor;)V

    invoke-virtual {p0, v0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->apply(Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;)Z

    .line 1514
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngin:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-virtual {v0, p1}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->setBrightness(I)V

    .line 1515
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngin:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;->adj_brightness:Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;

    invoke-virtual {v0, v1, p1}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->fastPreview(Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;I)V

    .line 1516
    return-void
.end method

.method public adjustContrast(I)V
    .locals 2
    .param p1, "contrast"    # I

    .prologue
    .line 1544
    iget v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngineState:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngineState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1545
    :cond_0
    new-instance v0, Lcom/miui/gallery/video/editor/NexVideoEditor$15;

    invoke-direct {v0, p0}, Lcom/miui/gallery/video/editor/NexVideoEditor$15;-><init>(Lcom/miui/gallery/video/editor/NexVideoEditor;)V

    invoke-virtual {p0, v0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->apply(Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;)Z

    .line 1552
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngin:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-virtual {v0, p1}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->setContrast(I)V

    .line 1553
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngin:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;->adj_contrast:Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;

    invoke-virtual {v0, v1, p1}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->fastPreview(Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;I)V

    .line 1554
    return-void
.end method

.method public adjustSaturation(I)V
    .locals 2
    .param p1, "saturation"    # I

    .prologue
    .line 1525
    iget v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngineState:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngineState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1526
    :cond_0
    new-instance v0, Lcom/miui/gallery/video/editor/NexVideoEditor$14;

    invoke-direct {v0, p0}, Lcom/miui/gallery/video/editor/NexVideoEditor$14;-><init>(Lcom/miui/gallery/video/editor/NexVideoEditor;)V

    invoke-virtual {p0, v0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->apply(Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;)Z

    .line 1533
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngin:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-virtual {v0, p1}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->setSaturation(I)V

    .line 1534
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngin:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;->adj_saturation:Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;

    invoke-virtual {v0, v1, p1}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->fastPreview(Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;I)V

    .line 1535
    return-void
.end method

.method public adjustSharpness(I)V
    .locals 2
    .param p1, "sharpness"    # I

    .prologue
    .line 1581
    iget v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngineState:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngineState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1582
    :cond_0
    new-instance v0, Lcom/miui/gallery/video/editor/NexVideoEditor$17;

    invoke-direct {v0, p0}, Lcom/miui/gallery/video/editor/NexVideoEditor$17;-><init>(Lcom/miui/gallery/video/editor/NexVideoEditor;)V

    invoke-virtual {p0, v0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->apply(Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;)Z

    .line 1589
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngin:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-virtual {v0, p1}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->setSharpness(I)V

    .line 1590
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngin:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;->adj_sharpness:Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;

    invoke-virtual {v0, v1, p1}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->fastPreview(Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;I)V

    .line 1592
    return-void
.end method

.method public adjustVignetteRange(I)V
    .locals 2
    .param p1, "vignetteRange"    # I

    .prologue
    .line 1562
    iget v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngineState:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngineState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1563
    :cond_0
    new-instance v0, Lcom/miui/gallery/video/editor/NexVideoEditor$16;

    invoke-direct {v0, p0}, Lcom/miui/gallery/video/editor/NexVideoEditor$16;-><init>(Lcom/miui/gallery/video/editor/NexVideoEditor;)V

    invoke-virtual {p0, v0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->apply(Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;)Z

    .line 1570
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngin:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-virtual {v0, p1}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->setVignetteRange(I)V

    .line 1571
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngin:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;->adj_vignetteRange:Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;

    invoke-virtual {v0, v1, p1}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->fastPreview(Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;I)V

    .line 1573
    return-void
.end method

.method public apply(Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;)Z
    .locals 1
    .param p1, "listener"    # Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;

    .prologue
    .line 742
    invoke-virtual {p0, p1}, Lcom/miui/gallery/video/editor/NexVideoEditor;->applyAsync(Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;)Z

    move-result v0

    return v0
.end method

.method public applyAsync(Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;)Z
    .locals 5
    .param p1, "listener"    # Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;

    .prologue
    const/4 v2, 0x1

    .line 746
    iget-object v3, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mTempEditValue:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 747
    invoke-interface {p1}, Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;->onCompleted()V

    .line 773
    :goto_0
    return v2

    .line 750
    :cond_0
    iget-object v3, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mTempEditValue:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    new-array v0, v3, [Lcom/miui/gallery/video/editor/NexVideoEditor$Change;

    .line 751
    .local v0, "changes":[Lcom/miui/gallery/video/editor/NexVideoEditor$Change;
    const/4 v1, 0x0

    .line 752
    .local v1, "i":I
    iget-object v3, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mTempEditValue:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 753
    iget-object v3, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mTempEditValue:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 754
    iget v3, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngineState:I

    packed-switch v3, :pswitch_data_0

    .line 773
    const/4 v2, 0x0

    goto :goto_0

    .line 756
    :pswitch_0
    const/16 v3, 0x65

    invoke-direct {p0, v3}, Lcom/miui/gallery/video/editor/NexVideoEditor;->setEngineState(I)V

    .line 757
    iget-object v3, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngin:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    new-instance v4, Lcom/miui/gallery/video/editor/NexVideoEditor$9;

    invoke-direct {v4, p0, p1, v0}, Lcom/miui/gallery/video/editor/NexVideoEditor$9;-><init>(Lcom/miui/gallery/video/editor/NexVideoEditor;Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;[Lcom/miui/gallery/video/editor/NexVideoEditor$Change;)V

    invoke-virtual {v3, v4}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->stop(Lcom/nexstreaming/nexeditorsdk/nexEngine$OnCompletionListener;)V

    goto :goto_0

    .line 767
    :pswitch_1
    const/16 v3, 0x64

    invoke-direct {p0, v3}, Lcom/miui/gallery/video/editor/NexVideoEditor;->setEngineState(I)V

    .line 768
    new-instance v3, Lcom/miui/gallery/video/editor/NexVideoEditor$ApplyTask;

    invoke-direct {v3, p0, p1}, Lcom/miui/gallery/video/editor/NexVideoEditor$ApplyTask;-><init>(Lcom/miui/gallery/video/editor/NexVideoEditor;Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;)V

    sget-object v4, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v3, v4, v0}, Lcom/miui/gallery/video/editor/NexVideoEditor$ApplyTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 754
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public autoTrim(ILcom/miui/gallery/video/editor/VideoEditor$TrimStateInterface;)V
    .locals 7
    .param p1, "time"    # I
    .param p2, "tsi"    # Lcom/miui/gallery/video/editor/VideoEditor$TrimStateInterface;

    .prologue
    .line 899
    iget v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngineState:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->isSupportAutoTrim()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 900
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mMainVideoClip:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTotalTime()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 901
    iput-object p2, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mTrimStateInterface:Lcom/miui/gallery/video/editor/VideoEditor$TrimStateInterface;

    .line 902
    const/16 v0, 0x6a

    invoke-direct {p0, v0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->setEngineState(I)V

    .line 904
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngin:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mMainVideoClip:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getPath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    div-int/lit8 v3, p1, 0x5

    const/4 v4, 0x5

    const/4 v5, 0x0

    new-instance v6, Lcom/miui/gallery/video/editor/NexVideoEditor$10;

    invoke-direct {v6, p0, p1}, Lcom/miui/gallery/video/editor/NexVideoEditor$10;-><init>(Lcom/miui/gallery/video/editor/NexVideoEditor;I)V

    invoke-virtual/range {v0 .. v6}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->autoTrim(Ljava/lang/String;ZIIILcom/nexstreaming/nexeditorsdk/nexEngine$OnAutoTrimResultListener;)I

    .line 963
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mTrimStateInterface:Lcom/miui/gallery/video/editor/VideoEditor$TrimStateInterface;

    if-eqz v0, :cond_0

    .line 964
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mTrimStateInterface:Lcom/miui/gallery/video/editor/VideoEditor$TrimStateInterface;

    invoke-interface {v0}, Lcom/miui/gallery/video/editor/VideoEditor$TrimStateInterface;->onTrimStart()V

    .line 968
    :cond_0
    return-void
.end method

.method public cancelExport(Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;

    .prologue
    .line 473
    iget v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngineState:I

    const/16 v1, 0x69

    if-ne v0, v1, :cond_0

    .line 474
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngin:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    new-instance v1, Lcom/miui/gallery/video/editor/NexVideoEditor$5;

    invoke-direct {v1, p0, p1}, Lcom/miui/gallery/video/editor/NexVideoEditor$5;-><init>(Lcom/miui/gallery/video/editor/NexVideoEditor;Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;)V

    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->stop(Lcom/nexstreaming/nexeditorsdk/nexEngine$OnCompletionListener;)V

    .line 484
    :cond_0
    return-void
.end method

.method public checkIDRSupport()Z
    .locals 8

    .prologue
    .line 135
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 136
    .local v0, "start":J
    iget-object v3, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mMainVideoClip:Lcom/nexstreaming/nexeditorsdk/nexClip;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mMainVideoClip:Lcom/nexstreaming/nexeditorsdk/nexClip;

    .line 137
    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getSeekPointCount()I

    move-result v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mMainVideoClip:Lcom/nexstreaming/nexeditorsdk/nexClip;

    .line 138
    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getSeekPointInterval()I

    move-result v3

    const/16 v4, 0xfa0

    if-gt v3, v4, :cond_0

    const/4 v2, 0x1

    .line 139
    .local v2, "support":Z
    :goto_0
    const-string v3, "NexVideoEditor"

    const-string v4, "get interval costs %dms"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 140
    return v2

    .line 138
    .end local v2    # "support":Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 1010
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngin:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    if-eqz v0, :cond_0

    .line 1011
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngin:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->removeEditorListener()V

    .line 1012
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngin:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->stop()V

    .line 1013
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngin:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->releaseNativeEngine(Lcom/nexstreaming/nexeditorsdk/nexEngine;)V

    .line 1014
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->keepScreenOn(Z)V

    .line 1016
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mIsDestroy:Z

    .line 1017
    return-void
.end method

.method public export(Ljava/lang/String;Lcom/miui/gallery/video/editor/VideoEditor$EnocdeStateInterface;)V
    .locals 9
    .param p1, "outputFileURI"    # Ljava/lang/String;
    .param p2, "esi"    # Lcom/miui/gallery/video/editor/VideoEditor$EnocdeStateInterface;

    .prologue
    const/4 v8, 0x0

    const/4 v3, -0x1

    .line 972
    const-string v0, "NexVideoEditor"

    const-string v1, "export engine state: %d "

    iget v2, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngineState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 973
    iget v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngineState:I

    packed-switch v0, :pswitch_data_0

    .line 997
    const-string v0, "NexVideoEditor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "export is not allowed at EngineState :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngineState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 998
    invoke-interface {p2, v8, v3, v3}, Lcom/miui/gallery/video/editor/VideoEditor$EnocdeStateInterface;->onEncodeEnd(ZII)V

    .line 1001
    :goto_0
    return-void

    .line 975
    :pswitch_0
    const/16 v0, 0x65

    invoke-direct {p0, v0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->setEngineState(I)V

    .line 976
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngin:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    new-instance v1, Lcom/miui/gallery/video/editor/NexVideoEditor$11;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/gallery/video/editor/NexVideoEditor$11;-><init>(Lcom/miui/gallery/video/editor/NexVideoEditor;Ljava/lang/String;Lcom/miui/gallery/video/editor/VideoEditor$EnocdeStateInterface;)V

    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->stop(Lcom/nexstreaming/nexeditorsdk/nexEngine$OnCompletionListener;)V

    goto :goto_0

    .line 991
    :pswitch_1
    const/16 v0, 0x69

    invoke-direct {p0, v0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->setEngineState(I)V

    .line 992
    iput-object p2, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mCurrentEnocdeStateInterface:Lcom/miui/gallery/video/editor/VideoEditor$EnocdeStateInterface;

    .line 993
    iget-object v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngin:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    iget v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mVideoRotation:I

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_0

    iget v3, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mVideoWidth:I

    :goto_1
    iget v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mVideoRotation:I

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_1

    iget v4, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mVideoHeight:I

    :goto_2
    iget v5, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mVideoBitrate:I

    const-wide v6, 0x7fffffffffffffffL

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->export(Ljava/lang/String;IIIJI)I

    .line 994
    invoke-interface {p2}, Lcom/miui/gallery/video/editor/VideoEditor$EnocdeStateInterface;->onEncodeStart()V

    goto :goto_0

    .line 993
    :cond_0
    iget v3, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mVideoHeight:I

    goto :goto_1

    :cond_1
    iget v4, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mVideoWidth:I

    goto :goto_2

    .line 973
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getCurrentDisplayRatio()F
    .locals 1

    .prologue
    .line 637
    iget v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mRatio:F

    return v0
.end method

.method public getProjectTotalTime()I
    .locals 2

    .prologue
    .line 1039
    iget-object v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngin:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    if-eqz v1, :cond_0

    .line 1040
    iget-object v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngin:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->getProject()Lcom/nexstreaming/nexeditorsdk/nexProject;

    move-result-object v0

    .line 1041
    .local v0, "project":Lcom/nexstreaming/nexeditorsdk/nexProject;
    if-eqz v0, :cond_0

    .line 1042
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTotalTime()I

    move-result v1

    .line 1045
    .end local v0    # "project":Lcom/nexstreaming/nexeditorsdk/nexProject;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getVideoFrames()I
    .locals 1

    .prologue
    .line 632
    iget v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mVideoFrames:I

    return v0
.end method

.method public getVideoPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mVideoPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 489
    const-string v0, ""

    .line 491
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mVideoPath:Ljava/lang/String;

    goto :goto_0
.end method

.method public getVideoStartTime()I
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mMainVideoClip:Lcom/nexstreaming/nexeditorsdk/nexClip;

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mMainVideoClip:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getProjectStartTime()I

    move-result v0

    .line 414
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVideoTotalTime()I
    .locals 1

    .prologue
    .line 1049
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mMainVideoClip:Lcom/nexstreaming/nexeditorsdk/nexClip;

    if-eqz v0, :cond_0

    .line 1050
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mMainVideoClip:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTotalTime()I

    move-result v0

    .line 1054
    :goto_0
    return v0

    .line 1051
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mNexProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

    if-eqz v0, :cond_1

    .line 1052
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mNexProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTotalTime()I

    move-result v0

    goto :goto_0

    .line 1054
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasEdit()Z
    .locals 1

    .prologue
    .line 1005
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mApplyedEditValue:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mHasUsingAutoTrim:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public haveSavedEditState()Z
    .locals 1

    .prologue
    .line 1059
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mSavedEditValue:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSourceAudioEnable()Z
    .locals 2

    .prologue
    .line 609
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mMainVideoClip:Lcom/nexstreaming/nexeditorsdk/nexClip;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mMainVideoClip:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipVolume()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportAutoTrim()Z
    .locals 2

    .prologue
    .line 423
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mMainVideoClip:Lcom/nexstreaming/nexeditorsdk/nexClip;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->getProjectTotalTime()I

    move-result v0

    const/16 v1, 0x7530

    if-le v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mHasApplyedSmartEffect:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keepScreenOn(Z)V
    .locals 1
    .param p1, "screenOn"    # Z

    .prologue
    .line 129
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mDisplayWrapper:Lcom/miui/gallery/video/editor/widget/DisplayWrapper;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mDisplayWrapper:Lcom/miui/gallery/video/editor/widget/DisplayWrapper;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->setKeepScreenOn(Z)V

    .line 132
    :cond_0
    return-void
.end method

.method public load(Ljava/lang/String;Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;)V
    .locals 8
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mVideoPath:Ljava/lang/String;

    .line 178
    invoke-direct {p0, p1}, Lcom/miui/gallery/video/editor/NexVideoEditor;->loadMainThumbnail(Ljava/lang/String;)V

    .line 179
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 180
    .local v2, "startTime":J
    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->setEngineState(I)V

    .line 181
    iget-object v6, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mContext:Landroid/content/Context;

    const/4 v7, 0x1

    new-instance v0, Lcom/miui/gallery/video/editor/NexVideoEditor$2;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/video/editor/NexVideoEditor$2;-><init>(Lcom/miui/gallery/video/editor/NexVideoEditor;JLjava/lang/String;Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;)V

    invoke-static {v6, v7, v0}, Lcom/miui/gallery/video/editor/NexEngine;->init(Landroid/content/Context;ILjava/lang/Runnable;)V

    .line 237
    return-void
.end method

.method public onCheckDirectExport(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 1236
    return-void
.end method

.method public onClipInfoDone()V
    .locals 0

    .prologue
    .line 1219
    return-void
.end method

.method public onEncodingDone(ZI)V
    .locals 8
    .param p1, "b"    # Z
    .param p2, "i"    # I

    .prologue
    const/4 v6, 0x0

    .line 1154
    iget-object v5, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mCurrentEnocdeStateInterface:Lcom/miui/gallery/video/editor/VideoEditor$EnocdeStateInterface;

    if-eqz v5, :cond_0

    .line 1155
    iget-object v7, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mCurrentEnocdeStateInterface:Lcom/miui/gallery/video/editor/VideoEditor$EnocdeStateInterface;

    if-nez p1, :cond_2

    const/4 v5, 0x1

    :goto_0
    invoke-interface {v7, v5, p2, v6}, Lcom/miui/gallery/video/editor/VideoEditor$EnocdeStateInterface;->onEncodeEnd(ZII)V

    .line 1157
    :cond_0
    invoke-direct {p0, v6}, Lcom/miui/gallery/video/editor/NexVideoEditor;->setEngineState(I)V

    .line 1158
    const-string v5, "NexVideoEditor"

    const-string v6, "onEncodingDone errorCode : %s"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1159
    iget-object v5, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mApplyedEditValue:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-lez v5, :cond_8

    .line 1160
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1161
    .local v4, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mApplyedEditValue:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1162
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/miui/gallery/video/editor/NexVideoEditor$Change;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1163
    .local v3, "key":Ljava/lang/String;
    const-string v6, "bg_audio"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1164
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/video/editor/NexVideoEditor$BGMEdit;

    .line 1165
    .local v0, "bgmEdit":Lcom/miui/gallery/video/editor/NexVideoEditor$BGMEdit;
    const-string/jumbo v6, "usingBGM"

    invoke-static {v0}, Lcom/miui/gallery/video/editor/NexVideoEditor$BGMEdit;->access$2400(Lcom/miui/gallery/video/editor/NexVideoEditor$BGMEdit;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .end local v0    # "bgmEdit":Lcom/miui/gallery/video/editor/NexVideoEditor$BGMEdit;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/miui/gallery/video/editor/NexVideoEditor$Change;>;"
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    move v5, v6

    .line 1155
    goto :goto_0

    .line 1166
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/miui/gallery/video/editor/NexVideoEditor$Change;>;"
    .restart local v3    # "key":Ljava/lang/String;
    .restart local v4    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    const-string v6, "filter"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1167
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/video/editor/NexVideoEditor$FilterEffect;

    .line 1168
    .local v2, "filterEffect":Lcom/miui/gallery/video/editor/NexVideoEditor$FilterEffect;
    const-string/jumbo v6, "usingFilter"

    invoke-static {v2}, Lcom/miui/gallery/video/editor/NexVideoEditor$FilterEffect;->access$2500(Lcom/miui/gallery/video/editor/NexVideoEditor$FilterEffect;)Lcom/miui/gallery/video/editor/Filter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/miui/gallery/video/editor/Filter;->getFilterId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1169
    .end local v2    # "filterEffect":Lcom/miui/gallery/video/editor/NexVideoEditor$FilterEffect;
    :cond_4
    const-string/jumbo v6, "source_audio"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1170
    const-string v6, "disable_source_audio"

    const-string/jumbo v7, "true"

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1171
    :cond_5
    const-string/jumbo v6, "trim"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1172
    const-string/jumbo v6, "usingTRIM"

    const-string/jumbo v7, "trim"

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1173
    :cond_6
    const-string v6, "edit_type_auto_water_mark_text"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1174
    const-string/jumbo v6, "usingText"

    const-string/jumbo v7, "text"

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1177
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/miui/gallery/video/editor/NexVideoEditor$Change;>;"
    .end local v3    # "key":Ljava/lang/String;
    :cond_7
    const-string/jumbo v5, "video_editor"

    const-string/jumbo v6, "video_editor_using_effect"

    invoke-static {v5, v6, v4}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1179
    .end local v4    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_8
    return-void
.end method

.method public onEncodingProgress(I)V
    .locals 3
    .param p1, "i"    # I

    .prologue
    .line 1228
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mCurrentEnocdeStateInterface:Lcom/miui/gallery/video/editor/VideoEditor$EnocdeStateInterface;

    if-eqz v0, :cond_0

    .line 1229
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mCurrentEnocdeStateInterface:Lcom/miui/gallery/video/editor/VideoEditor$EnocdeStateInterface;

    invoke-interface {v0, p1}, Lcom/miui/gallery/video/editor/VideoEditor$EnocdeStateInterface;->onEncodeProgress(I)V

    .line 1231
    :cond_0
    const-string v0, "NexVideoEditor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "engine encoding : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1232
    return-void
.end method

.method public onFastPreviewStartDone(III)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "i1"    # I
    .param p3, "i2"    # I

    .prologue
    .line 1248
    return-void
.end method

.method public onFastPreviewStopDone(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 1252
    return-void
.end method

.method public onFastPreviewTimeDone(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 1256
    return-void
.end method

.method public onPlayEnd()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1183
    iget v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngineState:I

    const/16 v1, 0x69

    if-eq v0, v1, :cond_0

    .line 1184
    invoke-direct {p0, v2}, Lcom/miui/gallery/video/editor/NexVideoEditor;->setEngineState(I)V

    .line 1185
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->seek(ILcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;)V

    .line 1186
    const-string v0, "NexVideoEditor"

    const-string v1, "onPlayEnd"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1188
    :cond_0
    return-void
.end method

.method public onPlayFail(II)V
    .locals 6
    .param p1, "err"    # I
    .param p2, "iClipID"    # I

    .prologue
    const/4 v5, 0x0

    .line 1192
    const-string v1, "NexVideoEditor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPlayFail : error code :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clipId"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1193
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1194
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "errorcofr"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1195
    const-string/jumbo v1, "state"

    iget v2, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngineState:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1196
    const-string/jumbo v1, "video_editor"

    const-string/jumbo v2, "video_editor_play_failed"

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1197
    iget v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngineState:I

    sparse-switch v1, :sswitch_data_0

    .line 1206
    :cond_0
    :goto_0
    :sswitch_0
    invoke-direct {p0, v5}, Lcom/miui/gallery/video/editor/NexVideoEditor;->setEngineState(I)V

    .line 1207
    return-void

    .line 1201
    :sswitch_1
    iget-object v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mCurrentEnocdeStateInterface:Lcom/miui/gallery/video/editor/VideoEditor$EnocdeStateInterface;

    if-eqz v1, :cond_0

    .line 1202
    iget-object v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mCurrentEnocdeStateInterface:Lcom/miui/gallery/video/editor/VideoEditor$EnocdeStateInterface;

    const/4 v2, -0x1

    invoke-interface {v1, v5, v2, v5}, Lcom/miui/gallery/video/editor/VideoEditor$EnocdeStateInterface;->onEncodeEnd(ZII)V

    goto :goto_0

    .line 1197
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x69 -> :sswitch_1
    .end sparse-switch
.end method

.method public onPlayStart()V
    .locals 2

    .prologue
    .line 1211
    iget v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngineState:I

    const/16 v1, 0x69

    if-eq v0, v1, :cond_0

    .line 1212
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->setEngineState(I)V

    .line 1213
    const-string v0, "NexVideoEditor"

    const-string v1, "onPlayStart"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1215
    :cond_0
    return-void
.end method

.method public onPreviewPeakMeter(II)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "i1"    # I

    .prologue
    .line 1260
    return-void
.end method

.method public onProgressThumbnailCaching(II)V
    .locals 3
    .param p1, "progress"    # I
    .param p2, "maxValue"    # I

    .prologue
    .line 1240
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mTrimStateInterface:Lcom/miui/gallery/video/editor/VideoEditor$TrimStateInterface;

    if-eqz v0, :cond_0

    .line 1241
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mTrimStateInterface:Lcom/miui/gallery/video/editor/VideoEditor$TrimStateInterface;

    invoke-interface {v0, p1}, Lcom/miui/gallery/video/editor/VideoEditor$TrimStateInterface;->onTrimProgress(I)V

    .line 1243
    :cond_0
    const-string v0, "NexVideoEditor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "engine onProgressThumbnailCaching : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1244
    return-void
.end method

.method public onSeekStateChanged(Z)V
    .locals 3
    .param p1, "b"    # Z

    .prologue
    .line 1223
    const-string v0, "NexVideoEditor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSeekStateChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1224
    return-void
.end method

.method public onSetTimeDone(I)V
    .locals 3
    .param p1, "i"    # I

    .prologue
    .line 1134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->setTimeSuccess:Z

    .line 1135
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->updataSeek()V

    .line 1136
    const-string v0, "NexVideoEditor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetTimeDone : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1138
    return-void
.end method

.method public onSetTimeFail(I)V
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 1142
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->updataSeek()V

    .line 1143
    const-string v0, "NexVideoEditor"

    const-string v1, "onSetTimeFail"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1144
    return-void
.end method

.method public onSetTimeIgnored()V
    .locals 2

    .prologue
    .line 1148
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->updataSeek()V

    .line 1149
    const-string v0, "NexVideoEditor"

    const-string v1, "onSetTimeIgnored"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1150
    return-void
.end method

.method public onStateChange(II)V
    .locals 3
    .param p1, "i"    # I
    .param p2, "i1"    # I

    .prologue
    const/4 v2, 0x2

    .line 1079
    if-ne p1, v2, :cond_0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngineState:I

    const/16 v1, 0x66

    if-ne v0, v1, :cond_0

    .line 1080
    invoke-direct {p0, v2}, Lcom/miui/gallery/video/editor/NexVideoEditor;->setEngineState(I)V

    .line 1081
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mPauseOnCompletedListener:Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;

    if-eqz v0, :cond_0

    .line 1082
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mPauseOnCompletedListener:Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;

    invoke-interface {v0}, Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;->onCompleted()V

    .line 1083
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mPauseOnCompletedListener:Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;

    .line 1086
    :cond_0
    const-string v0, "NexVideoEditor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nexEngineState : old state :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " new state :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    return-void
.end method

.method public onTimeChange(I)V
    .locals 2
    .param p1, "time"    # I

    .prologue
    .line 1127
    iget v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngineState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1128
    invoke-virtual {p0, p1}, Lcom/miui/gallery/video/editor/NexVideoEditor;->onTimeChanged(I)V

    .line 1130
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 544
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->pause(Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;)V

    .line 545
    return-void
.end method

.method public pickThumbnail(I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "time"    # I

    .prologue
    .line 779
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mThumbnailPickCursor:I

    .line 780
    invoke-virtual {p0, p1}, Lcom/miui/gallery/video/editor/NexVideoEditor;->pickThumbnailSerial(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public pickThumbnailSerial(I)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "time"    # I

    .prologue
    .line 785
    const/4 v3, 0x0

    .line 786
    .local v3, "result":Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->preLoadVideoThumbnails:Ljava/util/List;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->preLoadVideoThumbnails:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 787
    iget-object v5, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->preLoadVideoThumbnails:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .line 788
    .local v0, "count":I
    const v1, 0x7fffffff

    .line 789
    .local v1, "differenceValue":I
    iget v2, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mThumbnailPickCursor:I

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 790
    iget-object v5, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->preLoadVideoThumbnails:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/gallery/video/editor/VideoThumbnail;

    .line 791
    .local v4, "temp":Lcom/miui/gallery/video/editor/VideoThumbnail;
    invoke-virtual {v4}, Lcom/miui/gallery/video/editor/VideoThumbnail;->getIntrinsicTime()I

    move-result v5

    sub-int/2addr v5, p1

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v5, v1, :cond_0

    .line 792
    invoke-virtual {v4}, Lcom/miui/gallery/video/editor/VideoThumbnail;->getIntrinsicTime()I

    move-result v5

    sub-int/2addr v5, p1

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 793
    iput v2, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mThumbnailPickCursor:I

    .line 794
    invoke-virtual {v4}, Lcom/miui/gallery/video/editor/VideoThumbnail;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 789
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 800
    .end local v0    # "count":I
    .end local v1    # "differenceValue":I
    .end local v2    # "i":I
    .end local v4    # "temp":Lcom/miui/gallery/video/editor/VideoThumbnail;
    :cond_0
    return-object v3
.end method

.method public play()V
    .locals 3

    .prologue
    .line 529
    iget v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngineState:I

    packed-switch v0, :pswitch_data_0

    .line 537
    const-string v0, "NexVideoEditor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "play is not allowed at EngineState :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngineState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    :cond_0
    :goto_0
    return-void

    .line 531
    :pswitch_0
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngin:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    if-eqz v0, :cond_0

    .line 532
    const/16 v0, 0x67

    invoke-direct {p0, v0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->setEngineState(I)V

    .line 533
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngin:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->play()V

    goto :goto_0

    .line 529
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public release()V
    .locals 0

    .prologue
    .line 508
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->destroy()V

    .line 509
    invoke-static {}, Lcom/miui/gallery/video/editor/NexEngine;->releaseEngine()V

    .line 510
    return-void
.end method

.method public resetProject(Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;)Z
    .locals 2
    .param p1, "listener"    # Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;

    .prologue
    .line 614
    new-instance v0, Lcom/miui/gallery/video/editor/NexVideoEditor$8;

    invoke-direct {v0, p0}, Lcom/miui/gallery/video/editor/NexVideoEditor$8;-><init>(Lcom/miui/gallery/video/editor/NexVideoEditor;)V

    .line 627
    .local v0, "change":Lcom/miui/gallery/video/editor/NexVideoEditor$Change;
    invoke-direct {p0, v0, p1}, Lcom/miui/gallery/video/editor/NexVideoEditor;->addChange(Lcom/miui/gallery/video/editor/NexVideoEditor$Change;Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;)Z

    move-result v1

    return v1
.end method

.method public restoreEditState()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 352
    const-string v7, "filter"

    invoke-direct {p0, v7}, Lcom/miui/gallery/video/editor/NexVideoEditor;->haveChange(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 353
    iget-object v7, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mSavedEditValue:Ljava/util/HashMap;

    const-string v8, "filter"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/video/editor/NexVideoEditor$FilterEffect;

    .line 354
    .local v2, "filterEffect":Lcom/miui/gallery/video/editor/NexVideoEditor$FilterEffect;
    if-nez v2, :cond_0

    .line 355
    new-instance v2, Lcom/miui/gallery/video/editor/NexVideoEditor$FilterEffect;

    .end local v2    # "filterEffect":Lcom/miui/gallery/video/editor/NexVideoEditor$FilterEffect;
    invoke-direct {v2, p0, v9}, Lcom/miui/gallery/video/editor/NexVideoEditor$FilterEffect;-><init>(Lcom/miui/gallery/video/editor/NexVideoEditor;Lcom/miui/gallery/video/editor/Filter;)V

    .line 357
    .restart local v2    # "filterEffect":Lcom/miui/gallery/video/editor/NexVideoEditor$FilterEffect;
    :cond_0
    iget-object v7, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mTempEditValue:Ljava/util/HashMap;

    const-string v8, "filter"

    invoke-virtual {v7, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    .end local v2    # "filterEffect":Lcom/miui/gallery/video/editor/NexVideoEditor$FilterEffect;
    :cond_1
    const-string v7, "bg_audio"

    invoke-direct {p0, v7}, Lcom/miui/gallery/video/editor/NexVideoEditor;->haveChange(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 361
    iget-object v7, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mSavedEditValue:Ljava/util/HashMap;

    const-string v8, "bg_audio"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/video/editor/NexVideoEditor$BGMEdit;

    .line 362
    .local v0, "bgmEdit":Lcom/miui/gallery/video/editor/NexVideoEditor$BGMEdit;
    if-nez v0, :cond_2

    .line 363
    new-instance v0, Lcom/miui/gallery/video/editor/NexVideoEditor$BGMEdit;

    .end local v0    # "bgmEdit":Lcom/miui/gallery/video/editor/NexVideoEditor$BGMEdit;
    invoke-direct {v0, p0, v9}, Lcom/miui/gallery/video/editor/NexVideoEditor$BGMEdit;-><init>(Lcom/miui/gallery/video/editor/NexVideoEditor;Ljava/lang/String;)V

    .line 365
    .restart local v0    # "bgmEdit":Lcom/miui/gallery/video/editor/NexVideoEditor$BGMEdit;
    :cond_2
    iget-object v7, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mTempEditValue:Ljava/util/HashMap;

    const-string v8, "bg_audio"

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    .end local v0    # "bgmEdit":Lcom/miui/gallery/video/editor/NexVideoEditor$BGMEdit;
    :cond_3
    const-string/jumbo v7, "source_audio"

    invoke-direct {p0, v7}, Lcom/miui/gallery/video/editor/NexVideoEditor;->haveChange(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 369
    iget-object v7, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mSavedEditValue:Ljava/util/HashMap;

    const-string/jumbo v8, "source_audio"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/video/editor/NexVideoEditor$SourceAudioChange;

    .line 370
    .local v1, "change":Lcom/miui/gallery/video/editor/NexVideoEditor$SourceAudioChange;
    if-nez v1, :cond_4

    .line 371
    new-instance v1, Lcom/miui/gallery/video/editor/NexVideoEditor$SourceAudioChange;

    .end local v1    # "change":Lcom/miui/gallery/video/editor/NexVideoEditor$SourceAudioChange;
    const/4 v7, 0x1

    invoke-direct {v1, p0, v7}, Lcom/miui/gallery/video/editor/NexVideoEditor$SourceAudioChange;-><init>(Lcom/miui/gallery/video/editor/NexVideoEditor;Z)V

    .line 373
    .restart local v1    # "change":Lcom/miui/gallery/video/editor/NexVideoEditor$SourceAudioChange;
    :cond_4
    iget-object v7, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mTempEditValue:Ljava/util/HashMap;

    const-string/jumbo v8, "source_audio"

    invoke-virtual {v7, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    .end local v1    # "change":Lcom/miui/gallery/video/editor/NexVideoEditor$SourceAudioChange;
    :cond_5
    const-string v7, "edit_type_water_mark"

    invoke-direct {p0, v7}, Lcom/miui/gallery/video/editor/NexVideoEditor;->haveChange(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 377
    iget-object v7, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mSavedEditValue:Ljava/util/HashMap;

    const-string v8, "edit_type_water_mark"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;

    .line 378
    .local v6, "waterMark":Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;
    if-nez v6, :cond_6

    .line 379
    new-instance v6, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;

    .end local v6    # "waterMark":Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;
    invoke-direct {v6, p0}, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;-><init>(Lcom/miui/gallery/video/editor/NexVideoEditor;)V

    .line 381
    .restart local v6    # "waterMark":Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;
    :cond_6
    iget-object v7, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mTempEditValue:Ljava/util/HashMap;

    const-string v8, "edit_type_water_mark"

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    .end local v6    # "waterMark":Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;
    :cond_7
    const-string v7, "edit_type_auto_water_mark_text"

    invoke-direct {p0, v7}, Lcom/miui/gallery/video/editor/NexVideoEditor;->haveChange(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 385
    iget-object v7, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mSavedEditValue:Ljava/util/HashMap;

    const-string v8, "edit_type_auto_water_mark_text"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/gallery/video/editor/NexVideoEditor$TextClip;

    .line 386
    .local v4, "textClip":Lcom/miui/gallery/video/editor/NexVideoEditor$TextClip;
    if-nez v4, :cond_8

    .line 387
    new-instance v4, Lcom/miui/gallery/video/editor/NexVideoEditor$TextClip;

    .end local v4    # "textClip":Lcom/miui/gallery/video/editor/NexVideoEditor$TextClip;
    invoke-direct {v4, p0, v9}, Lcom/miui/gallery/video/editor/NexVideoEditor$TextClip;-><init>(Lcom/miui/gallery/video/editor/NexVideoEditor;Lcom/miui/gallery/video/editor/NexVideoEditor$1;)V

    .line 389
    .restart local v4    # "textClip":Lcom/miui/gallery/video/editor/NexVideoEditor$TextClip;
    :cond_8
    iget-object v7, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mTempEditValue:Ljava/util/HashMap;

    const-string v8, "edit_type_auto_water_mark_text"

    invoke-virtual {v7, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    .end local v4    # "textClip":Lcom/miui/gallery/video/editor/NexVideoEditor$TextClip;
    :cond_9
    const-string v7, "edit_type_adjust"

    invoke-direct {p0, v7}, Lcom/miui/gallery/video/editor/NexVideoEditor;->haveChange(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 393
    iget-object v7, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mSavedEditValue:Ljava/util/HashMap;

    const-string v8, "edit_type_adjust"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/gallery/video/editor/NexVideoEditor$VideoEditorAdjust;

    .line 394
    .local v5, "videoEditorAdjust":Lcom/miui/gallery/video/editor/NexVideoEditor$VideoEditorAdjust;
    if-nez v5, :cond_a

    .line 395
    new-instance v5, Lcom/miui/gallery/video/editor/NexVideoEditor$VideoEditorAdjust;

    .end local v5    # "videoEditorAdjust":Lcom/miui/gallery/video/editor/NexVideoEditor$VideoEditorAdjust;
    const/4 v7, 0x0

    invoke-direct {v5, p0, v7}, Lcom/miui/gallery/video/editor/NexVideoEditor$VideoEditorAdjust;-><init>(Lcom/miui/gallery/video/editor/NexVideoEditor;Z)V

    .line 397
    .restart local v5    # "videoEditorAdjust":Lcom/miui/gallery/video/editor/NexVideoEditor$VideoEditorAdjust;
    :cond_a
    iget-object v7, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mTempEditValue:Ljava/util/HashMap;

    const-string v8, "edit_type_adjust"

    invoke-virtual {v7, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    .end local v5    # "videoEditorAdjust":Lcom/miui/gallery/video/editor/NexVideoEditor$VideoEditorAdjust;
    :cond_b
    const-string v7, "edit_type_smart_effect_template"

    invoke-direct {p0, v7}, Lcom/miui/gallery/video/editor/NexVideoEditor;->haveChange(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 401
    iget-object v7, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mSavedEditValue:Ljava/util/HashMap;

    const-string v8, "edit_type_smart_effect_template"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/video/editor/NexVideoEditor$SmartEffectTemplate;

    .line 402
    .local v3, "smartEffectTemplate":Lcom/miui/gallery/video/editor/NexVideoEditor$SmartEffectTemplate;
    if-nez v3, :cond_c

    .line 403
    new-instance v3, Lcom/miui/gallery/video/editor/NexVideoEditor$SmartEffectTemplate;

    .end local v3    # "smartEffectTemplate":Lcom/miui/gallery/video/editor/NexVideoEditor$SmartEffectTemplate;
    invoke-direct {v3, p0, v9}, Lcom/miui/gallery/video/editor/NexVideoEditor$SmartEffectTemplate;-><init>(Lcom/miui/gallery/video/editor/NexVideoEditor;Lcom/miui/gallery/video/editor/SmartEffect;)V

    .line 405
    .restart local v3    # "smartEffectTemplate":Lcom/miui/gallery/video/editor/NexVideoEditor$SmartEffectTemplate;
    :cond_c
    iget-object v7, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mTempEditValue:Ljava/util/HashMap;

    const-string v8, "edit_type_smart_effect_template"

    invoke-virtual {v7, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    .end local v3    # "smartEffectTemplate":Lcom/miui/gallery/video/editor/NexVideoEditor$SmartEffectTemplate;
    :cond_d
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 514
    iget v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngineState:I

    packed-switch v0, :pswitch_data_0

    .line 522
    const-string v0, "NexVideoEditor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resume is not allowed at EngineState :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngineState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    :cond_0
    :goto_0
    return-void

    .line 516
    :pswitch_0
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngin:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    if-eqz v0, :cond_0

    .line 517
    const/16 v0, 0x6b

    invoke-direct {p0, v0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->setEngineState(I)V

    .line 518
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngin:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->resume()V

    goto :goto_0

    .line 514
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public saveEditState()V
    .locals 2

    .prologue
    .line 346
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mSavedEditValue:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 347
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mSavedEditValue:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mApplyedEditValue:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 348
    return-void
.end method

.method public seek(ILcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;)V
    .locals 3
    .param p1, "time"    # I
    .param p2, "listener"    # Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;

    .prologue
    .line 585
    iput-object p2, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->seekOnCompletedListener:Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;

    .line 586
    iget v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngineState:I

    sparse-switch v0, :sswitch_data_0

    .line 601
    const-string v0, "NexVideoEditor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seek is not allowed at EngineState :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngineState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    :goto_0
    return-void

    .line 588
    :sswitch_0
    new-instance v0, Lcom/miui/gallery/video/editor/NexVideoEditor$7;

    invoke-direct {v0, p0, p1}, Lcom/miui/gallery/video/editor/NexVideoEditor$7;-><init>(Lcom/miui/gallery/video/editor/NexVideoEditor;I)V

    invoke-direct {p0, v0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->pause(Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;)V

    goto :goto_0

    .line 598
    :sswitch_1
    invoke-direct {p0, p1}, Lcom/miui/gallery/video/editor/NexVideoEditor;->doSeek(I)V

    goto :goto_0

    .line 586
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x68 -> :sswitch_1
    .end sparse-switch
.end method

.method public setAutoWaterMark(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "showTime"    # I

    .prologue
    .line 886
    new-instance v0, Lcom/miui/gallery/video/editor/NexVideoEditor$TextClip;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/miui/gallery/video/editor/NexVideoEditor$TextClip;-><init>(Lcom/miui/gallery/video/editor/NexVideoEditor;Ljava/lang/String;ILcom/miui/gallery/video/editor/NexVideoEditor$1;)V

    .line 887
    .local v0, "textClip":Lcom/miui/gallery/video/editor/NexVideoEditor$TextClip;
    iget-object v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mTempEditValue:Ljava/util/HashMap;

    const-string v2, "edit_type_auto_water_mark_text"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 888
    const/4 v1, 0x0

    return v1
.end method

.method public setBackgroundMusic(Ljava/lang/String;)V
    .locals 3
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 864
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mTempEditValue:Ljava/util/HashMap;

    const-string v1, "bg_audio"

    new-instance v2, Lcom/miui/gallery/video/editor/NexVideoEditor$BGMEdit;

    invoke-direct {v2, p0, p1}, Lcom/miui/gallery/video/editor/NexVideoEditor$BGMEdit;-><init>(Lcom/miui/gallery/video/editor/NexVideoEditor;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 865
    return-void
.end method

.method protected setDisplayView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 725
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngin:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    check-cast p1, Lcom/nexstreaming/nexeditorsdk/nexEngineView;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {v0, p1}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->setView(Lcom/nexstreaming/nexeditorsdk/nexEngineView;)I

    .line 726
    return-void
.end method

.method public setFilter(Lcom/miui/gallery/video/editor/Filter;)V
    .locals 3
    .param p1, "filter"    # Lcom/miui/gallery/video/editor/Filter;

    .prologue
    .line 869
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mTempEditValue:Ljava/util/HashMap;

    const-string v1, "filter"

    new-instance v2, Lcom/miui/gallery/video/editor/NexVideoEditor$FilterEffect;

    invoke-direct {v2, p0, p1}, Lcom/miui/gallery/video/editor/NexVideoEditor$FilterEffect;-><init>(Lcom/miui/gallery/video/editor/NexVideoEditor;Lcom/miui/gallery/video/editor/Filter;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 870
    return-void
.end method

.method public setSmartEffectTemplate(Lcom/miui/gallery/video/editor/SmartEffect;)Z
    .locals 3
    .param p1, "smartEffect"    # Lcom/miui/gallery/video/editor/SmartEffect;

    .prologue
    .line 1735
    new-instance v0, Lcom/miui/gallery/video/editor/NexVideoEditor$SmartEffectTemplate;

    invoke-direct {v0, p0, p1}, Lcom/miui/gallery/video/editor/NexVideoEditor$SmartEffectTemplate;-><init>(Lcom/miui/gallery/video/editor/NexVideoEditor;Lcom/miui/gallery/video/editor/SmartEffect;)V

    .line 1736
    .local v0, "smartEffectTemplate":Lcom/miui/gallery/video/editor/NexVideoEditor$SmartEffectTemplate;
    iget-object v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mTempEditValue:Ljava/util/HashMap;

    const-string v2, "edit_type_smart_effect_template"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1737
    const/4 v1, 0x0

    return v1
.end method

.method public setSourceAudioEnable(Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "enable"    # Ljava/lang/Boolean;

    .prologue
    .line 874
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mTempEditValue:Ljava/util/HashMap;

    const-string/jumbo v1, "source_audio"

    new-instance v2, Lcom/miui/gallery/video/editor/NexVideoEditor$SourceAudioChange;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-direct {v2, p0, v3}, Lcom/miui/gallery/video/editor/NexVideoEditor$SourceAudioChange;-><init>(Lcom/miui/gallery/video/editor/NexVideoEditor;Z)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 875
    return-void
.end method

.method public setTrimInfo(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 893
    new-instance v0, Lcom/miui/gallery/video/editor/NexVideoEditor$TrimInfo;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/gallery/video/editor/NexVideoEditor$TrimInfo;-><init>(Lcom/miui/gallery/video/editor/NexVideoEditor;II)V

    .line 894
    .local v0, "trimInfo":Lcom/miui/gallery/video/editor/NexVideoEditor$TrimInfo;
    invoke-direct {p0, v0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->setTrimInfo(Lcom/miui/gallery/video/editor/NexVideoEditor$TrimInfo;)V

    .line 895
    return-void
.end method

.method public setVideoEditorAdjust(Z)V
    .locals 3
    .param p1, "adjust"    # Z

    .prologue
    .line 1496
    new-instance v0, Lcom/miui/gallery/video/editor/NexVideoEditor$VideoEditorAdjust;

    invoke-direct {v0, p0, p1}, Lcom/miui/gallery/video/editor/NexVideoEditor$VideoEditorAdjust;-><init>(Lcom/miui/gallery/video/editor/NexVideoEditor;Z)V

    .line 1497
    .local v0, "changeAdjust":Lcom/miui/gallery/video/editor/NexVideoEditor$Change;
    iget-object v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mApplyedEditValue:Ljava/util/HashMap;

    const-string v2, "edit_type_adjust"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1498
    return-void
.end method

.method public setWarterMark(ILjava/lang/String;)Z
    .locals 3
    .param p1, "timeType"    # I
    .param p2, "templateid"    # Ljava/lang/String;

    .prologue
    .line 879
    new-instance v0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;-><init>(Lcom/miui/gallery/video/editor/NexVideoEditor;ILjava/lang/String;)V

    .line 880
    .local v0, "waterMark":Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;
    iget-object v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mTempEditValue:Ljava/util/HashMap;

    const-string v2, "edit_type_water_mark"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 881
    const/4 v1, 0x0

    return v1
.end method

.method public startPreview()V
    .locals 1

    .prologue
    .line 1021
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->startPreview(Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;)V

    .line 1022
    return-void
.end method

.method public startPreview(Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;)V
    .locals 2
    .param p1, "onCompletedListener"    # Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;

    .prologue
    .line 1025
    iget v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngineState:I

    packed-switch v1, :pswitch_data_0

    .line 1035
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1028
    :pswitch_1
    iget-object v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngin:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    if-eqz v1, :cond_0

    .line 1029
    iget-object v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngin:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->getCurrentPlayTimeTime()I

    move-result v0

    .line 1031
    .local v0, "currentTime":I
    if-nez v0, :cond_1

    const/16 v0, 0x64

    .end local v0    # "currentTime":I
    :cond_1
    invoke-virtual {p0, v0, p1}, Lcom/miui/gallery/video/editor/NexVideoEditor;->seek(ILcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;)V

    goto :goto_0

    .line 1025
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public toThirdEditor(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    .line 429
    iget v3, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngineState:I

    if-eq v3, v4, :cond_0

    iget v3, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngineState:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    iget v3, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngineState:I

    if-nez v3, :cond_1

    .line 431
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mNexProject:Lcom/nexstreaming/nexeditorsdk/nexProject;
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_1

    .line 432
    const/4 v2, 0x0

    .line 434
    .local v2, "intent":Landroid/content/Intent;
    :try_start_1
    iget-object v3, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mNexProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/nexProject;->makeKineMasterIntent()Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 440
    if-eqz v2, :cond_1

    .line 441
    :try_start_2
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 442
    const-string/jumbo v3, "video_editor"

    const-string/jumbo v4, "video_editor_to_3rd_exitor"

    invoke-static {v3, v4}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 454
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 435
    .restart local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0

    .line 445
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v1

    .line 447
    .local v1, "exception":Landroid/content/ActivityNotFoundException;
    :try_start_3
    const-string v3, "com.nexstreaming.app.kinemasterfree"

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/miui/gallery/video/editor/util/IntentUtil;->makeMarketIntent(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 448
    const-string/jumbo v3, "video_editor"

    const-string/jumbo v4, "video_editor_to_market"

    invoke-static {v3, v4}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 449
    :catch_2
    move-exception v0

    .line 450
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v3, "NexVideoEditor"

    const-string v4, "no market found !!!!"

    invoke-static {v3, v4}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
