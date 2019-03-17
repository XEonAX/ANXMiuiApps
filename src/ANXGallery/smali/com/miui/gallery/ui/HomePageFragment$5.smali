.class Lcom/miui/gallery/ui/HomePageFragment$5;
.super Ljava/lang/Object;
.source "HomePageFragment.java"

# interfaces
.implements Lcom/miui/gallery/util/SafeBroadcastReceiver$WeakReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/HomePageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/HomePageFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/HomePageFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/HomePageFragment;

    .prologue
    .line 395
    iput-object p1, p0, Lcom/miui/gallery/ui/HomePageFragment$5;->this$0:Lcom/miui/gallery/ui/HomePageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 398
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment$5;->this$0:Lcom/miui/gallery/ui/HomePageFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/HomePageFragment;->access$700(Lcom/miui/gallery/ui/HomePageFragment;)Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->isInActionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment$5;->this$0:Lcom/miui/gallery/ui/HomePageFragment;

    const-string v1, "assistant_target_package"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "assistant_target_class"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/ui/HomePageFragment;->access$800(Lcom/miui/gallery/ui/HomePageFragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    :cond_0
    return-void
.end method
