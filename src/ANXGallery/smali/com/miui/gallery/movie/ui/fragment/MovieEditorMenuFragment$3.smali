.class Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$3;
.super Ljava/lang/Object;
.source "MovieEditorMenuFragment.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->initView(Landroid/view/View;)V
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
    .line 169
    iput-object p1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$3;->this$0:Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 4
    .param p1, "radioGroup"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 172
    const v0, 0x7f1201cd

    if-ne p2, v0, :cond_3

    .line 173
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$3;->this$0:Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->access$500(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$3;->this$0:Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->access$000(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)Lcom/miui/gallery/movie/entity/MovieInfo;

    move-result-object v0

    invoke-static {v0, v2, v3}, Lcom/miui/gallery/movie/utils/MovieStatUtils;->statDurationClick(Lcom/miui/gallery/movie/entity/MovieInfo;ZZ)V

    .line 177
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$3;->this$0:Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    invoke-static {v0, v3}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->access$502(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;Z)Z

    .line 178
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$3;->this$0:Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->access$000(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)Lcom/miui/gallery/movie/entity/MovieInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/movie/entity/MovieInfo;->changeToShortVideo()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 179
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$3;->this$0:Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->access$600(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)V

    .line 180
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$3;->this$0:Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->access$100(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)Lcom/miui/gallery/movie/core/MovieManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$3;->this$0:Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    invoke-static {v1}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->access$000(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)Lcom/miui/gallery/movie/entity/MovieInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/miui/gallery/movie/entity/MovieInfo;->imageList:Ljava/util/List;

    invoke-virtual {v0, v1, v3}, Lcom/miui/gallery/movie/core/MovieManager;->resetImage(Ljava/util/List;Z)V

    .line 184
    :goto_1
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$3;->this$0:Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->access$100(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)Lcom/miui/gallery/movie/core/MovieManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/movie/core/MovieManager;->replay()V

    .line 185
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$3;->this$0:Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->access$000(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)Lcom/miui/gallery/movie/entity/MovieInfo;

    move-result-object v0

    iget-boolean v0, v0, Lcom/miui/gallery/movie/entity/MovieInfo;->isFromStory:Z

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$3;->this$0:Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->access$300(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)Lcom/miui/gallery/movie/ui/listener/MenuFragmentListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gallery/movie/ui/listener/MenuFragmentListener;->updateStorySha1Data()V

    goto :goto_0

    .line 182
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$3;->this$0:Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->access$100(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)Lcom/miui/gallery/movie/core/MovieManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/miui/gallery/movie/core/MovieManager;->setIsShortVideo(Z)V

    goto :goto_1

    .line 188
    :cond_3
    const v0, 0x7f1201ce

    if-ne p2, v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$3;->this$0:Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->access$500(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$3;->this$0:Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->access$000(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)Lcom/miui/gallery/movie/entity/MovieInfo;

    move-result-object v0

    invoke-static {v0, v2, v2}, Lcom/miui/gallery/movie/utils/MovieStatUtils;->statDurationClick(Lcom/miui/gallery/movie/entity/MovieInfo;ZZ)V

    .line 193
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$3;->this$0:Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    invoke-static {v0, v2}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->access$502(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;Z)Z

    .line 194
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$3;->this$0:Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->access$000(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)Lcom/miui/gallery/movie/entity/MovieInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/movie/entity/MovieInfo;->backToLongVideo()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 195
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$3;->this$0:Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->access$600(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)V

    .line 196
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$3;->this$0:Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->access$100(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)Lcom/miui/gallery/movie/core/MovieManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$3;->this$0:Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    invoke-static {v1}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->access$000(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)Lcom/miui/gallery/movie/entity/MovieInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/miui/gallery/movie/entity/MovieInfo;->imageList:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/movie/core/MovieManager;->resetImage(Ljava/util/List;Z)V

    .line 200
    :goto_2
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$3;->this$0:Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->access$100(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)Lcom/miui/gallery/movie/core/MovieManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/movie/core/MovieManager;->replay()V

    .line 201
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$3;->this$0:Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->access$000(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)Lcom/miui/gallery/movie/entity/MovieInfo;

    move-result-object v0

    iget-boolean v0, v0, Lcom/miui/gallery/movie/entity/MovieInfo;->isFromStory:Z

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$3;->this$0:Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->access$300(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)Lcom/miui/gallery/movie/ui/listener/MenuFragmentListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gallery/movie/ui/listener/MenuFragmentListener;->updateStorySha1Data()V

    goto/16 :goto_0

    .line 198
    :cond_4
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$3;->this$0:Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->access$100(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)Lcom/miui/gallery/movie/core/MovieManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/miui/gallery/movie/core/MovieManager;->setIsShortVideo(Z)V

    goto :goto_2
.end method
