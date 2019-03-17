.class Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;
.super Ljava/lang/Object;
.source "PhotoPageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/PhotoPageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OrientationManager"
.end annotation


# instance fields
.field private isOrientationLocked:Z

.field private mAccelerometerRotationObserver:Landroid/database/ContentObserver;

.field private mCurUiOrientation:I

.field private mOrientationSensor:Lcom/miui/gallery/util/OrientationSensor;

.field private mSensorEnable:Z

.field private mSensorRotation:I

.field final synthetic this$0:Lcom/miui/gallery/ui/PhotoPageFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/PhotoPageFragment;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2236
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2230
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->mSensorRotation:I

    .line 2231
    iput v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->mCurUiOrientation:I

    .line 2232
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->mSensorEnable:Z

    .line 2233
    iput-boolean v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->isOrientationLocked:Z

    .line 2237
    invoke-virtual {p1}, Lcom/miui/gallery/ui/PhotoPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->mCurUiOrientation:I

    .line 2238
    new-instance v0, Lcom/miui/gallery/util/OrientationSensor;

    iget-object v1, p1, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-direct {v0, v1}, Lcom/miui/gallery/util/OrientationSensor;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->mOrientationSensor:Lcom/miui/gallery/util/OrientationSensor;

    .line 2239
    return-void
.end method

.method private disableAccelerometerRotationObserver()V
    .locals 2

    .prologue
    .line 2313
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->mAccelerometerRotationObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 2314
    const-string v0, "PhotoPageFragment"

    const-string v1, "disableAccelerometerRotationObserver"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2315
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/miui/gallery/activity/BaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->mAccelerometerRotationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2316
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->mAccelerometerRotationObserver:Landroid/database/ContentObserver;

    .line 2318
    :cond_0
    return-void
.end method

.method private disableOrientationSensor()V
    .locals 2

    .prologue
    .line 2290
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->mOrientationSensor:Lcom/miui/gallery/util/OrientationSensor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->mOrientationSensor:Lcom/miui/gallery/util/OrientationSensor;

    invoke-virtual {v0}, Lcom/miui/gallery/util/OrientationSensor;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2291
    const-string v0, "PhotoPageFragment"

    const-string v1, "disableOrientationSensor"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2292
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->mOrientationSensor:Lcom/miui/gallery/util/OrientationSensor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/util/OrientationSensor;->setOrientationChangedListener(Lcom/miui/gallery/util/OrientationSensor$OnOrientationChangedListener;)V

    .line 2293
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->mOrientationSensor:Lcom/miui/gallery/util/OrientationSensor;

    invoke-virtual {v0}, Lcom/miui/gallery/util/OrientationSensor;->disable()V

    .line 2295
    :cond_0
    return-void
.end method

.method private enableAccelerometerRotationObserver()V
    .locals 4

    .prologue
    .line 2298
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFragment;->isResumed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2310
    :cond_0
    :goto_0
    return-void

    .line 2301
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->mAccelerometerRotationObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 2302
    const-string v0, "PhotoPageFragment"

    const-string v1, "enableAccelerometerRotationObserver"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2303
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageFragment$AccelerometerRotationChangedListener;

    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/miui/gallery/ui/PhotoPageFragment$AccelerometerRotationChangedListener;-><init>(Landroid/os/Handler;Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->mAccelerometerRotationObserver:Landroid/database/ContentObserver;

    .line 2304
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/miui/gallery/activity/BaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    .line 2305
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->mAccelerometerRotationObserver:Landroid/database/ContentObserver;

    .line 2304
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method private enableOrientationSensor()V
    .locals 2

    .prologue
    .line 2279
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->mSensorEnable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFragment;->isResumed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2287
    :cond_0
    :goto_0
    return-void

    .line 2282
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->mOrientationSensor:Lcom/miui/gallery/util/OrientationSensor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->mOrientationSensor:Lcom/miui/gallery/util/OrientationSensor;

    invoke-virtual {v0}, Lcom/miui/gallery/util/OrientationSensor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2283
    const-string v0, "PhotoPageFragment"

    const-string v1, "enableOrientationSensor"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2284
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->mOrientationSensor:Lcom/miui/gallery/util/OrientationSensor;

    new-instance v1, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationChangedListener;

    invoke-direct {v1, p0}, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationChangedListener;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/util/OrientationSensor;->setOrientationChangedListener(Lcom/miui/gallery/util/OrientationSensor$OnOrientationChangedListener;)V

    .line 2285
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->mOrientationSensor:Lcom/miui/gallery/util/OrientationSensor;

    invoke-virtual {v0}, Lcom/miui/gallery/util/OrientationSensor;->enable()V

    goto :goto_0
.end method

.method private getScreenOrientation(I)I
    .locals 1
    .param p1, "rotation"    # I

    .prologue
    .line 2259
    packed-switch p1, :pswitch_data_0

    .line 2269
    const/4 v0, 0x2

    :goto_0
    return v0

    .line 2261
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 2263
    :pswitch_1
    const/16 v0, 0x9

    goto :goto_0

    .line 2265
    :pswitch_2
    const/4 v0, 0x0

    goto :goto_0

    .line 2267
    :pswitch_3
    const/16 v0, 0x8

    goto :goto_0

    .line 2259
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private lock()V
    .locals 4

    .prologue
    .line 2377
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v2, v2, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Lcom/miui/gallery/activity/BaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 2378
    .local v1, "uiRotation":I
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v2, v2, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-direct {p0, v1}, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->getScreenOrientation(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/miui/gallery/activity/BaseActivity;->setRequestedOrientation(I)V

    .line 2379
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->isOrientationLocked:Z

    .line 2381
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2382
    .local v0, "map":Ljava/util/Map;
    const-string v2, "lock"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2383
    const-string v2, "photo"

    const-string v3, "orientation_lock_by_accelerometer"

    invoke-static {v2, v3, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 2387
    return-void
.end method

.method private unlock()V
    .locals 3

    .prologue
    .line 2390
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/miui/gallery/activity/BaseActivity;->setRequestedOrientation(I)V

    .line 2391
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->isOrientationLocked:Z

    .line 2393
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2394
    .local v0, "map":Ljava/util/Map;
    const-string/jumbo v1, "unlock"

    iget v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->mSensorRotation:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2395
    const-string v1, "photo"

    const-string v2, "orientation_lock_by_accelerometer"

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 2399
    return-void
.end method


# virtual methods
.method onAccelerometerRotationChanged()V
    .locals 4

    .prologue
    .line 2242
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    if-nez v1, :cond_0

    .line 2243
    const-string v1, "PhotoPageFragment"

    const-string v2, "activity has detached AccelerometerRotationChanged"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2256
    :goto_0
    return-void

    .line 2246
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    .line 2247
    invoke-virtual {v1}, Lcom/miui/gallery/activity/BaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accelerometer_rotation"

    const/4 v3, 0x0

    .line 2246
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2250
    .local v0, "accelerometerRotation":I
    const-string v1, "PhotoPageFragment"

    const-string v2, "onAccelerometerRotationChanged %d"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2251
    if-nez v0, :cond_1

    .line 2252
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->lock()V

    goto :goto_0

    .line 2254
    :cond_1
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->unlock()V

    goto :goto_0
.end method

.method onSensorOrientationChanged(II)V
    .locals 4
    .param p1, "last"    # I
    .param p2, "cur"    # I

    .prologue
    .line 2360
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    if-nez v0, :cond_0

    .line 2361
    const-string v0, "PhotoPageFragment"

    const-string v1, "activity has detached onOrientationChanged oldOrientation %d, newOrientation %d"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2366
    :goto_0
    return-void

    .line 2364
    :cond_0
    invoke-static {p2}, Lcom/miui/gallery/util/OrientationSensor;->transfer2SurfaceRotation(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->mSensorRotation:I

    .line 2365
    const-string v0, "PhotoPageFragment"

    const-string v1, "onSensorOrientationChanged old %s, new %s"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method onUiOrientationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 2370
    iget v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->mCurUiOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 2371
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->mCurUiOrientation:I

    .line 2373
    :cond_0
    return-void
.end method

.method pause()V
    .locals 0

    .prologue
    .line 2354
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->disableOrientationSensor()V

    .line 2355
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->disableAccelerometerRotationObserver()V

    .line 2356
    return-void
.end method

.method release()V
    .locals 0

    .prologue
    .line 2274
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->disableOrientationSensor()V

    .line 2275
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->disableAccelerometerRotationObserver()V

    .line 2276
    return-void
.end method

.method resume()V
    .locals 1

    .prologue
    .line 2348
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->enableOrientationSensor()V

    .line 2349
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->enableAccelerometerRotationObserver()V

    .line 2350
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->tryRestoreOrientation(Z)V

    .line 2351
    return-void
.end method

.method setSensorEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 2321
    iput-boolean p1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->mSensorEnable:Z

    .line 2323
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2324
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->mSensorEnable:Z

    if-eqz v0, :cond_1

    .line 2325
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->enableOrientationSensor()V

    .line 2330
    :cond_0
    :goto_0
    return-void

    .line 2327
    :cond_1
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->disableOrientationSensor()V

    goto :goto_0
.end method

.method public settleItem(Lcom/miui/gallery/model/BaseDataItem;)V
    .locals 1
    .param p1, "item"    # Lcom/miui/gallery/model/BaseDataItem;

    .prologue
    .line 2402
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/gallery/model/BaseDataItem;->isVideo()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->setSensorEnable(Z)V

    .line 2403
    return-void

    .line 2402
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method tryRestoreOrientation(Z)V
    .locals 3
    .param p1, "onResume"    # Z

    .prologue
    const/4 v0, 0x0

    .line 2333
    if-eqz p1, :cond_1

    .line 2335
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$4100(Lcom/miui/gallery/ui/PhotoPageFragment;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    .line 2336
    invoke-virtual {v1}, Lcom/miui/gallery/activity/BaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accelerometer_rotation"

    .line 2335
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->isOrientationLocked:Z

    .line 2340
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v1, v0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->isOrientationLocked:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    :goto_0
    invoke-virtual {v1, v0}, Lcom/miui/gallery/activity/BaseActivity;->setRequestedOrientation(I)V

    .line 2345
    return-void

    .line 2340
    :cond_2
    const/4 v0, 0x4

    goto :goto_0
.end method
