.class Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment$1;
.super Ljava/lang/Object;
.source "ScreenRecorderSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->showFirstUsingDialog(Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;

.field final synthetic val$newValue:Ljava/lang/Object;

.field final synthetic val$preference:Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;

    .prologue
    .line 437
    iput-object p1, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment$1;->this$0:Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;

    iput-object p2, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment$1;->val$preference:Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;

    iput-object p3, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment$1;->val$newValue:Ljava/lang/Object;

    iput-object p4, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment$1;->val$type:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 440
    invoke-static {}, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->getConfig()Lcom/miui/screenrecorder/config/ScreenRecorderConfig;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->saveShowFirstSelectAlert(Z)V

    .line 441
    iget-object v0, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment$1;->this$0:Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;

    iget-object v1, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment$1;->val$preference:Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;

    iget-object v2, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment$1;->val$newValue:Ljava/lang/Object;

    iget-object v3, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment$1;->val$type:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->access$000(Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;Ljava/lang/Object;Ljava/lang/String;)Z

    .line 442
    const-string v0, "ScreenRecorderSettings"

    const-string v1, "user agree to authorization"

    invoke-static {v0, v1}, Lcom/miui/screenrecorder/tools/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    return-void
.end method
