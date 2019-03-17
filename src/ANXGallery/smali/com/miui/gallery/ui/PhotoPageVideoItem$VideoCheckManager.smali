.class public Lcom/miui/gallery/ui/PhotoPageVideoItem$VideoCheckManager;
.super Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;
.source "PhotoPageVideoItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/PhotoPageVideoItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "VideoCheckManager"
.end annotation


# instance fields
.field protected mVideoSmallText:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/miui/gallery/ui/PhotoPageVideoItem;


# direct methods
.method protected constructor <init>(Lcom/miui/gallery/ui/PhotoPageVideoItem;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/PhotoPageVideoItem;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageVideoItem$VideoCheckManager;->this$0:Lcom/miui/gallery/ui/PhotoPageVideoItem;

    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;-><init>(Lcom/miui/gallery/ui/PhotoPageItem;)V

    .line 76
    return-void
.end method


# virtual methods
.method public endCheck()V
    .locals 2

    .prologue
    .line 107
    invoke-super {p0}, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->endCheck()V

    .line 108
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageVideoItem$VideoCheckManager;->this$0:Lcom/miui/gallery/ui/PhotoPageVideoItem;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageVideoItem;->access$000(Lcom/miui/gallery/ui/PhotoPageVideoItem;)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 109
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageVideoItem$VideoCheckManager;->mVideoSmallText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 110
    return-void
.end method

.method protected ensureInflated()V
    .locals 2

    .prologue
    .line 80
    invoke-super {p0}, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->ensureInflated()V

    .line 81
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageVideoItem$VideoCheckManager;->this$0:Lcom/miui/gallery/ui/PhotoPageVideoItem;

    const v1, 0x7f120206

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/PhotoPageVideoItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageVideoItem$VideoCheckManager;->mVideoSmallText:Landroid/widget/TextView;

    .line 82
    return-void
.end method

.method public varargs refreshCheck([Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;)V
    .locals 4
    .param p1, "interfaces"    # [Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;

    .prologue
    .line 96
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->refreshCheck([Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;)V

    .line 97
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageVideoItem$VideoCheckManager;->this$0:Lcom/miui/gallery/ui/PhotoPageVideoItem;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageVideoItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageVideoItem$VideoCheckManager;->mVideoSmallText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageVideoItem$VideoCheckManager;->mVideoSmallText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageVideoItem$VideoCheckManager;->this$0:Lcom/miui/gallery/ui/PhotoPageVideoItem;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageVideoItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {v1}, Lcom/miui/gallery/model/BaseDataItem;->getDuration()I

    move-result v1

    int-to-long v2, v1

    invoke-static {v2, v3}, Lcom/miui/gallery/util/FormatUtil;->formatVideoDuration(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    :goto_0
    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageVideoItem$VideoCheckManager;->mVideoSmallText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public varargs startCheck([Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;)V
    .locals 4
    .param p1, "interfaces"    # [Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->startCheck([Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;)V

    .line 87
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageVideoItem$VideoCheckManager;->this$0:Lcom/miui/gallery/ui/PhotoPageVideoItem;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageVideoItem;->access$000(Lcom/miui/gallery/ui/PhotoPageVideoItem;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 88
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageVideoItem$VideoCheckManager;->this$0:Lcom/miui/gallery/ui/PhotoPageVideoItem;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageVideoItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageVideoItem$VideoCheckManager;->mVideoSmallText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 90
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageVideoItem$VideoCheckManager;->mVideoSmallText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageVideoItem$VideoCheckManager;->this$0:Lcom/miui/gallery/ui/PhotoPageVideoItem;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageVideoItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {v1}, Lcom/miui/gallery/model/BaseDataItem;->getDuration()I

    move-result v1

    int-to-long v2, v1

    invoke-static {v2, v3}, Lcom/miui/gallery/util/FormatUtil;->formatVideoDuration(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    :cond_0
    return-void
.end method
