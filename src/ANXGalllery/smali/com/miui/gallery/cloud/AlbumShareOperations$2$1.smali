.class Lcom/miui/gallery/cloud/AlbumShareOperations$2$1;
.super Ljava/lang/Object;
.source "AlbumShareOperations.java"

# interfaces
.implements Lcom/miui/gallery/util/GalleryUtils$ConcatConverter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/cloud/AlbumShareOperations$2;->call()Lcom/miui/gallery/util/AsyncResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/util/GalleryUtils$ConcatConverter",
        "<",
        "Lcom/miui/gallery/cloud/UserInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/cloud/AlbumShareOperations$2;


# direct methods
.method constructor <init>(Lcom/miui/gallery/cloud/AlbumShareOperations$2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/cloud/AlbumShareOperations$2;

    .prologue
    .line 300
    iput-object p1, p0, Lcom/miui/gallery/cloud/AlbumShareOperations$2$1;->this$0:Lcom/miui/gallery/cloud/AlbumShareOperations$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convertToString(Lcom/miui/gallery/cloud/UserInfo;)Ljava/lang/String;
    .locals 1
    .param p1, "src"    # Lcom/miui/gallery/cloud/UserInfo;

    .prologue
    .line 304
    invoke-virtual {p1}, Lcom/miui/gallery/cloud/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic convertToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 300
    check-cast p1, Lcom/miui/gallery/cloud/UserInfo;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/cloud/AlbumShareOperations$2$1;->convertToString(Lcom/miui/gallery/cloud/UserInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
