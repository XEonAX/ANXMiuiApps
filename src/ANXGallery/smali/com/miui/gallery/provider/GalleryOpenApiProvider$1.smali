.class Lcom/miui/gallery/provider/GalleryOpenApiProvider$1;
.super Ljava/lang/Object;
.source "GalleryOpenApiProvider.java"

# interfaces
.implements Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/provider/GalleryOpenApiProvider;->getSecretAlbumUnsyncedCount()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/util/SafeDBUtil$QueryHandler",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/provider/GalleryOpenApiProvider;


# direct methods
.method constructor <init>(Lcom/miui/gallery/provider/GalleryOpenApiProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/provider/GalleryOpenApiProvider;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/miui/gallery/provider/GalleryOpenApiProvider$1;->this$0:Lcom/miui/gallery/provider/GalleryOpenApiProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Landroid/database/Cursor;)Ljava/lang/Integer;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 76
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 79
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic handle(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 73
    invoke-virtual {p0, p1}, Lcom/miui/gallery/provider/GalleryOpenApiProvider$1;->handle(Landroid/database/Cursor;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
