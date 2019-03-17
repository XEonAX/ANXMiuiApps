.class Lcom/miui/gallery/share/AlbumShareInvitationHandler$AbsListener;
.super Ljava/lang/Object;
.source "AlbumShareInvitationHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/share/AlbumShareInvitationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AbsListener"
.end annotation


# instance fields
.field protected final mActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field protected final mFinishActivity:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "finishActivity"    # Z

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/gallery/share/AlbumShareInvitationHandler$AbsListener;->mActivityRef:Ljava/lang/ref/WeakReference;

    .line 84
    iput-boolean p2, p0, Lcom/miui/gallery/share/AlbumShareInvitationHandler$AbsListener;->mFinishActivity:Z

    .line 85
    return-void
.end method

.method protected static removeNotification()V
    .locals 3

    .prologue
    .line 97
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 98
    .local v0, "context":Landroid/content/Context;
    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 99
    .local v1, "nm":Landroid/app/NotificationManager;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 100
    return-void
.end method


# virtual methods
.method protected tryToFinishActivity()V
    .locals 2

    .prologue
    .line 88
    iget-boolean v1, p0, Lcom/miui/gallery/share/AlbumShareInvitationHandler$AbsListener;->mFinishActivity:Z

    if-eqz v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/miui/gallery/share/AlbumShareInvitationHandler$AbsListener;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 90
    .local v0, "a":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 94
    .end local v0    # "a":Landroid/app/Activity;
    :cond_0
    return-void
.end method
