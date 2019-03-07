.class public Lcom/miui/screenrecorder/activity/ScreenRecorderSettingActivity;
.super Lmiui/app/Activity;
.source "ScreenRecorderSettingActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 21
    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    invoke-virtual {p0}, Lcom/miui/screenrecorder/activity/ScreenRecorderSettingActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x1020002

    new-instance v2, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;

    invoke-direct {v2}, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;-><init>()V

    .line 23
    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 24
    return-void
.end method
