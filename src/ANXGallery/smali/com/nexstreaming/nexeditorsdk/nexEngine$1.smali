.class Lcom/nexstreaming/nexeditorsdk/nexEngine$1;
.super Ljava/lang/Object;
.source "nexEngine.java"

# interfaces
.implements Lcom/nexstreaming/kminternal/nexvideoeditor/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nexstreaming/nexeditorsdk/nexEngine;->setEditorListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nexstreaming/nexeditorsdk/nexEngine;


# direct methods
.method constructor <init>(Lcom/nexstreaming/nexeditorsdk/nexEngine;)V
    .locals 0

    .prologue
    .line 594
    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$1;->a:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 706
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$1;->a:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$700(Lcom/nexstreaming/nexeditorsdk/nexEngine;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 712
    :cond_0
    :goto_0
    return-void

    .line 710
    :cond_1
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$1;->a:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$600(Lcom/nexstreaming/nexeditorsdk/nexEngine;)Lcom/nexstreaming/nexeditorsdk/nexEngineListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 711
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$1;->a:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$600(Lcom/nexstreaming/nexeditorsdk/nexEngine;)Lcom/nexstreaming/nexeditorsdk/nexEngineListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/nexstreaming/nexeditorsdk/nexEngineListener;->onSetTimeIgnored()V

    goto :goto_0
.end method

.method public a(I)V
    .locals 6

    .prologue
    const/16 v5, 0x64

    .line 634
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$1;->a:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$700(Lcom/nexstreaming/nexeditorsdk/nexEngine;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 680
    :cond_0
    :goto_0
    return-void

    .line 638
    :cond_1
    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$200()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 639
    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$400()Lcom/nexstreaming/nexeditorsdk/nexEngineListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 641
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$1;->a:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$800(Lcom/nexstreaming/nexeditorsdk/nexEngine;)I

    move-result v0

    .line 642
    if-gtz v0, :cond_2

    .line 643
    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$900()Lcom/nexstreaming/nexeditorsdk/nexProject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTotalTime()I

    move-result v0

    .line 645
    :cond_2
    if-gtz v0, :cond_3

    .line 646
    div-int/lit8 v0, p1, 0xa

    .line 650
    :goto_1
    if-ltz v0, :cond_0

    if-gt v0, v5, :cond_0

    .line 651
    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$400()Lcom/nexstreaming/nexeditorsdk/nexEngineListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/nexstreaming/nexeditorsdk/nexEngineListener;->onEncodingProgress(I)V

    goto :goto_0

    .line 648
    :cond_3
    mul-int/lit8 v1, p1, 0x64

    div-int v0, v1, v0

    goto :goto_1

    .line 655
    :cond_4
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$1;->a:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-static {v0, p1}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$1002(Lcom/nexstreaming/nexeditorsdk/nexEngine;I)I

    .line 656
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$1;->a:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$600(Lcom/nexstreaming/nexeditorsdk/nexEngine;)Lcom/nexstreaming/nexeditorsdk/nexEngineListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 657
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$1;->a:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$100(Lcom/nexstreaming/nexeditorsdk/nexEngine;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$1;->a:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$500(Lcom/nexstreaming/nexeditorsdk/nexEngine;)Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;

    move-result-object v0

    sget-object v1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;->RECORD:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;

    if-ne v0, v1, :cond_7

    .line 659
    :cond_5
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$1;->a:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$800(Lcom/nexstreaming/nexeditorsdk/nexEngine;)I

    move-result v0

    .line 660
    if-gtz v0, :cond_8

    .line 661
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$1;->a:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$1100(Lcom/nexstreaming/nexeditorsdk/nexEngine;)Lcom/nexstreaming/nexeditorsdk/nexProject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTotalTime()I

    move-result v0

    move v1, v0

    .line 664
    :goto_2
    if-gtz v1, :cond_6

    .line 666
    const/4 v0, 0x0

    .line 671
    :goto_3
    const-string v2, "nexEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$1;->a:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-static {v4}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$000(Lcom/nexstreaming/nexeditorsdk/nexEngine;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]export progress = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", duration="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", currentTime="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    if-ltz v0, :cond_0

    if-gt v0, v5, :cond_0

    .line 674
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$1;->a:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-static {v1}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$600(Lcom/nexstreaming/nexeditorsdk/nexEngine;)Lcom/nexstreaming/nexeditorsdk/nexEngineListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/nexstreaming/nexeditorsdk/nexEngineListener;->onEncodingProgress(I)V

    goto/16 :goto_0

    .line 668
    :cond_6
    mul-int/lit8 v0, p1, 0x64

    div-int/2addr v0, v1

    goto :goto_3

    .line 676
    :cond_7
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$1;->a:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$600(Lcom/nexstreaming/nexeditorsdk/nexEngine;)Lcom/nexstreaming/nexeditorsdk/nexEngineListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/nexstreaming/nexeditorsdk/nexEngineListener;->onTimeChange(I)V

    goto/16 :goto_0

    :cond_8
    move v1, v0

    goto :goto_2
.end method

.method public a(II)V
    .locals 1

    .prologue
    .line 783
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$1;->a:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$600(Lcom/nexstreaming/nexeditorsdk/nexEngine;)Lcom/nexstreaming/nexeditorsdk/nexEngineListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 784
    if-le p1, p2, :cond_0

    .line 785
    const/16 p1, 0x64

    .line 787
    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$1;->a:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$600(Lcom/nexstreaming/nexeditorsdk/nexEngine;)Lcom/nexstreaming/nexeditorsdk/nexEngineListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/nexstreaming/nexeditorsdk/nexEngineListener;->onProgressThumbnailCaching(II)V

    .line 789
    :cond_1
    return-void
.end method

.method public a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;)V
    .locals 2

    .prologue
    .line 696
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$1;->a:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$700(Lcom/nexstreaming/nexeditorsdk/nexEngine;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 702
    :cond_0
    :goto_0
    return-void

    .line 700
    :cond_1
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$1;->a:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$600(Lcom/nexstreaming/nexeditorsdk/nexEngine;)Lcom/nexstreaming/nexeditorsdk/nexEngineListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 701
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$1;->a:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$600(Lcom/nexstreaming/nexeditorsdk/nexEngine;)Lcom/nexstreaming/nexeditorsdk/nexEngineListener;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->getValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexEngineListener;->onSetTimeFail(I)V

    goto :goto_0
.end method

.method public a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;I)V
    .locals 2

    .prologue
    .line 752
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$1;->a:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$600(Lcom/nexstreaming/nexeditorsdk/nexEngine;)Lcom/nexstreaming/nexeditorsdk/nexEngineListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 753
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$1;->a:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$600(Lcom/nexstreaming/nexeditorsdk/nexEngine;)Lcom/nexstreaming/nexeditorsdk/nexEngineListener;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->getValue()I

    move-result v1

    invoke-interface {v0, v1, p2}, Lcom/nexstreaming/nexeditorsdk/nexEngineListener;->onPlayFail(II)V

    .line 754
    :cond_0
    return-void
.end method

.method public a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;II)V
    .locals 2

    .prologue
    .line 817
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$1;->a:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$600(Lcom/nexstreaming/nexeditorsdk/nexEngine;)Lcom/nexstreaming/nexeditorsdk/nexEngineListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 818
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$1;->a:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$600(Lcom/nexstreaming/nexeditorsdk/nexEngine;)Lcom/nexstreaming/nexeditorsdk/nexEngineListener;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->getValue()I

    move-result v1

    invoke-interface {v0, v1, p2, p3}, Lcom/nexstreaming/nexeditorsdk/nexEngineListener;->onFastPreviewStartDone(III)V

    .line 820
    :cond_0
    return-void
.end method

.method public a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 597
    const-string v0, "nexEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$1;->a:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-static {v2}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$000(Lcom/nexstreaming/nexeditorsdk/nexEngine;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]onStateChange() oldState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",curState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$1;->a:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-static {v2}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$100(Lcom/nexstreaming/nexeditorsdk/nexEngine;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", trans="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$200()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    sget-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;->NONE:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;->IDLE:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;

    if-ne p2, v0, :cond_1

    .line 599
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$1;->a:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-static {v0, v3}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$102(Lcom/nexstreaming/nexeditorsdk/nexEngine;I)I

    .line 604
    :goto_0
    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$200()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 605
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$1;->a:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$100(Lcom/nexstreaming/nexeditorsdk/nexEngine;)I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 606
    sget-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;->RECORD:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;->RECORD:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;

    if-eq p2, v0, :cond_0

    .line 607
    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$400()Lcom/nexstreaming/nexeditorsdk/nexEngineListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 608
    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$400()Lcom/nexstreaming/nexeditorsdk/nexEngineListener;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;->getValue()I

    move-result v1

    invoke-virtual {p2}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;->getValue()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/nexstreaming/nexeditorsdk/nexEngineListener;->onStateChange(II)V

    .line 630
    :cond_0
    :goto_1
    return-void

    .line 601
    :cond_1
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$1;->a:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$302(Lcom/nexstreaming/nexeditorsdk/nexEngine;Z)Z

    goto :goto_0

    .line 613
    :cond_2
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$1;->a:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-static {v0, p2}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$502(Lcom/nexstreaming/nexeditorsdk/nexEngine;Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;)Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;

    .line 614
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$1;->a:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$100(Lcom/nexstreaming/nexeditorsdk/nexEngine;)I

    move-result v0

    if-ne v0, v4, :cond_3

    .line 615
    sget-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;->RECORD:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;

    if-ne p1, v0, :cond_3

    sget-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;->RECORD:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;

    if-eq p2, v0, :cond_3

    .line 616
    sget-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;->PAUSE:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;

    if-ne p2, v0, :cond_4

    .line 617
    const-string v0, "nexEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$1;->a:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-static {v2}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$000(Lcom/nexstreaming/nexeditorsdk/nexEngine;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]new State is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$1;->a:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$600(Lcom/nexstreaming/nexeditorsdk/nexEngine;)Lcom/nexstreaming/nexeditorsdk/nexEngineListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 627
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$1;->a:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$600(Lcom/nexstreaming/nexeditorsdk/nexEngine;)Lcom/nexstreaming/nexeditorsdk/nexEngineListener;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;->getValue()I

    move-result v1

    invoke-virtual {p2}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;->getValue()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/nexstreaming/nexeditorsdk/nexEngineListener;->onStateChange(II)V

    goto :goto_1

    .line 618
    :cond_4
    sget-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;->RESUME:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;

    if-ne p2, v0, :cond_5

    .line 619
    const-string v0, "nexEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$1;->a:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-static {v2}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$000(Lcom/nexstreaming/nexeditorsdk/nexEngine;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]new State is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 621
    :cond_5
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$1;->a:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-static {v0, v3}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$102(Lcom/nexstreaming/nexeditorsdk/nexEngine;I)I

    goto :goto_2
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 770
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$1;->a:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$600(Lcom/nexstreaming/nexeditorsdk/nexEngine;)Lcom/nexstreaming/nexeditorsdk/nexEngineListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 771
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$1;->a:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$600(Lcom/nexstreaming/nexeditorsdk/nexEngine;)Lcom/nexstreaming/nexeditorsdk/nexEngineListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/nexstreaming/nexeditorsdk/nexEngineListener;->onSeekStateChanged(Z)V

    .line 772
    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 745
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$1;->a:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$102(Lcom/nexstreaming/nexeditorsdk/nexEngine;I)I

    .line 746
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$1;->a:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$600(Lcom/nexstreaming/nexeditorsdk/nexEngine;)Lcom/nexstreaming/nexeditorsdk/nexEngineListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 747
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$1;->a:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$600(Lcom/nexstreaming/nexeditorsdk/nexEngine;)Lcom/nexstreaming/nexeditorsdk/nexEngineListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/nexstreaming/nexeditorsdk/nexEngineListener;->onPlayEnd()V

    .line 748
    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 2

    .prologue
    .line 684
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$1;->a:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$700(Lcom/nexstreaming/nexeditorsdk/nexEngine;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 692
    :goto_0
    return-void

    .line 688
    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$1;->a:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$100(Lcom/nexstreaming/nexeditorsdk/nexEngine;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$1;->a:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    .line 689
    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$600(Lcom/nexstreaming/nexeditorsdk/nexEngine;)Lcom/nexstreaming/nexeditorsdk/nexEngineListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 690
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$1;->a:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$600(Lcom/nexstreaming/nexeditorsdk/nexEngine;)Lcom/nexstreaming/nexeditorsdk/nexEngineListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/nexstreaming/nexeditorsdk/nexEngineListener;->onSetTimeDone(I)V

    .line 691
    :cond_1
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$1;->a:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-static {v0, p1}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$1002(Lcom/nexstreaming/nexeditorsdk/nexEngine;I)I

    goto :goto_0
.end method

.method public b(II)V
    .locals 1

    .prologue
    .line 793
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$1;->a:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$600(Lcom/nexstreaming/nexeditorsdk/nexEngine;)Lcom/nexstreaming/nexeditorsdk/nexEngineListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 794
    if-le p1, p2, :cond_0

    .line 795
    const/16 p1, 0x64

    .line 801
    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$1;->a:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$600(Lcom/nexstreaming/nexeditorsdk/nexEngine;)Lcom/nexstreaming/nexeditorsdk/nexEngineListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/nexstreaming/nexeditorsdk/nexEngineListener;->onEncodingProgress(I)V

    .line 803
    :cond_1
    return-void
.end method

.method public b(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;)V
    .locals 6

    .prologue
    const/16 v5, 0x64

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 716
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$1;->a:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-static {v0, v3}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$102(Lcom/nexstreaming/nexeditorsdk/nexEngine;I)I

    .line 717
    const-string v0, "nexEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$1;->a:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-static {v2}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$000(Lcom/nexstreaming/nexeditorsdk/nexEngine;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]onEncodingDone() ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", trans="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$200()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", forceMix="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$1;->a:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-static {v2}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$1200(Lcom/nexstreaming/nexeditorsdk/nexEngine;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$200()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 724
    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$400()Lcom/nexstreaming/nexeditorsdk/nexEngineListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 725
    invoke-virtual {p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->isError()Z

    move-result v0

    if-nez v0, :cond_0

    .line 726
    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$400()Lcom/nexstreaming/nexeditorsdk/nexEngineListener;

    move-result-object v0

    invoke-interface {v0, v5}, Lcom/nexstreaming/nexeditorsdk/nexEngineListener;->onEncodingProgress(I)V

    .line 728
    :cond_0
    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$400()Lcom/nexstreaming/nexeditorsdk/nexEngineListener;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->isError()Z

    move-result v1

    invoke-virtual {p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->getValue()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/nexstreaming/nexeditorsdk/nexEngineListener;->onEncodingDone(ZI)V

    .line 730
    :cond_1
    invoke-static {v4}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$202(Z)Z

    .line 731
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$1;->a:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-static {v0, v3, v3}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$1300(Lcom/nexstreaming/nexeditorsdk/nexEngine;ZZ)I

    .line 740
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$1;->a:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-static {v0, v4}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$802(Lcom/nexstreaming/nexeditorsdk/nexEngine;I)I

    .line 741
    return-void

    .line 733
    :cond_3
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$1;->a:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$600(Lcom/nexstreaming/nexeditorsdk/nexEngine;)Lcom/nexstreaming/nexeditorsdk/nexEngineListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 734
    invoke-virtual {p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->isError()Z

    move-result v0

    if-nez v0, :cond_4

    .line 735
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$1;->a:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$600(Lcom/nexstreaming/nexeditorsdk/nexEngine;)Lcom/nexstreaming/nexeditorsdk/nexEngineListener;

    move-result-object v0

    invoke-interface {v0, v5}, Lcom/nexstreaming/nexeditorsdk/nexEngineListener;->onEncodingProgress(I)V

    .line 737
    :cond_4
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$1;->a:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$600(Lcom/nexstreaming/nexeditorsdk/nexEngine;)Lcom/nexstreaming/nexeditorsdk/nexEngineListener;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->isError()Z

    move-result v1

    invoke-virtual {p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->getValue()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/nexstreaming/nexeditorsdk/nexEngineListener;->onEncodingDone(ZI)V

    goto :goto_0
.end method

.method public b(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;I)V
    .locals 1

    .prologue
    .line 776
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$1;->a:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$600(Lcom/nexstreaming/nexeditorsdk/nexEngine;)Lcom/nexstreaming/nexeditorsdk/nexEngineListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 777
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$1;->a:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$600(Lcom/nexstreaming/nexeditorsdk/nexEngine;)Lcom/nexstreaming/nexeditorsdk/nexEngineListener;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/nexstreaming/nexeditorsdk/nexEngineListener;->onCheckDirectExport(I)V

    .line 779
    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 758
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$1;->a:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$600(Lcom/nexstreaming/nexeditorsdk/nexEngine;)Lcom/nexstreaming/nexeditorsdk/nexEngineListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 759
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$1;->a:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$600(Lcom/nexstreaming/nexeditorsdk/nexEngine;)Lcom/nexstreaming/nexeditorsdk/nexEngineListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/nexstreaming/nexeditorsdk/nexEngineListener;->onPlayStart()V

    .line 760
    :cond_0
    return-void
.end method

.method public c(II)V
    .locals 1

    .prologue
    .line 838
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$1;->a:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$600(Lcom/nexstreaming/nexeditorsdk/nexEngine;)Lcom/nexstreaming/nexeditorsdk/nexEngineListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 839
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$1;->a:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$600(Lcom/nexstreaming/nexeditorsdk/nexEngine;)Lcom/nexstreaming/nexeditorsdk/nexEngineListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/nexstreaming/nexeditorsdk/nexEngineListener;->onPreviewPeakMeter(II)V

    .line 841
    :cond_0
    return-void
.end method

.method public c(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;)V
    .locals 3

    .prologue
    .line 810
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$1;->a:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$600(Lcom/nexstreaming/nexeditorsdk/nexEngine;)Lcom/nexstreaming/nexeditorsdk/nexEngineListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 811
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$1;->a:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$600(Lcom/nexstreaming/nexeditorsdk/nexEngine;)Lcom/nexstreaming/nexeditorsdk/nexEngineListener;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->isError()Z

    move-result v1

    invoke-virtual {p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->getValue()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/nexstreaming/nexeditorsdk/nexEngineListener;->onEncodingDone(ZI)V

    .line 813
    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 764
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$1;->a:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$600(Lcom/nexstreaming/nexeditorsdk/nexEngine;)Lcom/nexstreaming/nexeditorsdk/nexEngineListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 765
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$1;->a:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$600(Lcom/nexstreaming/nexeditorsdk/nexEngine;)Lcom/nexstreaming/nexeditorsdk/nexEngineListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/nexstreaming/nexeditorsdk/nexEngineListener;->onClipInfoDone()V

    .line 766
    :cond_0
    return-void
.end method

.method public d(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;)V
    .locals 2

    .prologue
    .line 824
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$1;->a:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$600(Lcom/nexstreaming/nexeditorsdk/nexEngine;)Lcom/nexstreaming/nexeditorsdk/nexEngineListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 825
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$1;->a:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$600(Lcom/nexstreaming/nexeditorsdk/nexEngine;)Lcom/nexstreaming/nexeditorsdk/nexEngineListener;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->getValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexEngineListener;->onFastPreviewStopDone(I)V

    .line 827
    :cond_0
    return-void
.end method

.method public e(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;)V
    .locals 2

    .prologue
    .line 831
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$1;->a:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$600(Lcom/nexstreaming/nexeditorsdk/nexEngine;)Lcom/nexstreaming/nexeditorsdk/nexEngineListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 832
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$1;->a:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$600(Lcom/nexstreaming/nexeditorsdk/nexEngine;)Lcom/nexstreaming/nexeditorsdk/nexEngineListener;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->getValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexEngineListener;->onFastPreviewTimeDone(I)V

    .line 834
    :cond_0
    return-void
.end method
