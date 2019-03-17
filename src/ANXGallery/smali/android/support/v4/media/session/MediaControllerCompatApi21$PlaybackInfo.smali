.class public Landroid/support/v4/media/session/MediaControllerCompatApi21$PlaybackInfo;
.super Ljava/lang/Object;
.source "MediaControllerCompatApi21.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaControllerCompatApi21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlaybackInfo"
.end annotation


# direct methods
.method public static getAudioAttributes(Ljava/lang/Object;)Landroid/media/AudioAttributes;
    .locals 1
    .param p0, "volumeInfoObj"    # Ljava/lang/Object;

    .prologue
    .line 196
    check-cast p0, Landroid/media/session/MediaController$PlaybackInfo;

    .end local p0    # "volumeInfoObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/session/MediaController$PlaybackInfo;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v0

    return-object v0
.end method

.method public static getLegacyAudioStream(Ljava/lang/Object;)I
    .locals 2
    .param p0, "volumeInfoObj"    # Ljava/lang/Object;

    .prologue
    .line 200
    invoke-static {p0}, Landroid/support/v4/media/session/MediaControllerCompatApi21$PlaybackInfo;->getAudioAttributes(Ljava/lang/Object;)Landroid/media/AudioAttributes;

    move-result-object v0

    .line 201
    .local v0, "attrs":Landroid/media/AudioAttributes;
    invoke-static {v0}, Landroid/support/v4/media/session/MediaControllerCompatApi21$PlaybackInfo;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    move-result v1

    return v1
.end method

.method private static toLegacyStreamType(Landroid/media/AudioAttributes;)I
    .locals 4
    .param p0, "aa"    # Landroid/media/AudioAttributes;

    .prologue
    const/4 v2, 0x4

    const/4 v0, 0x3

    const/4 v1, 0x1

    .line 224
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v1, :cond_0

    .line 226
    const/4 v0, 0x7

    .line 257
    :goto_0
    :pswitch_0
    return v0

    .line 228
    :cond_0
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v2, :cond_1

    .line 229
    const/4 v0, 0x6

    goto :goto_0

    .line 233
    :cond_1
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 242
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 240
    goto :goto_0

    .line 244
    :pswitch_3
    const/16 v0, 0x8

    goto :goto_0

    :pswitch_4
    move v0, v2

    .line 246
    goto :goto_0

    .line 248
    :pswitch_5
    const/4 v0, 0x2

    goto :goto_0

    .line 254
    :pswitch_6
    const/4 v0, 0x5

    goto :goto_0

    .line 233
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
