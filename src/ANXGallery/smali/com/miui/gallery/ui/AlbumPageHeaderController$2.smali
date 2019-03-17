.class Lcom/miui/gallery/ui/AlbumPageHeaderController$2;
.super Ljava/lang/Object;
.source "AlbumPageHeaderController.java"

# interfaces
.implements Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/AlbumPageHeaderController;->isAlbumCoverValid(Landroid/content/Context;J)Z
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/AlbumPageHeaderController;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/AlbumPageHeaderController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/AlbumPageHeaderController;

    .prologue
    .line 263
    iput-object p1, p0, Lcom/miui/gallery/ui/AlbumPageHeaderController$2;->this$0:Lcom/miui/gallery/ui/AlbumPageHeaderController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Landroid/database/Cursor;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v0, 0x0

    .line 266
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic handle(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 263
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/AlbumPageHeaderController$2;->handle(Landroid/database/Cursor;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
