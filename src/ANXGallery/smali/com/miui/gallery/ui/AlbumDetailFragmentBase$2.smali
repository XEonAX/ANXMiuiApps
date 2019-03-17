.class Lcom/miui/gallery/ui/AlbumDetailFragmentBase$2;
.super Ljava/lang/Object;
.source "AlbumDetailFragmentBase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->showAlbumShareInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/AlbumDetailFragmentBase;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/AlbumDetailFragmentBase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/AlbumDetailFragmentBase;

    .prologue
    .line 413
    iput-object p1, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$2;->this$0:Lcom/miui/gallery/ui/AlbumDetailFragmentBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 416
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$2;->this$0:Lcom/miui/gallery/ui/AlbumDetailFragmentBase;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->onEnableAutoUpload(Z)V

    .line 417
    return-void
.end method
