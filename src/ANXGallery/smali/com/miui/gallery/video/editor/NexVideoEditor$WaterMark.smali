.class Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;
.super Ljava/lang/Object;
.source "NexVideoEditor.java"

# interfaces
.implements Lcom/miui/gallery/video/editor/NexVideoEditor$Change;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/video/editor/NexVideoEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WaterMark"
.end annotation


# instance fields
.field private anchorPoint:I

.field private mAlphaDurationTime:I

.field private mEndTime:I

.field private mStartTime:I

.field private mTemplateId:Ljava/lang/String;

.field private mWaterMarkOverlay:Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;

.field private mWaterMarkOverlayItem:Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;

.field private scale:F

.field final synthetic this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

.field private timeType:I

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>(Lcom/miui/gallery/video/editor/NexVideoEditor;)V
    .locals 1
    .param p1, "this$0"    # Lcom/miui/gallery/video/editor/NexVideoEditor;

    .prologue
    const/4 v0, 0x0

    .line 1635
    iput-object p1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1623
    iput v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->mStartTime:I

    .line 1624
    iput v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->mEndTime:I

    .line 1625
    iput v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->timeType:I

    .line 1628
    iput v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->anchorPoint:I

    .line 1631
    const/16 v0, 0x190

    iput v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->mAlphaDurationTime:I

    .line 1633
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->scale:F

    .line 1636
    return-void
.end method

.method public constructor <init>(Lcom/miui/gallery/video/editor/NexVideoEditor;ILjava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lcom/miui/gallery/video/editor/NexVideoEditor;
    .param p2, "timeType"    # I
    .param p3, "templateId"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1638
    iput-object p1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1623
    iput v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->mStartTime:I

    .line 1624
    iput v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->mEndTime:I

    .line 1625
    iput v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->timeType:I

    .line 1628
    iput v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->anchorPoint:I

    .line 1631
    const/16 v0, 0x190

    iput v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->mAlphaDurationTime:I

    .line 1633
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->scale:F

    .line 1639
    iput p2, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->timeType:I

    .line 1640
    iput-object p3, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->mTemplateId:Ljava/lang/String;

    .line 1641
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->initOverLayItemParams()V

    .line 1642
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->initOverLayItem()V

    .line 1643
    return-void
.end method

.method private delete(Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;)V
    .locals 2
    .param p1, "waterMark"    # Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;

    .prologue
    .line 1726
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->mWaterMarkOverlayItem:Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;

    if-eqz v0, :cond_0

    .line 1727
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$1500(Lcom/miui/gallery/video/editor/NexVideoEditor;)Lcom/nexstreaming/nexeditorsdk/nexProject;

    move-result-object v0

    iget-object v1, p1, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->mWaterMarkOverlayItem:Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexProject;->removeOverlay(I)Z

    .line 1728
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$1600(Lcom/miui/gallery/video/editor/NexVideoEditor;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "edit_type_water_mark"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1730
    :cond_0
    return-void
.end method

.method private initOverLayItem()V
    .locals 14

    .prologue
    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    const/4 v3, 0x0

    .line 1671
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->getProjectTotalTime()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->mEndTime:I

    .line 1672
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->mTemplateId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->mEndTime:I

    if-lez v0, :cond_1

    .line 1673
    iget v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->timeType:I

    if-nez v0, :cond_2

    .line 1674
    iput v3, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->mStartTime:I

    .line 1675
    const/16 v11, 0x5dc

    .line 1676
    .local v11, "durationTime":I
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$300(Lcom/miui/gallery/video/editor/NexVideoEditor;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayPreset;->getOverlayPreset(Landroid/content/Context;)Lcom/nexstreaming/nexeditorsdk/nexOverlayPreset;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->mTemplateId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexOverlayPreset;->getOverlayImage(Ljava/lang/String;)Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->mWaterMarkOverlay:Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;

    .line 1677
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->mWaterMarkOverlay:Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;

    iget v2, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->anchorPoint:I

    iget v4, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->x:I

    int-to-float v4, v4

    iget v5, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->y:I

    int-to-float v5, v5

    iget v6, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->mStartTime:I

    iget v7, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->mEndTime:I

    invoke-direct/range {v0 .. v7}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;-><init>(Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;IZFFII)V

    iput-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->mWaterMarkOverlayItem:Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;

    .line 1678
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->mWaterMarkOverlay:Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;

    if-eqz v0, :cond_0

    .line 1679
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->mWaterMarkOverlay:Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->getDefaultDuration()I

    move-result v0

    add-int/2addr v0, v11

    iget v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->mAlphaDurationTime:I

    invoke-static {v0, v1, v13, v12}, Lcom/nexstreaming/nexeditorsdk/nexAnimate;->getAlpha(IIFF)Lcom/nexstreaming/nexeditorsdk/nexAnimate;

    move-result-object v9

    .line 1680
    .local v9, "alphaAnimate":Lcom/nexstreaming/nexeditorsdk/nexAnimate;
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->mWaterMarkOverlayItem:Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;

    invoke-virtual {v0, v9}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->addAnimate(Lcom/nexstreaming/nexeditorsdk/nexAnimate;)V

    .line 1696
    .end local v9    # "alphaAnimate":Lcom/nexstreaming/nexeditorsdk/nexAnimate;
    .end local v11    # "durationTime":I
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->mWaterMarkOverlayItem:Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;

    iget v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->scale:F

    iget v2, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->scale:F

    invoke-virtual {v0, v1, v2}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->setScale(FF)V

    .line 1698
    :cond_1
    return-void

    .line 1682
    :cond_2
    iget v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->timeType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 1683
    iput v3, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->mStartTime:I

    .line 1684
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$300(Lcom/miui/gallery/video/editor/NexVideoEditor;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayPreset;->getOverlayPreset(Landroid/content/Context;)Lcom/nexstreaming/nexeditorsdk/nexOverlayPreset;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->mTemplateId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexOverlayPreset;->getOverlayImage(Ljava/lang/String;)Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->mWaterMarkOverlay:Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;

    .line 1685
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->mWaterMarkOverlay:Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;

    iget v2, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->anchorPoint:I

    iget v4, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->x:I

    int-to-float v4, v4

    iget v5, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->y:I

    int-to-float v5, v5

    iget v6, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->mStartTime:I

    iget v7, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->mEndTime:I

    invoke-direct/range {v0 .. v7}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;-><init>(Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;IZFFII)V

    iput-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->mWaterMarkOverlayItem:Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;

    goto :goto_0

    .line 1686
    :cond_3
    iget v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->timeType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1687
    const/16 v10, 0x320

    .line 1688
    .local v10, "alphaTime":I
    const/16 v11, 0x1f4

    .line 1689
    .restart local v11    # "durationTime":I
    const/16 v8, 0x3e8

    .line 1690
    .local v8, "advanceTime":I
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$300(Lcom/miui/gallery/video/editor/NexVideoEditor;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayPreset;->getOverlayPreset(Landroid/content/Context;)Lcom/nexstreaming/nexeditorsdk/nexOverlayPreset;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->mTemplateId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexOverlayPreset;->getOverlayImage(Ljava/lang/String;)Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->mWaterMarkOverlay:Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;

    .line 1691
    iget v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->mEndTime:I

    sub-int/2addr v0, v10

    iget-object v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->mWaterMarkOverlay:Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->getDefaultDuration()I

    move-result v1

    sub-int/2addr v0, v1

    sub-int/2addr v0, v8

    iput v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->mStartTime:I

    .line 1692
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->mWaterMarkOverlay:Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;

    iget v2, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->anchorPoint:I

    iget v4, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->x:I

    int-to-float v4, v4

    iget v5, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->y:I

    int-to-float v5, v5

    iget v6, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->mStartTime:I

    iget v7, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->mEndTime:I

    invoke-direct/range {v0 .. v7}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;-><init>(Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;IZFFII)V

    iput-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->mWaterMarkOverlayItem:Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;

    .line 1693
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->mWaterMarkOverlay:Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->getDefaultDuration()I

    move-result v0

    add-int/2addr v0, v11

    invoke-static {v0, v10, v13, v12}, Lcom/nexstreaming/nexeditorsdk/nexAnimate;->getAlpha(IIFF)Lcom/nexstreaming/nexeditorsdk/nexAnimate;

    move-result-object v9

    .line 1694
    .restart local v9    # "alphaAnimate":Lcom/nexstreaming/nexeditorsdk/nexAnimate;
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->mWaterMarkOverlayItem:Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;

    invoke-virtual {v0, v9}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->addAnimate(Lcom/nexstreaming/nexeditorsdk/nexAnimate;)V

    goto/16 :goto_0
.end method

.method private initOverLayItemParams()V
    .locals 8

    .prologue
    const/high16 v7, 0x44340000    # 720.0f

    const v6, 0x3f1374bc    # 0.576f

    const/16 v5, 0x168

    .line 1646
    iget-object v3, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v3}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$100(Lcom/miui/gallery/video/editor/NexVideoEditor;)I

    move-result v3

    rem-int/lit16 v3, v3, 0xb4

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v3}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$2900(Lcom/miui/gallery/video/editor/NexVideoEditor;)I

    move-result v2

    .line 1647
    .local v2, "width":I
    :goto_0
    iget-object v3, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v3}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$100(Lcom/miui/gallery/video/editor/NexVideoEditor;)I

    move-result v3

    rem-int/lit16 v3, v3, 0xb4

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v3}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$3000(Lcom/miui/gallery/video/editor/NexVideoEditor;)I

    move-result v0

    .line 1649
    .local v0, "height":I
    :goto_1
    if-le v2, v0, :cond_2

    .line 1650
    int-to-float v3, v2

    int-to-float v4, v0

    div-float v1, v3, v4

    .line 1651
    .local v1, "ratio":F
    mul-float v3, v7, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 1652
    const/16 v0, 0x2d0

    .line 1653
    div-int/lit8 v3, v2, 0x2

    iput v3, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->x:I

    .line 1654
    iput v5, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->y:I

    .line 1655
    const v3, 0x44728000    # 970.0f

    int-to-float v4, v2

    div-float/2addr v3, v4

    iput v3, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->scale:F

    .line 1668
    .end local v1    # "ratio":F
    :goto_2
    return-void

    .line 1646
    .end local v0    # "height":I
    .end local v2    # "width":I
    :cond_0
    iget-object v3, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v3}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$3000(Lcom/miui/gallery/video/editor/NexVideoEditor;)I

    move-result v2

    goto :goto_0

    .line 1647
    .restart local v2    # "width":I
    :cond_1
    iget-object v3, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v3}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$2900(Lcom/miui/gallery/video/editor/NexVideoEditor;)I

    move-result v0

    goto :goto_1

    .line 1656
    .restart local v0    # "height":I
    :cond_2
    if-ne v2, v0, :cond_3

    .line 1657
    iput v5, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->x:I

    .line 1658
    iput v5, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->y:I

    .line 1659
    iput v6, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->scale:F

    goto :goto_2

    .line 1661
    :cond_3
    int-to-float v3, v0

    int-to-float v4, v2

    div-float v1, v3, v4

    .line 1662
    .restart local v1    # "ratio":F
    const/16 v2, 0x2d0

    .line 1663
    mul-float v3, v7, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1664
    iput v5, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->x:I

    .line 1665
    div-int/lit8 v3, v0, 0x2

    iput v3, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->y:I

    .line 1666
    iput v6, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->scale:F

    goto :goto_2
.end method


# virtual methods
.method public applyChange()V
    .locals 6

    .prologue
    .line 1702
    iget-object v4, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v4}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$1600(Lcom/miui/gallery/video/editor/NexVideoEditor;)Ljava/util/HashMap;

    move-result-object v4

    const-string v5, "edit_type_water_mark"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;

    .line 1703
    .local v3, "waterMark":Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;
    invoke-direct {p0, v3}, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->delete(Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;)V

    .line 1704
    iget-object v4, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->mWaterMarkOverlayItem:Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;

    if-eqz v4, :cond_0

    .line 1705
    iget-object v4, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v4}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$1600(Lcom/miui/gallery/video/editor/NexVideoEditor;)Ljava/util/HashMap;

    move-result-object v4

    const-string v5, "edit_type_water_mark"

    invoke-virtual {v4, v5, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1706
    iget-object v4, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v4}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$1500(Lcom/miui/gallery/video/editor/NexVideoEditor;)Lcom/nexstreaming/nexeditorsdk/nexProject;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->mWaterMarkOverlayItem:Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;

    invoke-virtual {v4, v5}, Lcom/nexstreaming/nexeditorsdk/nexProject;->addOverlay(Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;)Z

    .line 1708
    :cond_0
    iget-object v4, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v4}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$1600(Lcom/miui/gallery/video/editor/NexVideoEditor;)Ljava/util/HashMap;

    move-result-object v4

    const-string v5, "edit_type_smart_effect_template"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/video/editor/NexVideoEditor$SmartEffectTemplate;

    .line 1709
    .local v2, "smartEffectTemplate":Lcom/miui/gallery/video/editor/NexVideoEditor$SmartEffectTemplate;
    if-eqz v2, :cond_1

    .line 1710
    invoke-virtual {v2}, Lcom/miui/gallery/video/editor/NexVideoEditor$SmartEffectTemplate;->applyChange()V

    .line 1711
    const-string v4, "NexVideoEditor"

    const-string v5, "WaterMark change: have  smartEffect;"

    invoke-static {v4, v5}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1713
    :cond_1
    iget-object v4, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v4}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$1600(Lcom/miui/gallery/video/editor/NexVideoEditor;)Ljava/util/HashMap;

    move-result-object v4

    const-string v5, "bg_audio"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/video/editor/NexVideoEditor$BGMEdit;

    .line 1714
    .local v0, "bgmEdit":Lcom/miui/gallery/video/editor/NexVideoEditor$BGMEdit;
    if-eqz v0, :cond_2

    .line 1715
    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/NexVideoEditor$BGMEdit;->applyChange()V

    .line 1716
    const-string v4, "NexVideoEditor"

    const-string v5, "WaterMark change: have  audio;"

    invoke-static {v4, v5}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1718
    :cond_2
    iget-object v4, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v4}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$1600(Lcom/miui/gallery/video/editor/NexVideoEditor;)Ljava/util/HashMap;

    move-result-object v4

    const-string v5, "filter"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/video/editor/NexVideoEditor$FilterEffect;

    .line 1719
    .local v1, "filterEffect":Lcom/miui/gallery/video/editor/NexVideoEditor$FilterEffect;
    if-eqz v1, :cond_3

    .line 1720
    invoke-virtual {v1}, Lcom/miui/gallery/video/editor/NexVideoEditor$FilterEffect;->applyChange()V

    .line 1721
    const-string v4, "NexVideoEditor"

    const-string v5, "WaterMark change: have  filter;"

    invoke-static {v4, v5}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1723
    :cond_3
    return-void
.end method
