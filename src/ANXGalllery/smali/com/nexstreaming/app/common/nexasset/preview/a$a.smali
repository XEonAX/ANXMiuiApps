.class Lcom/nexstreaming/app/common/nexasset/preview/a$a;
.super Ljava/lang/Object;
.source "AssetPreviewView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nexstreaming/app/common/nexasset/preview/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/nexstreaming/app/common/nexasset/preview/a;


# direct methods
.method private constructor <init>(Lcom/nexstreaming/app/common/nexasset/preview/a;)V
    .locals 0

    .prologue
    .line 284
    iput-object p1, p0, Lcom/nexstreaming/app/common/nexasset/preview/a$a;->a:Lcom/nexstreaming/app/common/nexasset/preview/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nexstreaming/app/common/nexasset/preview/a;Lcom/nexstreaming/app/common/nexasset/preview/a$1;)V
    .locals 0

    .prologue
    .line 284
    invoke-direct {p0, p1}, Lcom/nexstreaming/app/common/nexasset/preview/a$a;-><init>(Lcom/nexstreaming/app/common/nexasset/preview/a;)V

    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 18

    .prologue
    .line 288
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nexstreaming/app/common/nexasset/preview/a$a;->a:Lcom/nexstreaming/app/common/nexasset/preview/a;

    invoke-static {}, Lcom/nexstreaming/app/common/nexasset/preview/a;->access$200()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/nexstreaming/app/common/nexasset/preview/a;->access$102(Lcom/nexstreaming/app/common/nexasset/preview/a;J)J

    .line 290
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nexstreaming/app/common/nexasset/preview/a$a;->a:Lcom/nexstreaming/app/common/nexasset/preview/a;

    invoke-static {v2}, Lcom/nexstreaming/app/common/nexasset/preview/a;->access$300(Lcom/nexstreaming/app/common/nexasset/preview/a;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 291
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nexstreaming/app/common/nexasset/preview/a$a;->a:Lcom/nexstreaming/app/common/nexasset/preview/a;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nexstreaming/app/common/nexasset/preview/a$a;->a:Lcom/nexstreaming/app/common/nexasset/preview/a;

    invoke-static {v3}, Lcom/nexstreaming/app/common/nexasset/preview/a;->access$100(Lcom/nexstreaming/app/common/nexasset/preview/a;)J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/nexstreaming/app/common/nexasset/preview/a;->access$302(Lcom/nexstreaming/app/common/nexasset/preview/a;J)J

    .line 294
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nexstreaming/app/common/nexasset/preview/a$a;->a:Lcom/nexstreaming/app/common/nexasset/preview/a;

    invoke-static {v2}, Lcom/nexstreaming/app/common/nexasset/preview/a;->access$100(Lcom/nexstreaming/app/common/nexasset/preview/a;)J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nexstreaming/app/common/nexasset/preview/a$a;->a:Lcom/nexstreaming/app/common/nexasset/preview/a;

    invoke-static {v4}, Lcom/nexstreaming/app/common/nexasset/preview/a;->access$300(Lcom/nexstreaming/app/common/nexasset/preview/a;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 298
    const-wide/16 v4, 0x21

    sub-long v2, v4, v2

    const-wide/16 v4, 0x5

    sub-long/2addr v2, v4

    .line 299
    const-wide/16 v4, 0x5

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    .line 301
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nexstreaming/app/common/nexasset/preview/a$a;->a:Lcom/nexstreaming/app/common/nexasset/preview/a;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nexstreaming/app/common/nexasset/preview/a$a;->a:Lcom/nexstreaming/app/common/nexasset/preview/a;

    invoke-static {v3}, Lcom/nexstreaming/app/common/nexasset/preview/a;->access$300(Lcom/nexstreaming/app/common/nexasset/preview/a;)J

    move-result-wide v4

    const-wide/16 v6, 0x21

    add-long/2addr v4, v6

    invoke-static {v2, v4, v5}, Lcom/nexstreaming/app/common/nexasset/preview/a;->access$302(Lcom/nexstreaming/app/common/nexasset/preview/a;J)J

    .line 308
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nexstreaming/app/common/nexasset/preview/a$a;->a:Lcom/nexstreaming/app/common/nexasset/preview/a;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nexstreaming/app/common/nexasset/preview/a$a;->a:Lcom/nexstreaming/app/common/nexasset/preview/a;

    invoke-static {v3}, Lcom/nexstreaming/app/common/nexasset/preview/a;->access$400(Lcom/nexstreaming/app/common/nexasset/preview/a;)F

    move-result v3

    const v4, 0x3ba3d70a    # 0.005f

    add-float/2addr v3, v4

    invoke-static {v2, v3}, Lcom/nexstreaming/app/common/nexasset/preview/a;->access$402(Lcom/nexstreaming/app/common/nexasset/preview/a;F)F

    .line 309
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nexstreaming/app/common/nexasset/preview/a$a;->a:Lcom/nexstreaming/app/common/nexasset/preview/a;

    invoke-static {v2}, Lcom/nexstreaming/app/common/nexasset/preview/a;->access$400(Lcom/nexstreaming/app/common/nexasset/preview/a;)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 310
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nexstreaming/app/common/nexasset/preview/a$a;->a:Lcom/nexstreaming/app/common/nexasset/preview/a;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/nexstreaming/app/common/nexasset/preview/a;->access$402(Lcom/nexstreaming/app/common/nexasset/preview/a;F)F

    .line 311
    :cond_2
    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3e4ccccd    # 0.2f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nexstreaming/app/common/nexasset/preview/a$a;->a:Lcom/nexstreaming/app/common/nexasset/preview/a;

    invoke-static {v4}, Lcom/nexstreaming/app/common/nexasset/preview/a;->access$400(Lcom/nexstreaming/app/common/nexasset/preview/a;)F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    .line 312
    const/16 v2, 0x4100

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    .line 318
    const-wide/16 v4, -0x1

    .line 320
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nexstreaming/app/common/nexasset/preview/a$a;->a:Lcom/nexstreaming/app/common/nexasset/preview/a;

    invoke-static {v2}, Lcom/nexstreaming/app/common/nexasset/preview/a;->access$500(Lcom/nexstreaming/app/common/nexasset/preview/a;)J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-nez v2, :cond_c

    .line 321
    const/4 v2, 0x0

    move-wide v12, v4

    .line 331
    :goto_1
    const/4 v3, 0x0

    .line 332
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nexstreaming/app/common/nexasset/preview/a$a;->a:Lcom/nexstreaming/app/common/nexasset/preview/a;

    invoke-static {v4}, Lcom/nexstreaming/app/common/nexasset/preview/a;->access$900(Lcom/nexstreaming/app/common/nexasset/preview/a;)Z

    move-result v4

    if-eq v2, v4, :cond_f

    .line 333
    const/4 v3, 0x1

    .line 334
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nexstreaming/app/common/nexasset/preview/a$a;->a:Lcom/nexstreaming/app/common/nexasset/preview/a;

    invoke-static {v4, v2}, Lcom/nexstreaming/app/common/nexasset/preview/a;->access$902(Lcom/nexstreaming/app/common/nexasset/preview/a;Z)Z

    .line 335
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nexstreaming/app/common/nexasset/preview/a$a;->a:Lcom/nexstreaming/app/common/nexasset/preview/a;

    invoke-static {v2}, Lcom/nexstreaming/app/common/nexasset/preview/a;->access$900(Lcom/nexstreaming/app/common/nexasset/preview/a;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 336
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nexstreaming/app/common/nexasset/preview/a$a;->a:Lcom/nexstreaming/app/common/nexasset/preview/a;

    invoke-static {v2}, Lcom/nexstreaming/app/common/nexasset/preview/a;->access$1000(Lcom/nexstreaming/app/common/nexasset/preview/a;)Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeRenderer;

    move-result-object v2

    const-string v4, "placeholder2.jpg"

    const-string v5, "placeholder1.jpg"

    invoke-virtual {v2, v4, v5}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeRenderer;->setPlaceholders(Ljava/lang/String;Ljava/lang/String;)V

    move v11, v3

    .line 341
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nexstreaming/app/common/nexasset/preview/a$a;->a:Lcom/nexstreaming/app/common/nexasset/preview/a;

    invoke-static {v2}, Lcom/nexstreaming/app/common/nexasset/preview/a;->access$1100(Lcom/nexstreaming/app/common/nexasset/preview/a;)Ljava/lang/Object;

    move-result-object v14

    monitor-enter v14

    .line 342
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nexstreaming/app/common/nexasset/preview/a$a;->a:Lcom/nexstreaming/app/common/nexasset/preview/a;

    invoke-static {v2}, Lcom/nexstreaming/app/common/nexasset/preview/a;->access$1000(Lcom/nexstreaming/app/common/nexasset/preview/a;)Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeRenderer;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 343
    const/4 v3, 0x0

    .line 344
    const/4 v2, 0x0

    .line 345
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nexstreaming/app/common/nexasset/preview/a$a;->a:Lcom/nexstreaming/app/common/nexasset/preview/a;

    invoke-static {v4}, Lcom/nexstreaming/app/common/nexasset/preview/a;->access$1200(Lcom/nexstreaming/app/common/nexasset/preview/a;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nexstreaming/app/common/nexasset/preview/a$a;->a:Lcom/nexstreaming/app/common/nexasset/preview/a;

    invoke-static {v5}, Lcom/nexstreaming/app/common/nexasset/preview/a;->access$1300(Lcom/nexstreaming/app/common/nexasset/preview/a;)Ljava/lang/String;

    move-result-object v5

    if-eq v4, v5, :cond_3

    .line 346
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nexstreaming/app/common/nexasset/preview/a$a;->a:Lcom/nexstreaming/app/common/nexasset/preview/a;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nexstreaming/app/common/nexasset/preview/a$a;->a:Lcom/nexstreaming/app/common/nexasset/preview/a;

    invoke-static {v4}, Lcom/nexstreaming/app/common/nexasset/preview/a;->access$1200(Lcom/nexstreaming/app/common/nexasset/preview/a;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/nexstreaming/app/common/nexasset/preview/a;->access$1302(Lcom/nexstreaming/app/common/nexasset/preview/a;Ljava/lang/String;)Ljava/lang/String;

    .line 347
    const/4 v2, 0x1

    .line 349
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nexstreaming/app/common/nexasset/preview/a$a;->a:Lcom/nexstreaming/app/common/nexasset/preview/a;

    invoke-static {v4}, Lcom/nexstreaming/app/common/nexasset/preview/a;->access$1400(Lcom/nexstreaming/app/common/nexasset/preview/a;)Lcom/nexstreaming/app/common/nexasset/assetpackage/f;

    move-result-object v4

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nexstreaming/app/common/nexasset/preview/a$a;->a:Lcom/nexstreaming/app/common/nexasset/preview/a;

    invoke-static {v4}, Lcom/nexstreaming/app/common/nexasset/preview/a;->access$1400(Lcom/nexstreaming/app/common/nexasset/preview/a;)Lcom/nexstreaming/app/common/nexasset/assetpackage/f;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nexstreaming/app/common/nexasset/preview/a$a;->a:Lcom/nexstreaming/app/common/nexasset/preview/a;

    invoke-static {v5}, Lcom/nexstreaming/app/common/nexasset/preview/a;->access$1500(Lcom/nexstreaming/app/common/nexasset/preview/a;)Lcom/nexstreaming/app/common/nexasset/assetpackage/f;

    move-result-object v5

    if-eq v4, v5, :cond_4

    .line 350
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nexstreaming/app/common/nexasset/preview/a$a;->a:Lcom/nexstreaming/app/common/nexasset/preview/a;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nexstreaming/app/common/nexasset/preview/a$a;->a:Lcom/nexstreaming/app/common/nexasset/preview/a;

    invoke-static {v4}, Lcom/nexstreaming/app/common/nexasset/preview/a;->access$1400(Lcom/nexstreaming/app/common/nexasset/preview/a;)Lcom/nexstreaming/app/common/nexasset/assetpackage/f;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/nexstreaming/app/common/nexasset/preview/a;->access$1502(Lcom/nexstreaming/app/common/nexasset/preview/a;Lcom/nexstreaming/app/common/nexasset/assetpackage/f;)Lcom/nexstreaming/app/common/nexasset/assetpackage/f;

    .line 351
    const/4 v3, 0x1

    .line 353
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nexstreaming/app/common/nexasset/preview/a$a;->a:Lcom/nexstreaming/app/common/nexasset/preview/a;

    invoke-static {v4}, Lcom/nexstreaming/app/common/nexasset/preview/a;->access$1600(Lcom/nexstreaming/app/common/nexasset/preview/a;)J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nexstreaming/app/common/nexasset/preview/a$a;->a:Lcom/nexstreaming/app/common/nexasset/preview/a;

    invoke-static {v6}, Lcom/nexstreaming/app/common/nexasset/preview/a;->access$500(Lcom/nexstreaming/app/common/nexasset/preview/a;)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_5

    .line 354
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nexstreaming/app/common/nexasset/preview/a$a;->a:Lcom/nexstreaming/app/common/nexasset/preview/a;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nexstreaming/app/common/nexasset/preview/a$a;->a:Lcom/nexstreaming/app/common/nexasset/preview/a;

    invoke-static {v4}, Lcom/nexstreaming/app/common/nexasset/preview/a;->access$500(Lcom/nexstreaming/app/common/nexasset/preview/a;)J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/nexstreaming/app/common/nexasset/preview/a;->access$1602(Lcom/nexstreaming/app/common/nexasset/preview/a;J)J

    .line 355
    const/4 v2, 0x1

    .line 359
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nexstreaming/app/common/nexasset/preview/a$a;->a:Lcom/nexstreaming/app/common/nexasset/preview/a;

    invoke-static {v4}, Lcom/nexstreaming/app/common/nexasset/preview/a;->access$1700(Lcom/nexstreaming/app/common/nexasset/preview/a;)Lcom/nexstreaming/app/common/nexasset/assetpackage/c;

    move-result-object v4

    if-eqz v4, :cond_8

    if-nez v2, :cond_6

    if-eqz v3, :cond_8

    .line 360
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nexstreaming/app/common/nexasset/preview/a$a;->a:Lcom/nexstreaming/app/common/nexasset/preview/a;

    invoke-static {v2}, Lcom/nexstreaming/app/common/nexasset/preview/a;->access$1000(Lcom/nexstreaming/app/common/nexasset/preview/a;)Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeRenderer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeRenderer;->clearClipEffect()V

    .line 361
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nexstreaming/app/common/nexasset/preview/a$a;->a:Lcom/nexstreaming/app/common/nexasset/preview/a;

    invoke-static {v2}, Lcom/nexstreaming/app/common/nexasset/preview/a;->access$1000(Lcom/nexstreaming/app/common/nexasset/preview/a;)Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeRenderer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeRenderer;->clearTransitionEffect()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 362
    if-eqz v3, :cond_7

    .line 363
    const/4 v3, 0x0

    .line 365
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nexstreaming/app/common/nexasset/preview/a$a;->a:Lcom/nexstreaming/app/common/nexasset/preview/a;

    invoke-static {v2}, Lcom/nexstreaming/app/common/nexasset/preview/a;->access$1800(Lcom/nexstreaming/app/common/nexasset/preview/a;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 366
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nexstreaming/app/common/nexasset/preview/a$a;->a:Lcom/nexstreaming/app/common/nexasset/preview/a;

    invoke-static {v2}, Lcom/nexstreaming/app/common/nexasset/preview/a;->access$1700(Lcom/nexstreaming/app/common/nexasset/preview/a;)Lcom/nexstreaming/app/common/nexasset/assetpackage/c;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nexstreaming/app/common/nexasset/preview/a$a;->a:Lcom/nexstreaming/app/common/nexasset/preview/a;

    invoke-static {v4}, Lcom/nexstreaming/app/common/nexasset/preview/a;->access$1400(Lcom/nexstreaming/app/common/nexasset/preview/a;)Lcom/nexstreaming/app/common/nexasset/assetpackage/f;

    move-result-object v4

    invoke-interface {v4}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->a(Ljava/lang/Iterable;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    .line 375
    :goto_3
    :try_start_3
    const-string v3, "EffectPreviewView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " m_isRenderItem="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nexstreaming/app/common/nexasset/preview/a$a;->a:Lcom/nexstreaming/app/common/nexasset/preview/a;

    invoke-static {v5}, Lcom/nexstreaming/app/common/nexasset/preview/a;->access$1800(Lcom/nexstreaming/app/common/nexasset/preview/a;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",m_isClipEffect="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nexstreaming/app/common/nexasset/preview/a$a;->a:Lcom/nexstreaming/app/common/nexasset/preview/a;

    invoke-static {v5}, Lcom/nexstreaming/app/common/nexasset/preview/a;->access$800(Lcom/nexstreaming/app/common/nexasset/preview/a;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    if-eqz v2, :cond_7

    .line 377
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nexstreaming/app/common/nexasset/preview/a$a;->a:Lcom/nexstreaming/app/common/nexasset/preview/a;

    invoke-static {v3}, Lcom/nexstreaming/app/common/nexasset/preview/a;->access$1800(Lcom/nexstreaming/app/common/nexasset/preview/a;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 378
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nexstreaming/app/common/nexasset/preview/a$a;->a:Lcom/nexstreaming/app/common/nexasset/preview/a;

    invoke-static {v3}, Lcom/nexstreaming/app/common/nexasset/preview/a;->access$1000(Lcom/nexstreaming/app/common/nexasset/preview/a;)Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeRenderer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeRenderer;->clearRenderItems()I

    .line 379
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nexstreaming/app/common/nexasset/preview/a$a;->a:Lcom/nexstreaming/app/common/nexasset/preview/a;

    invoke-static {v3}, Lcom/nexstreaming/app/common/nexasset/preview/a;->access$1000(Lcom/nexstreaming/app/common/nexasset/preview/a;)Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeRenderer;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nexstreaming/app/common/nexasset/preview/a$a;->a:Lcom/nexstreaming/app/common/nexasset/preview/a;

    invoke-static {v4}, Lcom/nexstreaming/app/common/nexasset/preview/a;->access$1400(Lcom/nexstreaming/app/common/nexasset/preview/a;)Lcom/nexstreaming/app/common/nexasset/assetpackage/f;

    move-result-object v4

    invoke-interface {v4}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeRenderer;->loadRenderItem(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :cond_7
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nexstreaming/app/common/nexasset/preview/a$a;->a:Lcom/nexstreaming/app/common/nexasset/preview/a;

    invoke-static {v2}, Lcom/nexstreaming/app/common/nexasset/preview/a;->access$1400(Lcom/nexstreaming/app/common/nexasset/preview/a;)Lcom/nexstreaming/app/common/nexasset/assetpackage/f;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 386
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nexstreaming/app/common/nexasset/preview/a$a;->a:Lcom/nexstreaming/app/common/nexasset/preview/a;

    invoke-static {v2}, Lcom/nexstreaming/app/common/nexasset/preview/a;->access$800(Lcom/nexstreaming/app/common/nexasset/preview/a;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 387
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nexstreaming/app/common/nexasset/preview/a$a;->a:Lcom/nexstreaming/app/common/nexasset/preview/a;

    invoke-static {v2}, Lcom/nexstreaming/app/common/nexasset/preview/a;->access$1000(Lcom/nexstreaming/app/common/nexasset/preview/a;)Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeRenderer;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nexstreaming/app/common/nexasset/preview/a$a;->a:Lcom/nexstreaming/app/common/nexasset/preview/a;

    invoke-static {v3}, Lcom/nexstreaming/app/common/nexasset/preview/a;->access$1400(Lcom/nexstreaming/app/common/nexasset/preview/a;)Lcom/nexstreaming/app/common/nexasset/assetpackage/f;

    move-result-object v3

    invoke-interface {v3}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getId()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nexstreaming/app/common/nexasset/preview/a$a;->a:Lcom/nexstreaming/app/common/nexasset/preview/a;

    invoke-static {v4}, Lcom/nexstreaming/app/common/nexasset/preview/a;->access$1200(Lcom/nexstreaming/app/common/nexasset/preview/a;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/nexstreaming/app/common/nexasset/preview/a$a;->a:Lcom/nexstreaming/app/common/nexasset/preview/a;

    invoke-static {v8}, Lcom/nexstreaming/app/common/nexasset/preview/a;->access$500(Lcom/nexstreaming/app/common/nexasset/preview/a;)J

    move-result-wide v8

    long-to-int v8, v8

    add-int/lit8 v8, v8, 0x64

    const/16 v9, 0x32

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/nexstreaming/app/common/nexasset/preview/a$a;->a:Lcom/nexstreaming/app/common/nexasset/preview/a;

    invoke-static {v10}, Lcom/nexstreaming/app/common/nexasset/preview/a;->access$500(Lcom/nexstreaming/app/common/nexasset/preview/a;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v10, v0

    add-int/lit8 v10, v10, 0x32

    invoke-virtual/range {v2 .. v10}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeRenderer;->setClipEffect(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 396
    :cond_8
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nexstreaming/app/common/nexasset/preview/a$a;->a:Lcom/nexstreaming/app/common/nexasset/preview/a;

    invoke-static {v2}, Lcom/nexstreaming/app/common/nexasset/preview/a;->access$1000(Lcom/nexstreaming/app/common/nexasset/preview/a;)Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeRenderer;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nexstreaming/app/common/nexasset/preview/a$a;->a:Lcom/nexstreaming/app/common/nexasset/preview/a;

    invoke-static {v2}, Lcom/nexstreaming/app/common/nexasset/preview/a;->access$600(Lcom/nexstreaming/app/common/nexasset/preview/a;)J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nexstreaming/app/common/nexasset/preview/a$a;->a:Lcom/nexstreaming/app/common/nexasset/preview/a;

    invoke-static {v2}, Lcom/nexstreaming/app/common/nexasset/preview/a;->access$500(Lcom/nexstreaming/app/common/nexasset/preview/a;)J

    move-result-wide v6

    add-long/2addr v4, v6

    rem-long v4, v12, v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nexstreaming/app/common/nexasset/preview/a$a;->a:Lcom/nexstreaming/app/common/nexasset/preview/a;

    invoke-static {v2}, Lcom/nexstreaming/app/common/nexasset/preview/a;->access$500(Lcom/nexstreaming/app/common/nexasset/preview/a;)J

    move-result-wide v6

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nexstreaming/app/common/nexasset/preview/a$a;->a:Lcom/nexstreaming/app/common/nexasset/preview/a;

    invoke-static {v2}, Lcom/nexstreaming/app/common/nexasset/preview/a;->access$800(Lcom/nexstreaming/app/common/nexasset/preview/a;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/16 v2, 0x32

    :goto_6
    add-int/2addr v2, v4

    invoke-virtual {v3, v2}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeRenderer;->setCTS(I)V

    .line 397
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nexstreaming/app/common/nexasset/preview/a$a;->a:Lcom/nexstreaming/app/common/nexasset/preview/a;

    invoke-static {v2}, Lcom/nexstreaming/app/common/nexasset/preview/a;->access$1000(Lcom/nexstreaming/app/common/nexasset/preview/a;)Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeRenderer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeRenderer;->render()V

    .line 404
    :cond_9
    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 405
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nexstreaming/app/common/nexasset/preview/a$a;->a:Lcom/nexstreaming/app/common/nexasset/preview/a;

    invoke-static {v2}, Lcom/nexstreaming/app/common/nexasset/preview/a;->access$1900(Lcom/nexstreaming/app/common/nexasset/preview/a;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 406
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nexstreaming/app/common/nexasset/preview/a$a;->a:Lcom/nexstreaming/app/common/nexasset/preview/a;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/nexstreaming/app/common/nexasset/preview/a;->access$1902(Lcom/nexstreaming/app/common/nexasset/preview/a;Z)Z

    .line 407
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nexstreaming/app/common/nexasset/preview/a$a;->a:Lcom/nexstreaming/app/common/nexasset/preview/a;

    invoke-static {v2}, Lcom/nexstreaming/app/common/nexasset/preview/a;->access$2000(Lcom/nexstreaming/app/common/nexasset/preview/a;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/nexstreaming/app/common/nexasset/preview/a$a$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/nexstreaming/app/common/nexasset/preview/a$a$1;-><init>(Lcom/nexstreaming/app/common/nexasset/preview/a$a;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 414
    :cond_a
    if-eqz v11, :cond_b

    .line 415
    invoke-static {}, Lcom/nexstreaming/app/common/nexasset/preview/a;->access$200()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nexstreaming/app/common/nexasset/preview/a$a;->a:Lcom/nexstreaming/app/common/nexasset/preview/a;

    invoke-static {v4}, Lcom/nexstreaming/app/common/nexasset/preview/a;->access$100(Lcom/nexstreaming/app/common/nexasset/preview/a;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 417
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nexstreaming/app/common/nexasset/preview/a$a;->a:Lcom/nexstreaming/app/common/nexasset/preview/a;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nexstreaming/app/common/nexasset/preview/a$a;->a:Lcom/nexstreaming/app/common/nexasset/preview/a;

    invoke-static {v5}, Lcom/nexstreaming/app/common/nexasset/preview/a;->access$700(Lcom/nexstreaming/app/common/nexasset/preview/a;)J

    move-result-wide v6

    add-long/2addr v6, v2

    invoke-static {v4, v6, v7}, Lcom/nexstreaming/app/common/nexasset/preview/a;->access$702(Lcom/nexstreaming/app/common/nexasset/preview/a;J)J

    .line 418
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nexstreaming/app/common/nexasset/preview/a$a;->a:Lcom/nexstreaming/app/common/nexasset/preview/a;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nexstreaming/app/common/nexasset/preview/a$a;->a:Lcom/nexstreaming/app/common/nexasset/preview/a;

    invoke-static {v5}, Lcom/nexstreaming/app/common/nexasset/preview/a;->access$300(Lcom/nexstreaming/app/common/nexasset/preview/a;)J

    move-result-wide v6

    add-long/2addr v2, v6

    invoke-static {v4, v2, v3}, Lcom/nexstreaming/app/common/nexasset/preview/a;->access$302(Lcom/nexstreaming/app/common/nexasset/preview/a;J)J

    .line 421
    :cond_b
    return-void

    .line 302
    :catch_0
    move-exception v2

    .line 303
    const-string v2, "NexThemePreviewView"

    const-string v3, "Preview sleep INTERRUPTED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 324
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nexstreaming/app/common/nexasset/preview/a$a;->a:Lcom/nexstreaming/app/common/nexasset/preview/a;

    invoke-static {v2}, Lcom/nexstreaming/app/common/nexasset/preview/a;->access$600(Lcom/nexstreaming/app/common/nexasset/preview/a;)J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nexstreaming/app/common/nexasset/preview/a$a;->a:Lcom/nexstreaming/app/common/nexasset/preview/a;

    invoke-static {v4}, Lcom/nexstreaming/app/common/nexasset/preview/a;->access$500(Lcom/nexstreaming/app/common/nexasset/preview/a;)J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 325
    invoke-static {}, Lcom/nexstreaming/app/common/nexasset/preview/a;->access$200()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nexstreaming/app/common/nexasset/preview/a$a;->a:Lcom/nexstreaming/app/common/nexasset/preview/a;

    invoke-static {v6}, Lcom/nexstreaming/app/common/nexasset/preview/a;->access$700(Lcom/nexstreaming/app/common/nexasset/preview/a;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x2

    mul-long/2addr v6, v2

    rem-long/2addr v4, v6

    .line 326
    const-wide/16 v6, 0x21

    rem-long v6, v4, v6

    sub-long/2addr v4, v6

    .line 327
    cmp-long v2, v4, v2

    if-lez v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nexstreaming/app/common/nexasset/preview/a$a;->a:Lcom/nexstreaming/app/common/nexasset/preview/a;

    invoke-static {v2}, Lcom/nexstreaming/app/common/nexasset/preview/a;->access$800(Lcom/nexstreaming/app/common/nexasset/preview/a;)Z

    move-result v2

    if-nez v2, :cond_d

    const/4 v2, 0x1

    :goto_7
    move-wide v12, v4

    goto/16 :goto_1

    :cond_d
    const/4 v2, 0x0

    goto :goto_7

    .line 338
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nexstreaming/app/common/nexasset/preview/a$a;->a:Lcom/nexstreaming/app/common/nexasset/preview/a;

    invoke-static {v2}, Lcom/nexstreaming/app/common/nexasset/preview/a;->access$1000(Lcom/nexstreaming/app/common/nexasset/preview/a;)Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeRenderer;

    move-result-object v2

    const-string v4, "placeholder1.jpg"

    const-string v5, "placeholder2.jpg"

    invoke-virtual {v2, v4, v5}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeRenderer;->setPlaceholders(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    move v11, v3

    goto/16 :goto_2

    .line 368
    :cond_10
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nexstreaming/app/common/nexasset/preview/a$a;->a:Lcom/nexstreaming/app/common/nexasset/preview/a;

    invoke-static {v2}, Lcom/nexstreaming/app/common/nexasset/preview/a;->access$1700(Lcom/nexstreaming/app/common/nexasset/preview/a;)Lcom/nexstreaming/app/common/nexasset/assetpackage/c;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nexstreaming/app/common/nexasset/preview/a$a;->a:Lcom/nexstreaming/app/common/nexasset/preview/a;

    invoke-static {v4}, Lcom/nexstreaming/app/common/nexasset/preview/a;->access$1400(Lcom/nexstreaming/app/common/nexasset/preview/a;)Lcom/nexstreaming/app/common/nexasset/assetpackage/f;

    move-result-object v4

    invoke-interface {v4}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->a(Ljava/lang/Iterable;Z)Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v2

    goto/16 :goto_3

    .line 371
    :catch_1
    move-exception v2

    .line 372
    :try_start_5
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v3

    goto/16 :goto_3

    .line 381
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nexstreaming/app/common/nexasset/preview/a$a;->a:Lcom/nexstreaming/app/common/nexasset/preview/a;

    invoke-static {v3}, Lcom/nexstreaming/app/common/nexasset/preview/a;->access$1000(Lcom/nexstreaming/app/common/nexasset/preview/a;)Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeRenderer;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeRenderer;->a(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 404
    :catchall_0
    move-exception v2

    monitor-exit v14
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v2

    .line 390
    :cond_12
    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nexstreaming/app/common/nexasset/preview/a$a;->a:Lcom/nexstreaming/app/common/nexasset/preview/a;

    invoke-static {v2}, Lcom/nexstreaming/app/common/nexasset/preview/a;->access$1000(Lcom/nexstreaming/app/common/nexasset/preview/a;)Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeRenderer;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nexstreaming/app/common/nexasset/preview/a$a;->a:Lcom/nexstreaming/app/common/nexasset/preview/a;

    invoke-static {v3}, Lcom/nexstreaming/app/common/nexasset/preview/a;->access$1400(Lcom/nexstreaming/app/common/nexasset/preview/a;)Lcom/nexstreaming/app/common/nexasset/assetpackage/f;

    move-result-object v3

    invoke-interface {v3}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getId()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nexstreaming/app/common/nexasset/preview/a$a;->a:Lcom/nexstreaming/app/common/nexasset/preview/a;

    invoke-static {v4}, Lcom/nexstreaming/app/common/nexasset/preview/a;->access$1200(Lcom/nexstreaming/app/common/nexasset/preview/a;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/nexstreaming/app/common/nexasset/preview/a$a;->a:Lcom/nexstreaming/app/common/nexasset/preview/a;

    invoke-static {v8}, Lcom/nexstreaming/app/common/nexasset/preview/a;->access$500(Lcom/nexstreaming/app/common/nexasset/preview/a;)J

    move-result-wide v8

    long-to-int v8, v8

    invoke-virtual/range {v2 .. v8}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeRenderer;->setTransitionEffect(Ljava/lang/String;Ljava/lang/String;IIII)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_5

    .line 396
    :cond_13
    const/4 v2, 0x0

    goto/16 :goto_6
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 424
    invoke-static {}, Lcom/nexstreaming/app/common/nexasset/preview/a;->access$2100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onSurfaceChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    invoke-interface {p1, v2, v2, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 426
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/preview/a$a;->a:Lcom/nexstreaming/app/common/nexasset/preview/a;

    invoke-static {v0}, Lcom/nexstreaming/app/common/nexasset/preview/a;->access$1000(Lcom/nexstreaming/app/common/nexasset/preview/a;)Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeRenderer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/preview/a$a;->a:Lcom/nexstreaming/app/common/nexasset/preview/a;

    invoke-static {v0}, Lcom/nexstreaming/app/common/nexasset/preview/a;->access$1000(Lcom/nexstreaming/app/common/nexasset/preview/a;)Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeRenderer;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeRenderer;->surfaceChange(II)V

    .line 428
    :cond_0
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2

    .prologue
    .line 431
    invoke-static {}, Lcom/nexstreaming/app/common/nexasset/preview/a;->access$2100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onSurfaceCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    return-void
.end method
