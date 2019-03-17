.class Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$7;
.super Landroid/os/Handler;
.source "MovieEditorMenuFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    .prologue
    .line 322
    iput-object p1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$7;->this$0:Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 325
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 342
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 343
    return-void

    .line 327
    :pswitch_0
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$7;->this$0:Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->access$900(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)Lcom/miui/gallery/movie/ui/adapter/TemplateAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$7;->this$0:Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    invoke-static {v1}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->access$900(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)Lcom/miui/gallery/movie/ui/adapter/TemplateAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/movie/ui/adapter/TemplateAdapter;->getItemCount()I

    move-result v1

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v3, v1, v2}, Lcom/miui/gallery/movie/ui/adapter/TemplateAdapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    .line 328
    const-string v0, "MovieEditorMenuFragment"

    const-string v1, "MSG_NOTIFY_TEMPLATE_ITEM"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 331
    :pswitch_1
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$7;->this$0:Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->access$900(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)Lcom/miui/gallery/movie/ui/adapter/TemplateAdapter;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/miui/gallery/movie/ui/adapter/TemplateAdapter;->setSelectedItemPositionWithoutNotify(I)V

    .line 332
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$7;->this$0:Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->access$900(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)Lcom/miui/gallery/movie/ui/adapter/TemplateAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/movie/ui/adapter/TemplateAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 335
    :pswitch_2
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$7;->this$0:Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->access$1000(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)Lcom/miui/gallery/movie/ui/adapter/AudioAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$7;->this$0:Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    invoke-static {v1}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->access$1000(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)Lcom/miui/gallery/movie/ui/adapter/AudioAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/movie/ui/adapter/AudioAdapter;->getItemCount()I

    move-result v1

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v3, v1, v2}, Lcom/miui/gallery/movie/ui/adapter/AudioAdapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    .line 336
    const-string v0, "MovieEditorMenuFragment"

    const-string v1, "MSG_NOTIFY_AUDIO_ITEM"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 339
    :pswitch_3
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$7;->this$0:Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->access$1000(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)Lcom/miui/gallery/movie/ui/adapter/AudioAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/movie/ui/adapter/AudioAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 325
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
