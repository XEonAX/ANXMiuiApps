.class Lcom/miui/gallery/video/editor/fragment/VideoNavFragment$4;
.super Ljava/lang/Object;
.source "VideoNavFragment.java"

# interfaces
.implements Lcom/miui/gallery/video/editor/ui/SimpleRecyclerView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment$4;->this$0:Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnItemClick(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;I)Z
    .locals 3
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "position"    # I

    .prologue
    .line 183
    iget-object v1, p0, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment$4;->this$0:Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;

    invoke-static {v1}, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;->access$000(Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;)Lcom/miui/gallery/video/editor/interfaces/IVideoEditorListener$IVideoEditorFragmentCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/gallery/video/editor/interfaces/IVideoEditorListener$IVideoEditorFragmentCallback;->isLoadSuccess()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 184
    iget-object v1, p0, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment$4;->this$0:Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;

    invoke-static {v1}, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;->access$100(Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/video/editor/model/MenuFragmentData;

    .line 185
    .local v0, "navigatorData":Lcom/miui/gallery/video/editor/model/MenuFragmentData;
    if-eqz v0, :cond_0

    .line 186
    iget-object v1, p0, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment$4;->this$0:Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;

    invoke-static {v1}, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;->access$200(Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;)Lcom/miui/gallery/video/editor/interfaces/IVideoEditorListener$IVideoEditorFragmentCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/miui/gallery/video/editor/interfaces/IVideoEditorListener$IVideoEditorFragmentCallback;->changeEditMenu(Lcom/miui/gallery/video/editor/model/MenuFragmentData;)V

    .line 188
    :cond_0
    const/4 v1, 0x1

    .line 191
    .end local v0    # "navigatorData":Lcom/miui/gallery/video/editor/model/MenuFragmentData;
    :goto_0
    return v1

    .line 190
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment$4;->this$0:Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;

    invoke-static {v1}, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;->access$300(Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0576

    invoke-static {v1, v2}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;I)V

    .line 191
    const/4 v1, 0x0

    goto :goto_0
.end method
