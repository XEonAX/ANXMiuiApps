.class Lcom/miui/gallery/data/DBImage$1;
.super Ljava/lang/Object;
.source "DBImage.java"

# interfaces
.implements Lcom/miui/gallery/util/GalleryUtils$QueryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/data/DBImage;->generateSecretKey()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/util/GalleryUtils$QueryHandler",
        "<[B>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/data/DBImage;


# direct methods
.method constructor <init>(Lcom/miui/gallery/data/DBImage;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/data/DBImage;

    .prologue
    .line 772
    iput-object p1, p0, Lcom/miui/gallery/data/DBImage$1;->this$0:Lcom/miui/gallery/data/DBImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic handle(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 772
    invoke-virtual {p0, p1}, Lcom/miui/gallery/data/DBImage$1;->handle(Landroid/database/Cursor;)[B

    move-result-object v0

    return-object v0
.end method

.method public handle(Landroid/database/Cursor;)[B
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 775
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 776
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 778
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
