.class Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$8;
.super Ljava/lang/Object;
.source "StoryAlbumFragment.java"

# interfaces
.implements Lcom/miui/gallery/card/ui/detail/CardDownloadDialog$CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 1125
    iput-object p1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$8;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 1128
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$8;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$7800(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/picker/uri/Downloader;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1129
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$8;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$7800(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/picker/uri/Downloader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/picker/uri/Downloader;->cancel()V

    .line 1131
    :cond_0
    return-void
.end method
