.class Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$MyStateChangeListener;
.super Ljava/lang/Object;
.source "VideoEditorFragment.java"

# interfaces
.implements Lcom/miui/gallery/video/editor/VideoEditor$StateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyStateChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;)V
    .locals 0

    .prologue
    .line 369
    iput-object p1, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$MyStateChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;
    .param p2, "x1"    # Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$1;

    .prologue
    .line 369
    invoke-direct {p0, p1}, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$MyStateChangeListener;-><init>(Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;)V

    return-void
.end method


# virtual methods
.method public onStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 372
    sparse-switch p1, :sswitch_data_0

    .line 394
    :goto_0
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$MyStateChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;

    invoke-static {v0}, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->access$700(Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;)Lcom/miui/gallery/video/editor/util/VideoEditorHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->updatePlayView()V

    .line 395
    return-void

    .line 374
    :sswitch_0
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$MyStateChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;

    invoke-static {v0}, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->access$1200(Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c052d

    invoke-static {v0, v1}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;I)V

    .line 375
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$MyStateChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->exit()V

    goto :goto_0

    .line 379
    :sswitch_1
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$MyStateChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;

    invoke-static {v0}, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->access$1300(Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/video/editor/util/ToolsUtil;->hideView(Landroid/view/View;)V

    goto :goto_0

    .line 382
    :sswitch_2
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$MyStateChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;

    invoke-static {v0}, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->access$1300(Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/video/editor/util/ToolsUtil;->hideView(Landroid/view/View;)V

    goto :goto_0

    .line 385
    :sswitch_3
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$MyStateChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;

    invoke-static {v0}, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->access$1300(Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/video/editor/util/ToolsUtil;->hideView(Landroid/view/View;)V

    goto :goto_0

    .line 388
    :sswitch_4
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$MyStateChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;

    invoke-static {v0}, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->access$1300(Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/video/editor/util/ToolsUtil;->hideView(Landroid/view/View;)V

    goto :goto_0

    .line 391
    :sswitch_5
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$MyStateChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;

    invoke-static {v0}, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->access$1400(Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;)V

    goto :goto_0

    .line 372
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1f4 -> :sswitch_0
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x2 -> :sswitch_1
        0x3 -> :sswitch_3
        0xc8 -> :sswitch_4
        0x1f4 -> :sswitch_5
    .end sparse-switch
.end method

.method public onTimeChanged(I)V
    .locals 2
    .param p1, "currenTime"    # I

    .prologue
    .line 399
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$MyStateChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;

    invoke-static {v0}, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->access$600(Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;)Lcom/miui/gallery/video/editor/widget/DisplayWrapper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->showPlayProgress(Z)V

    .line 400
    return-void
.end method
