.class public Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;
.super Ljava/lang/Object;
.source "PhotoPageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/adapter/PhotoPageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChoiceMode"
.end annotation


# instance fields
.field private mChoiceModeListener:Lcom/miui/gallery/adapter/PhotoPageAdapter$MultiChoiceModeListener;

.field private mInAction:Z

.field private mOriginCheck:Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;

.field private mOriginInterface:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;

.field private mRenderInterface:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;

.field private mRenderState:Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;

.field private mSelectCheck:Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;

.field private mSelectInterface:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;

.field private mSource:Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState$Source;


# direct methods
.method constructor <init>(Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState$Source;Lcom/miui/gallery/adapter/PhotoPageAdapter$MultiChoiceModeListener;)V
    .locals 1
    .param p1, "checkSource"    # Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState$Source;
    .param p2, "listener"    # Lcom/miui/gallery/adapter/PhotoPageAdapter$MultiChoiceModeListener;

    .prologue
    .line 541
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 529
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->mInAction:Z

    .line 542
    new-instance v0, Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;

    invoke-direct {v0, p1}, Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;-><init>(Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState$Source;)V

    iput-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->mOriginCheck:Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;

    .line 543
    new-instance v0, Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;

    invoke-direct {v0, p1}, Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;-><init>(Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState$Source;)V

    iput-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->mSelectCheck:Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;

    .line 544
    new-instance v0, Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;

    invoke-direct {v0, p1}, Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;-><init>(Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState$Source;)V

    iput-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->mRenderState:Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;

    .line 545
    iput-object p1, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->mSource:Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState$Source;

    .line 546
    iput-object p2, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->mChoiceModeListener:Lcom/miui/gallery/adapter/PhotoPageAdapter$MultiChoiceModeListener;

    .line 547
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->mInAction:Z

    .line 548
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;

    .prologue
    .line 528
    invoke-direct {p0}, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->isInAction()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;)Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;

    .prologue
    .line 528
    iget-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->mSelectCheck:Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;)Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState$Source;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;

    .prologue
    .line 528
    iget-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->mSource:Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState$Source;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;)Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;

    .prologue
    .line 528
    iget-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->mOriginCheck:Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;)Lcom/miui/gallery/adapter/PhotoPageAdapter$MultiChoiceModeListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;

    .prologue
    .line 528
    iget-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->mChoiceModeListener:Lcom/miui/gallery/adapter/PhotoPageAdapter$MultiChoiceModeListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;)Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;

    .prologue
    .line 528
    iget-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->mRenderState:Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;

    return-object v0
.end method

.method private isInAction()Z
    .locals 1

    .prologue
    .line 649
    iget-boolean v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->mInAction:Z

    return v0
.end method

.method private refreshAllState(Z)V
    .locals 5
    .param p1, "checked"    # Z

    .prologue
    .line 672
    iget-object v4, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->mSource:Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState$Source;

    invoke-interface {v4}, Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState$Source;->getCount()I

    move-result v0

    .line 673
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 674
    iget-object v4, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->mSource:Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState$Source;

    invoke-interface {v4, v1}, Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState$Source;->getItemKey(I)J

    move-result-wide v2

    .line 675
    .local v2, "id":J
    iget-object v4, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->mSelectCheck:Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;

    invoke-virtual {v4, v1, v2, v3, p1}, Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;->setChecked(IJZ)V

    .line 676
    if-nez p1, :cond_0

    .line 677
    iget-object v4, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->mOriginCheck:Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;

    invoke-virtual {v4, v1, v2, v3, p1}, Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;->setChecked(IJZ)V

    .line 678
    iget-object v4, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->mRenderState:Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;

    invoke-virtual {v4, v1, v2, v3, p1}, Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;->setChecked(IJZ)V

    .line 673
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 681
    .end local v2    # "id":J
    :cond_1
    iget-object v4, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->mSource:Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState$Source;

    invoke-interface {v4}, Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState$Source;->notifyCheckState()V

    .line 682
    return-void
.end method


# virtual methods
.method public appendCheck(IJ)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "id"    # J

    .prologue
    .line 701
    iget-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->mSelectCheck:Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;->appendCheck(IJ)V

    .line 702
    return-void
.end method

.method public chooseAll()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 658
    invoke-direct {p0, v1}, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->refreshAllState(Z)V

    .line 659
    iget-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->mChoiceModeListener:Lcom/miui/gallery/adapter/PhotoPageAdapter$MultiChoiceModeListener;

    if-eqz v0, :cond_0

    .line 660
    iget-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->mChoiceModeListener:Lcom/miui/gallery/adapter/PhotoPageAdapter$MultiChoiceModeListener;

    invoke-interface {v0, v1}, Lcom/miui/gallery/adapter/PhotoPageAdapter$MultiChoiceModeListener;->onAllItemsCheckedStateChanged(Z)V

    .line 662
    :cond_0
    return-void
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 712
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->mInAction:Z

    .line 713
    iget-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->mSource:Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState$Source;

    invoke-interface {v0}, Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState$Source;->notifyCheckState()V

    .line 714
    return-void
.end method

.method public finishInit()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 705
    iget-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->mSource:Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState$Source;

    invoke-interface {v0}, Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState$Source;->notifyCheckState()V

    .line 706
    iget-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->mChoiceModeListener:Lcom/miui/gallery/adapter/PhotoPageAdapter$MultiChoiceModeListener;

    if-eqz v0, :cond_0

    .line 707
    iget-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->mChoiceModeListener:Lcom/miui/gallery/adapter/PhotoPageAdapter$MultiChoiceModeListener;

    iget-object v1, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->mSource:Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState$Source;

    invoke-interface {v1, v4}, Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState$Source;->getItemKey(I)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-interface {v0, v4, v2, v3, v1}, Lcom/miui/gallery/adapter/PhotoPageAdapter$MultiChoiceModeListener;->onItemCheckedStateChanged(IJZ)V

    .line 709
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 685
    iget-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->mSource:Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState$Source;

    invoke-interface {v0}, Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState$Source;->getCount()I

    move-result v0

    return v0
.end method

.method protected getOriginIInstance()Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;
    .locals 1

    .prologue
    .line 557
    iget-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->mOriginInterface:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;

    if-nez v0, :cond_0

    .line 558
    new-instance v0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode$1;-><init>(Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;)V

    iput-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->mOriginInterface:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;

    .line 586
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->mOriginInterface:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;

    return-object v0
.end method

.method public getOriginItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 637
    iget-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->mOriginCheck:Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;

    invoke-virtual {v0}, Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;->getSelectedPositions()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getRenderIInstance()Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;
    .locals 1

    .prologue
    .line 615
    iget-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->mRenderInterface:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;

    if-nez v0, :cond_0

    .line 616
    new-instance v0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode$3;

    invoke-direct {v0, p0}, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode$3;-><init>(Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;)V

    iput-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->mRenderInterface:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;

    .line 633
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->mRenderInterface:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;

    return-object v0
.end method

.method public getRenderItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 645
    iget-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->mRenderState:Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;

    invoke-virtual {v0}, Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;->getSelectedPositions()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getSelectIInstance()Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;
    .locals 1

    .prologue
    .line 590
    iget-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->mSelectInterface:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;

    if-nez v0, :cond_0

    .line 591
    new-instance v0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode$2;-><init>(Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;)V

    iput-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->mSelectInterface:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;

    .line 611
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->mSelectInterface:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;

    return-object v0
.end method

.method public getSelectItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 641
    iget-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->mSelectCheck:Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;

    invoke-virtual {v0}, Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;->getSelectedPositions()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public notifyDataChanged()V
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->mOriginCheck:Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;

    invoke-virtual {v0}, Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;->notifyDataChanged()V

    .line 552
    iget-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->mSelectCheck:Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;

    invoke-virtual {v0}, Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;->notifyDataChanged()V

    .line 553
    iget-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->mRenderState:Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;

    invoke-virtual {v0}, Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;->notifyDataChanged()V

    .line 554
    return-void
.end method

.method public setChecked(IJZ)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "id"    # J
    .param p4, "checked"    # Z

    .prologue
    .line 689
    iget-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->mSelectCheck:Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;->setChecked(IJZ)V

    .line 690
    iget-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->mSource:Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState$Source;

    invoke-interface {v0}, Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState$Source;->notifyCheckState()V

    .line 691
    iget-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->mChoiceModeListener:Lcom/miui/gallery/adapter/PhotoPageAdapter$MultiChoiceModeListener;

    if-eqz v0, :cond_0

    .line 692
    iget-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->mChoiceModeListener:Lcom/miui/gallery/adapter/PhotoPageAdapter$MultiChoiceModeListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/miui/gallery/adapter/PhotoPageAdapter$MultiChoiceModeListener;->onItemCheckedStateChanged(IJZ)V

    .line 694
    :cond_0
    return-void
.end method

.method public setRenderChecked(IJZ)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "id"    # J
    .param p4, "checked"    # Z

    .prologue
    .line 697
    iget-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->mRenderState:Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;->setChecked(IJZ)V

    .line 698
    return-void
.end method

.method startAction()V
    .locals 1

    .prologue
    .line 653
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->mInAction:Z

    .line 654
    iget-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->mSource:Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState$Source;

    invoke-interface {v0}, Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState$Source;->notifyCheckState()V

    .line 655
    return-void
.end method

.method public unChooseAll()V
    .locals 2

    .prologue
    .line 665
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->refreshAllState(Z)V

    .line 666
    iget-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->mChoiceModeListener:Lcom/miui/gallery/adapter/PhotoPageAdapter$MultiChoiceModeListener;

    if-eqz v0, :cond_0

    .line 667
    iget-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->mChoiceModeListener:Lcom/miui/gallery/adapter/PhotoPageAdapter$MultiChoiceModeListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/miui/gallery/adapter/PhotoPageAdapter$MultiChoiceModeListener;->onAllItemsCheckedStateChanged(Z)V

    .line 669
    :cond_0
    return-void
.end method
