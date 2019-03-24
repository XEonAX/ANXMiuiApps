.class public Lmiui/preference/VolumePreference$SeekBarVolumizer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/preference/VolumePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SeekBarVolumizer"
.end annotation


# static fields
.field private static final EQ:I = 0x0

.field private static final EU:I = 0x1

.field private static final EV:I = 0x2

.field private static final EW:I = 0x3e8


# instance fields
.field private EH:I

.field private EK:Landroid/media/AudioManager;

.field private EL:I

.field private EM:Landroid/media/Ringtone;

.field private EN:I

.field private EO:Landroid/widget/SeekBar;

.field private EP:I

.field private EX:Landroid/database/ContentObserver;

.field final synthetic EY:Lmiui/preference/VolumePreference;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lmiui/preference/VolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;I)V
    .locals 6

    .line 276
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lmiui/preference/VolumePreference$SeekBarVolumizer;-><init>(Lmiui/preference/VolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;ILandroid/net/Uri;)V

    .line 277
    return-void
.end method

.method public constructor <init>(Lmiui/preference/VolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;ILandroid/net/Uri;)V
    .locals 1

    .line 279
    iput-object p1, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->EY:Lmiui/preference/VolumePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    const/4 p1, -0x1

    iput p1, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->EN:I

    .line 257
    iput p1, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->EP:I

    .line 264
    new-instance p1, Lmiui/preference/VolumePreference$SeekBarVolumizer$1;

    iget-object v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, p0, v0}, Lmiui/preference/VolumePreference$SeekBarVolumizer$1;-><init>(Lmiui/preference/VolumePreference$SeekBarVolumizer;Landroid/os/Handler;)V

    iput-object p1, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->EX:Landroid/database/ContentObserver;

    .line 280
    iput-object p2, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    .line 281
    const-string p1, "audio"

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->EK:Landroid/media/AudioManager;

    .line 282
    iput p4, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->EH:I

    .line 283
    iput-object p3, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->EO:Landroid/widget/SeekBar;

    .line 285
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "VolumePreference.CallbackHandler"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 286
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 287
    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p2, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    .line 289
    invoke-direct {p0, p3, p5}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->a(Landroid/widget/SeekBar;Landroid/net/Uri;)V

    .line 290
    return-void
.end method

.method private a(Landroid/widget/SeekBar;Landroid/net/Uri;)V
    .locals 3

    .line 293
    iget-object v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->EK:Landroid/media/AudioManager;

    iget v1, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->EH:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 294
    iget-object v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->EK:Landroid/media/AudioManager;

    iget v1, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->EH:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->EL:I

    .line 295
    iget v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->EL:I

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 296
    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 298
    iget-object p1, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    iget v1, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->EH:I

    aget-object v0, v0, v1

    .line 299
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->EX:Landroid/database/ContentObserver;

    .line 298
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 302
    if-nez p2, :cond_2

    .line 303
    iget p1, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->EH:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    .line 304
    sget-object p2, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    goto :goto_0

    .line 305
    :cond_0
    iget p1, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->EH:I

    const/4 p2, 0x5

    if-ne p1, p2, :cond_1

    .line 306
    sget-object p2, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    goto :goto_0

    .line 308
    :cond_1
    sget-object p2, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    .line 312
    :cond_2
    :goto_0
    iget-object p1, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-static {p1, p2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object p1

    iput-object p1, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->EM:Landroid/media/Ringtone;

    .line 314
    iget-object p1, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->EM:Landroid/media/Ringtone;

    if-eqz p1, :cond_3

    .line 315
    iget-object p1, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->EM:Landroid/media/Ringtone;

    iget p2, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->EH:I

    invoke-virtual {p1, p2}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 317
    :cond_3
    return-void
.end method

.method static synthetic a(Lmiui/preference/VolumePreference$SeekBarVolumizer;)V
    .locals 0

    .line 245
    invoke-direct {p0}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->cQ()V

    return-void
.end method

.method static synthetic b(Lmiui/preference/VolumePreference$SeekBarVolumizer;)Landroid/widget/SeekBar;
    .locals 0

    .line 245
    iget-object p0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->EO:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static synthetic c(Lmiui/preference/VolumePreference$SeekBarVolumizer;)Landroid/media/AudioManager;
    .locals 0

    .line 245
    iget-object p0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->EK:Landroid/media/AudioManager;

    return-object p0
.end method

.method private cO()V
    .locals 4

    .line 338
    iget-object v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 339
    iget-object v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 340
    invoke-virtual {p0}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->isSamplePlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x3e8

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    .line 339
    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 341
    return-void
.end method

.method private cP()V
    .locals 1

    .line 344
    invoke-virtual {p0}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->isSamplePlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 345
    iget-object v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->EY:Lmiui/preference/VolumePreference;

    invoke-virtual {v0, p0}, Lmiui/preference/VolumePreference;->onSampleStarting(Lmiui/preference/VolumePreference$SeekBarVolumizer;)V

    .line 346
    iget-object v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->EM:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->EM:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    .line 350
    :cond_0
    return-void
.end method

.method private cQ()V
    .locals 3

    .line 354
    iget-object v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 355
    iget-object v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 356
    iget-object v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 357
    return-void
.end method

.method private cR()V
    .locals 1

    .line 360
    iget-object v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->EM:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->EM:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 363
    :cond_0
    return-void
.end method

.method static synthetic d(Lmiui/preference/VolumePreference$SeekBarVolumizer;)I
    .locals 0

    .line 245
    iget p0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->EH:I

    return p0
.end method


# virtual methods
.method R(I)V
    .locals 2

    .line 386
    iput p1, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->EN:I

    .line 387
    iget-object p1, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 388
    iget-object p1, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 389
    return-void
.end method

.method public changeVolumeBy(I)V
    .locals 1

    .line 415
    iget-object v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->EO:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->incrementProgressBy(I)V

    .line 416
    iget-object p1, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->EO:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    invoke-virtual {p0, p1}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->R(I)V

    .line 417
    invoke-direct {p0}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->cO()V

    .line 418
    const/4 p1, -0x1

    iput p1, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->EP:I

    .line 419
    return-void
.end method

.method public getSeekBar()Landroid/widget/SeekBar;
    .locals 1

    .line 411
    iget-object v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->EO:Landroid/widget/SeekBar;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .line 321
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 332
    const-string v0, "VolumePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid SeekBarVolumizer message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 329
    :pswitch_0
    invoke-direct {p0}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->cR()V

    .line 330
    goto :goto_0

    .line 326
    :pswitch_1
    invoke-direct {p0}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->cP()V

    .line 327
    goto :goto_0

    .line 323
    :pswitch_2
    iget-object p1, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->EK:Landroid/media/AudioManager;

    iget v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->EH:I

    iget v1, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->EN:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 324
    nop

    .line 334
    :goto_0
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isSamplePlaying()Z
    .locals 1

    .line 399
    iget-object v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->EM:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->EM:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public muteVolume()V
    .locals 3

    .line 422
    iget v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->EP:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 423
    iget-object v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->EO:Landroid/widget/SeekBar;

    iget v2, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->EP:I

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 424
    iget v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->EP:I

    invoke-virtual {p0, v0}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->R(I)V

    .line 425
    invoke-direct {p0}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->cO()V

    .line 426
    iput v1, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->EP:I

    goto :goto_0

    .line 428
    :cond_0
    iget-object v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->EO:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iput v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->EP:I

    .line 429
    iget-object v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->EO:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 430
    invoke-direct {p0}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->cQ()V

    .line 431
    invoke-virtual {p0, v1}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->R(I)V

    .line 433
    :goto_0
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 377
    if-nez p3, :cond_0

    .line 378
    return-void

    .line 381
    :cond_0
    invoke-virtual {p0, p2}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->R(I)V

    .line 382
    return-void
.end method

.method public onRestoreInstanceState(Lmiui/preference/VolumePreference$VolumeStore;)V
    .locals 2

    .line 443
    iget v0, p1, Lmiui/preference/VolumePreference$VolumeStore;->volume:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 444
    iget v0, p1, Lmiui/preference/VolumePreference$VolumeStore;->originalVolume:I

    iput v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->EL:I

    .line 445
    iget p1, p1, Lmiui/preference/VolumePreference$VolumeStore;->volume:I

    iput p1, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->EN:I

    .line 446
    iget p1, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->EN:I

    invoke-virtual {p0, p1}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->R(I)V

    .line 448
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Lmiui/preference/VolumePreference$VolumeStore;)V
    .locals 1

    .line 436
    iget v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->EN:I

    if-ltz v0, :cond_0

    .line 437
    iget v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->EN:I

    iput v0, p1, Lmiui/preference/VolumePreference$VolumeStore;->volume:I

    .line 438
    iget v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->EL:I

    iput v0, p1, Lmiui/preference/VolumePreference$VolumeStore;->originalVolume:I

    .line 440
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 392
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 395
    invoke-direct {p0}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->cO()V

    .line 396
    return-void
.end method

.method public revertVolume()V
    .locals 4

    .line 372
    iget-object v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->EK:Landroid/media/AudioManager;

    iget v1, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->EH:I

    iget v2, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->EL:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 373
    return-void
.end method

.method public startSample()V
    .locals 0

    .line 403
    invoke-direct {p0}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->cO()V

    .line 404
    return-void
.end method

.method public stop()V
    .locals 2

    .line 366
    invoke-direct {p0}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->cQ()V

    .line 367
    iget-object v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->EX:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 368
    iget-object v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->EO:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 369
    return-void
.end method

.method public stopSample()V
    .locals 0

    .line 407
    invoke-direct {p0}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->cQ()V

    .line 408
    return-void
.end method
