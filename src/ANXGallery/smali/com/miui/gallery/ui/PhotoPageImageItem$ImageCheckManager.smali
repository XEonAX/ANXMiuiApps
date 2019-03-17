.class public Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;
.super Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;
.source "PhotoPageImageItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/PhotoPageImageItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ImageCheckManager"
.end annotation


# instance fields
.field private mCheckStateListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field mPostLoadListener:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

.field private mRenderCallback:Lcom/miui/gallery/editor/photo/sdk/AutoRenderer$Callback;

.field protected mRenderCheckBox:Landroid/widget/CheckBox;

.field protected mRenderInterface:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;

.field protected mSimilarBestMark:Landroid/view/View;

.field final synthetic this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;


# direct methods
.method protected constructor <init>(Lcom/miui/gallery/ui/PhotoPageImageItem;)V
    .locals 1
    .param p1, "this$0"    # Lcom/miui/gallery/ui/PhotoPageImageItem;

    .prologue
    .line 477
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;-><init>(Lcom/miui/gallery/ui/PhotoPageItem;)V

    .line 557
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager$1;-><init>(Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;->mCheckStateListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 570
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager$2;-><init>(Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;->mRenderCallback:Lcom/miui/gallery/editor/photo/sdk/AutoRenderer$Callback;

    .line 594
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager$3;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager$3;-><init>(Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;->mPostLoadListener:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    .line 478
    return-void
.end method

.method static synthetic access$400(Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;

    .prologue
    .line 472
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;->renderChecked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;)Lcom/miui/gallery/editor/photo/sdk/AutoRenderer$Callback;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;

    .prologue
    .line 472
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;->mRenderCallback:Lcom/miui/gallery/editor/photo/sdk/AutoRenderer$Callback;

    return-object v0
.end method

.method private renderChecked()Z
    .locals 4

    .prologue
    .line 554
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;->mRenderInterface:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;->mRenderInterface:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageImageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {v1}, Lcom/miui/gallery/model/BaseDataItem;->getKey()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;->isChecked(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected varargs dispatchInterfaces([Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;)V
    .locals 2
    .param p1, "interfaces"    # [Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;

    .prologue
    const/4 v1, 0x2

    .line 496
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->dispatchInterfaces([Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;)V

    .line 497
    if-eqz p1, :cond_0

    array-length v0, p1

    if-le v0, v1, :cond_0

    aget-object v0, p1, v1

    :goto_0
    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;->mRenderInterface:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;

    .line 498
    return-void

    .line 497
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public endCheck()V
    .locals 2

    .prologue
    .line 509
    invoke-super {p0}, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->endCheck()V

    .line 512
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;->mRenderCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 513
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;->mRenderCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 514
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;->mRenderCheckBox:Landroid/widget/CheckBox;

    const v1, 0x7f0c01f1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(I)V

    .line 515
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageImageItem;->access$1800(Lcom/miui/gallery/ui/PhotoPageImageItem;)V

    .line 516
    return-void
.end method

.method protected ensureInflated()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 482
    invoke-super {p0}, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->ensureInflated()V

    .line 483
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    const v1, 0x7f1201ae

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/PhotoPageImageItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;->mSimilarBestMark:Landroid/view/View;

    .line 484
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->getInstance()Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageImageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {v1}, Lcom/miui/gallery/model/BaseDataItem;->getKey()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, v4}, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->isBestImage(JZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;->mSimilarBestMark:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 489
    :goto_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    const v1, 0x7f120205

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/PhotoPageImageItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;->mRenderCheckBox:Landroid/widget/CheckBox;

    .line 490
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;->mRenderCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 491
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;->mRenderCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setFocusable(Z)V

    .line 492
    return-void

    .line 487
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;->mSimilarBestMark:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 540
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 548
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->onClick(Landroid/view/View;)V

    .line 551
    :cond_0
    :goto_0
    return-void

    .line 542
    :pswitch_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageImageItem;->access$1900(Lcom/miui/gallery/ui/PhotoPageImageItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;->mRenderCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;->mRenderCheckBox:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;->mRenderInterface:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;->toggleCheckBox(Landroid/widget/CheckBox;Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;)V

    goto :goto_0

    .line 540
    nop

    :pswitch_data_0
    .packed-switch 0x7f120204
        :pswitch_0
    .end packed-switch
.end method

.method public varargs refreshCheck([Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;)V
    .locals 4
    .param p1, "interfaces"    # [Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;

    .prologue
    const/4 v1, 0x0

    .line 520
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->refreshCheck([Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;)V

    .line 521
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageImageItem;->access$800(Lcom/miui/gallery/ui/PhotoPageImageItem;)Lcom/miui/gallery/editor/photo/sdk/AutoRenderer;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 522
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;->mCheckRenderLayout:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 523
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;->mRenderCheckBox:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;->mCheckStateListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 524
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;->mRenderCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 526
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;->mRenderInterface:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    if-eqz v0, :cond_0

    .line 527
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;->mRenderCheckBox:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;->mRenderInterface:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    iget-object v2, v2, Lcom/miui/gallery/ui/PhotoPageImageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {v2}, Lcom/miui/gallery/model/BaseDataItem;->getKey()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;->isChecked(J)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;->setCheckBoxState(Landroid/widget/CheckBox;Z)V

    .line 536
    :goto_0
    return-void

    .line 529
    :cond_0
    const-string v2, "PhotoPageImageItem"

    const-string v3, "renderInterface[%s] or data[%s] not prepared"

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;->mRenderInterface:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;

    if-nez v0, :cond_1

    const-string v0, "NULL"

    :goto_1
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageImageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    if-nez v1, :cond_2

    const-string v1, "NULL"

    :goto_2
    invoke-static {v2, v3, v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;->mRenderInterface:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageImageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    goto :goto_2

    .line 532
    :cond_3
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;->mCheckRenderLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 533
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;->mRenderCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 534
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;->mRenderCheckBox:Landroid/widget/CheckBox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0
.end method

.method public varargs startCheck([Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;)V
    .locals 3
    .param p1, "originInterfaces"    # [Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;

    .prologue
    .line 502
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    new-instance v1, Lcom/miui/gallery/editor/photo/sdk/AutoRenderer;

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/PhotoPageImageItem;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/miui/gallery/editor/photo/sdk/AutoRenderer;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/miui/gallery/ui/PhotoPageImageItem;->access$802(Lcom/miui/gallery/ui/PhotoPageImageItem;Lcom/miui/gallery/editor/photo/sdk/AutoRenderer;)Lcom/miui/gallery/editor/photo/sdk/AutoRenderer;

    .line 503
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->startCheck([Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;)V

    .line 504
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;->mCheckRenderLayout:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 505
    return-void
.end method
