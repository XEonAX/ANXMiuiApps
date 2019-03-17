.class public Lcom/miui/gallery/movie/nvsdk/NvStateController;
.super Ljava/lang/Object;
.source "NvStateController.java"

# interfaces
.implements Lcom/meicam/sdk/NvsStreamingContext$PlaybackCallback;
.implements Lcom/meicam/sdk/NvsStreamingContext$PlaybackCallback2;
.implements Lcom/meicam/sdk/NvsStreamingContext$StreamingEngineCallback;
.implements Lcom/miui/gallery/movie/core/IMovieController;


# instance fields
.field private mNvsRational:Lcom/meicam/sdk/NvsRational;

.field private mStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/miui/gallery/movie/core/MovieManager$StateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

.field private mTimeline:Lcom/meicam/sdk/NvsTimeline;


# direct methods
.method public constructor <init>(Lcom/meicam/sdk/NvsStreamingContext;Lcom/meicam/sdk/NvsTimeline;)V
    .locals 3
    .param p1, "streamingContext"    # Lcom/meicam/sdk/NvsStreamingContext;
    .param p2, "timeline"    # Lcom/meicam/sdk/NvsTimeline;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/miui/gallery/movie/nvsdk/NvStateController;->mStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    .line 26
    iput-object p2, p0, Lcom/miui/gallery/movie/nvsdk/NvStateController;->mTimeline:Lcom/meicam/sdk/NvsTimeline;

    .line 27
    new-instance v0, Lcom/meicam/sdk/NvsRational;

    const/4 v1, 0x3

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/meicam/sdk/NvsRational;-><init>(II)V

    iput-object v0, p0, Lcom/miui/gallery/movie/nvsdk/NvStateController;->mNvsRational:Lcom/meicam/sdk/NvsRational;

    .line 28
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/movie/nvsdk/NvStateController;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/movie/nvsdk/NvStateController;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/miui/gallery/movie/nvsdk/NvStateController;->mStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method private getCurrentEngineState()I
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/miui/gallery/movie/nvsdk/NvStateController;->mStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    invoke-virtual {v0}, Lcom/meicam/sdk/NvsStreamingContext;->getStreamingEngineState()I

    move-result v0

    return v0
.end method

.method private getStateFromNvEngine(I)I
    .locals 1
    .param p1, "nvState"    # I

    .prologue
    .line 147
    packed-switch p1, :pswitch_data_0

    .line 157
    :pswitch_0
    const/16 v0, -0x1f4

    :goto_0
    return v0

    .line 149
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 151
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 153
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 155
    :pswitch_4
    const/16 v0, 0xc8

    goto :goto_0

    .line 147
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private seekLong(J)V
    .locals 7
    .param p1, "duration"    # J

    .prologue
    .line 91
    iget-object v0, p0, Lcom/miui/gallery/movie/nvsdk/NvStateController;->mStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    iget-object v1, p0, Lcom/miui/gallery/movie/nvsdk/NvStateController;->mTimeline:Lcom/meicam/sdk/NvsTimeline;

    iget-object v4, p0, Lcom/miui/gallery/movie/nvsdk/NvStateController;->mNvsRational:Lcom/meicam/sdk/NvsRational;

    const/4 v5, 0x0

    move-wide v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/meicam/sdk/NvsStreamingContext;->seekTimeline(Lcom/meicam/sdk/NvsTimeline;JLcom/meicam/sdk/NvsRational;I)Z

    .line 92
    return-void
.end method


# virtual methods
.method public addStateChangeListener(Lcom/miui/gallery/movie/core/MovieManager$StateChangeListener;)V
    .locals 1
    .param p1, "stateChangeInterface"    # Lcom/miui/gallery/movie/core/MovieManager$StateChangeListener;

    .prologue
    .line 104
    if-eqz p1, :cond_1

    .line 105
    iget-object v0, p0, Lcom/miui/gallery/movie/nvsdk/NvStateController;->mStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/movie/nvsdk/NvStateController;->mStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/movie/nvsdk/NvStateController;->mStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/miui/gallery/movie/nvsdk/NvStateController;->mStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    :cond_1
    return-void
.end method

.method public cancelExport()V
    .locals 2

    .prologue
    .line 96
    const-string v0, "NvStateController"

    const-string v1, "cancelExport"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-direct {p0}, Lcom/miui/gallery/movie/nvsdk/NvStateController;->getCurrentEngineState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 98
    iget-object v0, p0, Lcom/miui/gallery/movie/nvsdk/NvStateController;->mStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/meicam/sdk/NvsStreamingContext;->stop(I)V

    .line 100
    :cond_0
    const-string v0, "NvStateController"

    const-string v1, "cancelExport done"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public isResume()Z
    .locals 2

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/miui/gallery/movie/nvsdk/NvStateController;->getCurrentEngineState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/miui/gallery/movie/nvsdk/NvStateController;->getCurrentEngineState()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onFirstVideoFramePresented(Lcom/meicam/sdk/NvsTimeline;)V
    .locals 3
    .param p1, "nvsTimeline"    # Lcom/meicam/sdk/NvsTimeline;

    .prologue
    .line 167
    iget-object v1, p0, Lcom/miui/gallery/movie/nvsdk/NvStateController;->mStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/movie/core/MovieManager$StateChangeListener;

    .line 168
    .local v0, "listener":Lcom/miui/gallery/movie/core/MovieManager$StateChangeListener;
    invoke-interface {v0}, Lcom/miui/gallery/movie/core/MovieManager$StateChangeListener;->onPlaybackPreloadingCompletion()V

    goto :goto_0

    .line 170
    .end local v0    # "listener":Lcom/miui/gallery/movie/core/MovieManager$StateChangeListener;
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/miui/gallery/movie/nvsdk/NvStateController;->pause()V

    .line 70
    return-void
.end method

.method public onPlaybackEOF(Lcom/meicam/sdk/NvsTimeline;)V
    .locals 2
    .param p1, "nvsTimeline"    # Lcom/meicam/sdk/NvsTimeline;

    .prologue
    .line 127
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/movie/nvsdk/NvStateController$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/movie/nvsdk/NvStateController$1;-><init>(Lcom/miui/gallery/movie/nvsdk/NvStateController;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/CompatHandler;->post(Ljava/lang/Runnable;)Z

    .line 135
    return-void
.end method

.method public onPlaybackPreloadingCompletion(Lcom/meicam/sdk/NvsTimeline;)V
    .locals 0
    .param p1, "nvsTimeline"    # Lcom/meicam/sdk/NvsTimeline;

    .prologue
    .line 118
    return-void
.end method

.method public onPlaybackStopped(Lcom/meicam/sdk/NvsTimeline;)V
    .locals 0
    .param p1, "nvsTimeline"    # Lcom/meicam/sdk/NvsTimeline;

    .prologue
    .line 123
    return-void
.end method

.method public onPlaybackTimelinePosition(Lcom/meicam/sdk/NvsTimeline;J)V
    .locals 4
    .param p1, "nvsTimeline"    # Lcom/meicam/sdk/NvsTimeline;
    .param p2, "l"    # J

    .prologue
    .line 174
    iget-object v1, p0, Lcom/miui/gallery/movie/nvsdk/NvStateController;->mStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/movie/core/MovieManager$StateChangeListener;

    .line 175
    .local v0, "listener":Lcom/miui/gallery/movie/core/MovieManager$StateChangeListener;
    const-wide/16 v2, 0x3e8

    div-long v2, p2, v2

    long-to-int v2, v2

    invoke-interface {v0, v2}, Lcom/miui/gallery/movie/core/MovieManager$StateChangeListener;->onPlaybackTimeChanged(I)V

    goto :goto_0

    .line 177
    .end local v0    # "listener":Lcom/miui/gallery/movie/core/MovieManager$StateChangeListener;
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 65
    return-void
.end method

.method public onStreamingEngineStateChanged(I)V
    .locals 5
    .param p1, "state"    # I

    .prologue
    .line 139
    const-string v2, "NvStateController"

    const-string/jumbo v3, "state: %d"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 140
    invoke-direct {p0, p1}, Lcom/miui/gallery/movie/nvsdk/NvStateController;->getStateFromNvEngine(I)I

    move-result v1

    .line 141
    .local v1, "movieState":I
    iget-object v2, p0, Lcom/miui/gallery/movie/nvsdk/NvStateController;->mStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/movie/core/MovieManager$StateChangeListener;

    .line 142
    .local v0, "listener":Lcom/miui/gallery/movie/core/MovieManager$StateChangeListener;
    invoke-interface {v0, v1}, Lcom/miui/gallery/movie/core/MovieManager$StateChangeListener;->onStateChanged(I)V

    goto :goto_0

    .line 144
    .end local v0    # "listener":Lcom/miui/gallery/movie/core/MovieManager$StateChangeListener;
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/miui/gallery/movie/nvsdk/NvStateController;->getCurrentEngineState()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 48
    iget-object v0, p0, Lcom/miui/gallery/movie/nvsdk/NvStateController;->mStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/meicam/sdk/NvsStreamingContext;->stop(I)V

    .line 50
    :cond_0
    return-void
.end method

.method public pauseOrResume()V
    .locals 2

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/miui/gallery/movie/nvsdk/NvStateController;->getCurrentEngineState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/miui/gallery/movie/nvsdk/NvStateController;->getCurrentEngineState()I

    move-result v0

    if-nez v0, :cond_1

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/movie/nvsdk/NvStateController;->resume()V

    .line 79
    :goto_0
    return-void

    .line 77
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/movie/nvsdk/NvStateController;->pause()V

    goto :goto_0
.end method

.method public play()V
    .locals 4

    .prologue
    .line 37
    iget-object v2, p0, Lcom/miui/gallery/movie/nvsdk/NvStateController;->mStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    iget-object v3, p0, Lcom/miui/gallery/movie/nvsdk/NvStateController;->mTimeline:Lcom/meicam/sdk/NvsTimeline;

    invoke-virtual {v2, v3}, Lcom/meicam/sdk/NvsStreamingContext;->getTimelineCurrentPosition(Lcom/meicam/sdk/NvsTimeline;)J

    move-result-wide v0

    .line 38
    .local v0, "startTime":J
    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/movie/nvsdk/NvStateController;->play(J)V

    .line 39
    return-void
.end method

.method public play(J)V
    .locals 9
    .param p1, "startTime"    # J

    .prologue
    .line 42
    iget-object v0, p0, Lcom/miui/gallery/movie/nvsdk/NvStateController;->mStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    iget-object v1, p0, Lcom/miui/gallery/movie/nvsdk/NvStateController;->mTimeline:Lcom/meicam/sdk/NvsTimeline;

    iget-object v2, p0, Lcom/miui/gallery/movie/nvsdk/NvStateController;->mTimeline:Lcom/meicam/sdk/NvsTimeline;

    invoke-virtual {v2}, Lcom/meicam/sdk/NvsTimeline;->getDuration()J

    move-result-wide v4

    iget-object v6, p0, Lcom/miui/gallery/movie/nvsdk/NvStateController;->mNvsRational:Lcom/meicam/sdk/NvsRational;

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-wide v2, p1

    invoke-virtual/range {v0 .. v8}, Lcom/meicam/sdk/NvsStreamingContext;->playbackTimeline(Lcom/meicam/sdk/NvsTimeline;JJLcom/meicam/sdk/NvsRational;ZI)Z

    .line 43
    return-void
.end method

.method public replay()V
    .locals 2

    .prologue
    .line 32
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/movie/nvsdk/NvStateController;->play(J)V

    .line 33
    return-void
.end method

.method public resume()V
    .locals 9

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/miui/gallery/movie/nvsdk/NvStateController;->getCurrentEngineState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 55
    iget-object v0, p0, Lcom/miui/gallery/movie/nvsdk/NvStateController;->mStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    iget-object v1, p0, Lcom/miui/gallery/movie/nvsdk/NvStateController;->mTimeline:Lcom/meicam/sdk/NvsTimeline;

    invoke-virtual {v0, v1}, Lcom/meicam/sdk/NvsStreamingContext;->getTimelineCurrentPosition(Lcom/meicam/sdk/NvsTimeline;)J

    move-result-wide v2

    .line 56
    .local v2, "startTime":J
    iget-object v0, p0, Lcom/miui/gallery/movie/nvsdk/NvStateController;->mStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    iget-object v1, p0, Lcom/miui/gallery/movie/nvsdk/NvStateController;->mTimeline:Lcom/meicam/sdk/NvsTimeline;

    iget-object v4, p0, Lcom/miui/gallery/movie/nvsdk/NvStateController;->mTimeline:Lcom/meicam/sdk/NvsTimeline;

    invoke-virtual {v4}, Lcom/meicam/sdk/NvsTimeline;->getDuration()J

    move-result-wide v4

    iget-object v6, p0, Lcom/miui/gallery/movie/nvsdk/NvStateController;->mNvsRational:Lcom/meicam/sdk/NvsRational;

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/meicam/sdk/NvsStreamingContext;->playbackTimeline(Lcom/meicam/sdk/NvsTimeline;JJLcom/meicam/sdk/NvsRational;ZI)Z

    .line 58
    .end local v2    # "startTime":J
    :cond_0
    return-void
.end method

.method public seek(I)V
    .locals 2
    .param p1, "duration"    # I

    .prologue
    .line 87
    mul-int/lit16 v0, p1, 0x3e8

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/miui/gallery/movie/nvsdk/NvStateController;->seekLong(J)V

    .line 88
    return-void
.end method
