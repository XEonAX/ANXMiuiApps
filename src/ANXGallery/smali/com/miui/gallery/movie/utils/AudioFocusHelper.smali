.class public Lcom/miui/gallery/movie/utils/AudioFocusHelper;
.super Ljava/lang/Object;
.source "AudioFocusHelper.java"


# instance fields
.field private mAudioFocusRequest:Landroid/media/AudioFocusRequest;

.field private mAudioManager:Landroid/media/AudioManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/miui/gallery/movie/utils/AudioFocusHelper;->mAudioManager:Landroid/media/AudioManager;

    .line 20
    return-void
.end method


# virtual methods
.method public abandonAudioFocus()V
    .locals 4

    .prologue
    .line 44
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_1

    .line 46
    iget-object v1, p0, Lcom/miui/gallery/movie/utils/AudioFocusHelper;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/miui/gallery/movie/utils/AudioFocusHelper;->mAudioFocusRequest:Landroid/media/AudioFocusRequest;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/movie/utils/AudioFocusHelper;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result v0

    .line 50
    .local v0, "result":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 51
    const-string v1, "AudioFocusHelper"

    const-string v2, "abandonAudioFocus failed:%d"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public requestAudioFocus()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 26
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_1

    .line 28
    new-instance v1, Landroid/media/AudioFocusRequest$Builder;

    invoke-direct {v1, v4}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    invoke-virtual {v1}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/movie/utils/AudioFocusHelper;->mAudioFocusRequest:Landroid/media/AudioFocusRequest;

    .line 29
    iget-object v1, p0, Lcom/miui/gallery/movie/utils/AudioFocusHelper;->mAudioFocusRequest:Landroid/media/AudioFocusRequest;

    invoke-virtual {v1}, Landroid/media/AudioFocusRequest;->acceptsDelayedFocusGain()Z

    .line 30
    iget-object v1, p0, Lcom/miui/gallery/movie/utils/AudioFocusHelper;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/miui/gallery/movie/utils/AudioFocusHelper;->mAudioFocusRequest:Landroid/media/AudioFocusRequest;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    .line 38
    :cond_0
    :goto_0
    return-void

    .line 33
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/movie/utils/AudioFocusHelper;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    .line 34
    .local v0, "result":I
    if-eq v0, v4, :cond_0

    .line 35
    const-string v1, "AudioFocusHelper"

    const-string v2, "requestAudioFocus failed:%d"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
