.class Lcom/miui/gallery/ui/BaseMediaFragment$PhotoPageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BaseMediaFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/BaseMediaFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PhotoPageReceiver"
.end annotation


# instance fields
.field private mFragmentRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/miui/gallery/ui/BaseMediaFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/gallery/ui/BaseMediaFragment;)V
    .locals 1
    .param p1, "fragment"    # Lcom/miui/gallery/ui/BaseMediaFragment;

    .prologue
    .line 114
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 115
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/BaseMediaFragment$PhotoPageReceiver;->mFragmentRef:Ljava/lang/ref/WeakReference;

    .line 116
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 120
    iget-object v2, p0, Lcom/miui/gallery/ui/BaseMediaFragment$PhotoPageReceiver;->mFragmentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/ui/BaseMediaFragment;

    .line 121
    .local v1, "fragment":Lcom/miui/gallery/ui/BaseMediaFragment;
    if-eqz v1, :cond_0

    .line 122
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "action":Ljava/lang/String;
    const-string v2, "com.miu.gallery.action.ENTER_PHOTO_PAGE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 124
    const-string v2, "BaseMediaFragment"

    const-string v3, "ACTION_ENTER_PHOTO_PAGE"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-virtual {v1, p2}, Lcom/miui/gallery/ui/BaseMediaFragment;->onPhotoPageCreate(Landroid/content/Intent;)V

    .line 131
    .end local v0    # "action":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 126
    .restart local v0    # "action":Ljava/lang/String;
    :cond_1
    const-string v2, "com.miui.gallery.action.EXIT_PHOTO_PAGE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 127
    const-string v2, "BaseMediaFragment"

    const-string v3, "ACTION_EXIT_PHOTO_PAGE"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-virtual {v1, p2}, Lcom/miui/gallery/ui/BaseMediaFragment;->onPhotoPageDestroy(Landroid/content/Intent;)V

    goto :goto_0
.end method
