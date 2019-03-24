.class public Lmiui/preference/VolumePreference;
.super Lmiui/preference/SeekBarDialogPreference;
.source "SourceFile"

# interfaces
.implements Landroid/preference/PreferenceManager$OnActivityStopListener;
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/preference/VolumePreference$SeekBarVolumizer;,
        Lmiui/preference/VolumePreference$SavedState;,
        Lmiui/preference/VolumePreference$VolumeStore;
    }
.end annotation


# static fields
.field private static final EB:Lmiui/reflect/Method;

.field private static final ED:Lmiui/reflect/Method;

.field private static final EF:I

.field private static final TAG:Ljava/lang/String; = "VolumePreference"


# instance fields
.field private EH:I

.field private EI:Lmiui/preference/VolumePreference$SeekBarVolumizer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 49
    const-class v0, Landroid/preference/PreferenceManager;

    const-string v1, "registerOnActivityStopListener"

    const-string v2, "(Landroid/preference/PreferenceManager$OnActivityStopListener;)V"

    .line 50
    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lmiui/preference/VolumePreference;->EB:Lmiui/reflect/Method;

    .line 51
    const-class v0, Landroid/preference/PreferenceManager;

    const-string v1, "unregisterOnActivityStopListener"

    const-string v2, "(Landroid/preference/PreferenceManager$OnActivityStopListener;)V"

    .line 52
    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lmiui/preference/VolumePreference;->ED:Lmiui/reflect/Method;

    .line 54
    invoke-static {}, Lmiui/preference/VolumePreference;->cL()I

    move-result v0

    sput v0, Lmiui/preference/VolumePreference;->EF:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 72
    invoke-direct {p0, p1, p2}, Lmiui/preference/SeekBarDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    sget-object v0, Lcom/miui/internal/R$styleable;->VolumePreference:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 76
    sget p2, Lmiui/preference/VolumePreference;->EF:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lmiui/preference/VolumePreference;->EH:I

    .line 77
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 78
    return-void
.end method

.method private static cL()I
    .locals 3

    .line 60
    :try_start_0
    const-string v0, "android.R.styleable"

    const-string v1, "VolumePreference_streamType"

    const-string v2, "I"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    .line 61
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method private cM()V
    .locals 5

    .line 147
    sget-object v0, Lmiui/preference/VolumePreference;->ED:Lmiui/reflect/Method;

    const-class v1, Landroid/preference/PreferenceManager;

    .line 148
    invoke-virtual {p0}, Lmiui/preference/VolumePreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 150
    iget-object v0, p0, Lmiui/preference/VolumePreference;->EI:Lmiui/preference/VolumePreference$SeekBarVolumizer;

    if-eqz v0, :cond_2

    .line 151
    invoke-virtual {p0}, Lmiui/preference/VolumePreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 152
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 153
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    sget v2, Lcom/miui/internal/R$id;->seekbar:I

    .line 154
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 155
    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 157
    :cond_0
    iget-object v0, p0, Lmiui/preference/VolumePreference;->EI:Lmiui/preference/VolumePreference$SeekBarVolumizer;

    invoke-virtual {v0}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->revertVolume()V

    .line 159
    :cond_1
    iget-object v0, p0, Lmiui/preference/VolumePreference;->EI:Lmiui/preference/VolumePreference$SeekBarVolumizer;

    invoke-virtual {v0}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->stop()V

    .line 160
    iput-object v1, p0, Lmiui/preference/VolumePreference;->EI:Lmiui/preference/VolumePreference$SeekBarVolumizer;

    .line 163
    :cond_2
    return-void
.end method


# virtual methods
.method public onActivityStop()V
    .locals 1

    .line 138
    iget-object v0, p0, Lmiui/preference/VolumePreference;->EI:Lmiui/preference/VolumePreference$SeekBarVolumizer;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lmiui/preference/VolumePreference;->EI:Lmiui/preference/VolumePreference$SeekBarVolumizer;

    invoke-static {v0}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->a(Lmiui/preference/VolumePreference$SeekBarVolumizer;)V

    .line 141
    :cond_0
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 6

    .line 86
    invoke-super {p0, p1}, Lmiui/preference/SeekBarDialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 88
    sget v0, Lcom/miui/internal/R$id;->seekbar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 89
    new-instance v1, Lmiui/preference/VolumePreference$SeekBarVolumizer;

    invoke-virtual {p0}, Lmiui/preference/VolumePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lmiui/preference/VolumePreference;->EH:I

    invoke-direct {v1, p0, v2, v0, v3}, Lmiui/preference/VolumePreference$SeekBarVolumizer;-><init>(Lmiui/preference/VolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;I)V

    iput-object v1, p0, Lmiui/preference/VolumePreference;->EI:Lmiui/preference/VolumePreference$SeekBarVolumizer;

    .line 91
    sget-object v0, Lmiui/preference/VolumePreference;->EB:Lmiui/reflect/Method;

    const-class v1, Landroid/preference/PreferenceManager;

    .line 92
    invoke-virtual {p0}, Lmiui/preference/VolumePreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v0, v1, v2, v4}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 96
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 97
    invoke-virtual {p1, v3}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 98
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 99
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 0

    .line 128
    invoke-super {p0, p1}, Lmiui/preference/SeekBarDialogPreference;->onDialogClosed(Z)V

    .line 130
    if-nez p1, :cond_0

    iget-object p1, p0, Lmiui/preference/VolumePreference;->EI:Lmiui/preference/VolumePreference$SeekBarVolumizer;

    if-eqz p1, :cond_0

    .line 131
    iget-object p1, p0, Lmiui/preference/VolumePreference;->EI:Lmiui/preference/VolumePreference$SeekBarVolumizer;

    invoke-virtual {p1}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->revertVolume()V

    .line 134
    :cond_0
    invoke-direct {p0}, Lmiui/preference/VolumePreference;->cM()V

    .line 135
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 103
    iget-object p1, p0, Lmiui/preference/VolumePreference;->EI:Lmiui/preference/VolumePreference$SeekBarVolumizer;

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 104
    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x0

    if-nez p1, :cond_1

    .line 105
    move p1, v0

    goto :goto_0

    .line 104
    :cond_1
    nop

    .line 105
    move p1, p3

    :goto_0
    const/16 v1, 0xa4

    if-eq p2, v1, :cond_4

    packed-switch p2, :pswitch_data_0

    .line 122
    return p3

    .line 107
    :pswitch_0
    if-eqz p1, :cond_2

    .line 108
    iget-object p1, p0, Lmiui/preference/VolumePreference;->EI:Lmiui/preference/VolumePreference$SeekBarVolumizer;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->changeVolumeBy(I)V

    .line 110
    :cond_2
    return v0

    .line 112
    :pswitch_1
    if-eqz p1, :cond_3

    .line 113
    iget-object p1, p0, Lmiui/preference/VolumePreference;->EI:Lmiui/preference/VolumePreference$SeekBarVolumizer;

    invoke-virtual {p1, v0}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->changeVolumeBy(I)V

    .line 115
    :cond_3
    return v0

    .line 117
    :cond_4
    if-eqz p1, :cond_5

    .line 118
    iget-object p1, p0, Lmiui/preference/VolumePreference;->EI:Lmiui/preference/VolumePreference$SeekBarVolumizer;

    invoke-virtual {p1}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->muteVolume()V

    .line 120
    :cond_5
    return v0

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 188
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lmiui/preference/VolumePreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 194
    :cond_0
    check-cast p1, Lmiui/preference/VolumePreference$SavedState;

    .line 195
    invoke-virtual {p1}, Lmiui/preference/VolumePreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lmiui/preference/SeekBarDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 196
    iget-object v0, p0, Lmiui/preference/VolumePreference;->EI:Lmiui/preference/VolumePreference$SeekBarVolumizer;

    if-eqz v0, :cond_1

    .line 197
    iget-object v0, p0, Lmiui/preference/VolumePreference;->EI:Lmiui/preference/VolumePreference$SeekBarVolumizer;

    invoke-virtual {p1}, Lmiui/preference/VolumePreference$SavedState;->cN()Lmiui/preference/VolumePreference$VolumeStore;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->onRestoreInstanceState(Lmiui/preference/VolumePreference$VolumeStore;)V

    .line 199
    :cond_1
    return-void

    .line 190
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Lmiui/preference/SeekBarDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 191
    return-void
.end method

.method protected onSampleStarting(Lmiui/preference/VolumePreference$SeekBarVolumizer;)V
    .locals 1

    .line 166
    iget-object v0, p0, Lmiui/preference/VolumePreference;->EI:Lmiui/preference/VolumePreference$SeekBarVolumizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/preference/VolumePreference;->EI:Lmiui/preference/VolumePreference$SeekBarVolumizer;

    if-eq p1, v0, :cond_0

    .line 167
    iget-object p1, p0, Lmiui/preference/VolumePreference;->EI:Lmiui/preference/VolumePreference$SeekBarVolumizer;

    invoke-virtual {p1}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->stopSample()V

    .line 169
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 173
    invoke-super {p0}, Lmiui/preference/SeekBarDialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 174
    invoke-virtual {p0}, Lmiui/preference/VolumePreference;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    return-object v0

    .line 179
    :cond_0
    new-instance v1, Lmiui/preference/VolumePreference$SavedState;

    invoke-direct {v1, v0}, Lmiui/preference/VolumePreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 180
    iget-object v0, p0, Lmiui/preference/VolumePreference;->EI:Lmiui/preference/VolumePreference$SeekBarVolumizer;

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Lmiui/preference/VolumePreference;->EI:Lmiui/preference/VolumePreference$SeekBarVolumizer;

    invoke-virtual {v1}, Lmiui/preference/VolumePreference$SavedState;->cN()Lmiui/preference/VolumePreference$VolumeStore;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->onSaveInstanceState(Lmiui/preference/VolumePreference$VolumeStore;)V

    .line 183
    :cond_1
    return-object v1
.end method

.method public setStreamType(I)V
    .locals 0

    .line 81
    iput p1, p0, Lmiui/preference/VolumePreference;->EH:I

    .line 82
    return-void
.end method
