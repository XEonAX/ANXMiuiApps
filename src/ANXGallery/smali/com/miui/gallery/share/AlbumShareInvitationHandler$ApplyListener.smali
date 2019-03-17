.class Lcom/miui/gallery/share/AlbumShareInvitationHandler$ApplyListener;
.super Lcom/miui/gallery/share/AlbumShareInvitationHandler$AbsListener;
.source "AlbumShareInvitationHandler.java"

# interfaces
.implements Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/share/AlbumShareInvitationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ApplyListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/share/AlbumShareInvitationHandler$AbsListener;",
        "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener",
        "<",
        "Lcom/miui/gallery/share/Path;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mNeedAlert:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;ZZ)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "finishActivity"    # Z
    .param p3, "needAlert"    # Z

    .prologue
    .line 201
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/share/AlbumShareInvitationHandler$AbsListener;-><init>(Landroid/app/Activity;Z)V

    .line 202
    iput-boolean p3, p0, Lcom/miui/gallery/share/AlbumShareInvitationHandler$ApplyListener;->mNeedAlert:Z

    .line 203
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
    .line 207
    iget-boolean v1, p0, Lcom/miui/gallery/share/AlbumShareInvitationHandler$ApplyListener;->mNeedAlert:Z

    if-eqz v1, :cond_0

    .line 208
    invoke-static {p3}, Lcom/miui/gallery/share/UIHelper;->toastError(I)V

    .line 210
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/share/AlbumShareInvitationHandler$ApplyListener;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 211
    .local v0, "a":Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 212
    const/16 v1, -0x9

    if-ne p3, v1, :cond_3

    .line 213
    iget-boolean v1, p0, Lcom/miui/gallery/share/AlbumShareInvitationHandler$ApplyListener;->mNeedAlert:Z

    if-eqz v1, :cond_2

    .line 214
    new-instance v1, Lcom/miui/gallery/share/AlbumShareInvitationHandler$AlreadyApplyListener;

    iget-boolean v2, p0, Lcom/miui/gallery/share/AlbumShareInvitationHandler$ApplyListener;->mFinishActivity:Z

    invoke-direct {v1, v0, p1, v2}, Lcom/miui/gallery/share/AlbumShareInvitationHandler$AlreadyApplyListener;-><init>(Landroid/app/Activity;Lcom/miui/gallery/share/Path;Z)V

    .line 226
    :cond_1
    :goto_0
    return-void

    .line 218
    :cond_2
    invoke-static {}, Lcom/miui/gallery/share/AlbumShareInvitationHandler$ApplyListener;->removeNotification()V

    .line 219
    invoke-virtual {p0}, Lcom/miui/gallery/share/AlbumShareInvitationHandler$ApplyListener;->tryToFinishActivity()V

    .line 220
    invoke-static {v0, p1}, Lcom/miui/gallery/share/AlbumShareInvitationHandler;->access$000(Landroid/app/Activity;Lcom/miui/gallery/share/Path;)V

    goto :goto_0

    .line 223
    :cond_3
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public bridge synthetic onCompletion(Ljava/lang/Object;Ljava/lang/Object;IZ)V
    .locals 0

    .prologue
    .line 197
    check-cast p1, Lcom/miui/gallery/share/Path;

    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/gallery/share/AlbumShareInvitationHandler$ApplyListener;->onCompletion(Lcom/miui/gallery/share/Path;Ljava/lang/Void;IZ)V

    return-void
.end method
