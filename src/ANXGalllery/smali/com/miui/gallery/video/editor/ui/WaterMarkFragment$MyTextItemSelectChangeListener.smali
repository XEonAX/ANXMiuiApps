.class Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$MyTextItemSelectChangeListener;
.super Ljava/lang/Object;
.source "WaterMarkFragment.java"

# interfaces
.implements Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView$SingleChoiceRecyclerViewAdapter$ItemSelectChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyTextItemSelectChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)V
    .locals 0

    .prologue
    .line 350
    iput-object p1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$MyTextItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;
    .param p2, "x1"    # Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$1;

    .prologue
    .line 350
    invoke-direct {p0, p1}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$MyTextItemSelectChangeListener;-><init>(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)V

    return-void
.end method


# virtual methods
.method public onItemSelect(Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView$SingleChoiceRecyclerViewAdapter;IZ)Z
    .locals 5
    .param p1, "adapter"    # Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView$SingleChoiceRecyclerViewAdapter;
    .param p2, "position"    # I
    .param p3, "isChanged"    # Z

    .prologue
    const/4 v2, 0x0

    .line 353
    iget-object v3, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$MyTextItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    invoke-static {v3}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->access$600(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 421
    :cond_0
    :goto_0
    return v2

    :cond_1
    move-object v1, p1

    .line 356
    check-cast v1, Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;

    .line 357
    .local v1, "textRecyclerViewAdapter":Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;
    iget-object v3, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$MyTextItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    invoke-static {v3}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->access$700(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView;

    move-result-object v3

    invoke-static {v3, p2}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/ScrollControlLinearLayoutManager;->onItemClick(Landroid/support/v7/widget/RecyclerView;I)V

    .line 358
    invoke-virtual {v1, p2}, Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;->getTextStyle(I)Lcom/miui/gallery/video/editor/TextStyle;

    move-result-object v0

    .line 359
    .local v0, "style":Lcom/miui/gallery/video/editor/TextStyle;
    if-eqz v0, :cond_0

    if-nez p3, :cond_2

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/TextStyle;->isLocal()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 362
    :cond_2
    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/TextStyle;->isNone()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 363
    iget-object v3, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$MyTextItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    invoke-static {v3, p2}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->access$800(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;I)V

    .line 364
    iget-object v3, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$MyTextItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    invoke-static {v3, v2}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->access$902(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;Z)Z

    .line 365
    iget-object v2, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$MyTextItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    iget-object v3, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$MyTextItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    invoke-static {v3}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->access$1100(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)Lcom/miui/gallery/video/editor/TextStyle;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->access$1002(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;Lcom/miui/gallery/video/editor/TextStyle;)Lcom/miui/gallery/video/editor/TextStyle;

    .line 366
    iget-object v2, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$MyTextItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    invoke-static {v2, v0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->access$1102(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;Lcom/miui/gallery/video/editor/TextStyle;)Lcom/miui/gallery/video/editor/TextStyle;

    .line 367
    iget-object v2, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$MyTextItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    iget-object v2, v2, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    const-string v3, ""

    iget-object v4, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$MyTextItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    invoke-static {v4}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->access$1200(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/miui/gallery/video/editor/VideoEditor;->setAutoWaterMark(Ljava/lang/String;I)Z

    .line 368
    iget-object v2, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$MyTextItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    iget-object v2, v2, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    iget-object v3, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$MyTextItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    invoke-static {v3}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->access$1200(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)I

    move-result v3

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/miui/gallery/video/editor/VideoEditor;->setWarterMark(ILjava/lang/String;)Z

    .line 369
    iget-object v2, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$MyTextItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    iget-object v2, v2, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    new-instance v3, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$MyTextItemSelectChangeListener$1;

    invoke-direct {v3, p0, p2}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$MyTextItemSelectChangeListener$1;-><init>(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$MyTextItemSelectChangeListener;I)V

    invoke-virtual {v2, v3}, Lcom/miui/gallery/video/editor/VideoEditor;->apply(Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;)Z

    move-result v2

    goto :goto_0

    .line 378
    :cond_3
    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/TextStyle;->isExtra()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 379
    iget-object v3, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$MyTextItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    invoke-static {v3, v2}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->access$902(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;Z)Z

    .line 380
    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/TextStyle;->isDownloaded()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 381
    iget-object v2, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$MyTextItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    invoke-static {v2, p2}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->access$800(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;I)V

    .line 382
    iget-object v2, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$MyTextItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    invoke-static {v2}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->access$1400(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)V

    .line 383
    iget-object v2, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$MyTextItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    iget-object v3, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$MyTextItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    invoke-static {v3}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->access$1100(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)Lcom/miui/gallery/video/editor/TextStyle;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->access$1002(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;Lcom/miui/gallery/video/editor/TextStyle;)Lcom/miui/gallery/video/editor/TextStyle;

    .line 384
    iget-object v2, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$MyTextItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    invoke-static {v2, v0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->access$1102(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;Lcom/miui/gallery/video/editor/TextStyle;)Lcom/miui/gallery/video/editor/TextStyle;

    .line 385
    iget-object v2, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$MyTextItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    iget-object v2, v2, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    const-string v3, ""

    iget-object v4, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$MyTextItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    invoke-static {v4}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->access$1200(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/miui/gallery/video/editor/VideoEditor;->setAutoWaterMark(Ljava/lang/String;I)Z

    .line 386
    iget-object v2, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$MyTextItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    iget-object v2, v2, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    iget-object v3, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$MyTextItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    invoke-static {v3}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->access$1200(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)I

    move-result v3

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/TextStyle;->getTemplateId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/miui/gallery/video/editor/VideoEditor;->setWarterMark(ILjava/lang/String;)Z

    .line 387
    iget-object v2, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$MyTextItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    iget-object v2, v2, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    new-instance v3, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$MyTextItemSelectChangeListener$2;

    invoke-direct {v3, p0, p2}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$MyTextItemSelectChangeListener$2;-><init>(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$MyTextItemSelectChangeListener;I)V

    invoke-virtual {v2, v3}, Lcom/miui/gallery/video/editor/VideoEditor;->apply(Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;)Z

    move-result v2

    goto/16 :goto_0

    .line 397
    :cond_4
    iget-object v3, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$MyTextItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    iget-object v3, v3, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mIDownloadListener:Lcom/miui/gallery/video/editor/interfaces/IVideoEditorListener$IDownloadListener;

    invoke-interface {v3, v0, p2}, Lcom/miui/gallery/video/editor/interfaces/IVideoEditorListener$IDownloadListener;->downloadResourceWithCheck(Lcom/miui/gallery/video/editor/model/VideoEditorBaseModel;I)V

    .line 398
    iget-object v3, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$MyTextItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    invoke-static {v3, v0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->access$1502(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;Lcom/miui/gallery/video/editor/TextStyle;)Lcom/miui/gallery/video/editor/TextStyle;

    goto/16 :goto_0

    .line 400
    :cond_5
    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/TextStyle;->isLocal()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 401
    iget-object v3, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$MyTextItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    iget-object v4, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$MyTextItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    invoke-static {v4}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->access$1100(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)Lcom/miui/gallery/video/editor/TextStyle;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->access$1002(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;Lcom/miui/gallery/video/editor/TextStyle;)Lcom/miui/gallery/video/editor/TextStyle;

    .line 402
    iget-object v3, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$MyTextItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    invoke-static {v3, v0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->access$1102(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;Lcom/miui/gallery/video/editor/TextStyle;)Lcom/miui/gallery/video/editor/TextStyle;

    .line 403
    iget-object v3, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$MyTextItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    invoke-static {v3}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->access$1600(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 405
    iget-object v3, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$MyTextItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    invoke-static {v3}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->access$900(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 406
    iget-object v3, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$MyTextItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    invoke-static {v3}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->access$1700(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)V

    .line 407
    iget-object v3, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$MyTextItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    invoke-static {v3}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->access$1800(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)Z

    .line 419
    :goto_1
    iget-object v3, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$MyTextItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    invoke-static {v3}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->access$1400(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)V

    goto/16 :goto_0

    .line 410
    :cond_6
    iget-object v3, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$MyTextItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    invoke-static {v3}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->access$1900(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)V

    .line 411
    iget-object v3, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$MyTextItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    invoke-static {v3}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->access$2000(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)V

    .line 412
    iget-object v3, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$MyTextItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    iget-object v3, v3, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    invoke-virtual {v3}, Lcom/miui/gallery/video/editor/VideoEditor;->pause()V

    goto :goto_1

    .line 415
    :cond_7
    iget-object v3, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$MyTextItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    invoke-static {v3}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->access$1900(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)V

    .line 416
    iget-object v3, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$MyTextItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    invoke-static {v3}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->access$2000(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)V

    .line 417
    iget-object v3, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$MyTextItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    iget-object v3, v3, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    invoke-virtual {v3}, Lcom/miui/gallery/video/editor/VideoEditor;->pause()V

    goto :goto_1
.end method
