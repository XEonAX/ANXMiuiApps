.class Lcom/miui/gallery/ui/ShareFilePrepareFragment$2;
.super Ljava/lang/Object;
.source "ShareFilePrepareFragment.java"

# interfaces
.implements Lcom/miui/gallery/ui/ShareFilePrepareFragment$DecodeSecretTask$DecodeSecretListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/ShareFilePrepareFragment;->doSecret()V
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
    .line 188
    iput-object p1, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment$2;->this$0:Lcom/miui/gallery/ui/ShareFilePrepareFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 197
    .local p1, "finalUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    iget-object v4, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment$2;->this$0:Lcom/miui/gallery/ui/ShareFilePrepareFragment;

    invoke-static {v4}, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->access$400(Lcom/miui/gallery/ui/ShareFilePrepareFragment;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 198
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 199
    iget-object v4, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment$2;->this$0:Lcom/miui/gallery/ui/ShareFilePrepareFragment;

    const v5, 0x7f0c047c

    invoke-static {v4, v5}, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->access$500(Lcom/miui/gallery/ui/ShareFilePrepareFragment;I)V

    .line 224
    :goto_0
    return-void

    .line 202
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 203
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 204
    .local v2, "newUri":Landroid/net/Uri;
    iget-object v4, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment$2;->this$0:Lcom/miui/gallery/ui/ShareFilePrepareFragment;

    invoke-static {v4}, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->access$400(Lcom/miui/gallery/ui/ShareFilePrepareFragment;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    iget-object v4, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment$2;->this$0:Lcom/miui/gallery/ui/ShareFilePrepareFragment;

    invoke-static {v4}, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->access$700(Lcom/miui/gallery/ui/ShareFilePrepareFragment;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment$2;->this$0:Lcom/miui/gallery/ui/ShareFilePrepareFragment;

    invoke-static {v5}, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->access$600(Lcom/miui/gallery/ui/ShareFilePrepareFragment;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 206
    .local v1, "index":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    .line 207
    iget-object v4, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment$2;->this$0:Lcom/miui/gallery/ui/ShareFilePrepareFragment;

    invoke-static {v4}, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->access$700(Lcom/miui/gallery/ui/ShareFilePrepareFragment;)Ljava/util/List;

    move-result-object v4

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 202
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 210
    .end local v1    # "index":I
    .end local v2    # "newUri":Landroid/net/Uri;
    :cond_2
    iget-object v4, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment$2;->this$0:Lcom/miui/gallery/ui/ShareFilePrepareFragment;

    invoke-static {v4}, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->access$800(Lcom/miui/gallery/ui/ShareFilePrepareFragment;)Ljava/util/Set;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 211
    const/4 v0, 0x0

    :goto_2
    iget-object v4, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment$2;->this$0:Lcom/miui/gallery/ui/ShareFilePrepareFragment;

    invoke-static {v4}, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->access$600(Lcom/miui/gallery/ui/ShareFilePrepareFragment;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 212
    iget-object v4, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment$2;->this$0:Lcom/miui/gallery/ui/ShareFilePrepareFragment;

    invoke-static {v4}, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->access$600(Lcom/miui/gallery/ui/ShareFilePrepareFragment;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 213
    .local v3, "oldUri":Landroid/net/Uri;
    iget-object v4, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment$2;->this$0:Lcom/miui/gallery/ui/ShareFilePrepareFragment;

    invoke-static {v4}, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->access$800(Lcom/miui/gallery/ui/ShareFilePrepareFragment;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 214
    iget-object v4, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment$2;->this$0:Lcom/miui/gallery/ui/ShareFilePrepareFragment;

    invoke-static {v4}, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->access$800(Lcom/miui/gallery/ui/ShareFilePrepareFragment;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 215
    iget-object v4, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment$2;->this$0:Lcom/miui/gallery/ui/ShareFilePrepareFragment;

    invoke-static {v4}, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->access$800(Lcom/miui/gallery/ui/ShareFilePrepareFragment;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 216
    const-string v4, "ShareFilePrepareFragment"

    const-string v5, "download success, need render: %s"

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 211
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 219
    .end local v3    # "oldUri":Landroid/net/Uri;
    :cond_4
    iget-object v4, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment$2;->this$0:Lcom/miui/gallery/ui/ShareFilePrepareFragment;

    invoke-static {v4}, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->access$900(Lcom/miui/gallery/ui/ShareFilePrepareFragment;)V

    .line 223
    :goto_3
    iget-object v4, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment$2;->this$0:Lcom/miui/gallery/ui/ShareFilePrepareFragment;

    invoke-static {v4}, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->access$1100(Lcom/miui/gallery/ui/ShareFilePrepareFragment;)V

    goto/16 :goto_0

    .line 221
    :cond_5
    iget-object v4, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment$2;->this$0:Lcom/miui/gallery/ui/ShareFilePrepareFragment;

    invoke-static {v4}, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->access$1000(Lcom/miui/gallery/ui/ShareFilePrepareFragment;)V

    goto :goto_3
.end method

.method public onItemFinish(F)V
    .locals 3
    .param p1, "progress"    # F

    .prologue
    .line 192
    iget-object v0, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment$2;->this$0:Lcom/miui/gallery/ui/ShareFilePrepareFragment;

    iget-object v1, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment$2;->this$0:Lcom/miui/gallery/ui/ShareFilePrepareFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->access$100(Lcom/miui/gallery/ui/ShareFilePrepareFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment$2;->this$0:Lcom/miui/gallery/ui/ShareFilePrepareFragment;

    invoke-static {v2}, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->access$200(Lcom/miui/gallery/ui/ShareFilePrepareFragment;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->access$300(Lcom/miui/gallery/ui/ShareFilePrepareFragment;I)V

    .line 193
    return-void
.end method
