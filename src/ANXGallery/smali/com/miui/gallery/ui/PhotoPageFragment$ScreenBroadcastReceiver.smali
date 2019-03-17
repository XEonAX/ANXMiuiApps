.class Lcom/miui/gallery/ui/PhotoPageFragment$ScreenBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PhotoPageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/PhotoPageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/PhotoPageFragment;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/ui/PhotoPageFragment;)V
    .locals 0

    .prologue
    .line 2771
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ScreenBroadcastReceiver;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/ui/PhotoPageFragment;Lcom/miui/gallery/ui/PhotoPageFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment;
    .param p2, "x1"    # Lcom/miui/gallery/ui/PhotoPageFragment$1;

    .prologue
    .line 2771
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoPageFragment$ScreenBroadcastReceiver;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2775
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2776
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2777
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ScreenBroadcastReceiver;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$4400(Lcom/miui/gallery/ui/PhotoPageFragment;I)V

    .line 2779
    :cond_0
    return-void
.end method
