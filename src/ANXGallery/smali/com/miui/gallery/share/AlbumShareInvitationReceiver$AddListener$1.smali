.class Lcom/miui/gallery/share/AlbumShareInvitationReceiver$AddListener$1;
.super Ljava/lang/Object;
.source "AlbumShareInvitationReceiver.java"

# interfaces
.implements Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/share/AlbumShareInvitationReceiver$AddListener;->onCompletion(Ljava/lang/Void;Ljava/lang/Long;IZ)V
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
        "Lcom/miui/gallery/share/Path;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/share/AlbumShareInvitationReceiver$AddListener;

.field final synthetic val$path:Lcom/miui/gallery/share/Path;


# direct methods
.method constructor <init>(Lcom/miui/gallery/share/AlbumShareInvitationReceiver$AddListener;Lcom/miui/gallery/share/Path;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/share/AlbumShareInvitationReceiver$AddListener;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/miui/gallery/share/AlbumShareInvitationReceiver$AddListener$1;->this$0:Lcom/miui/gallery/share/AlbumShareInvitationReceiver$AddListener;

    iput-object p2, p0, Lcom/miui/gallery/share/AlbumShareInvitationReceiver$AddListener$1;->val$path:Lcom/miui/gallery/share/Path;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Lcom/miui/gallery/share/Path;Ljava/lang/Void;IZ)V
    .locals 3
    .param p1, "key"    # Lcom/miui/gallery/share/Path;
    .param p2, "data"    # Ljava/lang/Void;
    .param p3, "errorCode"    # I
    .param p4, "cancel"    # Z

    .prologue
    .line 134
    iget-object v0, p0, Lcom/miui/gallery/share/AlbumShareInvitationReceiver$AddListener$1;->this$0:Lcom/miui/gallery/share/AlbumShareInvitationReceiver$AddListener;

    invoke-static {v0}, Lcom/miui/gallery/share/AlbumShareInvitationReceiver$AddListener;->access$200(Lcom/miui/gallery/share/AlbumShareInvitationReceiver$AddListener;)Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/share/AlbumShareInvitationReceiver$AddListener$1;->val$path:Lcom/miui/gallery/share/Path;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p3, p4}, Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;->onCompletion(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    .line 136
    const-string v0, "AlbumShareInvitationReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateShareUrlLongAuto: error code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return-void
.end method

.method public bridge synthetic onCompletion(Ljava/lang/Object;Ljava/lang/Object;IZ)V
    .locals 0

    .prologue
    .line 128
    check-cast p1, Lcom/miui/gallery/share/Path;

    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/gallery/share/AlbumShareInvitationReceiver$AddListener$1;->onCompletion(Lcom/miui/gallery/share/Path;Ljava/lang/Void;IZ)V

    return-void
.end method
