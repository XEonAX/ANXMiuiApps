.class Lcom/miui/gallery/share/AlbumShareInvitationHandler$AcceptListener;
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
    name = "AcceptListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/share/AlbumShareInvitationHandler$AbsListener;",
        "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener",
        "<",
        "Lcom/miui/gallery/share/Path;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "finishActivity"    # Z

    .prologue
    .line 151
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/share/AlbumShareInvitationHandler$AbsListener;-><init>(Landroid/app/Activity;Z)V

    .line 152
    return-void
.end method


# virtual methods
.method public onCompletion(Lcom/miui/gallery/share/Path;Ljava/lang/Long;IZ)V
    .locals 6
    .param p1, "key"    # Lcom/miui/gallery/share/Path;
    .param p2, "data"    # Ljava/lang/Long;
    .param p3, "errorCode"    # I
    .param p4, "cancel"    # Z

    .prologue
    .line 156
    invoke-static {}, Lcom/miui/gallery/share/AlbumShareInvitationHandler$AcceptListener;->removeNotification()V

    .line 158
    const/16 v2, -0x3eb

    if-ne p3, v2, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/miui/gallery/share/AlbumShareInvitationHandler$AcceptListener;->tryToFinishActivity()V

    .line 193
    :goto_0
    return-void

    .line 163
    :cond_0
    if-eqz p4, :cond_2

    .line 164
    const v2, 0x7f0c00cc

    invoke-static {v2}, Lcom/miui/gallery/share/UIHelper;->toast(I)V

    .line 169
    :goto_1
    const/4 v2, -0x4

    if-ne p3, v2, :cond_3

    .line 170
    iget-object v2, p0, Lcom/miui/gallery/share/AlbumShareInvitationHandler$AcceptListener;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 171
    .local v0, "a":Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 172
    invoke-static {v0}, Lcom/miui/gallery/share/AlbumShareInvitationHandler;->access$100(Landroid/app/Activity;)V

    .line 192
    .end local v0    # "a":Landroid/app/Activity;
    :cond_1
    :goto_2
    invoke-virtual {p0}, Lcom/miui/gallery/share/AlbumShareInvitationHandler$AcceptListener;->tryToFinishActivity()V

    goto :goto_0

    .line 166
    :cond_2
    invoke-static {p3}, Lcom/miui/gallery/share/UIHelper;->toastError(I)V

    goto :goto_1

    .line 176
    :cond_3
    const/4 v1, 0x0

    .line 177
    .local v1, "path":Lcom/miui/gallery/share/Path;
    if-nez p3, :cond_5

    .line 178
    move-object v1, p1

    .line 185
    :cond_4
    :goto_3
    if-eqz v1, :cond_1

    .line 186
    iget-object v2, p0, Lcom/miui/gallery/share/AlbumShareInvitationHandler$AcceptListener;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 187
    .restart local v0    # "a":Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 188
    invoke-static {v0, v1}, Lcom/miui/gallery/share/AlbumShareInvitationHandler;->access$000(Landroid/app/Activity;Lcom/miui/gallery/share/Path;)V

    goto :goto_2

    .line 179
    .end local v0    # "a":Landroid/app/Activity;
    :cond_5
    const/16 v2, -0xa

    if-ne p3, v2, :cond_4

    .line 180
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    .line 181
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/miui/gallery/share/CloudSharerMediaSet;->buildPathById(J)Lcom/miui/gallery/share/Path;

    move-result-object v1

    goto :goto_3
.end method

.method public bridge synthetic onCompletion(Ljava/lang/Object;Ljava/lang/Object;IZ)V
    .locals 0

    .prologue
    .line 148
    check-cast p1, Lcom/miui/gallery/share/Path;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/gallery/share/AlbumShareInvitationHandler$AcceptListener;->onCompletion(Lcom/miui/gallery/share/Path;Ljava/lang/Long;IZ)V

    return-void
.end method
