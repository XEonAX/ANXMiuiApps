.class Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$SmartEffectItemSelectChangeListener;
.super Ljava/lang/Object;
.source "SmartEffectFragment.java"

# interfaces
.implements Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView$SingleChoiceRecyclerViewAdapter$ItemSelectChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmartEffectItemSelectChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$SmartEffectItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;
    .param p2, "x1"    # Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$1;

    .prologue
    .line 218
    invoke-direct {p0, p1}, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$SmartEffectItemSelectChangeListener;-><init>(Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;)V

    return-void
.end method


# virtual methods
.method public onItemSelect(Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView$SingleChoiceRecyclerViewAdapter;IZ)Z
    .locals 8
    .param p1, "adapter"    # Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView$SingleChoiceRecyclerViewAdapter;
    .param p2, "position"    # I
    .param p3, "isChanged"    # Z

    .prologue
    const/16 v7, 0x50

    const/4 v3, 0x0

    .line 222
    iget-object v4, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$SmartEffectItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;

    invoke-static {v4}, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->access$500(Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;)Z

    move-result v4

    if-nez v4, :cond_0

    if-nez p3, :cond_1

    .line 280
    :cond_0
    :goto_0
    return v3

    .line 225
    :cond_1
    iget-object v4, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$SmartEffectItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;

    invoke-static {v4}, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->access$600(Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;)Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView;

    move-result-object v4

    invoke-static {v4, p2}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/ScrollControlLinearLayoutManager;->onItemClick(Landroid/support/v7/widget/RecyclerView;I)V

    move-object v2, p1

    .line 226
    check-cast v2, Lcom/miui/gallery/video/editor/adapter/SmartEffectRecyclerViewAdapter;

    .line 227
    .local v2, "viewAdapter":Lcom/miui/gallery/video/editor/adapter/SmartEffectRecyclerViewAdapter;
    invoke-virtual {v2, p2}, Lcom/miui/gallery/video/editor/adapter/SmartEffectRecyclerViewAdapter;->getSmartEffect(I)Lcom/miui/gallery/video/editor/SmartEffect;

    move-result-object v1

    .line 228
    .local v1, "smartEffect":Lcom/miui/gallery/video/editor/SmartEffect;
    if-eqz v1, :cond_0

    .line 229
    invoke-virtual {v1}, Lcom/miui/gallery/video/editor/SmartEffect;->isNone()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 230
    iget-object v3, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$SmartEffectItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;

    invoke-static {v3, p2}, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->access$700(Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;I)V

    .line 231
    iget-object v3, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$SmartEffectItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;

    iget-object v3, v3, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    invoke-virtual {v3, v1}, Lcom/miui/gallery/video/editor/VideoEditor;->setSmartEffectTemplate(Lcom/miui/gallery/video/editor/SmartEffect;)Z

    .line 232
    iget-object v3, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$SmartEffectItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;

    iget-object v3, v3, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    new-instance v4, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$SmartEffectItemSelectChangeListener$1;

    invoke-direct {v4, p0}, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$SmartEffectItemSelectChangeListener$1;-><init>(Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$SmartEffectItemSelectChangeListener;)V

    invoke-virtual {v3, v4}, Lcom/miui/gallery/video/editor/VideoEditor;->apply(Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;)Z

    move-result v3

    goto :goto_0

    .line 240
    :cond_2
    invoke-virtual {v1}, Lcom/miui/gallery/video/editor/SmartEffect;->isExtra()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 241
    invoke-virtual {v1}, Lcom/miui/gallery/video/editor/SmartEffect;->isDownloaded()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 242
    iget-object v4, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$SmartEffectItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;

    invoke-static {v4}, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->access$800(Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;)Landroid/widget/Toast;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 243
    iget-object v4, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$SmartEffectItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;

    invoke-static {v4}, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->access$800(Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->cancel()V

    .line 245
    :cond_3
    iget-object v4, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$SmartEffectItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;

    invoke-virtual {v4}, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b03aa

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 246
    .local v0, "offsetdY":I
    iget-object v4, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$SmartEffectItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;

    invoke-static {v4}, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->access$900(Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;)I

    move-result v4

    invoke-virtual {v1}, Lcom/miui/gallery/video/editor/SmartEffect;->getShortTime()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 247
    iget-object v4, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$SmartEffectItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;

    iget-object v5, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$SmartEffectItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;

    iget-object v5, v5, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->mContext:Landroid/content/Context;

    const v6, 0x7f0c0561

    invoke-static {v5, v6, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->access$802(Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 248
    iget-object v4, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$SmartEffectItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;

    invoke-static {v4}, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->access$800(Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;)Landroid/widget/Toast;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$SmartEffectItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;

    invoke-static {v5}, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->access$1000(Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v5

    sub-int/2addr v5, v0

    invoke-virtual {v4, v7, v3, v5}, Landroid/widget/Toast;->setGravity(III)V

    .line 249
    iget-object v4, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$SmartEffectItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;

    invoke-static {v4}, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->access$800(Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 251
    :cond_4
    invoke-virtual {v1}, Lcom/miui/gallery/video/editor/SmartEffect;->isHasSpeedChange()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$SmartEffectItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;

    invoke-virtual {v4}, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->isHighFrames()Z

    move-result v4

    if-nez v4, :cond_6

    .line 252
    iget-object v4, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$SmartEffectItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;

    iget-object v5, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$SmartEffectItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;

    iget-object v5, v5, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->mContext:Landroid/content/Context;

    const v6, 0x7f0c055a

    invoke-static {v5, v6, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->access$802(Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 253
    iget-object v4, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$SmartEffectItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;

    invoke-static {v4}, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->access$800(Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;)Landroid/widget/Toast;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$SmartEffectItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;

    invoke-static {v5}, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->access$1000(Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v5

    sub-int/2addr v5, v0

    invoke-virtual {v4, v7, v3, v5}, Landroid/widget/Toast;->setGravity(III)V

    .line 254
    iget-object v3, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$SmartEffectItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;

    invoke-static {v3}, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->access$800(Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 264
    :cond_5
    :goto_1
    iget-object v3, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$SmartEffectItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;

    invoke-static {v3, p2}, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->access$700(Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;I)V

    .line 265
    iget-object v3, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$SmartEffectItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;

    iget-object v3, v3, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    invoke-virtual {v3, v1}, Lcom/miui/gallery/video/editor/VideoEditor;->setSmartEffectTemplate(Lcom/miui/gallery/video/editor/SmartEffect;)Z

    .line 266
    iget-object v3, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$SmartEffectItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;

    iget-object v3, v3, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    new-instance v4, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$SmartEffectItemSelectChangeListener$2;

    invoke-direct {v4, p0}, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$SmartEffectItemSelectChangeListener$2;-><init>(Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$SmartEffectItemSelectChangeListener;)V

    invoke-virtual {v3, v4}, Lcom/miui/gallery/video/editor/VideoEditor;->apply(Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;)Z

    move-result v3

    goto/16 :goto_0

    .line 255
    :cond_6
    iget-object v4, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$SmartEffectItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;

    invoke-static {v4}, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->access$900(Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;)I

    move-result v4

    invoke-virtual {v1}, Lcom/miui/gallery/video/editor/SmartEffect;->getLongTime()I

    move-result v5

    if-le v4, v5, :cond_7

    invoke-virtual {v1}, Lcom/miui/gallery/video/editor/SmartEffect;->isLimitSixtySeconds()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 256
    iget-object v4, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$SmartEffectItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;

    iget-object v5, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$SmartEffectItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;

    iget-object v5, v5, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->mContext:Landroid/content/Context;

    const v6, 0x7f0c0562

    invoke-static {v5, v6, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->access$802(Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 257
    iget-object v4, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$SmartEffectItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;

    invoke-static {v4}, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->access$800(Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;)Landroid/widget/Toast;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$SmartEffectItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;

    invoke-static {v5}, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->access$1000(Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v5

    sub-int/2addr v5, v0

    invoke-virtual {v4, v7, v3, v5}, Landroid/widget/Toast;->setGravity(III)V

    .line 258
    iget-object v3, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$SmartEffectItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;

    invoke-static {v3}, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->access$800(Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 259
    :cond_7
    iget-object v4, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$SmartEffectItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;

    invoke-static {v4}, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->access$900(Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;)I

    move-result v4

    invoke-virtual {v1}, Lcom/miui/gallery/video/editor/SmartEffect;->getLongTime()I

    move-result v5

    if-le v4, v5, :cond_5

    invoke-virtual {v1}, Lcom/miui/gallery/video/editor/SmartEffect;->isLimitFourtySeconds()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 260
    iget-object v4, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$SmartEffectItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;

    iget-object v5, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$SmartEffectItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;

    iget-object v5, v5, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->mContext:Landroid/content/Context;

    const v6, 0x7f0c0560

    invoke-static {v5, v6, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->access$802(Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 261
    iget-object v4, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$SmartEffectItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;

    invoke-static {v4}, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->access$800(Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;)Landroid/widget/Toast;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$SmartEffectItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;

    invoke-static {v5}, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->access$1000(Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v5

    sub-int/2addr v5, v0

    invoke-virtual {v4, v7, v3, v5}, Landroid/widget/Toast;->setGravity(III)V

    .line 262
    iget-object v3, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$SmartEffectItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;

    invoke-static {v3}, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->access$800(Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 275
    .end local v0    # "offsetdY":I
    :cond_8
    iget-object v4, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$SmartEffectItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;

    iget-object v4, v4, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->mIDownloadListener:Lcom/miui/gallery/video/editor/interfaces/IVideoEditorListener$IDownloadListener;

    invoke-interface {v4, v1, p2}, Lcom/miui/gallery/video/editor/interfaces/IVideoEditorListener$IDownloadListener;->downloadResourceWithCheck(Lcom/miui/gallery/video/editor/model/VideoEditorBaseModel;I)V

    .line 276
    iget-object v4, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$SmartEffectItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;

    invoke-static {v4, v1}, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->access$1102(Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;Lcom/miui/gallery/video/editor/SmartEffect;)Lcom/miui/gallery/video/editor/SmartEffect;

    goto/16 :goto_0
.end method
