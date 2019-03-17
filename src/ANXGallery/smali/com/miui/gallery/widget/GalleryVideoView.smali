.class public Lcom/miui/gallery/widget/GalleryVideoView;
.super Landroid/view/TextureView;
.source "GalleryVideoView.java"


# instance fields
.field private mAudioAttributes:Landroid/media/AudioAttributes;

.field private mAudioFocusType:I

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAudioSession:I

.field private mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mContext:Landroid/content/Context;

.field private mCurrentBufferPercentage:I

.field private mCurrentState:I

.field private mDefaultHeight:I

.field private mDefaultWidth:I

.field private mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mFileLength:J

.field private mFileOffset:J

.field private mFilePath:Ljava/lang/String;

.field private mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field private mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private mSeekWhenPrepared:I

.field mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

.field private mTargetState:I

.field private mTransformApply:Z

.field private mUri:Landroid/net/Uri;

.field private mVideoHeight:I

.field private mVideoWidth:I

.field private mVolume:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 119
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/widget/GalleryVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 123
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gallery/widget/GalleryVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 124
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 127
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 92
    iput v2, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mCurrentState:I

    .line 93
    iput v2, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mTargetState:I

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 107
    iput v3, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mAudioFocusType:I

    .line 115
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mVolume:F

    .line 426
    new-instance v0, Lcom/miui/gallery/widget/GalleryVideoView$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/widget/GalleryVideoView$1;-><init>(Lcom/miui/gallery/widget/GalleryVideoView;)V

    iput-object v0, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 437
    new-instance v0, Lcom/miui/gallery/widget/GalleryVideoView$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/widget/GalleryVideoView$2;-><init>(Lcom/miui/gallery/widget/GalleryVideoView;)V

    iput-object v0, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 456
    new-instance v0, Lcom/miui/gallery/widget/GalleryVideoView$3;

    invoke-direct {v0, p0}, Lcom/miui/gallery/widget/GalleryVideoView$3;-><init>(Lcom/miui/gallery/widget/GalleryVideoView;)V

    iput-object v0, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 470
    new-instance v0, Lcom/miui/gallery/widget/GalleryVideoView$4;

    invoke-direct {v0, p0}, Lcom/miui/gallery/widget/GalleryVideoView$4;-><init>(Lcom/miui/gallery/widget/GalleryVideoView;)V

    iput-object v0, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 480
    new-instance v0, Lcom/miui/gallery/widget/GalleryVideoView$5;

    invoke-direct {v0, p0}, Lcom/miui/gallery/widget/GalleryVideoView$5;-><init>(Lcom/miui/gallery/widget/GalleryVideoView;)V

    iput-object v0, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 497
    new-instance v0, Lcom/miui/gallery/widget/GalleryVideoView$6;

    invoke-direct {v0, p0}, Lcom/miui/gallery/widget/GalleryVideoView$6;-><init>(Lcom/miui/gallery/widget/GalleryVideoView;)V

    iput-object v0, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 549
    new-instance v0, Lcom/miui/gallery/widget/GalleryVideoView$7;

    invoke-direct {v0, p0}, Lcom/miui/gallery/widget/GalleryVideoView$7;-><init>(Lcom/miui/gallery/widget/GalleryVideoView;)V

    iput-object v0, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    .line 129
    iput v2, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mVideoWidth:I

    .line 130
    iput v2, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mVideoHeight:I

    .line 132
    iput-object p1, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mContext:Landroid/content/Context;

    .line 133
    iget-object v0, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mAudioManager:Landroid/media/AudioManager;

    .line 134
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 135
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v0, v3}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v1, 0x3

    .line 136
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/widget/GalleryVideoView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 141
    iput v2, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mCurrentState:I

    .line 142
    iput v2, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mTargetState:I

    .line 143
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/widget/GalleryVideoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/widget/GalleryVideoView;

    .prologue
    .line 67
    iget v0, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mVideoWidth:I

    return v0
.end method

.method static synthetic access$002(Lcom/miui/gallery/widget/GalleryVideoView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/widget/GalleryVideoView;
    .param p1, "x1"    # I

    .prologue
    .line 67
    iput p1, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mVideoWidth:I

    return p1
.end method

.method static synthetic access$100(Lcom/miui/gallery/widget/GalleryVideoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/widget/GalleryVideoView;

    .prologue
    .line 67
    iget v0, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mVideoHeight:I

    return v0
.end method

.method static synthetic access$1000(Lcom/miui/gallery/widget/GalleryVideoView;)Landroid/media/MediaPlayer$OnInfoListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/widget/GalleryVideoView;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    return-object v0
.end method

.method static synthetic access$102(Lcom/miui/gallery/widget/GalleryVideoView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/widget/GalleryVideoView;
    .param p1, "x1"    # I

    .prologue
    .line 67
    iput p1, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mVideoHeight:I

    return p1
.end method

.method static synthetic access$1100(Lcom/miui/gallery/widget/GalleryVideoView;)Landroid/media/MediaPlayer$OnErrorListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/widget/GalleryVideoView;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/miui/gallery/widget/GalleryVideoView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/widget/GalleryVideoView;
    .param p1, "x1"    # I

    .prologue
    .line 67
    iput p1, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mCurrentBufferPercentage:I

    return p1
.end method

.method static synthetic access$1302(Lcom/miui/gallery/widget/GalleryVideoView;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/widget/GalleryVideoView;
    .param p1, "x1"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/miui/gallery/widget/GalleryVideoView;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/widget/GalleryVideoView;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/miui/gallery/widget/GalleryVideoView;->openVideo()V

    return-void
.end method

.method static synthetic access$1500(Lcom/miui/gallery/widget/GalleryVideoView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/widget/GalleryVideoView;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/miui/gallery/widget/GalleryVideoView;->release(Z)V

    return-void
.end method

.method static synthetic access$202(Lcom/miui/gallery/widget/GalleryVideoView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/widget/GalleryVideoView;
    .param p1, "x1"    # I

    .prologue
    .line 67
    iput p1, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mCurrentState:I

    return p1
.end method

.method static synthetic access$300(Lcom/miui/gallery/widget/GalleryVideoView;)Landroid/media/MediaPlayer$OnPreparedListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/widget/GalleryVideoView;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/widget/GalleryVideoView;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/widget/GalleryVideoView;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/widget/GalleryVideoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/widget/GalleryVideoView;

    .prologue
    .line 67
    iget v0, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mSeekWhenPrepared:I

    return v0
.end method

.method static synthetic access$600(Lcom/miui/gallery/widget/GalleryVideoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/widget/GalleryVideoView;

    .prologue
    .line 67
    iget v0, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mTargetState:I

    return v0
.end method

.method static synthetic access$602(Lcom/miui/gallery/widget/GalleryVideoView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/widget/GalleryVideoView;
    .param p1, "x1"    # I

    .prologue
    .line 67
    iput p1, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mTargetState:I

    return p1
.end method

.method static synthetic access$700(Lcom/miui/gallery/widget/GalleryVideoView;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/widget/GalleryVideoView;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/miui/gallery/widget/GalleryVideoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/widget/GalleryVideoView;

    .prologue
    .line 67
    iget v0, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mAudioFocusType:I

    return v0
.end method

.method static synthetic access$900(Lcom/miui/gallery/widget/GalleryVideoView;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/widget/GalleryVideoView;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method private isInPlaybackState()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 653
    iget-object v1, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mCurrentState:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mCurrentState:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mCurrentState:I

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private openVideo()V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 356
    iget-object v0, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mFilePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_2

    .line 424
    :cond_1
    :goto_0
    return-void

    .line 362
    :cond_2
    invoke-direct {p0, v1}, Lcom/miui/gallery/widget/GalleryVideoView;->release(Z)V

    .line 364
    iget v0, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mAudioFocusType:I

    if-eqz v0, :cond_3

    .line 365
    iget-object v0, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    const/4 v2, 0x3

    iget v3, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mAudioFocusType:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 368
    :cond_3
    const/4 v8, 0x0

    .line 370
    .local v8, "inputStream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 372
    iget v0, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mAudioSession:I

    if-eqz v0, :cond_7

    .line 373
    iget-object v0, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget v1, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mAudioSession:I

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioSessionId(I)V

    .line 377
    :goto_1
    iget-object v0, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 378
    iget-object v0, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 379
    iget-object v0, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 380
    iget-object v0, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 381
    iget-object v0, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 382
    iget-object v0, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 383
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mCurrentBufferPercentage:I

    .line 384
    iget-object v0, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_8

    .line 385
    iget-object v0, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mHeaders:Ljava/util/Map;

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 390
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Landroid/view/Surface;

    iget-object v2, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v1, v2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 391
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_5

    .line 392
    iget-object v0, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 394
    :cond_5
    iget-object v0, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 395
    iget v0, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mVolume:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_6

    .line 396
    iget-object v0, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget v1, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mVolume:F

    iget v2, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mVolume:F

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 398
    :cond_6
    iget-object v0, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 402
    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mCurrentState:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 416
    if-eqz v8, :cond_1

    .line 418
    :try_start_1
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 419
    :catch_0
    move-exception v6

    .line 420
    .local v6, "e":Ljava/io/IOException;
    const-string v0, "GalleryVideoView"

    const-string v1, "close stream error"

    invoke-static {v0, v1, v6}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 375
    .end local v6    # "e":Ljava/io/IOException;
    :cond_7
    :try_start_2
    iget-object v0, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mAudioSession:I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 403
    :catch_1
    move-exception v7

    .line 404
    .local v7, "ex":Ljava/io/IOException;
    :goto_3
    :try_start_3
    const-string v0, "GalleryVideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to open content: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 405
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mCurrentState:I

    .line 406
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mTargetState:I

    .line 407
    iget-object v0, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v1, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 416
    if-eqz v8, :cond_1

    .line 418
    :try_start_4
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 419
    :catch_2
    move-exception v6

    .line 420
    .restart local v6    # "e":Ljava/io/IOException;
    const-string v0, "GalleryVideoView"

    const-string v1, "close stream error"

    invoke-static {v0, v1, v6}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 386
    .end local v6    # "e":Ljava/io/IOException;
    .end local v7    # "ex":Ljava/io/IOException;
    :cond_8
    :try_start_5
    iget-object v0, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mFilePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 387
    new-instance v9, Ljava/io/FileInputStream;

    iget-object v0, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mFilePath:Ljava/lang/String;

    invoke-direct {v9, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 388
    .end local v8    # "inputStream":Ljava/io/FileInputStream;
    .local v9, "inputStream":Ljava/io/FileInputStream;
    :try_start_6
    iget-object v0, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v9}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    iget-wide v2, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mFileOffset:J

    iget-wide v4, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mFileLength:J

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object v8, v9

    .end local v9    # "inputStream":Ljava/io/FileInputStream;
    .restart local v8    # "inputStream":Ljava/io/FileInputStream;
    goto/16 :goto_2

    .line 409
    :catch_3
    move-exception v7

    .line 410
    .local v7, "ex":Ljava/lang/IllegalArgumentException;
    :goto_4
    :try_start_7
    const-string v0, "GalleryVideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to open content: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 411
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mCurrentState:I

    .line 412
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mTargetState:I

    .line 413
    iget-object v0, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v1, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 416
    if-eqz v8, :cond_1

    .line 418
    :try_start_8
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_0

    .line 419
    :catch_4
    move-exception v6

    .line 420
    .restart local v6    # "e":Ljava/io/IOException;
    const-string v0, "GalleryVideoView"

    const-string v1, "close stream error"

    invoke-static {v0, v1, v6}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 416
    .end local v6    # "e":Ljava/io/IOException;
    .end local v7    # "ex":Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v0

    :goto_5
    if-eqz v8, :cond_9

    .line 418
    :try_start_9
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 421
    :cond_9
    :goto_6
    throw v0

    .line 419
    :catch_5
    move-exception v6

    .line 420
    .restart local v6    # "e":Ljava/io/IOException;
    const-string v1, "GalleryVideoView"

    const-string v2, "close stream error"

    invoke-static {v1, v2, v6}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_6

    .line 416
    .end local v6    # "e":Ljava/io/IOException;
    .end local v8    # "inputStream":Ljava/io/FileInputStream;
    .restart local v9    # "inputStream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v0

    move-object v8, v9

    .end local v9    # "inputStream":Ljava/io/FileInputStream;
    .restart local v8    # "inputStream":Ljava/io/FileInputStream;
    goto :goto_5

    .line 409
    .end local v8    # "inputStream":Ljava/io/FileInputStream;
    .restart local v9    # "inputStream":Ljava/io/FileInputStream;
    :catch_6
    move-exception v7

    move-object v8, v9

    .end local v9    # "inputStream":Ljava/io/FileInputStream;
    .restart local v8    # "inputStream":Ljava/io/FileInputStream;
    goto :goto_4

    .line 403
    .end local v8    # "inputStream":Ljava/io/FileInputStream;
    .restart local v9    # "inputStream":Ljava/io/FileInputStream;
    :catch_7
    move-exception v7

    move-object v8, v9

    .end local v9    # "inputStream":Ljava/io/FileInputStream;
    .restart local v8    # "inputStream":Ljava/io/FileInputStream;
    goto/16 :goto_3
.end method

.method private release(Z)V
    .locals 3
    .param p1, "cleartargetstate"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 577
    iget-object v0, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 578
    iget-object v0, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 579
    iget-object v0, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 580
    iput-object v2, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 581
    iput v1, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mCurrentState:I

    .line 582
    if-eqz p1, :cond_0

    .line 583
    iput v1, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mTargetState:I

    .line 585
    :cond_0
    iget v0, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mAudioFocusType:I

    if-eqz v0, :cond_1

    .line 586
    iget-object v0, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 589
    :cond_1
    return-void
.end method


# virtual methods
.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 218
    const-class v0, Lcom/miui/gallery/widget/GalleryVideoView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAudioSessionId()I
    .locals 2

    .prologue
    .line 660
    iget v1, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mAudioSession:I

    if-nez v1, :cond_0

    .line 661
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 662
    .local v0, "foo":Landroid/media/MediaPlayer;
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mAudioSession:I

    .line 663
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 665
    .end local v0    # "foo":Landroid/media/MediaPlayer;
    :cond_0
    iget v1, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mAudioSession:I

    return v1
.end method

.method public getBufferPercentage()I
    .locals 1

    .prologue
    .line 646
    iget-object v0, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 647
    iget v0, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mCurrentBufferPercentage:I

    .line 649
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 626
    invoke-direct {p0}, Lcom/miui/gallery/widget/GalleryVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 627
    iget-object v0, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 629
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 618
    invoke-direct {p0}, Lcom/miui/gallery/widget/GalleryVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 619
    iget-object v0, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    .line 622
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 642
    invoke-direct {p0}, Lcom/miui/gallery/widget/GalleryVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v10, 0x40000000    # 2.0f

    const/high16 v9, -0x80000000

    .line 150
    iget v4, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mDefaultWidth:I

    .line 151
    .local v4, "targetWidth":I
    iget v3, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mDefaultHeight:I

    .line 152
    .local v3, "targetHeight":I
    iget v8, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mVideoWidth:I

    if-lez v8, :cond_0

    iget v8, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mVideoHeight:I

    if-lez v8, :cond_0

    .line 153
    iget v4, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mVideoWidth:I

    .line 154
    iget v3, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mVideoHeight:I

    .line 157
    :cond_0
    invoke-static {v4, p1}, Lcom/miui/gallery/widget/GalleryVideoView;->getDefaultSize(II)I

    move-result v5

    .line 158
    .local v5, "width":I
    invoke-static {v3, p2}, Lcom/miui/gallery/widget/GalleryVideoView;->getDefaultSize(II)I

    move-result v0

    .line 159
    .local v0, "height":I
    if-lez v4, :cond_1

    if-lez v3, :cond_1

    iget-boolean v8, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mTransformApply:Z

    if-nez v8, :cond_1

    .line 161
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 162
    .local v6, "widthSpecMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 163
    .local v7, "widthSpecSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 164
    .local v1, "heightSpecMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 166
    .local v2, "heightSpecSize":I
    if-ne v6, v10, :cond_3

    if-ne v1, v10, :cond_3

    .line 168
    move v5, v7

    .line 169
    move v0, v2

    .line 172
    mul-int v8, v4, v0

    mul-int v9, v5, v3

    if-ge v8, v9, :cond_2

    .line 174
    mul-int v8, v0, v4

    div-int v5, v8, v3

    .line 213
    .end local v1    # "heightSpecMode":I
    .end local v2    # "heightSpecSize":I
    .end local v6    # "widthSpecMode":I
    .end local v7    # "widthSpecSize":I
    :cond_1
    :goto_0
    invoke-virtual {p0, v5, v0}, Lcom/miui/gallery/widget/GalleryVideoView;->setMeasuredDimension(II)V

    .line 214
    return-void

    .line 175
    .restart local v1    # "heightSpecMode":I
    .restart local v2    # "heightSpecSize":I
    .restart local v6    # "widthSpecMode":I
    .restart local v7    # "widthSpecSize":I
    :cond_2
    mul-int v8, v4, v0

    mul-int v9, v5, v3

    if-le v8, v9, :cond_1

    .line 177
    mul-int v8, v5, v3

    div-int v0, v8, v4

    goto :goto_0

    .line 179
    :cond_3
    if-ne v6, v10, :cond_4

    .line 181
    move v5, v7

    .line 182
    mul-int v8, v5, v3

    div-int v0, v8, v4

    .line 183
    if-ne v1, v9, :cond_1

    if-le v0, v2, :cond_1

    .line 185
    move v0, v2

    goto :goto_0

    .line 187
    :cond_4
    if-ne v1, v10, :cond_5

    .line 189
    move v0, v2

    .line 190
    mul-int v8, v0, v4

    div-int v5, v8, v3

    .line 191
    if-ne v6, v9, :cond_1

    if-le v5, v7, :cond_1

    .line 193
    move v5, v7

    goto :goto_0

    .line 197
    :cond_5
    move v5, v4

    .line 198
    move v0, v3

    .line 199
    if-ne v1, v9, :cond_6

    if-le v0, v2, :cond_6

    .line 201
    move v0, v2

    .line 202
    mul-int v8, v0, v4

    div-int v5, v8, v3

    .line 204
    :cond_6
    if-ne v6, v9, :cond_1

    if-le v5, v7, :cond_1

    .line 206
    move v5, v7

    .line 207
    mul-int v8, v5, v3

    div-int v0, v8, v4

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 600
    invoke-direct {p0}, Lcom/miui/gallery/widget/GalleryVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 601
    iget-object v0, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 602
    iget-object v0, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 603
    iput v1, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mCurrentState:I

    .line 606
    :cond_0
    iput v1, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mTargetState:I

    .line 607
    return-void
.end method

.method public requestAudioFocus(I)V
    .locals 3
    .param p1, "focusGain"    # I

    .prologue
    .line 303
    invoke-virtual {p0, p1}, Lcom/miui/gallery/widget/GalleryVideoView;->setAudioFocusRequest(I)V

    .line 304
    if-eqz p1, :cond_0

    .line 305
    iget-object v0, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, p1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 307
    :cond_0
    return-void
.end method

.method public seekTo(I)V
    .locals 1
    .param p1, "msec"    # I

    .prologue
    .line 633
    invoke-direct {p0}, Lcom/miui/gallery/widget/GalleryVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 634
    iget-object v0, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 635
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mSeekWhenPrepared:I

    .line 639
    :goto_0
    return-void

    .line 637
    :cond_0
    iput p1, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mSeekWhenPrepared:I

    goto :goto_0
.end method

.method public setAudioAttributes(Landroid/media/AudioAttributes;)V
    .locals 2
    .param p1, "attributes"    # Landroid/media/AudioAttributes;

    .prologue
    .line 338
    if-nez p1, :cond_0

    .line 339
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioAttributes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 341
    :cond_0
    iput-object p1, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 342
    return-void
.end method

.method public setAudioFocusRequest(I)V
    .locals 3
    .param p1, "focusGain"    # I

    .prologue
    .line 323
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 328
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal audio focus type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 330
    :cond_0
    iput p1, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mAudioFocusType:I

    .line 331
    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0
    .param p1, "l"    # Landroid/media/MediaPlayer$OnCompletionListener;

    .prologue
    .line 523
    iput-object p1, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 524
    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 0
    .param p1, "l"    # Landroid/media/MediaPlayer$OnErrorListener;

    .prologue
    .line 536
    iput-object p1, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 537
    return-void
.end method

.method public setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V
    .locals 0
    .param p1, "l"    # Landroid/media/MediaPlayer$OnInfoListener;

    .prologue
    .line 546
    iput-object p1, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 547
    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0
    .param p1, "l"    # Landroid/media/MediaPlayer$OnPreparedListener;

    .prologue
    .line 512
    iput-object p1, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 513
    return-void
.end method

.method public setTransform(Landroid/graphics/Matrix;)V
    .locals 1
    .param p1, "transform"    # Landroid/graphics/Matrix;

    .prologue
    .line 223
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    invoke-super {p0, p1}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    .line 225
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mTransformApply:Z

    .line 229
    :goto_0
    return-void

    .line 227
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mTransformApply:Z

    goto :goto_0
.end method

.method public setVideoFilePath(Ljava/lang/String;)V
    .locals 6
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 285
    const-wide/16 v2, 0x0

    const-wide v4, 0x7ffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/widget/GalleryVideoView;->setVideoFilePath(Ljava/lang/String;JJ)V

    .line 286
    return-void
.end method

.method public setVideoFilePath(Ljava/lang/String;J)V
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "offset"    # J

    .prologue
    .line 289
    const-wide v4, 0x7ffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/widget/GalleryVideoView;->setVideoFilePath(Ljava/lang/String;JJ)V

    .line 290
    return-void
.end method

.method public setVideoFilePath(Ljava/lang/String;JJ)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "offset"    # J
    .param p4, "length"    # J

    .prologue
    .line 293
    iput-object p1, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mFilePath:Ljava/lang/String;

    .line 294
    iput-wide p2, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mFileOffset:J

    .line 295
    iput-wide p4, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mFileLength:J

    .line 296
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mSeekWhenPrepared:I

    .line 297
    invoke-direct {p0}, Lcom/miui/gallery/widget/GalleryVideoView;->openVideo()V

    .line 298
    invoke-virtual {p0}, Lcom/miui/gallery/widget/GalleryVideoView;->requestLayout()V

    .line 299
    invoke-virtual {p0}, Lcom/miui/gallery/widget/GalleryVideoView;->invalidate()V

    .line 300
    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 253
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/widget/GalleryVideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 254
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 262
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/miui/gallery/widget/GalleryVideoView;->setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V

    .line 263
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 276
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mUri:Landroid/net/Uri;

    .line 277
    iput-object p2, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mHeaders:Ljava/util/Map;

    .line 278
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mSeekWhenPrepared:I

    .line 279
    invoke-direct {p0}, Lcom/miui/gallery/widget/GalleryVideoView;->openVideo()V

    .line 280
    invoke-virtual {p0}, Lcom/miui/gallery/widget/GalleryVideoView;->requestLayout()V

    .line 281
    invoke-virtual {p0}, Lcom/miui/gallery/widget/GalleryVideoView;->invalidate()V

    .line 282
    return-void
.end method

.method public setVolume(F)V
    .locals 1
    .param p1, "volume"    # F

    .prologue
    .line 241
    iput p1, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mVolume:F

    .line 242
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 245
    :cond_0
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 592
    invoke-direct {p0}, Lcom/miui/gallery/widget/GalleryVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 593
    iget-object v0, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 594
    iput v1, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mCurrentState:I

    .line 596
    :cond_0
    iput v1, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mTargetState:I

    .line 597
    return-void
.end method

.method public stopPlayback()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 345
    iget-object v0, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 347
    iget-object v0, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 348
    iput-object v2, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 349
    iput v1, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mCurrentState:I

    .line 350
    iput v1, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mTargetState:I

    .line 351
    iget-object v0, p0, Lcom/miui/gallery/widget/GalleryVideoView;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 353
    :cond_0
    return-void
.end method
