.class Lcom/miui/gallery/movie/ui/activity/MovieActivity$13;
.super Ljava/lang/Object;
.source "MovieActivity.java"

# interfaces
.implements Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$OnSavingFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/movie/ui/activity/MovieActivity;->export(Z)V
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
    .line 689
    iput-object p1, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity$13;->this$0:Lcom/miui/gallery/movie/ui/activity/MovieActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(ZZLjava/lang/String;)V
    .locals 2
    .param p1, "success"    # Z
    .param p2, "isCancel"    # Z
    .param p3, "outFile"    # Ljava/lang/String;

    .prologue
    .line 692
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity$13;->this$0:Lcom/miui/gallery/movie/ui/activity/MovieActivity;

    invoke-virtual {v0}, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 693
    const-string v0, "MovieActivity"

    const-string v1, "movie activity is finish on saving finish"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    :goto_0
    return-void

    .line 696
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity$13;->this$0:Lcom/miui/gallery/movie/ui/activity/MovieActivity;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->access$200(Lcom/miui/gallery/movie/ui/activity/MovieActivity;)Lcom/miui/gallery/movie/entity/MovieInfo;

    move-result-object v0

    iget-boolean v0, v0, Lcom/miui/gallery/movie/entity/MovieInfo;->isFromStory:Z

    if-nez v0, :cond_1

    .line 697
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity$13;->this$0:Lcom/miui/gallery/movie/ui/activity/MovieActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->setResult(I)V

    .line 698
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity$13;->this$0:Lcom/miui/gallery/movie/ui/activity/MovieActivity;

    invoke-virtual {v0}, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->finish()V

    .line 699
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity$13;->this$0:Lcom/miui/gallery/movie/ui/activity/MovieActivity;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->access$400(Lcom/miui/gallery/movie/ui/activity/MovieActivity;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/movie/utils/MovieUtils;->goDetail(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0

    .line 701
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity$13;->this$0:Lcom/miui/gallery/movie/ui/activity/MovieActivity;

    invoke-virtual {v0}, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->finish()V

    goto :goto_0
.end method
