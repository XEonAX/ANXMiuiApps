.class public Lcom/miui/gallery/projection/ProjectionVideoController;
.super Landroid/widget/RelativeLayout;
.source "ProjectionVideoController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Lcom/miui/gallery/projection/ConnectController$MediaPlayListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/projection/ProjectionVideoController$OnFinishListener;
    }
.end annotation


# instance fields
.field private mConnectControl:Lcom/miui/gallery/projection/ConnectController;

.field private mDragging:Z

.field private mFinishListener:Lcom/miui/gallery/projection/ProjectionVideoController$OnFinishListener;

.field private mHandler:Landroid/os/Handler;

.field private mIvPause:Landroid/widget/ImageView;

.field private mLayoutQuit:Landroid/widget/LinearLayout;

.field private mSbSeek:Landroid/widget/SeekBar;

.field private mTvCurPos:Landroid/widget/TextView;

.field private mTvDuration:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 59
    new-instance v0, Lcom/miui/gallery/projection/ProjectionVideoController$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/projection/ProjectionVideoController$1;-><init>(Lcom/miui/gallery/projection/ProjectionVideoController;)V

    iput-object v0, p0, Lcom/miui/gallery/projection/ProjectionVideoController;->mHandler:Landroid/os/Handler;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    new-instance v0, Lcom/miui/gallery/projection/ProjectionVideoController$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/projection/ProjectionVideoController$1;-><init>(Lcom/miui/gallery/projection/ProjectionVideoController;)V

    iput-object v0, p0, Lcom/miui/gallery/projection/ProjectionVideoController;->mHandler:Landroid/os/Handler;

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    new-instance v0, Lcom/miui/gallery/projection/ProjectionVideoController$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/projection/ProjectionVideoController$1;-><init>(Lcom/miui/gallery/projection/ProjectionVideoController;)V

    iput-object v0, p0, Lcom/miui/gallery/projection/ProjectionVideoController;->mHandler:Landroid/os/Handler;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/projection/ProjectionVideoController;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/projection/ProjectionVideoController;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/miui/gallery/projection/ProjectionVideoController;->showProgress()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/projection/ProjectionVideoController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/projection/ProjectionVideoController;

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/miui/gallery/projection/ProjectionVideoController;->mDragging:Z

    return v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/projection/ProjectionVideoController;)Lcom/miui/gallery/projection/ConnectController;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/projection/ProjectionVideoController;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/miui/gallery/projection/ProjectionVideoController;->mConnectControl:Lcom/miui/gallery/projection/ConnectController;

    return-object v0
.end method

.method private showProgress()I
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 83
    iget-object v5, p0, Lcom/miui/gallery/projection/ProjectionVideoController;->mConnectControl:Lcom/miui/gallery/projection/ConnectController;

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/miui/gallery/projection/ProjectionVideoController;->mDragging:Z

    if-eqz v5, :cond_2

    :cond_0
    move v1, v4

    .line 110
    :cond_1
    :goto_0
    return v1

    .line 86
    :cond_2
    iget-object v5, p0, Lcom/miui/gallery/projection/ProjectionVideoController;->mConnectControl:Lcom/miui/gallery/projection/ConnectController;

    invoke-virtual {v5}, Lcom/miui/gallery/projection/ConnectController;->getCurrentPosition()I

    move-result v1

    .line 87
    .local v1, "position":I
    iget-object v5, p0, Lcom/miui/gallery/projection/ProjectionVideoController;->mConnectControl:Lcom/miui/gallery/projection/ConnectController;

    invoke-virtual {v5}, Lcom/miui/gallery/projection/ConnectController;->getDuration()I

    move-result v0

    .line 88
    .local v0, "duration":I
    invoke-virtual {p0}, Lcom/miui/gallery/projection/ProjectionVideoController;->updateStatus()V

    .line 89
    const-string v5, "RemoteVideoControl"

    const-string v6, "position %d, duration %d"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v5, v6, v7, v8}, Lcom/miui/gallery/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 90
    const/4 v5, -0x1

    if-ne v0, v5, :cond_3

    move v1, v4

    .line 91
    goto :goto_0

    .line 94
    :cond_3
    iget-object v4, p0, Lcom/miui/gallery/projection/ProjectionVideoController;->mSbSeek:Landroid/widget/SeekBar;

    if-eqz v4, :cond_4

    .line 95
    if-lez v0, :cond_4

    .line 97
    const-wide/16 v4, 0x64

    int-to-long v6, v1

    mul-long/2addr v4, v6

    int-to-long v6, v0

    div-long v2, v4, v6

    .line 98
    .local v2, "pos":J
    iget-object v4, p0, Lcom/miui/gallery/projection/ProjectionVideoController;->mSbSeek:Landroid/widget/SeekBar;

    long-to-int v5, v2

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 99
    const-string v4, "RemoteVideoControl"

    const-string v5, "seek set %d"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/miui/gallery/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 102
    .end local v2    # "pos":J
    :cond_4
    if-eqz v0, :cond_1

    .line 105
    iget-object v4, p0, Lcom/miui/gallery/projection/ProjectionVideoController;->mTvDuration:Landroid/widget/TextView;

    if-eqz v4, :cond_5

    .line 106
    iget-object v4, p0, Lcom/miui/gallery/projection/ProjectionVideoController;->mTvDuration:Landroid/widget/TextView;

    div-int/lit16 v5, v0, 0x3e8

    int-to-long v6, v5

    invoke-static {v6, v7}, Lcom/miui/gallery/util/FormatUtil;->formatVideoDuration(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    :cond_5
    iget-object v4, p0, Lcom/miui/gallery/projection/ProjectionVideoController;->mTvCurPos:Landroid/widget/TextView;

    if-eqz v4, :cond_1

    .line 108
    iget-object v4, p0, Lcom/miui/gallery/projection/ProjectionVideoController;->mTvCurPos:Landroid/widget/TextView;

    div-int/lit16 v5, v1, 0x3e8

    int-to-long v6, v5

    invoke-static {v6, v7}, Lcom/miui/gallery/util/FormatUtil;->formatVideoDuration(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method protected clearStatus()V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/miui/gallery/projection/ProjectionVideoController;->mTvDuration:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/miui/gallery/projection/ProjectionVideoController;->mTvDuration:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/projection/ProjectionVideoController;->mTvCurPos:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/miui/gallery/projection/ProjectionVideoController;->mTvCurPos:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/projection/ProjectionVideoController;->mSbSeek:Landroid/widget/SeekBar;

    if-eqz v0, :cond_2

    .line 119
    iget-object v0, p0, Lcom/miui/gallery/projection/ProjectionVideoController;->mSbSeek:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 120
    :cond_2
    invoke-virtual {p0}, Lcom/miui/gallery/projection/ProjectionVideoController;->updateStatus()V

    .line 121
    return-void
.end method

.method protected getPauseImageResId()I
    .locals 1

    .prologue
    .line 159
    const v0, 0x7f02023e

    return v0
.end method

.method protected getPlayImageResId()I
    .locals 1

    .prologue
    .line 163
    const v0, 0x7f02023f

    return v0
.end method

.method public initView()V
    .locals 1

    .prologue
    .line 48
    invoke-static {}, Lcom/miui/gallery/projection/ConnectController;->getInstance()Lcom/miui/gallery/projection/ConnectController;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/projection/ProjectionVideoController;->mConnectControl:Lcom/miui/gallery/projection/ConnectController;

    .line 49
    const v0, 0x7f120253

    invoke-virtual {p0, v0}, Lcom/miui/gallery/projection/ProjectionVideoController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/gallery/projection/ProjectionVideoController;->mLayoutQuit:Landroid/widget/LinearLayout;

    .line 50
    iget-object v0, p0, Lcom/miui/gallery/projection/ProjectionVideoController;->mLayoutQuit:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    const v0, 0x7f120256

    invoke-virtual {p0, v0}, Lcom/miui/gallery/projection/ProjectionVideoController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gallery/projection/ProjectionVideoController;->mIvPause:Landroid/widget/ImageView;

    .line 52
    iget-object v0, p0, Lcom/miui/gallery/projection/ProjectionVideoController;->mIvPause:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    const v0, 0x7f120257

    invoke-virtual {p0, v0}, Lcom/miui/gallery/projection/ProjectionVideoController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/projection/ProjectionVideoController;->mTvCurPos:Landroid/widget/TextView;

    .line 54
    const v0, 0x7f120258

    invoke-virtual {p0, v0}, Lcom/miui/gallery/projection/ProjectionVideoController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/projection/ProjectionVideoController;->mTvDuration:Landroid/widget/TextView;

    .line 55
    const v0, 0x7f120259

    invoke-virtual {p0, v0}, Lcom/miui/gallery/projection/ProjectionVideoController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/miui/gallery/projection/ProjectionVideoController;->mSbSeek:Landroid/widget/SeekBar;

    .line 56
    iget-object v0, p0, Lcom/miui/gallery/projection/ProjectionVideoController;->mSbSeek:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 57
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/miui/gallery/projection/ProjectionVideoController;->mLayoutQuit:Landroid/widget/LinearLayout;

    if-ne p1, v0, :cond_1

    .line 169
    invoke-virtual {p0}, Lcom/miui/gallery/projection/ProjectionVideoController;->stopPlay()V

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/projection/ProjectionVideoController;->mIvPause:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/miui/gallery/projection/ProjectionVideoController;->mConnectControl:Lcom/miui/gallery/projection/ConnectController;

    invoke-virtual {v0}, Lcom/miui/gallery/projection/ConnectController;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 172
    iget-object v0, p0, Lcom/miui/gallery/projection/ProjectionVideoController;->mConnectControl:Lcom/miui/gallery/projection/ConnectController;

    invoke-virtual {v0}, Lcom/miui/gallery/projection/ConnectController;->pause()V

    .line 176
    :goto_1
    invoke-virtual {p0}, Lcom/miui/gallery/projection/ProjectionVideoController;->updateStatus()V

    goto :goto_0

    .line 174
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/projection/ProjectionVideoController;->mConnectControl:Lcom/miui/gallery/projection/ConnectController;

    invoke-virtual {v0}, Lcom/miui/gallery/projection/ConnectController;->resume()V

    goto :goto_1
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/miui/gallery/projection/ProjectionVideoController;->stopPlay()V

    .line 135
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 136
    return-void
.end method

.method public onLoading()V
    .locals 0

    .prologue
    .line 222
    return-void
.end method

.method public onPaused()V
    .locals 0

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/miui/gallery/projection/ProjectionVideoController;->updateStatus()V

    .line 238
    return-void
.end method

.method public onPlaying()V
    .locals 0

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/miui/gallery/projection/ProjectionVideoController;->updateStatus()V

    .line 227
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 10
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 182
    iget-object v6, p0, Lcom/miui/gallery/projection/ProjectionVideoController;->mSbSeek:Landroid/widget/SeekBar;

    if-ne p1, v6, :cond_0

    .line 183
    if-nez p3, :cond_1

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    iget-object v6, p0, Lcom/miui/gallery/projection/ProjectionVideoController;->mConnectControl:Lcom/miui/gallery/projection/ConnectController;

    invoke-virtual {v6}, Lcom/miui/gallery/projection/ConnectController;->getCurrentPosition()I

    move-result v6

    int-to-long v0, v6

    .line 190
    .local v0, "currentPosition":J
    iget-object v6, p0, Lcom/miui/gallery/projection/ProjectionVideoController;->mConnectControl:Lcom/miui/gallery/projection/ConnectController;

    invoke-virtual {v6}, Lcom/miui/gallery/projection/ConnectController;->getDuration()I

    move-result v6

    int-to-long v2, v6

    .line 191
    .local v2, "duration":J
    int-to-long v6, p2

    mul-long/2addr v6, v2

    const-wide/16 v8, 0x64

    div-long v4, v6, v8

    .line 195
    .local v4, "newposition":J
    iget-object v6, p0, Lcom/miui/gallery/projection/ProjectionVideoController;->mConnectControl:Lcom/miui/gallery/projection/ConnectController;

    long-to-int v7, v4

    invoke-virtual {v6, v7}, Lcom/miui/gallery/projection/ConnectController;->seekTo(I)V

    .line 196
    iget-object v6, p0, Lcom/miui/gallery/projection/ProjectionVideoController;->mTvCurPos:Landroid/widget/TextView;

    if-eqz v6, :cond_0

    .line 197
    iget-object v6, p0, Lcom/miui/gallery/projection/ProjectionVideoController;->mTvCurPos:Landroid/widget/TextView;

    const-wide/16 v8, 0x3e8

    div-long v8, v4, v8

    invoke-static {v8, v9}, Lcom/miui/gallery/util/FormatUtil;->formatVideoDuration(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 203
    iget-object v0, p0, Lcom/miui/gallery/projection/ProjectionVideoController;->mSbSeek:Landroid/widget/SeekBar;

    if-ne p1, v0, :cond_0

    .line 204
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/projection/ProjectionVideoController;->mDragging:Z

    .line 205
    iget-object v0, p0, Lcom/miui/gallery/projection/ProjectionVideoController;->mConnectControl:Lcom/miui/gallery/projection/ConnectController;

    invoke-virtual {v0}, Lcom/miui/gallery/projection/ConnectController;->pause()V

    .line 206
    invoke-virtual {p0}, Lcom/miui/gallery/projection/ProjectionVideoController;->updateStatus()V

    .line 208
    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 212
    iget-object v0, p0, Lcom/miui/gallery/projection/ProjectionVideoController;->mSbSeek:Landroid/widget/SeekBar;

    if-ne p1, v0, :cond_0

    .line 213
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/projection/ProjectionVideoController;->mDragging:Z

    .line 214
    iget-object v0, p0, Lcom/miui/gallery/projection/ProjectionVideoController;->mConnectControl:Lcom/miui/gallery/projection/ConnectController;

    invoke-virtual {v0}, Lcom/miui/gallery/projection/ConnectController;->resume()V

    .line 215
    invoke-virtual {p0}, Lcom/miui/gallery/projection/ProjectionVideoController;->updateStatus()V

    .line 217
    :cond_0
    return-void
.end method

.method public onStopped()V
    .locals 0

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/miui/gallery/projection/ProjectionVideoController;->updateStatus()V

    .line 232
    invoke-virtual {p0}, Lcom/miui/gallery/projection/ProjectionVideoController;->stopPlay()V

    .line 233
    return-void
.end method

.method public setOnFinishListener(Lcom/miui/gallery/projection/ProjectionVideoController$OnFinishListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/miui/gallery/projection/ProjectionVideoController$OnFinishListener;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/miui/gallery/projection/ProjectionVideoController;->mFinishListener:Lcom/miui/gallery/projection/ProjectionVideoController$OnFinishListener;

    .line 80
    return-void
.end method

.method public startPlay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "deviceName"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x64

    .line 124
    invoke-virtual {p0}, Lcom/miui/gallery/projection/ProjectionVideoController;->clearStatus()V

    .line 125
    iget-object v0, p0, Lcom/miui/gallery/projection/ProjectionVideoController;->mConnectControl:Lcom/miui/gallery/projection/ConnectController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/gallery/projection/ConnectController;->playVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/miui/gallery/projection/ProjectionVideoController;->mConnectControl:Lcom/miui/gallery/projection/ConnectController;

    invoke-virtual {v0}, Lcom/miui/gallery/projection/ConnectController;->resume()V

    .line 127
    iget-object v0, p0, Lcom/miui/gallery/projection/ProjectionVideoController;->mConnectControl:Lcom/miui/gallery/projection/ConnectController;

    invoke-virtual {v0, p0}, Lcom/miui/gallery/projection/ConnectController;->registMediaPlayListener(Lcom/miui/gallery/projection/ConnectController$MediaPlayListener;)V

    .line 128
    iget-object v0, p0, Lcom/miui/gallery/projection/ProjectionVideoController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 129
    iget-object v0, p0, Lcom/miui/gallery/projection/ProjectionVideoController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 130
    return-void
.end method

.method public stopPlay()V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/miui/gallery/projection/ProjectionVideoController;->mConnectControl:Lcom/miui/gallery/projection/ConnectController;

    invoke-virtual {v0}, Lcom/miui/gallery/projection/ConnectController;->stop()V

    .line 140
    invoke-virtual {p0}, Lcom/miui/gallery/projection/ProjectionVideoController;->clearStatus()V

    .line 141
    iget-object v0, p0, Lcom/miui/gallery/projection/ProjectionVideoController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 142
    iget-object v0, p0, Lcom/miui/gallery/projection/ProjectionVideoController;->mFinishListener:Lcom/miui/gallery/projection/ProjectionVideoController$OnFinishListener;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/miui/gallery/projection/ProjectionVideoController;->mFinishListener:Lcom/miui/gallery/projection/ProjectionVideoController$OnFinishListener;

    invoke-interface {v0}, Lcom/miui/gallery/projection/ProjectionVideoController$OnFinishListener;->onFinish()V

    .line 145
    :cond_0
    return-void
.end method

.method public updateStatus()V
    .locals 3

    .prologue
    const/16 v2, 0x64

    .line 148
    iget-object v0, p0, Lcom/miui/gallery/projection/ProjectionVideoController;->mConnectControl:Lcom/miui/gallery/projection/ConnectController;

    invoke-virtual {v0}, Lcom/miui/gallery/projection/ConnectController;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/miui/gallery/projection/ProjectionVideoController;->mIvPause:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/miui/gallery/projection/ProjectionVideoController;->getPauseImageResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 150
    iget-object v0, p0, Lcom/miui/gallery/projection/ProjectionVideoController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 151
    iget-object v0, p0, Lcom/miui/gallery/projection/ProjectionVideoController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 156
    :goto_0
    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/projection/ProjectionVideoController;->mIvPause:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/miui/gallery/projection/ProjectionVideoController;->getPlayImageResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 154
    iget-object v0, p0, Lcom/miui/gallery/projection/ProjectionVideoController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method
