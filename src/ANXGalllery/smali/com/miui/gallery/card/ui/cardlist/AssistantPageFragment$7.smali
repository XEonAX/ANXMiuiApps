.class Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment$7;
.super Lcom/miui/gallery/threadpool/FutureHandler;
.source "AssistantPageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;->loadMoreCard()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/threadpool/FutureHandler",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/miui/gallery/card/Card;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment$7;->this$0:Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;

    invoke-direct {p0}, Lcom/miui/gallery/threadpool/FutureHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onPostExecute(Lcom/miui/gallery/threadpool/Future;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/threadpool/Future",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/card/Card;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p1, "future":Lcom/miui/gallery/threadpool/Future;, "Lcom/miui/gallery/threadpool/Future<Ljava/util/List<Lcom/miui/gallery/card/Card;>;>;"
    const/16 v3, 0x14

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 173
    iget-object v2, p0, Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment$7;->this$0:Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;

    invoke-static {v2}, Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;->access$400(Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;)Lcom/miui/gallery/activity/BaseActivity;

    move-result-object v2

    if-nez v2, :cond_0

    .line 191
    :goto_0
    return-void

    .line 174
    :cond_0
    invoke-interface {p1}, Lcom/miui/gallery/threadpool/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 175
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/card/Card;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v2, v3, :cond_4

    .line 176
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment$7;->this$0:Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;

    invoke-static {v2}, Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;->access$500(Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;)Lcom/miui/gallery/widget/LoadMoreLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/widget/LoadMoreLayout;->setLoadComplete()V

    .line 177
    invoke-static {}, Lcom/miui/gallery/card/CardManager;->getInstance()Lcom/miui/gallery/card/CardManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/card/CardManager;->getLoadedCard()Ljava/util/List;

    move-result-object v0

    .line 178
    .local v0, "cards":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/card/Card;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v3, :cond_2

    .line 180
    iget-object v2, p0, Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment$7;->this$0:Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;

    invoke-static {v2}, Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;->access$100(Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;)Lcom/miui/gallery/card/ui/cardlist/CardAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment$7;->this$0:Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;

    invoke-static {v3}, Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;->access$500(Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;)Lcom/miui/gallery/widget/LoadMoreLayout;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Lcom/miui/gallery/card/ui/cardlist/CardAdapter;->setFooter(Landroid/view/View;Z)V

    .line 182
    :cond_2
    iget-object v2, p0, Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment$7;->this$0:Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;

    invoke-static {v2, v4}, Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;->access$602(Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;Z)Z

    .line 188
    .end local v0    # "cards":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/card/Card;>;"
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment$7;->this$0:Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;

    invoke-static {v2}, Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;->access$200(Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;)V

    .line 189
    iget-object v2, p0, Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment$7;->this$0:Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;

    invoke-static {v2, v4}, Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;->access$802(Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;Z)Z

    .line 190
    iget-object v2, p0, Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment$7;->this$0:Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;

    invoke-static {v2, v4}, Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;->access$702(Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;Z)Z

    goto :goto_0

    .line 184
    :cond_4
    iget-object v2, p0, Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment$7;->this$0:Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;

    invoke-static {v2}, Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;->access$700(Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 185
    iget-object v2, p0, Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment$7;->this$0:Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;

    invoke-static {v2}, Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;->access$100(Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;)Lcom/miui/gallery/card/ui/cardlist/CardAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment$7;->this$0:Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;

    invoke-static {v3}, Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;->access$500(Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;)Lcom/miui/gallery/widget/LoadMoreLayout;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Lcom/miui/gallery/card/ui/cardlist/CardAdapter;->setFooter(Landroid/view/View;Z)V

    goto :goto_1
.end method
