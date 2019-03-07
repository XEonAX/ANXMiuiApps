.class Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment$3;
.super Ljava/lang/Object;
.source "ScreenRecorderSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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


# direct methods
.method constructor <init>(Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;

    .prologue
    .line 461
    iput-object p1, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment$3;->this$0:Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v1, 0x0

    .line 464
    iget-object v0, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment$3;->this$0:Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;

    invoke-static {v0, v1}, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->access$102(Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;Landroid/content/DialogInterface$OnClickListener;)Landroid/content/DialogInterface$OnClickListener;

    .line 465
    iget-object v0, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment$3;->this$0:Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;

    invoke-static {v0, v1}, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->access$202(Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;Landroid/content/DialogInterface$OnClickListener;)Landroid/content/DialogInterface$OnClickListener;

    .line 466
    return-void
.end method
