.class Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper$6;
.super Ljava/lang/Object;
.source "StoryAlbumFragment.java"

# interfaces
.implements Lcom/miui/gallery/threadpool/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;->deleteCard()V
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
.field final synthetic this$1:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;


# direct methods
.method constructor <init>(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;

    .prologue
    .line 851
    iput-object p1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper$6;->this$1:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 3
    .param p1, "jc"    # Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    .prologue
    .line 855
    invoke-static {}, Lcom/miui/gallery/card/CardManager;->getInstance()Lcom/miui/gallery/card/CardManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper$6;->this$1:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;

    iget-object v1, v1, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v1}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$3700(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/card/Card;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/card/CardManager;->delete(Lcom/miui/gallery/card/Card;Z)V

    .line 856
    invoke-static {}, Lcom/miui/gallery/card/CardManager;->getInstance()Lcom/miui/gallery/card/CardManager;

    move-result-object v0

    const-string/jumbo v1, "userDelete"

    invoke-virtual {v0, v1}, Lcom/miui/gallery/card/CardManager;->recordCardDeleteReason(Ljava/lang/String;)V

    .line 857
    const/4 v0, 0x0

    return-object v0
.end method
