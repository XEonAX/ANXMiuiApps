.class Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$VoiceAssistantReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SearchImageResultFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VoiceAssistantReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;)V
    .locals 0

    .prologue
    .line 557
    iput-object p1, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$VoiceAssistantReceiver;->this$0:Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;
    .param p2, "x1"    # Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$1;

    .prologue
    .line 557
    invoke-direct {p0, p1}, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$VoiceAssistantReceiver;-><init>(Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 561
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$VoiceAssistantReceiver;->this$0:Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;

    iget-object v0, v0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->mGridViewWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->isInActionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 562
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$VoiceAssistantReceiver;->this$0:Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;

    const-string v1, "assistant_target_package"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "assistant_target_class"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->access$1500(Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    :cond_0
    return-void
.end method
