.class public Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;
.super Landroid/preference/ListPreference;
.source "MiuiScreenRecorderListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference$ListClickListener;
    }
.end annotation


# instance fields
.field mClickListener:Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference$ListClickListener;

.field mLeftSummary:Landroid/widget/TextView;

.field mLeftTitle:Landroid/widget/TextView;

.field mRightValue:Landroid/widget/TextView;

.field mSummaryStr:Ljava/lang/String;

.field mTitleStr:Ljava/lang/String;

.field mValueStr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    invoke-direct {p0}, Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;->init()V

    .line 28
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 35
    const v0, 0x7f03000a

    invoke-virtual {p0, v0}, Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;->setLayoutResource(I)V

    .line 36
    return-void
.end method


# virtual methods
.method getAppContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 88
    invoke-static {}, Lcom/miui/screenrecorder/ScreenRecorderApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onBindView(Landroid/view/View;)V

    .line 41
    const v0, 0x7f0b0020

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;->mLeftTitle:Landroid/widget/TextView;

    .line 42
    iget-object v0, p0, Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;->mLeftTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;->mLeftTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;->mTitleStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    :cond_0
    const v0, 0x7f0b0021

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;->mLeftSummary:Landroid/widget/TextView;

    .line 46
    iget-object v0, p0, Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;->mLeftSummary:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 47
    iget-object v0, p0, Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;->mLeftSummary:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;->mSummaryStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    :cond_1
    const v0, 0x7f0b0022

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;->mRightValue:Landroid/widget/TextView;

    .line 50
    iget-object v0, p0, Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;->mRightValue:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 51
    iget-object v0, p0, Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;->mRightValue:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;->mValueStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    :cond_2
    return-void
.end method

.method protected onClick()V
    .locals 3

    .prologue
    .line 57
    invoke-static {}, Lcom/miui/screenrecorder/data/MiuiScreenRecorderGlobalData;->getInstance()Lcom/miui/screenrecorder/data/MiuiScreenRecorderGlobalData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/screenrecorder/data/MiuiScreenRecorderGlobalData;->getRecording()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    invoke-virtual {p0}, Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f08000e

    .line 59
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 58
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 63
    :goto_0
    iget-object v0, p0, Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;->mClickListener:Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference$ListClickListener;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;->mClickListener:Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference$ListClickListener;

    invoke-interface {v0}, Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference$ListClickListener;->onClick()V

    .line 66
    :cond_0
    return-void

    .line 61
    :cond_1
    invoke-super {p0}, Landroid/preference/ListPreference;->onClick()V

    goto :goto_0
.end method

.method public setLeftSummary(Ljava/lang/String;)V
    .locals 0
    .param p1, "summary"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;->mSummaryStr:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setLeftTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;->mTitleStr:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setOnListClickListener(Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference$ListClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference$ListClickListener;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;->mClickListener:Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference$ListClickListener;

    .line 32
    return-void
.end method

.method public setRightValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 77
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;->mValueStr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    iput-object p1, p0, Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;->mValueStr:Ljava/lang/String;

    .line 79
    invoke-virtual {p0}, Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;->notifyChanged()V

    .line 81
    :cond_0
    return-void
.end method
