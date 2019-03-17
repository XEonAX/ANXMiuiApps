.class Lcom/miui/gallery/ui/ShareFilePrepareFragment$3;
.super Ljava/lang/Object;
.source "ShareFilePrepareFragment.java"

# interfaces
.implements Lcom/miui/gallery/editor/photo/sdk/RenderTask$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/ShareFilePrepareFragment;->doRender()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/ShareFilePrepareFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/ShareFilePrepareFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/ShareFilePrepareFragment;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment$3;->this$0:Lcom/miui/gallery/ui/ShareFilePrepareFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemFinish(Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 6
    .param p1, "input"    # Landroid/net/Uri;
    .param p2, "output"    # Landroid/net/Uri;

    .prologue
    .line 242
    const-string v2, "ShareFilePrepareFragment"

    const-string v3, "render one item: %s -> %s"

    invoke-static {v2, v3, p1, p2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 244
    iget-object v2, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment$3;->this$0:Lcom/miui/gallery/ui/ShareFilePrepareFragment;

    invoke-static {v2}, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->access$800(Lcom/miui/gallery/ui/ShareFilePrepareFragment;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 245
    if-nez p2, :cond_0

    .line 246
    iget-object v2, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment$3;->this$0:Lcom/miui/gallery/ui/ShareFilePrepareFragment;

    invoke-static {v2}, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->access$1300(Lcom/miui/gallery/ui/ShareFilePrepareFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    :goto_0
    iget-object v2, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment$3;->this$0:Lcom/miui/gallery/ui/ShareFilePrepareFragment;

    invoke-static {v2}, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->access$1400(Lcom/miui/gallery/ui/ShareFilePrepareFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment$3;->this$0:Lcom/miui/gallery/ui/ShareFilePrepareFragment;

    invoke-static {v3}, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->access$1300(Lcom/miui/gallery/ui/ShareFilePrepareFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment$3;->this$0:Lcom/miui/gallery/ui/ShareFilePrepareFragment;

    invoke-static {v3}, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->access$800(Lcom/miui/gallery/ui/ShareFilePrepareFragment;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    add-int v1, v2, v3

    .line 252
    .local v1, "total":I
    iget-object v2, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment$3;->this$0:Lcom/miui/gallery/ui/ShareFilePrepareFragment;

    invoke-static {v2}, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->access$1400(Lcom/miui/gallery/ui/ShareFilePrepareFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment$3;->this$0:Lcom/miui/gallery/ui/ShareFilePrepareFragment;

    invoke-static {v3}, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->access$1300(Lcom/miui/gallery/ui/ShareFilePrepareFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int v0, v2, v3

    .line 253
    .local v0, "finished":I
    iget-object v2, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment$3;->this$0:Lcom/miui/gallery/ui/ShareFilePrepareFragment;

    iget-object v3, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment$3;->this$0:Lcom/miui/gallery/ui/ShareFilePrepareFragment;

    invoke-static {v3}, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->access$100(Lcom/miui/gallery/ui/ShareFilePrepareFragment;)I

    move-result v3

    iget-object v4, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment$3;->this$0:Lcom/miui/gallery/ui/ShareFilePrepareFragment;

    invoke-static {v4}, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->access$200(Lcom/miui/gallery/ui/ShareFilePrepareFragment;)I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v4, v0

    int-to-float v5, v1

    div-float/2addr v4, v5

    iget-object v5, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment$3;->this$0:Lcom/miui/gallery/ui/ShareFilePrepareFragment;

    invoke-static {v5}, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->access$1500(Lcom/miui/gallery/ui/ShareFilePrepareFragment;)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->access$300(Lcom/miui/gallery/ui/ShareFilePrepareFragment;I)V

    .line 254
    return-void

    .line 248
    .end local v0    # "finished":I
    .end local v1    # "total":I
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment$3;->this$0:Lcom/miui/gallery/ui/ShareFilePrepareFragment;

    invoke-static {v2}, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->access$1400(Lcom/miui/gallery/ui/ShareFilePrepareFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    iget-object v2, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment$3;->this$0:Lcom/miui/gallery/ui/ShareFilePrepareFragment;

    invoke-static {v2}, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->access$400(Lcom/miui/gallery/ui/ShareFilePrepareFragment;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onTaskCancelled()V
    .locals 2

    .prologue
    .line 267
    const-string v0, "ShareFilePrepareFragment"

    const-string v1, "render finish"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment$3;->this$0:Lcom/miui/gallery/ui/ShareFilePrepareFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->access$1600(Lcom/miui/gallery/ui/ShareFilePrepareFragment;)V

    .line 269
    iget-object v0, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment$3;->this$0:Lcom/miui/gallery/ui/ShareFilePrepareFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->access$1100(Lcom/miui/gallery/ui/ShareFilePrepareFragment;)V

    .line 270
    iget-object v0, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment$3;->this$0:Lcom/miui/gallery/ui/ShareFilePrepareFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->access$1702(Lcom/miui/gallery/ui/ShareFilePrepareFragment;Lcom/miui/gallery/editor/photo/sdk/RenderTask;)Lcom/miui/gallery/editor/photo/sdk/RenderTask;

    .line 271
    return-void
.end method

.method public onTaskError()V
    .locals 2

    .prologue
    .line 276
    const-string v0, "ShareFilePrepareFragment"

    const-string v1, "render error"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment$3;->this$0:Lcom/miui/gallery/ui/ShareFilePrepareFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->access$1600(Lcom/miui/gallery/ui/ShareFilePrepareFragment;)V

    .line 278
    iget-object v0, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment$3;->this$0:Lcom/miui/gallery/ui/ShareFilePrepareFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->access$1100(Lcom/miui/gallery/ui/ShareFilePrepareFragment;)V

    .line 279
    iget-object v0, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment$3;->this$0:Lcom/miui/gallery/ui/ShareFilePrepareFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->access$1702(Lcom/miui/gallery/ui/ShareFilePrepareFragment;Lcom/miui/gallery/editor/photo/sdk/RenderTask;)Lcom/miui/gallery/editor/photo/sdk/RenderTask;

    .line 280
    iget-object v0, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment$3;->this$0:Lcom/miui/gallery/ui/ShareFilePrepareFragment;

    const v1, 0x7f0c0479

    invoke-static {v0, v1}, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->access$500(Lcom/miui/gallery/ui/ShareFilePrepareFragment;I)V

    .line 281
    return-void
.end method

.method public onTaskFinish()V
    .locals 2

    .prologue
    .line 258
    const-string v0, "ShareFilePrepareFragment"

    const-string v1, "render finish"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment$3;->this$0:Lcom/miui/gallery/ui/ShareFilePrepareFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->access$1600(Lcom/miui/gallery/ui/ShareFilePrepareFragment;)V

    .line 260
    iget-object v0, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment$3;->this$0:Lcom/miui/gallery/ui/ShareFilePrepareFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->access$1100(Lcom/miui/gallery/ui/ShareFilePrepareFragment;)V

    .line 261
    iget-object v0, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment$3;->this$0:Lcom/miui/gallery/ui/ShareFilePrepareFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->access$1000(Lcom/miui/gallery/ui/ShareFilePrepareFragment;)V

    .line 262
    iget-object v0, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment$3;->this$0:Lcom/miui/gallery/ui/ShareFilePrepareFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->access$1702(Lcom/miui/gallery/ui/ShareFilePrepareFragment;Lcom/miui/gallery/editor/photo/sdk/RenderTask;)Lcom/miui/gallery/editor/photo/sdk/RenderTask;

    .line 263
    return-void
.end method
