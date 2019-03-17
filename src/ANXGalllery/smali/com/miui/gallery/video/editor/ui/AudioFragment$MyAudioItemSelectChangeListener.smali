.class Lcom/miui/gallery/video/editor/ui/AudioFragment$MyAudioItemSelectChangeListener;
.super Ljava/lang/Object;
.source "AudioFragment.java"

# interfaces
.implements Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView$SingleChoiceRecyclerViewAdapter$ItemSelectChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/video/editor/ui/AudioFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyAudioItemSelectChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/video/editor/ui/AudioFragment;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/video/editor/ui/AudioFragment;)V
    .locals 0

    .prologue
    .line 284
    iput-object p1, p0, Lcom/miui/gallery/video/editor/ui/AudioFragment$MyAudioItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/AudioFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/video/editor/ui/AudioFragment;Lcom/miui/gallery/video/editor/ui/AudioFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/video/editor/ui/AudioFragment;
    .param p2, "x1"    # Lcom/miui/gallery/video/editor/ui/AudioFragment$1;

    .prologue
    .line 284
    invoke-direct {p0, p1}, Lcom/miui/gallery/video/editor/ui/AudioFragment$MyAudioItemSelectChangeListener;-><init>(Lcom/miui/gallery/video/editor/ui/AudioFragment;)V

    return-void
.end method


# virtual methods
.method public onItemSelect(Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView$SingleChoiceRecyclerViewAdapter;IZ)Z
    .locals 9
    .param p1, "adapter"    # Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView$SingleChoiceRecyclerViewAdapter;
    .param p2, "position"    # I
    .param p3, "isChanged"    # Z

    .prologue
    const/4 v8, 0x0

    .line 288
    iget-object v6, p0, Lcom/miui/gallery/video/editor/ui/AudioFragment$MyAudioItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/AudioFragment;

    invoke-static {v6}, Lcom/miui/gallery/video/editor/ui/AudioFragment;->access$500(Lcom/miui/gallery/video/editor/ui/AudioFragment;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 329
    :cond_0
    :goto_0
    return v8

    .line 291
    :cond_1
    iget-object v6, p0, Lcom/miui/gallery/video/editor/ui/AudioFragment$MyAudioItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/AudioFragment;

    invoke-static {v6}, Lcom/miui/gallery/video/editor/ui/AudioFragment;->access$600(Lcom/miui/gallery/video/editor/ui/AudioFragment;)Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView;

    move-result-object v6

    invoke-static {v6, p2}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/ScrollControlLinearLayoutManager;->onItemClick(Landroid/support/v7/widget/RecyclerView;I)V

    move-object v1, p1

    .line 292
    check-cast v1, Lcom/miui/gallery/video/editor/adapter/AudioRecyclerViewAdapter;

    .line 293
    .local v1, "audioRecyclerViewAdapter":Lcom/miui/gallery/video/editor/adapter/AudioRecyclerViewAdapter;
    invoke-virtual {v1, p2}, Lcom/miui/gallery/video/editor/adapter/AudioRecyclerViewAdapter;->getAuido(I)Lcom/miui/gallery/video/editor/LocalAudio;

    move-result-object v5

    .line 294
    .local v5, "localAudio":Lcom/miui/gallery/video/editor/LocalAudio;
    if-eqz v5, :cond_0

    .line 295
    invoke-virtual {v5}, Lcom/miui/gallery/video/editor/LocalAudio;->isCustom()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 297
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 298
    .local v3, "intent":Landroid/content/Intent;
    const-string v6, "audio/*"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 299
    const-string v6, "android.intent.action.GET_CONTENT"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 300
    const-string v6, "com.miui.player"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 302
    :try_start_0
    iget-object v6, p0, Lcom/miui/gallery/video/editor/ui/AudioFragment$MyAudioItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/AudioFragment;

    const/16 v7, 0x3e8

    invoke-virtual {v6, v3, v7}, Lcom/miui/gallery/video/editor/ui/AudioFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    :goto_1
    iget-object v6, p0, Lcom/miui/gallery/video/editor/ui/AudioFragment$MyAudioItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/AudioFragment;

    invoke-static {v6, p2}, Lcom/miui/gallery/video/editor/ui/AudioFragment;->access$400(Lcom/miui/gallery/video/editor/ui/AudioFragment;I)V

    goto :goto_0

    .line 303
    :catch_0
    move-exception v2

    .line 304
    .local v2, "e":Landroid/content/ActivityNotFoundException;
    const-string v6, "AudioFragment"

    const-string v7, "com.miui.player not found,try all picker"

    invoke-static {v6, v7}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    :try_start_1
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 307
    .end local v3    # "intent":Landroid/content/Intent;
    .local v4, "intent":Landroid/content/Intent;
    :try_start_2
    const-string v6, "audio/*"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 308
    const-string v6, "android.intent.action.GET_CONTENT"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 309
    iget-object v6, p0, Lcom/miui/gallery/video/editor/ui/AudioFragment$MyAudioItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/AudioFragment;

    const/16 v7, 0x3e8

    invoke-virtual {v6, v4, v7}, Lcom/miui/gallery/video/editor/ui/AudioFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v3, v4

    .line 312
    .end local v4    # "intent":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/content/Intent;
    goto :goto_1

    .line 310
    :catch_1
    move-exception v0

    .line 311
    .local v0, "ae":Landroid/content/ActivityNotFoundException;
    :goto_2
    const-string v6, "AudioFragment"

    const-string v7, "picker not found"

    invoke-static {v6, v7}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 316
    .end local v0    # "ae":Landroid/content/ActivityNotFoundException;
    .end local v2    # "e":Landroid/content/ActivityNotFoundException;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_2
    invoke-virtual {v5}, Lcom/miui/gallery/video/editor/LocalAudio;->isNone()Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz p3, :cond_3

    .line 317
    iget-object v6, p0, Lcom/miui/gallery/video/editor/ui/AudioFragment$MyAudioItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/AudioFragment;

    invoke-static {v6, p2}, Lcom/miui/gallery/video/editor/ui/AudioFragment;->access$400(Lcom/miui/gallery/video/editor/ui/AudioFragment;I)V

    .line 318
    iget-object v6, p0, Lcom/miui/gallery/video/editor/ui/AudioFragment$MyAudioItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/AudioFragment;

    invoke-static {v6, v5}, Lcom/miui/gallery/video/editor/ui/AudioFragment;->access$700(Lcom/miui/gallery/video/editor/ui/AudioFragment;Lcom/miui/gallery/video/editor/LocalAudio;)V

    goto :goto_0

    .line 319
    :cond_3
    invoke-virtual {v5}, Lcom/miui/gallery/video/editor/LocalAudio;->isExtra()Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz p3, :cond_0

    .line 320
    invoke-virtual {v5}, Lcom/miui/gallery/video/editor/LocalAudio;->isDownloaded()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 321
    iget-object v6, p0, Lcom/miui/gallery/video/editor/ui/AudioFragment$MyAudioItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/AudioFragment;

    invoke-static {v6, p2}, Lcom/miui/gallery/video/editor/ui/AudioFragment;->access$400(Lcom/miui/gallery/video/editor/ui/AudioFragment;I)V

    .line 322
    iget-object v6, p0, Lcom/miui/gallery/video/editor/ui/AudioFragment$MyAudioItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/AudioFragment;

    invoke-static {v6, v5}, Lcom/miui/gallery/video/editor/ui/AudioFragment;->access$700(Lcom/miui/gallery/video/editor/ui/AudioFragment;Lcom/miui/gallery/video/editor/LocalAudio;)V

    goto/16 :goto_0

    .line 324
    :cond_4
    iget-object v6, p0, Lcom/miui/gallery/video/editor/ui/AudioFragment$MyAudioItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/AudioFragment;

    iget-object v6, v6, Lcom/miui/gallery/video/editor/ui/AudioFragment;->mIDownloadListener:Lcom/miui/gallery/video/editor/interfaces/IVideoEditorListener$IDownloadListener;

    invoke-interface {v6, v5, p2}, Lcom/miui/gallery/video/editor/interfaces/IVideoEditorListener$IDownloadListener;->downloadResourceWithCheck(Lcom/miui/gallery/video/editor/model/VideoEditorBaseModel;I)V

    .line 325
    iget-object v6, p0, Lcom/miui/gallery/video/editor/ui/AudioFragment$MyAudioItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/AudioFragment;

    invoke-static {v6, v5}, Lcom/miui/gallery/video/editor/ui/AudioFragment;->access$802(Lcom/miui/gallery/video/editor/ui/AudioFragment;Lcom/miui/gallery/video/editor/LocalAudio;)Lcom/miui/gallery/video/editor/LocalAudio;

    goto/16 :goto_0

    .line 310
    .restart local v2    # "e":Landroid/content/ActivityNotFoundException;
    .restart local v4    # "intent":Landroid/content/Intent;
    :catch_2
    move-exception v0

    move-object v3, v4

    .end local v4    # "intent":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/content/Intent;
    goto :goto_2
.end method
