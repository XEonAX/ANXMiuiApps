.class Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$3$1;
.super Ljava/lang/Object;
.source "SmartEffectFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$3;->onResponseError(Lcom/miui/gallery/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$3;

.field final synthetic val$errorCode:Lcom/miui/gallery/net/base/ErrorCode;


# direct methods
.method constructor <init>(Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$3;Lcom/miui/gallery/net/base/ErrorCode;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$3;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$3$1;->this$1:Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$3;

    iput-object p2, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$3$1;->val$errorCode:Lcom/miui/gallery/net/base/ErrorCode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 171
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$3$1;->this$1:Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$3;

    iget-object v1, v1, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$3;->this$0:Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;

    invoke-static {v1}, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->access$200(Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$3$1;->this$1:Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$3;

    iget-object v1, v1, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$3;->this$0:Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;

    invoke-static {v1}, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->access$200(Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 172
    new-instance v0, Lcom/miui/gallery/video/editor/SmartEffect;

    const-string/jumbo v1, "smart_effect_none"

    const v2, 0x7f02033a

    const-string/jumbo v3, "ve_type_none"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/miui/gallery/video/editor/SmartEffect;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 173
    .local v0, "smartEffect":Lcom/miui/gallery/video/editor/SmartEffect;
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$3$1;->this$1:Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$3;

    iget-object v1, v1, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$3;->this$0:Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;

    invoke-static {v1}, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->access$200(Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$3$1;->this$1:Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$3;

    iget-object v1, v1, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$3;->this$0:Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;

    invoke-static {v1}, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->access$300(Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;)Lcom/miui/gallery/video/editor/adapter/SmartEffectRecyclerViewAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$3$1;->this$1:Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$3;

    iget-object v1, v1, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$3;->this$0:Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;

    invoke-static {v1}, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->access$300(Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;)Lcom/miui/gallery/video/editor/adapter/SmartEffectRecyclerViewAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/video/editor/adapter/SmartEffectRecyclerViewAdapter;->notifyDataSetChanged()V

    .line 178
    .end local v0    # "smartEffect":Lcom/miui/gallery/video/editor/SmartEffect;
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$3$1;->val$errorCode:Lcom/miui/gallery/net/base/ErrorCode;

    sget-object v2, Lcom/miui/gallery/net/base/ErrorCode;->NETWORK_NOT_CONNECTED:Lcom/miui/gallery/net/base/ErrorCode;

    if-ne v1, v2, :cond_1

    .line 179
    new-instance v1, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$3$1$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$3$1$1;-><init>(Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$3$1;)V

    invoke-static {v1}, Lcom/miui/gallery/threadpool/ThreadManager;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 186
    :cond_1
    return-void
.end method
