.class Lcom/miui/gallery/share/AlbumShareInvitationHandler$AlreadyApplyListener;
.super Lcom/miui/gallery/share/AlbumShareInvitationHandler$AbsListener;
.source "AlbumShareInvitationHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/share/AlbumShareInvitationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AlreadyApplyListener"
.end annotation


# instance fields
.field private final mPath:Lcom/miui/gallery/share/Path;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/miui/gallery/share/Path;Z)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "path"    # Lcom/miui/gallery/share/Path;
    .param p3, "finishActivity"    # Z

    .prologue
    .line 107
    invoke-direct {p0, p1, p3}, Lcom/miui/gallery/share/AlbumShareInvitationHandler$AbsListener;-><init>(Landroid/app/Activity;Z)V

    .line 108
    iput-object p2, p0, Lcom/miui/gallery/share/AlbumShareInvitationHandler$AlreadyApplyListener;->mPath:Lcom/miui/gallery/share/Path;

    .line 109
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 113
    invoke-static {}, Lcom/miui/gallery/share/AlbumShareInvitationHandler$AlreadyApplyListener;->removeNotification()V

    .line 114
    invoke-virtual {p0}, Lcom/miui/gallery/share/AlbumShareInvitationHandler$AlreadyApplyListener;->tryToFinishActivity()V

    .line 115
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 119
    invoke-static {}, Lcom/miui/gallery/share/AlbumShareInvitationHandler$AlreadyApplyListener;->removeNotification()V

    .line 120
    invoke-virtual {p0}, Lcom/miui/gallery/share/AlbumShareInvitationHandler$AlreadyApplyListener;->tryToFinishActivity()V

    .line 122
    packed-switch p2, :pswitch_data_0

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 124
    :pswitch_0
    iget-object v1, p0, Lcom/miui/gallery/share/AlbumShareInvitationHandler$AlreadyApplyListener;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 125
    .local v0, "a":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 126
    iget-object v1, p0, Lcom/miui/gallery/share/AlbumShareInvitationHandler$AlreadyApplyListener;->mPath:Lcom/miui/gallery/share/Path;

    invoke-static {v0, v1}, Lcom/miui/gallery/share/AlbumShareInvitationHandler;->access$000(Landroid/app/Activity;Lcom/miui/gallery/share/Path;)V

    goto :goto_0

    .line 122
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
