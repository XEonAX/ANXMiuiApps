.class public Lcom/miui/screenrecorder/view/FramesListPreference;
.super Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;
.source "FramesListPreference.java"


# static fields
.field private static final DEFAULT_FIXED_FRAME:Z = true


# instance fields
.field private mIsFixedFrames:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;->onBindView(Landroid/view/View;)V

    .line 25
    const v1, 0x7f0b0020

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/screenrecorder/view/FramesListPreference;->mLeftTitle:Landroid/widget/TextView;

    .line 26
    iget-object v1, p0, Lcom/miui/screenrecorder/view/FramesListPreference;->mLeftTitle:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 27
    iget-object v1, p0, Lcom/miui/screenrecorder/view/FramesListPreference;->mLeftTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/screenrecorder/view/FramesListPreference;->mTitleStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    invoke-virtual {p0}, Lcom/miui/screenrecorder/view/FramesListPreference;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "miui.screenrecorder.fixedframe"

    const/4 v3, 0x1

    .line 29
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 30
    .local v0, "isFixedFrames":Z
    invoke-virtual {p0, v0}, Lcom/miui/screenrecorder/view/FramesListPreference;->refreshLayout(Z)V

    .line 32
    .end local v0    # "isFixedFrames":Z
    :cond_0
    const v1, 0x7f0b0021

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/screenrecorder/view/FramesListPreference;->mLeftSummary:Landroid/widget/TextView;

    .line 33
    iget-object v1, p0, Lcom/miui/screenrecorder/view/FramesListPreference;->mLeftSummary:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 34
    iget-object v1, p0, Lcom/miui/screenrecorder/view/FramesListPreference;->mLeftSummary:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/screenrecorder/view/FramesListPreference;->mSummaryStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    :cond_1
    const v1, 0x7f0b0022

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/screenrecorder/view/FramesListPreference;->mRightValue:Landroid/widget/TextView;

    .line 37
    iget-object v1, p0, Lcom/miui/screenrecorder/view/FramesListPreference;->mRightValue:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 38
    iget-object v1, p0, Lcom/miui/screenrecorder/view/FramesListPreference;->mRightValue:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/screenrecorder/view/FramesListPreference;->mValueStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    :cond_2
    return-void
.end method

.method protected onClick()V
    .locals 3

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/miui/screenrecorder/view/FramesListPreference;->mIsFixedFrames:Z

    if-eqz v0, :cond_1

    .line 45
    invoke-super {p0}, Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;->onClick()V

    .line 50
    :goto_0
    iget-object v0, p0, Lcom/miui/screenrecorder/view/FramesListPreference;->mClickListener:Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference$ListClickListener;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/miui/screenrecorder/view/FramesListPreference;->mClickListener:Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference$ListClickListener;

    invoke-interface {v0}, Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference$ListClickListener;->onClick()V

    .line 53
    :cond_0
    return-void

    .line 47
    :cond_1
    invoke-virtual {p0}, Lcom/miui/screenrecorder/view/FramesListPreference;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/screenrecorder/view/FramesListPreference;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f08000d

    .line 48
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 47
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public refreshLayout(Z)V
    .locals 3
    .param p1, "isFixedFrames"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 56
    iput-boolean p1, p0, Lcom/miui/screenrecorder/view/FramesListPreference;->mIsFixedFrames:Z

    .line 57
    if-eqz p1, :cond_0

    .line 58
    iget-object v0, p0, Lcom/miui/screenrecorder/view/FramesListPreference;->mLeftTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 59
    iget-object v0, p0, Lcom/miui/screenrecorder/view/FramesListPreference;->mLeftSummary:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 60
    iget-object v0, p0, Lcom/miui/screenrecorder/view/FramesListPreference;->mRightValue:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 66
    :goto_0
    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/miui/screenrecorder/view/FramesListPreference;->mLeftTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 63
    iget-object v0, p0, Lcom/miui/screenrecorder/view/FramesListPreference;->mLeftSummary:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 64
    iget-object v0, p0, Lcom/miui/screenrecorder/view/FramesListPreference;->mRightValue:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method
