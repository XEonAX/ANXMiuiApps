.class Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$7;
.super Ljava/lang/Object;
.source "StoryAlbumFragment.java"

# interfaces
.implements Lcom/miui/gallery/ui/ConfirmDialog$ConfirmDialogInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->showNetworkMeteredDialog()V
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
    .line 1105
    iput-object p1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$7;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/app/DialogFragment;)V
    .locals 1
    .param p1, "dialog"    # Landroid/app/DialogFragment;

    .prologue
    .line 1113
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$7;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->finish()V

    .line 1114
    return-void
.end method

.method public onConfirm(Landroid/app/DialogFragment;)V
    .locals 1
    .param p1, "dialog"    # Landroid/app/DialogFragment;

    .prologue
    .line 1108
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$7;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$1700(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)V

    .line 1109
    return-void
.end method
