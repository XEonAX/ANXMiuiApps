.class Lmiui/cta/CTAManager$CTAReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CTAManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/cta/CTAManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CTAReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/cta/CTAManager;


# direct methods
.method private constructor <init>(Lmiui/cta/CTAManager;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lmiui/cta/CTAManager$CTAReceiver;->this$0:Lmiui/cta/CTAManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/cta/CTAManager;Lmiui/cta/CTAManager$1;)V
    .locals 0
    .param p1, "x0"    # Lmiui/cta/CTAManager;
    .param p2, "x1"    # Lmiui/cta/CTAManager$1;

    .line 190
    invoke-direct {p0, p1}, Lmiui/cta/CTAManager$CTAReceiver;-><init>(Lmiui/cta/CTAManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 193
    iget-object v0, p0, Lmiui/cta/CTAManager$CTAReceiver;->this$0:Lmiui/cta/CTAManager;

    invoke-static {v0}, Lmiui/cta/CTAManager;->access$200(Lmiui/cta/CTAManager;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    const-string v0, "extra_accept"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 195
    .local v0, "accept":Z
    iget-object v1, p0, Lmiui/cta/CTAManager$CTAReceiver;->this$0:Lmiui/cta/CTAManager;

    invoke-static {v1}, Lmiui/cta/CTAManager;->access$300(Lmiui/cta/CTAManager;)Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 196
    iget-object v1, p0, Lmiui/cta/CTAManager$CTAReceiver;->this$0:Lmiui/cta/CTAManager;

    invoke-static {v1, v0}, Lmiui/cta/CTAManager;->access$302(Lmiui/cta/CTAManager;Z)Z

    .line 197
    iget-object v1, p0, Lmiui/cta/CTAManager$CTAReceiver;->this$0:Lmiui/cta/CTAManager;

    invoke-static {v1}, Lmiui/cta/CTAManager;->access$300(Lmiui/cta/CTAManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    iget-object v1, p0, Lmiui/cta/CTAManager$CTAReceiver;->this$0:Lmiui/cta/CTAManager;

    invoke-static {v1}, Lmiui/cta/CTAManager;->access$400(Lmiui/cta/CTAManager;)V

    goto :goto_0

    .line 200
    :cond_0
    iget-object v1, p0, Lmiui/cta/CTAManager$CTAReceiver;->this$0:Lmiui/cta/CTAManager;

    invoke-static {v1}, Lmiui/cta/CTAManager;->access$500(Lmiui/cta/CTAManager;)V

    .line 204
    .end local v0    # "accept":Z
    :cond_1
    :goto_0
    return-void
.end method
