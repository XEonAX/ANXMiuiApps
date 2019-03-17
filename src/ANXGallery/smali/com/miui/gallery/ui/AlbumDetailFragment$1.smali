.class Lcom/miui/gallery/ui/AlbumDetailFragment$1;
.super Ljava/lang/Object;
.source "AlbumDetailFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/AlbumDetailFragment;->onBackPressed()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/AlbumDetailFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/AlbumDetailFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/AlbumDetailFragment;

    .prologue
    .line 481
    iput-object p1, p0, Lcom/miui/gallery/ui/AlbumDetailFragment$1;->this$0:Lcom/miui/gallery/ui/AlbumDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 484
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragment$1;->this$0:Lcom/miui/gallery/ui/AlbumDetailFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/AlbumDetailFragment;->finish()V

    .line 485
    return-void
.end method
