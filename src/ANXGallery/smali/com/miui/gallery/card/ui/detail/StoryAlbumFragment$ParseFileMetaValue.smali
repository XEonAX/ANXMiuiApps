.class Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ParseFileMetaValue;
.super Ljava/lang/Object;
.source "StoryAlbumFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ParseFileMetaValue"
.end annotation


# instance fields
.field downloadUri:Landroid/net/Uri;

.field originFilePath:Ljava/lang/String;

.field position:I

.field final synthetic this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

.field thumnailFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;Landroid/database/Cursor;)V
    .locals 2
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 1160
    iput-object p1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ParseFileMetaValue;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1161
    if-eqz p2, :cond_0

    .line 1162
    invoke-interface {p2}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ParseFileMetaValue;->position:I

    .line 1163
    const/4 v0, 0x2

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ParseFileMetaValue;->thumnailFilePath:Ljava/lang/String;

    .line 1164
    const/4 v0, 0x3

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ParseFileMetaValue;->originFilePath:Ljava/lang/String;

    .line 1165
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/miui/gallery/util/uil/CloudUriAdapter;->getDownloadUri(J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ParseFileMetaValue;->downloadUri:Landroid/net/Uri;

    .line 1167
    :cond_0
    return-void
.end method
