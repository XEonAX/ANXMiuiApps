.class Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper$3;
.super Ljava/lang/Object;
.source "StoryAlbumFragment.java"

# interfaces
.implements Lcom/miui/gallery/widget/menu/ImmersionMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;


# direct methods
.method constructor <init>(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;

    .prologue
    .line 772
    iput-object p1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper$3;->this$1:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateImmersionMenu(Lcom/miui/gallery/widget/menu/ImmersionMenu;)V
    .locals 3
    .param p1, "menu"    # Lcom/miui/gallery/widget/menu/ImmersionMenu;

    .prologue
    .line 775
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper$3;->this$1:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;

    iget-object v0, v0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$4800(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/activity/BaseActivity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 782
    :cond_0
    :goto_0
    return-void

    .line 778
    :cond_1
    const v0, 0x7f12000e

    iget-object v1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper$3;->this$1:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;

    iget-object v1, v1, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v1}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$4900(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/activity/BaseActivity;

    move-result-object v1

    const v2, 0x7f0c05a8

    invoke-virtual {v1, v2}, Lcom/miui/gallery/activity/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/miui/gallery/widget/menu/ImmersionMenu;->add(ILjava/lang/CharSequence;)Lcom/miui/gallery/widget/menu/ImmersionMenuItem;

    .line 779
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper$3;->this$1:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;

    iget-object v0, v0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$3700(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/card/Card;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/card/Card;->isDeletable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 780
    const v0, 0x7f12000d

    iget-object v1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper$3;->this$1:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;

    iget-object v1, v1, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v1}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$5000(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/activity/BaseActivity;

    move-result-object v1

    const v2, 0x7f0c05a7

    invoke-virtual {v1, v2}, Lcom/miui/gallery/activity/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/miui/gallery/widget/menu/ImmersionMenu;->add(ILjava/lang/CharSequence;)Lcom/miui/gallery/widget/menu/ImmersionMenuItem;

    goto :goto_0
.end method

.method public onImmersionMenuSelected(Lcom/miui/gallery/widget/menu/ImmersionMenu;Lcom/miui/gallery/widget/menu/ImmersionMenuItem;)V
    .locals 2
    .param p1, "menu"    # Lcom/miui/gallery/widget/menu/ImmersionMenu;
    .param p2, "item"    # Lcom/miui/gallery/widget/menu/ImmersionMenuItem;

    .prologue
    .line 791
    iget-object v1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper$3;->this$1:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;

    iget-object v1, v1, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v1}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$5100(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/activity/BaseActivity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 804
    :goto_0
    return-void

    .line 795
    :cond_0
    invoke-virtual {p2}, Lcom/miui/gallery/widget/menu/ImmersionMenuItem;->getItemId()I

    move-result v0

    .line 796
    .local v0, "itemId":I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 801
    :pswitch_0
    iget-object v1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper$3;->this$1:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;

    invoke-static {v1}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;->access$5300(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;)V

    goto :goto_0

    .line 798
    :pswitch_1
    iget-object v1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper$3;->this$1:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;

    invoke-static {v1}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;->access$5200(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;)V

    goto :goto_0

    .line 796
    nop

    :pswitch_data_0
    .packed-switch 0x7f12000d
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPrepareImmersionMenu(Lcom/miui/gallery/widget/menu/ImmersionMenu;)Z
    .locals 1
    .param p1, "menu"    # Lcom/miui/gallery/widget/menu/ImmersionMenu;

    .prologue
    .line 786
    const/4 v0, 0x0

    return v0
.end method
