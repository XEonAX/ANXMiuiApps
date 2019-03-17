.class Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$5;
.super Ljava/lang/Object;
.source "StoryAlbumFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 1073
    iput-object p1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$5;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1076
    invoke-static {}, Lcom/miui/gallery/cloud/NetworkUtils;->isNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1077
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$5;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$8100(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/activity/BaseActivity;

    move-result-object v0

    const v1, 0x7f0c03c6

    invoke-static {v0, v1}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;I)V

    .line 1078
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$5;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$7700(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;Z)V

    .line 1082
    :goto_0
    return-void

    .line 1081
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$5;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$1700(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)V

    goto :goto_0
.end method
