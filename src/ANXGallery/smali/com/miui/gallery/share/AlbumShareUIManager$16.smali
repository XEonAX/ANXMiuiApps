.class final Lcom/miui/gallery/share/AlbumShareUIManager$16;
.super Ljava/lang/Object;
.source "AlbumShareUIManager.java"

# interfaces
.implements Lcom/miui/gallery/threadpool/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/share/AlbumShareUIManager;->requestInvitationForSmsAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;)Lcom/miui/gallery/threadpool/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/threadpool/ThreadPool$Job",
        "<",
        "Lcom/miui/gallery/share/AsyncResult",
        "<",
        "Lcom/miui/gallery/share/AlbumShareOperations$OutgoingInvitation;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$ownerRelation:Ljava/lang/String;

.field final synthetic val$ownerRelationText:Ljava/lang/String;

.field final synthetic val$relation:Ljava/lang/String;

.field final synthetic val$relationText:Ljava/lang/String;

.field final synthetic val$serverId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 982
    iput-object p1, p0, Lcom/miui/gallery/share/AlbumShareUIManager$16;->val$serverId:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/gallery/share/AlbumShareUIManager$16;->val$relation:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/gallery/share/AlbumShareUIManager$16;->val$relationText:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/gallery/share/AlbumShareUIManager$16;->val$ownerRelation:Ljava/lang/String;

    iput-object p5, p0, Lcom/miui/gallery/share/AlbumShareUIManager$16;->val$ownerRelationText:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Lcom/miui/gallery/share/AsyncResult;
    .locals 5
    .param p1, "jc"    # Lcom/miui/gallery/threadpool/ThreadPool$JobContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/threadpool/ThreadPool$JobContext;",
            ")",
            "Lcom/miui/gallery/share/AsyncResult",
            "<",
            "Lcom/miui/gallery/share/AlbumShareOperations$OutgoingInvitation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 986
    iget-object v0, p0, Lcom/miui/gallery/share/AlbumShareUIManager$16;->val$serverId:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/gallery/share/AlbumShareUIManager$16;->val$relation:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/gallery/share/AlbumShareUIManager$16;->val$relationText:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/gallery/share/AlbumShareUIManager$16;->val$ownerRelation:Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/gallery/share/AlbumShareUIManager$16;->val$ownerRelationText:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/gallery/share/AlbumShareOperations;->requestInvitationForSms(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/gallery/share/AsyncResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 982
    invoke-virtual {p0, p1}, Lcom/miui/gallery/share/AlbumShareUIManager$16;->run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Lcom/miui/gallery/share/AsyncResult;

    move-result-object v0

    return-object v0
.end method
