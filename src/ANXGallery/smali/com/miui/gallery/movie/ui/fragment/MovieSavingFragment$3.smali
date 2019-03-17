.class Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$3;
.super Ljava/lang/Object;
.source "MovieSavingFragment.java"

# interfaces
.implements Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$OnSavingFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment;->showAndShare(Landroid/app/Activity;Lcom/miui/gallery/movie/core/MovieManager;Lcom/miui/gallery/movie/entity/MovieInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$3;->this$0:Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment;

    iput-object p2, p0, Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(ZZLjava/lang/String;)V
    .locals 3
    .param p1, "success"    # Z
    .param p2, "isCancel"    # Z
    .param p3, "outFile"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 124
    if-eqz p1, :cond_1

    .line 125
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$3;->val$context:Landroid/content/Context;

    const v1, 0x7f0c02d3

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;II)V

    .line 126
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$3;->this$0:Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment;->access$200(Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment;)Lcom/miui/gallery/movie/ui/listener/IShareDataCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$3;->this$0:Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment;->access$200(Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment;)Lcom/miui/gallery/movie/ui/listener/IShareDataCallback;

    move-result-object v0

    invoke-interface {v0, p3}, Lcom/miui/gallery/movie/ui/listener/IShareDataCallback;->handleShareEvent(Ljava/lang/String;)V

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    if-nez p2, :cond_0

    .line 130
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$3;->val$context:Landroid/content/Context;

    const v1, 0x7f0c02d1

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;II)V

    goto :goto_0
.end method
