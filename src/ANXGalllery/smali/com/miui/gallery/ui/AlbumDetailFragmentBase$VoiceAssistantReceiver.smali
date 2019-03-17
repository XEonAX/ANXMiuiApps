.class Lcom/miui/gallery/ui/AlbumDetailFragmentBase$VoiceAssistantReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlbumDetailFragmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/AlbumDetailFragmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VoiceAssistantReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/AlbumDetailFragmentBase;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/ui/AlbumDetailFragmentBase;)V
    .locals 0

    .prologue
    .line 888
    iput-object p1, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$VoiceAssistantReceiver;->this$0:Lcom/miui/gallery/ui/AlbumDetailFragmentBase;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/ui/AlbumDetailFragmentBase;Lcom/miui/gallery/ui/AlbumDetailFragmentBase$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/ui/AlbumDetailFragmentBase;
    .param p2, "x1"    # Lcom/miui/gallery/ui/AlbumDetailFragmentBase$1;

    .prologue
    .line 888
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$VoiceAssistantReceiver;-><init>(Lcom/miui/gallery/ui/AlbumDetailFragmentBase;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 892
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$VoiceAssistantReceiver;->this$0:Lcom/miui/gallery/ui/AlbumDetailFragmentBase;

    iget-object v0, v0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mAlbumDetailGridViewWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->isInActionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 893
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$VoiceAssistantReceiver;->this$0:Lcom/miui/gallery/ui/AlbumDetailFragmentBase;

    const-string v1, "assistant_target_package"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "assistant_target_class"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->access$700(Lcom/miui/gallery/ui/AlbumDetailFragmentBase;Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    :cond_0
    return-void
.end method
