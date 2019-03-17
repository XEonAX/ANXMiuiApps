.class Lcom/miui/gallery/ui/AlbumPageFragment$3;
.super Ljava/lang/Object;
.source "AlbumPageFragment.java"

# interfaces
.implements Lcom/miui/gallery/widget/TwoStageDrawer$TriggerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/AlbumPageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/AlbumPageFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/AlbumPageFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/AlbumPageFragment;

    .prologue
    .line 238
    iput-object p1, p0, Lcom/miui/gallery/ui/AlbumPageFragment$3;->this$0:Lcom/miui/gallery/ui/AlbumPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTriggerOpen(Lcom/miui/gallery/widget/TwoStageDrawer;)V
    .locals 2
    .param p1, "drawer"    # Lcom/miui/gallery/widget/TwoStageDrawer;

    .prologue
    .line 245
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumPageFragment$3;->this$0:Lcom/miui/gallery/ui/AlbumPageFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/AlbumPageFragment;->access$400(Lcom/miui/gallery/ui/AlbumPageFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumPageFragment$3;->this$0:Lcom/miui/gallery/ui/AlbumPageFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/AlbumPageFragment;->access$500(Lcom/miui/gallery/ui/AlbumPageFragment;)V

    .line 247
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumPageFragment$3;->this$0:Lcom/miui/gallery/ui/AlbumPageFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/gallery/ui/AlbumPageFragment;->access$402(Lcom/miui/gallery/ui/AlbumPageFragment;Z)Z

    .line 248
    const-string v0, "album"

    const-string v1, "enter_privacy_mode"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    :cond_0
    return-void
.end method

.method public onTriggerSlide(Lcom/miui/gallery/widget/TwoStageDrawer;F)V
    .locals 0
    .param p1, "drawer"    # Lcom/miui/gallery/widget/TwoStageDrawer;
    .param p2, "slideOffset"    # F

    .prologue
    .line 241
    return-void
.end method
