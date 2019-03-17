.class public Lcom/miui/gallery/ui/AddToAlbumDialogFragment$AlbumSelectorAdapter$ShareAlbum;
.super Ljava/lang/Object;
.source "AddToAlbumDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/AddToAlbumDialogFragment$AlbumSelectorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShareAlbum"
.end annotation


# instance fields
.field mAlbumId:Ljava/lang/String;

.field mCreatorId:Ljava/lang/String;

.field mOwnerNickName:Ljava/lang/String;

.field mUserCount:I

.field final synthetic this$1:Lcom/miui/gallery/ui/AddToAlbumDialogFragment$AlbumSelectorAdapter;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/ui/AddToAlbumDialogFragment$AlbumSelectorAdapter;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/ui/AddToAlbumDialogFragment$AlbumSelectorAdapter;

    .prologue
    .line 302
    iput-object p1, p0, Lcom/miui/gallery/ui/AddToAlbumDialogFragment$AlbumSelectorAdapter$ShareAlbum;->this$1:Lcom/miui/gallery/ui/AddToAlbumDialogFragment$AlbumSelectorAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOwnerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/miui/gallery/ui/AddToAlbumDialogFragment$AlbumSelectorAdapter$ShareAlbum;->mOwnerNickName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/AddToAlbumDialogFragment$AlbumSelectorAdapter$ShareAlbum;->mCreatorId:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/AddToAlbumDialogFragment$AlbumSelectorAdapter$ShareAlbum;->mOwnerNickName:Ljava/lang/String;

    goto :goto_0
.end method
