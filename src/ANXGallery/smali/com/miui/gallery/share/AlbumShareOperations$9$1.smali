.class Lcom/miui/gallery/share/AlbumShareOperations$9$1;
.super Ljava/lang/Object;
.source "AlbumShareOperations.java"

# interfaces
.implements Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/share/AlbumShareOperations$9;->call()Lcom/miui/gallery/share/AsyncResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/share/AlbumShareOperations$9;


# direct methods
.method constructor <init>(Lcom/miui/gallery/share/AlbumShareOperations$9;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/share/AlbumShareOperations$9;

    .prologue
    .line 973
    iput-object p1, p0, Lcom/miui/gallery/share/AlbumShareOperations$9$1;->this$0:Lcom/miui/gallery/share/AlbumShareOperations$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCompletion(Ljava/lang/Object;Ljava/lang/Object;IZ)V
    .locals 0

    .prologue
    .line 973
    check-cast p1, Ljava/lang/Void;

    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/gallery/share/AlbumShareOperations$9$1;->onCompletion(Ljava/lang/Void;Ljava/lang/Void;IZ)V

    return-void
.end method

.method public onCompletion(Ljava/lang/Void;Ljava/lang/Void;IZ)V
    .locals 1
    .param p1, "key"    # Ljava/lang/Void;
    .param p2, "data"    # Ljava/lang/Void;
    .param p3, "error"    # I
    .param p4, "cancel"    # Z

    .prologue
    .line 977
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/miui/gallery/share/AlbumShareUIManager;->syncAllUserInfoFromNetworkAsync(Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;)Lcom/miui/gallery/threadpool/Future;

    .line 978
    return-void
.end method
