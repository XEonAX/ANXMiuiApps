.class Lcom/miui/gallery/share/AlbumShareOperations$12$1;
.super Ljava/lang/Object;
.source "AlbumShareOperations.java"

# interfaces
.implements Lcom/miui/gallery/util/GalleryUtils$ConcatConverter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/share/AlbumShareOperations$12;->call()Lcom/miui/gallery/share/AsyncResult;
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
        "Lcom/miui/gallery/share/UserInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/share/AlbumShareOperations$12;


# direct methods
.method constructor <init>(Lcom/miui/gallery/share/AlbumShareOperations$12;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/share/AlbumShareOperations$12;

    .prologue
    .line 1167
    iput-object p1, p0, Lcom/miui/gallery/share/AlbumShareOperations$12$1;->this$0:Lcom/miui/gallery/share/AlbumShareOperations$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convertToString(Lcom/miui/gallery/share/UserInfo;)Ljava/lang/String;
    .locals 1
    .param p1, "src"    # Lcom/miui/gallery/share/UserInfo;

    .prologue
    .line 1171
    invoke-virtual {p1}, Lcom/miui/gallery/share/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic convertToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1167
    check-cast p1, Lcom/miui/gallery/share/UserInfo;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/share/AlbumShareOperations$12$1;->convertToString(Lcom/miui/gallery/share/UserInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
