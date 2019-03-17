.class Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment$5$1;
.super Ljava/lang/Object;
.source "FilterAdjustFragment.java"

# interfaces
.implements Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment$5;->onItemSelect(Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView$SingleChoiceRecyclerViewAdapter;IZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment$5;


# direct methods
.method constructor <init>(Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment$5;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment$5;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment$5$1;->this$1:Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment$5$1;->this$1:Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment$5;

    iget-object v0, v0, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment$5;->this$0:Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;

    invoke-static {v0}, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->access$2000(Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;)Lcom/miui/gallery/video/editor/VideoEditor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/VideoEditor;->play()V

    .line 160
    iget-object v0, p0, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment$5$1;->this$1:Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment$5;

    iget-object v0, v0, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment$5;->this$0:Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;

    invoke-static {v0}, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->access$2100(Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;)V

    .line 161
    iget-object v0, p0, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment$5$1;->this$1:Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment$5;

    iget-object v0, v0, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment$5;->this$0:Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->updatePalyBtnView()V

    .line 162
    return-void
.end method
