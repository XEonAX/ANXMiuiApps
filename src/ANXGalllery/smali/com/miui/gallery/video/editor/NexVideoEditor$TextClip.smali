.class Lcom/miui/gallery/video/editor/NexVideoEditor$TextClip;
.super Ljava/lang/Object;
.source "NexVideoEditor.java"

# interfaces
.implements Lcom/miui/gallery/video/editor/NexVideoEditor$Change;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/video/editor/NexVideoEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextClip"
.end annotation


# instance fields
.field private mShowTime:I

.field private mTextOverLayItem:Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;

.field final synthetic this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

.field private x:I

.field private y:I


# direct methods
.method private constructor <init>(Lcom/miui/gallery/video/editor/NexVideoEditor;)V
    .locals 1

    .prologue
    .line 1411
    iput-object p1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$TextClip;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1406
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$TextClip;->mShowTime:I

    .line 1412
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/video/editor/NexVideoEditor;Lcom/miui/gallery/video/editor/NexVideoEditor$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/video/editor/NexVideoEditor;
    .param p2, "x1"    # Lcom/miui/gallery/video/editor/NexVideoEditor$1;

    .prologue
    .line 1403
    invoke-direct {p0, p1}, Lcom/miui/gallery/video/editor/NexVideoEditor$TextClip;-><init>(Lcom/miui/gallery/video/editor/NexVideoEditor;)V

    return-void
.end method

.method private constructor <init>(Lcom/miui/gallery/video/editor/NexVideoEditor;Ljava/lang/String;I)V
    .locals 1
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "showTime"    # I

    .prologue
    .line 1414
    iput-object p1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$TextClip;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1406
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$TextClip;->mShowTime:I

    .line 1415
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1416
    iput p3, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$TextClip;->mShowTime:I

    .line 1417
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/NexVideoEditor$TextClip;->initXY()V

    .line 1418
    invoke-direct {p0, p2}, Lcom/miui/gallery/video/editor/NexVideoEditor$TextClip;->createTextNexOverLayItem(Ljava/lang/String;)Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$TextClip;->mTextOverLayItem:Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;

    .line 1420
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/video/editor/NexVideoEditor;Ljava/lang/String;ILcom/miui/gallery/video/editor/NexVideoEditor$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/video/editor/NexVideoEditor;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # I
    .param p4, "x3"    # Lcom/miui/gallery/video/editor/NexVideoEditor$1;

    .prologue
    .line 1403
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/video/editor/NexVideoEditor$TextClip;-><init>(Lcom/miui/gallery/video/editor/NexVideoEditor;Ljava/lang/String;I)V

    return-void
.end method

.method private createTextNexOverLayItem(Ljava/lang/String;)Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;
    .locals 12
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/16 v11, 0x7d0

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    .line 1449
    new-instance v1, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;

    iget-object v2, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$TextClip;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v2}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$300(Lcom/miui/gallery/video/editor/NexVideoEditor;)Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x3b

    invoke-direct {v1, v2, p1, v3}, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1450
    .local v1, "textOverLay":Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->setTextColor(I)V

    .line 1451
    const/4 v8, 0x0

    .line 1452
    .local v8, "filePath":Ljava/lang/String;
    invoke-virtual {v1, v8}, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->setFontId(Ljava/lang/String;)V

    .line 1453
    const/4 v0, 0x0

    .line 1454
    .local v0, "nexOverlayItem":Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;
    iget-object v2, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$TextClip;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-virtual {v2}, Lcom/miui/gallery/video/editor/NexVideoEditor;->getProjectTotalTime()I

    move-result v5

    .line 1455
    .local v5, "endTime":I
    const/4 v4, 0x0

    .line 1456
    .local v4, "startTime":I
    iget v2, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$TextClip;->mShowTime:I

    if-nez v2, :cond_1

    .line 1457
    const/16 v7, 0x190

    .line 1458
    .local v7, "alphaTime":I
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;

    .end local v0    # "nexOverlayItem":Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;
    iget v2, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$TextClip;->x:I

    iget v3, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$TextClip;->y:I

    invoke-direct/range {v0 .. v5}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;-><init>(Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;IIII)V

    .line 1459
    .restart local v0    # "nexOverlayItem":Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;
    invoke-static {v11, v7, v10, v9}, Lcom/nexstreaming/nexeditorsdk/nexAnimate;->getAlpha(IIFF)Lcom/nexstreaming/nexeditorsdk/nexAnimate;

    move-result-object v6

    .line 1460
    .local v6, "alphaAnimate":Lcom/nexstreaming/nexeditorsdk/nexAnimate;
    invoke-virtual {v0, v6}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->addAnimate(Lcom/nexstreaming/nexeditorsdk/nexAnimate;)V

    .line 1470
    .end local v6    # "alphaAnimate":Lcom/nexstreaming/nexeditorsdk/nexAnimate;
    .end local v7    # "alphaTime":I
    :cond_0
    :goto_0
    return-object v0

    .line 1461
    :cond_1
    iget v2, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$TextClip;->mShowTime:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 1462
    const/16 v7, 0x190

    .line 1463
    .restart local v7    # "alphaTime":I
    add-int/lit16 v2, v5, -0x7d0

    sub-int v4, v2, v7

    .line 1464
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;

    .end local v0    # "nexOverlayItem":Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;
    iget v2, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$TextClip;->x:I

    iget v3, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$TextClip;->y:I

    invoke-direct/range {v0 .. v5}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;-><init>(Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;IIII)V

    .line 1465
    .restart local v0    # "nexOverlayItem":Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;
    invoke-static {v11, v7, v10, v9}, Lcom/nexstreaming/nexeditorsdk/nexAnimate;->getAlpha(IIFF)Lcom/nexstreaming/nexeditorsdk/nexAnimate;

    move-result-object v6

    .line 1466
    .restart local v6    # "alphaAnimate":Lcom/nexstreaming/nexeditorsdk/nexAnimate;
    invoke-virtual {v0, v6}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->addAnimate(Lcom/nexstreaming/nexeditorsdk/nexAnimate;)V

    goto :goto_0

    .line 1467
    .end local v6    # "alphaAnimate":Lcom/nexstreaming/nexeditorsdk/nexAnimate;
    .end local v7    # "alphaTime":I
    :cond_2
    iget v2, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$TextClip;->mShowTime:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 1468
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;

    .end local v0    # "nexOverlayItem":Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;
    iget v2, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$TextClip;->x:I

    iget v3, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$TextClip;->y:I

    invoke-direct/range {v0 .. v5}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;-><init>(Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;IIII)V

    .restart local v0    # "nexOverlayItem":Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;
    goto :goto_0
.end method

.method private delete(Lcom/miui/gallery/video/editor/NexVideoEditor$TextClip;)V
    .locals 2
    .param p1, "textClip"    # Lcom/miui/gallery/video/editor/NexVideoEditor$TextClip;

    .prologue
    .line 1487
    if-eqz p1, :cond_0

    invoke-direct {p1}, Lcom/miui/gallery/video/editor/NexVideoEditor$TextClip;->getTextOverLayItem()Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1488
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$TextClip;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$1500(Lcom/miui/gallery/video/editor/NexVideoEditor;)Lcom/nexstreaming/nexeditorsdk/nexProject;

    move-result-object v0

    invoke-direct {p1}, Lcom/miui/gallery/video/editor/NexVideoEditor$TextClip;->getTextOverLayItem()Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexProject;->removeOverlay(I)Z

    .line 1489
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$TextClip;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$1600(Lcom/miui/gallery/video/editor/NexVideoEditor;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "edit_type_auto_water_mark_text"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1491
    :cond_0
    return-void
.end method

.method private getTextOverLayItem()Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;
    .locals 1

    .prologue
    .line 1423
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$TextClip;->mTextOverLayItem:Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;

    return-object v0
.end method

.method private initXY()V
    .locals 7

    .prologue
    const/high16 v6, 0x44340000    # 720.0f

    const/16 v5, 0x168

    .line 1427
    iget-object v3, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$TextClip;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v3}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$100(Lcom/miui/gallery/video/editor/NexVideoEditor;)I

    move-result v3

    rem-int/lit16 v3, v3, 0xb4

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$TextClip;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v3}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$2900(Lcom/miui/gallery/video/editor/NexVideoEditor;)I

    move-result v2

    .line 1428
    .local v2, "width":I
    :goto_0
    iget-object v3, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$TextClip;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v3}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$100(Lcom/miui/gallery/video/editor/NexVideoEditor;)I

    move-result v3

    rem-int/lit16 v3, v3, 0xb4

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$TextClip;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v3}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$3000(Lcom/miui/gallery/video/editor/NexVideoEditor;)I

    move-result v0

    .line 1430
    .local v0, "height":I
    :goto_1
    if-le v2, v0, :cond_2

    .line 1431
    int-to-float v3, v2

    int-to-float v4, v0

    div-float v1, v3, v4

    .line 1432
    .local v1, "ratio":F
    mul-float v3, v6, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 1433
    const/16 v0, 0x2d0

    .line 1434
    div-int/lit8 v3, v2, 0x2

    iput v3, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$TextClip;->x:I

    .line 1435
    iput v5, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$TextClip;->y:I

    .line 1446
    .end local v1    # "ratio":F
    :goto_2
    return-void

    .line 1427
    .end local v0    # "height":I
    .end local v2    # "width":I
    :cond_0
    iget-object v3, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$TextClip;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v3}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$3000(Lcom/miui/gallery/video/editor/NexVideoEditor;)I

    move-result v2

    goto :goto_0

    .line 1428
    .restart local v2    # "width":I
    :cond_1
    iget-object v3, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$TextClip;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v3}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$2900(Lcom/miui/gallery/video/editor/NexVideoEditor;)I

    move-result v0

    goto :goto_1

    .line 1436
    .restart local v0    # "height":I
    :cond_2
    if-ne v2, v0, :cond_3

    .line 1437
    iput v5, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$TextClip;->x:I

    .line 1438
    iput v5, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$TextClip;->y:I

    goto :goto_2

    .line 1440
    :cond_3
    int-to-float v3, v0

    int-to-float v4, v2

    div-float v1, v3, v4

    .line 1441
    .restart local v1    # "ratio":F
    const/16 v2, 0x2d0

    .line 1442
    mul-float v3, v6, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1443
    iput v5, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$TextClip;->x:I

    .line 1444
    div-int/lit8 v3, v0, 0x2

    iput v3, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$TextClip;->y:I

    goto :goto_2
.end method


# virtual methods
.method public applyChange()V
    .locals 4

    .prologue
    .line 1474
    iget-object v2, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$TextClip;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v2}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$1600(Lcom/miui/gallery/video/editor/NexVideoEditor;)Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "edit_type_auto_water_mark_text"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/video/editor/NexVideoEditor$TextClip;

    .line 1475
    .local v1, "textClip":Lcom/miui/gallery/video/editor/NexVideoEditor$TextClip;
    invoke-direct {p0, v1}, Lcom/miui/gallery/video/editor/NexVideoEditor$TextClip;->delete(Lcom/miui/gallery/video/editor/NexVideoEditor$TextClip;)V

    .line 1476
    iget-object v2, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$TextClip;->mTextOverLayItem:Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;

    if-eqz v2, :cond_0

    .line 1477
    iget-object v2, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$TextClip;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v2}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$1600(Lcom/miui/gallery/video/editor/NexVideoEditor;)Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "edit_type_auto_water_mark_text"

    invoke-virtual {v2, v3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1478
    iget-object v2, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$TextClip;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v2}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$1500(Lcom/miui/gallery/video/editor/NexVideoEditor;)Lcom/nexstreaming/nexeditorsdk/nexProject;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$TextClip;->mTextOverLayItem:Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;

    invoke-virtual {v2, v3}, Lcom/nexstreaming/nexeditorsdk/nexProject;->addOverlay(Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;)Z

    .line 1480
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$TextClip;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v2}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$1600(Lcom/miui/gallery/video/editor/NexVideoEditor;)Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "edit_type_smart_effect_template"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/video/editor/NexVideoEditor$SmartEffectTemplate;

    .line 1481
    .local v0, "smartEffectTemplate":Lcom/miui/gallery/video/editor/NexVideoEditor$SmartEffectTemplate;
    if-eqz v0, :cond_1

    .line 1482
    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/NexVideoEditor$SmartEffectTemplate;->applyChange()V

    .line 1484
    :cond_1
    return-void
.end method
