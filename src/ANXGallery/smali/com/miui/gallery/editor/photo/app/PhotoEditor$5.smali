.class Lcom/miui/gallery/editor/photo/app/PhotoEditor$5;
.super Ljava/lang/Object;
.source "PhotoEditor.java"

# interfaces
.implements Lcom/miui/gallery/editor/photo/app/MenuFragment$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/app/PhotoEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;


# direct methods
.method constructor <init>(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    .prologue
    .line 711
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$5;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private sample(Ljava/lang/String;Lcom/miui/gallery/editor/photo/core/RenderFragment;Ljava/lang/String;)V
    .locals 5
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "render"    # Lcom/miui/gallery/editor/photo/core/RenderFragment;
    .param p3, "event"    # Ljava/lang/String;

    .prologue
    .line 760
    invoke-virtual {p2}, Lcom/miui/gallery/editor/photo/core/RenderFragment;->sample()Ljava/util/List;

    move-result-object v2

    .line 761
    .local v2, "sample":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 762
    .local v0, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 763
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 764
    .local v1, "effect":Ljava/lang/String;
    const-string v4, "effect"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 765
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$5;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-static {v4}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->access$900(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)Lcom/miui/gallery/editor/photo/app/Sampler;

    move-result-object v4

    invoke-virtual {v4, p1, p3, v0}, Lcom/miui/gallery/editor/photo/app/Sampler;->recordEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 768
    .end local v1    # "effect":Ljava/lang/String;
    :cond_0
    const-string v3, "effect"

    const-string v4, "*none*"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 769
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$5;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-static {v3}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->access$900(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)Lcom/miui/gallery/editor/photo/app/Sampler;

    move-result-object v3

    invoke-virtual {v3, p1, p3, v0}, Lcom/miui/gallery/editor/photo/app/Sampler;->recordEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 771
    :cond_1
    return-void
.end method


# virtual methods
.method public onDiscard(Lcom/miui/gallery/editor/photo/app/MenuFragment;)V
    .locals 3
    .param p1, "menu"    # Lcom/miui/gallery/editor/photo/app/MenuFragment;

    .prologue
    .line 733
    invoke-virtual {p1}, Lcom/miui/gallery/editor/photo/app/MenuFragment;->getRenderFragment()Lcom/miui/gallery/editor/photo/core/RenderFragment;

    move-result-object v0

    .line 734
    .local v0, "display":Lcom/miui/gallery/editor/photo/core/RenderFragment;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/RenderFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 735
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$5;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->access$800(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/miui/gallery/editor/photo/app/MenuFragment;->mEffect:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-virtual {v2}, Lcom/miui/gallery/editor/photo/core/Effect;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    const-string v2, "discard_detail"

    invoke-direct {p0, v1, v0, v2}, Lcom/miui/gallery/editor/photo/app/PhotoEditor$5;->sample(Ljava/lang/String;Lcom/miui/gallery/editor/photo/core/RenderFragment;Ljava/lang/String;)V

    .line 736
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$5;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-static {v1, p1}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->access$1100(Lcom/miui/gallery/editor/photo/app/PhotoEditor;Lcom/miui/gallery/editor/photo/app/MenuFragment;)V

    .line 738
    :cond_0
    return-void
.end method

.method public onLoadOrigin()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 719
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$5;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->access$100(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)Lcom/miui/gallery/editor/photo/app/DraftManager;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$5;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->access$100(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)Lcom/miui/gallery/editor/photo/app/DraftManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/app/DraftManager;->decodeOrigin()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public onLoadPreview()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 714
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$5;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->access$100(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)Lcom/miui/gallery/editor/photo/app/DraftManager;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$5;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->access$100(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)Lcom/miui/gallery/editor/photo/app/DraftManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/app/DraftManager;->getPreview()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public onLoadRenderData()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/editor/photo/core/RenderData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 724
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 725
    .local v0, "renderDataList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/editor/photo/core/RenderData;>;"
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$5;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->access$100(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)Lcom/miui/gallery/editor/photo/app/DraftManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 726
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$5;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->access$100(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)Lcom/miui/gallery/editor/photo/app/DraftManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/gallery/editor/photo/app/DraftManager;->getRenderData(Ljava/util/List;)V

    .line 728
    :cond_0
    return-object v0
.end method

.method public onSave(Lcom/miui/gallery/editor/photo/app/MenuFragment;)V
    .locals 4
    .param p1, "menu"    # Lcom/miui/gallery/editor/photo/app/MenuFragment;

    .prologue
    .line 742
    invoke-virtual {p1}, Lcom/miui/gallery/editor/photo/app/MenuFragment;->getRenderFragment()Lcom/miui/gallery/editor/photo/core/RenderFragment;

    move-result-object v1

    .line 743
    .local v1, "display":Lcom/miui/gallery/editor/photo/core/RenderFragment;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/RenderFragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 744
    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/RenderFragment;->export()Lcom/miui/gallery/editor/photo/core/RenderData;

    move-result-object v0

    .line 745
    .local v0, "data":Lcom/miui/gallery/editor/photo/core/RenderData;
    if-eqz v0, :cond_1

    .line 746
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$5;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->access$800(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/miui/gallery/editor/photo/app/MenuFragment;->mEffect:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-virtual {v3}, Lcom/miui/gallery/editor/photo/core/Effect;->ordinal()I

    move-result v3

    aget-object v2, v2, v3

    const-string v3, "save_detail"

    invoke-direct {p0, v2, v1, v3}, Lcom/miui/gallery/editor/photo/app/PhotoEditor$5;->sample(Ljava/lang/String;Lcom/miui/gallery/editor/photo/core/RenderFragment;Ljava/lang/String;)V

    .line 748
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$5;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->access$100(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)Lcom/miui/gallery/editor/photo/app/DraftManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 749
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$5;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->access$100(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)Lcom/miui/gallery/editor/photo/app/DraftManager;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$5;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-static {v3}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->access$1200(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)Lcom/miui/gallery/editor/photo/utils/Callback;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/miui/gallery/editor/photo/app/DraftManager;->enqueue(Lcom/miui/gallery/editor/photo/core/RenderData;Lcom/miui/gallery/editor/photo/utils/Callback;)V

    .line 757
    .end local v0    # "data":Lcom/miui/gallery/editor/photo/core/RenderData;
    :cond_0
    :goto_0
    return-void

    .line 752
    .restart local v0    # "data":Lcom/miui/gallery/editor/photo/core/RenderData;
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$5;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->access$1200(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)Lcom/miui/gallery/editor/photo/utils/Callback;

    move-result-object v2

    invoke-interface {v2}, Lcom/miui/gallery/editor/photo/utils/Callback;->onCancel()V

    goto :goto_0

    .line 755
    .end local v0    # "data":Lcom/miui/gallery/editor/photo/core/RenderData;
    :cond_2
    const-string v2, "PhotoEditor"

    const-string v3, "no active render fragment"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
