.class Lcom/miui/gallery/movie/ui/activity/MovieActivity$1;
.super Lcom/miui/gallery/movie/ui/listener/SingleClickListener;
.source "MovieActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/movie/ui/activity/MovieActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/movie/ui/activity/MovieActivity;


# direct methods
.method constructor <init>(Lcom/miui/gallery/movie/ui/activity/MovieActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/movie/ui/activity/MovieActivity;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity$1;->this$0:Lcom/miui/gallery/movie/ui/activity/MovieActivity;

    invoke-direct {p0}, Lcom/miui/gallery/movie/ui/listener/SingleClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onSingleClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 165
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 166
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 189
    :goto_0
    return-void

    .line 168
    :pswitch_0
    iget-object v2, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity$1;->this$0:Lcom/miui/gallery/movie/ui/activity/MovieActivity;

    invoke-virtual {v2}, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->finish()V

    goto :goto_0

    .line 171
    :pswitch_1
    iget-object v2, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity$1;->this$0:Lcom/miui/gallery/movie/ui/activity/MovieActivity;

    invoke-static {v2}, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->access$000(Lcom/miui/gallery/movie/ui/activity/MovieActivity;)Lcom/miui/gallery/movie/core/MovieManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/movie/core/MovieManager;->pause()V

    .line 172
    iget-object v2, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity$1;->this$0:Lcom/miui/gallery/movie/ui/activity/MovieActivity;

    invoke-static {v2}, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->access$100(Lcom/miui/gallery/movie/ui/activity/MovieActivity;)Lcom/miui/gallery/movie/entity/MovieShareData;

    move-result-object v2

    if-nez v2, :cond_0

    .line 173
    iget-object v2, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity$1;->this$0:Lcom/miui/gallery/movie/ui/activity/MovieActivity;

    new-instance v3, Lcom/miui/gallery/movie/entity/MovieShareData;

    invoke-direct {v3}, Lcom/miui/gallery/movie/entity/MovieShareData;-><init>()V

    invoke-static {v2, v3}, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->access$102(Lcom/miui/gallery/movie/ui/activity/MovieActivity;Lcom/miui/gallery/movie/entity/MovieShareData;)Lcom/miui/gallery/movie/entity/MovieShareData;

    .line 174
    iget-object v2, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity$1;->this$0:Lcom/miui/gallery/movie/ui/activity/MovieActivity;

    invoke-static {v2}, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->access$100(Lcom/miui/gallery/movie/ui/activity/MovieActivity;)Lcom/miui/gallery/movie/entity/MovieShareData;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity$1;->this$0:Lcom/miui/gallery/movie/ui/activity/MovieActivity;

    invoke-static {v3}, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->access$200(Lcom/miui/gallery/movie/ui/activity/MovieActivity;)Lcom/miui/gallery/movie/entity/MovieInfo;

    move-result-object v3

    iget-boolean v3, v3, Lcom/miui/gallery/movie/entity/MovieInfo;->isShortVideo:Z

    invoke-virtual {v2, v3}, Lcom/miui/gallery/movie/entity/MovieShareData;->setShortVideo(Z)V

    .line 176
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity$1;->this$0:Lcom/miui/gallery/movie/ui/activity/MovieActivity;

    invoke-static {v2}, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->access$100(Lcom/miui/gallery/movie/ui/activity/MovieActivity;)Lcom/miui/gallery/movie/entity/MovieShareData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/movie/entity/MovieShareData;->getVideoPath()Ljava/lang/String;

    move-result-object v1

    .line 177
    .local v1, "path":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 178
    iget-object v2, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity$1;->this$0:Lcom/miui/gallery/movie/ui/activity/MovieActivity;

    invoke-static {v2}, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->access$300(Lcom/miui/gallery/movie/ui/activity/MovieActivity;)Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment;

    move-result-object v2

    if-nez v2, :cond_1

    .line 179
    iget-object v2, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity$1;->this$0:Lcom/miui/gallery/movie/ui/activity/MovieActivity;

    new-instance v3, Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment;

    invoke-direct {v3}, Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment;-><init>()V

    invoke-static {v2, v3}, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->access$302(Lcom/miui/gallery/movie/ui/activity/MovieActivity;Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment;)Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment;

    .line 181
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity$1;->this$0:Lcom/miui/gallery/movie/ui/activity/MovieActivity;

    invoke-static {v2}, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->access$300(Lcom/miui/gallery/movie/ui/activity/MovieActivity;)Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity$1;->this$0:Lcom/miui/gallery/movie/ui/activity/MovieActivity;

    invoke-static {v3}, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->access$400(Lcom/miui/gallery/movie/ui/activity/MovieActivity;)Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity$1;->this$0:Lcom/miui/gallery/movie/ui/activity/MovieActivity;

    invoke-static {v4}, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->access$000(Lcom/miui/gallery/movie/ui/activity/MovieActivity;)Lcom/miui/gallery/movie/core/MovieManager;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity$1;->this$0:Lcom/miui/gallery/movie/ui/activity/MovieActivity;

    invoke-static {v5}, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->access$200(Lcom/miui/gallery/movie/ui/activity/MovieActivity;)Lcom/miui/gallery/movie/entity/MovieInfo;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment;->showAndShare(Landroid/app/Activity;Lcom/miui/gallery/movie/core/MovieManager;Lcom/miui/gallery/movie/entity/MovieInfo;)V

    goto :goto_0

    .line 183
    :cond_2
    iget-object v2, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity$1;->this$0:Lcom/miui/gallery/movie/ui/activity/MovieActivity;

    invoke-virtual {v2, v1}, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->handleShareEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 166
    :pswitch_data_0
    .packed-switch 0x7f1201de
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
