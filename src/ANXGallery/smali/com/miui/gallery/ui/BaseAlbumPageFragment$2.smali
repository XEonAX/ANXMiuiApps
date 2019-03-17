.class Lcom/miui/gallery/ui/BaseAlbumPageFragment$2;
.super Ljava/lang/Object;
.source "BaseAlbumPageFragment.java"

# interfaces
.implements Lcom/miui/gallery/ui/DeletionTask$OnDeletionCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/BaseAlbumPageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/BaseAlbumPageFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/BaseAlbumPageFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/BaseAlbumPageFragment;

    .prologue
    .line 359
    iput-object p1, p0, Lcom/miui/gallery/ui/BaseAlbumPageFragment$2;->this$0:Lcom/miui/gallery/ui/BaseAlbumPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeleted(I[J)V
    .locals 3
    .param p1, "count"    # I
    .param p2, "ids"    # [J

    .prologue
    .line 362
    iget-object v0, p0, Lcom/miui/gallery/ui/BaseAlbumPageFragment$2;->this$0:Lcom/miui/gallery/ui/BaseAlbumPageFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 372
    :goto_0
    return-void

    .line 365
    :cond_0
    if-ltz p1, :cond_1

    .line 366
    iget-object v0, p0, Lcom/miui/gallery/ui/BaseAlbumPageFragment$2;->this$0:Lcom/miui/gallery/ui/BaseAlbumPageFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/BaseAlbumPageFragment$2;->this$0:Lcom/miui/gallery/ui/BaseAlbumPageFragment;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c014c

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 368
    iget-object v0, p0, Lcom/miui/gallery/ui/BaseAlbumPageFragment$2;->this$0:Lcom/miui/gallery/ui/BaseAlbumPageFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/util/SoundUtils;->playSoundForOperation(Landroid/content/Context;I)V

    goto :goto_0

    .line 370
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/BaseAlbumPageFragment$2;->this$0:Lcom/miui/gallery/ui/BaseAlbumPageFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/BaseAlbumPageFragment$2;->this$0:Lcom/miui/gallery/ui/BaseAlbumPageFragment;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c014a

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
