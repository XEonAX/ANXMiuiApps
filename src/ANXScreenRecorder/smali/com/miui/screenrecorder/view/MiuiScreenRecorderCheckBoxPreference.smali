.class public Lcom/miui/screenrecorder/view/MiuiScreenRecorderCheckBoxPreference;
.super Landroid/preference/CheckBoxPreference;
.source "MiuiScreenRecorderCheckBoxPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/screenrecorder/view/MiuiScreenRecorderCheckBoxPreference$CheckClickListener;
    }
.end annotation


# instance fields
.field private mClickListener:Lcom/miui/screenrecorder/view/MiuiScreenRecorderCheckBoxPreference$CheckClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    return-void
.end method


# virtual methods
.method protected onClick()V
    .locals 3

    .prologue
    .line 22
    invoke-static {}, Lcom/miui/screenrecorder/data/MiuiScreenRecorderGlobalData;->getInstance()Lcom/miui/screenrecorder/data/MiuiScreenRecorderGlobalData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/screenrecorder/data/MiuiScreenRecorderGlobalData;->getRecording()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 23
    invoke-static {}, Lcom/miui/screenrecorder/ScreenRecorderApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 24
    invoke-static {}, Lcom/miui/screenrecorder/ScreenRecorderApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f08000e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 23
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 28
    :goto_0
    iget-object v0, p0, Lcom/miui/screenrecorder/view/MiuiScreenRecorderCheckBoxPreference;->mClickListener:Lcom/miui/screenrecorder/view/MiuiScreenRecorderCheckBoxPreference$CheckClickListener;

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/miui/screenrecorder/view/MiuiScreenRecorderCheckBoxPreference;->mClickListener:Lcom/miui/screenrecorder/view/MiuiScreenRecorderCheckBoxPreference$CheckClickListener;

    invoke-interface {v0}, Lcom/miui/screenrecorder/view/MiuiScreenRecorderCheckBoxPreference$CheckClickListener;->onClick()V

    .line 31
    :cond_0
    return-void

    .line 26
    :cond_1
    invoke-super {p0}, Landroid/preference/CheckBoxPreference;->onClick()V

    goto :goto_0
.end method
