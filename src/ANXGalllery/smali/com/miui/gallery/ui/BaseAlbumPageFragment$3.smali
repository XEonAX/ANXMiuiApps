.class Lcom/miui/gallery/ui/BaseAlbumPageFragment$3;
.super Ljava/lang/Object;
.source "BaseAlbumPageFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/BaseAlbumPageFragment;->removeFromOtherAlbums()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/BaseAlbumPageFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/BaseAlbumPageFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/BaseAlbumPageFragment;

    .prologue
    .line 381
    iput-object p1, p0, Lcom/miui/gallery/ui/BaseAlbumPageFragment$3;->this$0:Lcom/miui/gallery/ui/BaseAlbumPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 384
    iget-object v0, p0, Lcom/miui/gallery/ui/BaseAlbumPageFragment$3;->this$0:Lcom/miui/gallery/ui/BaseAlbumPageFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->access$100(Lcom/miui/gallery/ui/BaseAlbumPageFragment;Z)V

    .line 385
    return-void
.end method
