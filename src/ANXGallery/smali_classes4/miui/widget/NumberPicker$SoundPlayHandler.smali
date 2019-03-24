.class Lmiui/widget/NumberPicker$SoundPlayHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SoundPlayHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;
    }
.end annotation


# static fields
.field private static final Xw:Lmiui/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;

.field private static final Xx:I = 0x0

.field private static final Xy:I = 0x1

.field private static final Xz:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 202
    new-instance v0, Lmiui/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmiui/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;-><init>(Lmiui/widget/NumberPicker$1;)V

    sput-object v0, Lmiui/widget/NumberPicker$SoundPlayHandler;->Xw:Lmiui/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;

    return-void
.end method

.method constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 209
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 210
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 214
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 215
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 223
    :pswitch_0
    sget-object v0, Lmiui/widget/NumberPicker$SoundPlayHandler;->Xw:Lmiui/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Lmiui/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;->release(I)V

    .line 224
    goto :goto_0

    .line 220
    :pswitch_1
    sget-object p1, Lmiui/widget/NumberPicker$SoundPlayHandler;->Xw:Lmiui/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;

    invoke-virtual {p1}, Lmiui/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;->play()V

    .line 221
    goto :goto_0

    .line 217
    :pswitch_2
    sget-object v0, Lmiui/widget/NumberPicker$SoundPlayHandler;->Xw:Lmiui/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Lmiui/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;->init(I)V

    .line 218
    nop

    .line 228
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method init(I)V
    .locals 1

    .line 231
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0}, Lmiui/widget/NumberPicker$SoundPlayHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiui/widget/NumberPicker$SoundPlayHandler;->sendMessage(Landroid/os/Message;)Z

    .line 232
    return-void
.end method

.method play()V
    .locals 1

    .line 235
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiui/widget/NumberPicker$SoundPlayHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/widget/NumberPicker$SoundPlayHandler;->sendMessage(Landroid/os/Message;)Z

    .line 236
    return-void
.end method

.method release(I)V
    .locals 2

    .line 243
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lmiui/widget/NumberPicker$SoundPlayHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiui/widget/NumberPicker$SoundPlayHandler;->sendMessage(Landroid/os/Message;)Z

    .line 244
    return-void
.end method

.method stop()V
    .locals 1

    .line 239
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiui/widget/NumberPicker$SoundPlayHandler;->removeMessages(I)V

    .line 240
    return-void
.end method
