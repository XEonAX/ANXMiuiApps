.class Lcom/miui/gallery/cloud/control/BatteryMonitor$1;
.super Landroid/content/BroadcastReceiver;
.source "BatteryMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/cloud/control/BatteryMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/cloud/control/BatteryMonitor;


# direct methods
.method constructor <init>(Lcom/miui/gallery/cloud/control/BatteryMonitor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/cloud/control/BatteryMonitor;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/miui/gallery/cloud/control/BatteryMonitor$1;->this$0:Lcom/miui/gallery/cloud/control/BatteryMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 54
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    invoke-static {p1, p2}, Lcom/miui/gallery/cloud/control/BatteryMonitor;->isPowerCanSync(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    invoke-static {v1}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->setPowerCanSync(Z)V

    .line 60
    :cond_0
    return-void
.end method
