.class Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$2$1;
.super Ljava/lang/Object;
.source "StoryAlbumFragment.java"

# interfaces
.implements Lcom/miui/gallery/threadpool/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/threadpool/ThreadPool$Job",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$2;


# direct methods
.method constructor <init>(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$2;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$2$1;->this$1:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 2
    .param p1, "jc"    # Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    .prologue
    .line 230
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$2$1;->this$1:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$2;

    iget-object v0, v0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$2;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$1200(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 231
    const-string v0, "StoryAlbumFragment"

    const-string/jumbo v1, "start check download file."

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$2$1;->this$1:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$2;

    iget-object v0, v0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$2;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$1300(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)V

    .line 234
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
