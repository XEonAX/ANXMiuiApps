.class public final Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;
.super Ljava/lang/Object;
.source "MediaControllerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlaybackInfo"
.end annotation


# instance fields
.field private final mAudioStream:I

.field private final mCurrentVolume:I

.field private final mMaxVolume:I

.field private final mPlaybackType:I

.field private final mVolumeControl:I


# direct methods
.method constructor <init>(IIIII)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "stream"    # I
    .param p3, "control"    # I
    .param p4, "max"    # I
    .param p5, "current"    # I

    .prologue
    .line 1293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1294
    iput p1, p0, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;->mPlaybackType:I

    .line 1295
    iput p2, p0, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;->mAudioStream:I

    .line 1296
    iput p3, p0, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;->mVolumeControl:I

    .line 1297
    iput p4, p0, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;->mMaxVolume:I

    .line 1298
    iput p5, p0, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;->mCurrentVolume:I

    .line 1299
    return-void
.end method
