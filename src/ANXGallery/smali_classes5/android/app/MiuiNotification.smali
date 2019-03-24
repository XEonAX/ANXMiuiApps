.class public Landroid/app/MiuiNotification;
.super Ljava/lang/Object;
.source "MiuiNotification.java"


# static fields
.field public static final EXTRA_SHOW_ACTION:Ljava/lang/String; = "miui.showAction"

.field public static final TYPE_ADVERTISEMENT:I = 0x1


# instance fields
.field public customizedIcon:Z

.field private enableFloat:Z

.field private enableKeyguard:Z

.field private exitFloatingIntent:Landroid/app/PendingIntent;

.field private floatTime:I

.field private messageClassName:Ljava/lang/CharSequence;

.field private messageCount:I

.field private targetPkg:Ljava/lang/CharSequence;

.field public traceContent:Ljava/lang/CharSequence;

.field public traceType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/MiuiNotification;->enableFloat:Z

    .line 42
    iput-boolean v0, p0, Landroid/app/MiuiNotification;->enableKeyguard:Z

    .line 47
    const/16 v1, 0x1388

    iput v1, p0, Landroid/app/MiuiNotification;->floatTime:I

    .line 56
    iput v0, p0, Landroid/app/MiuiNotification;->messageCount:I

    .line 64
    return-void
.end method

.method public static getLedPwmOffOn(I)[I
    .locals 3
    .param p0, "totalLength"    # I

    .line 204
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 205
    .local v0, "values":[I
    div-int/lit8 v1, p0, 0x4

    mul-int/lit8 v1, v1, 0x3

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 206
    aget v1, v0, v2

    sub-int v1, p0, v1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 207
    return-object v0
.end method


# virtual methods
.method public getExitFloatingIntent()Landroid/app/PendingIntent;
    .locals 1

    .line 83
    iget-object v0, p0, Landroid/app/MiuiNotification;->exitFloatingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getFloatTime()I
    .locals 1

    .line 131
    iget v0, p0, Landroid/app/MiuiNotification;->floatTime:I

    return v0
.end method

.method public getMessageClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 67
    iget-object v0, p0, Landroid/app/MiuiNotification;->messageClassName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getMessageCount()I
    .locals 1

    .line 75
    iget v0, p0, Landroid/app/MiuiNotification;->messageCount:I

    return v0
.end method

.method public getTargetPkg()Ljava/lang/CharSequence;
    .locals 1

    .line 109
    iget-object v0, p0, Landroid/app/MiuiNotification;->targetPkg:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isEnableFloat()Z
    .locals 1

    .line 113
    iget-boolean v0, p0, Landroid/app/MiuiNotification;->enableFloat:Z

    return v0
.end method

.method public isEnableKeyguard()Z
    .locals 1

    .line 120
    iget-boolean v0, p0, Landroid/app/MiuiNotification;->enableKeyguard:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/app/MiuiNotification;->customizedIcon:Z

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/MiuiNotification;->traceType:I

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/app/MiuiNotification;->traceContent:Ljava/lang/CharSequence;

    .line 151
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroid/app/MiuiNotification;->enableFloat:Z

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/MiuiNotification;->floatTime:I

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_3

    move v1, v2

    nop

    :cond_3
    iput-boolean v1, p0, Landroid/app/MiuiNotification;->enableKeyguard:Z

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    .line 155
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/app/MiuiNotification;->targetPkg:Ljava/lang/CharSequence;

    .line 157
    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    .line 158
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Landroid/app/MiuiNotification;->exitFloatingIntent:Landroid/app/PendingIntent;

    .line 160
    :cond_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/MiuiNotification;->messageCount:I

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    .line 162
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/app/MiuiNotification;->messageClassName:Ljava/lang/CharSequence;

    .line 164
    :cond_6
    return-void
.end method

.method public setCustomizedIcon(Z)Landroid/app/MiuiNotification;
    .locals 0
    .param p1, "customizedIcon"    # Z

    .line 135
    iput-boolean p1, p0, Landroid/app/MiuiNotification;->customizedIcon:Z

    .line 136
    return-object p0
.end method

.method public setEnableFloat(Z)Landroid/app/MiuiNotification;
    .locals 0
    .param p1, "enable"    # Z

    .line 92
    iput-boolean p1, p0, Landroid/app/MiuiNotification;->enableFloat:Z

    .line 93
    return-object p0
.end method

.method public setEnableKeyguard(Z)Landroid/app/MiuiNotification;
    .locals 0
    .param p1, "enable"    # Z

    .line 100
    iput-boolean p1, p0, Landroid/app/MiuiNotification;->enableKeyguard:Z

    .line 101
    return-object p0
.end method

.method public setExitFloatingIntent(Landroid/app/PendingIntent;)Landroid/app/MiuiNotification;
    .locals 0
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .line 87
    iput-object p1, p0, Landroid/app/MiuiNotification;->exitFloatingIntent:Landroid/app/PendingIntent;

    .line 88
    return-object p0
.end method

.method public setFloatTime(I)Landroid/app/MiuiNotification;
    .locals 0
    .param p1, "floatTime"    # I

    .line 124
    if-lez p1, :cond_0

    .line 125
    iput p1, p0, Landroid/app/MiuiNotification;->floatTime:I

    .line 127
    :cond_0
    return-object p0
.end method

.method public setMessageClassName(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "messageClassName"    # Ljava/lang/CharSequence;

    .line 71
    iput-object p1, p0, Landroid/app/MiuiNotification;->messageClassName:Ljava/lang/CharSequence;

    .line 72
    return-void
.end method

.method public setMessageCount(I)V
    .locals 0
    .param p1, "messageCount"    # I

    .line 79
    iput p1, p0, Landroid/app/MiuiNotification;->messageCount:I

    .line 80
    return-void
.end method

.method public setTargetPkg(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "pkg"    # Ljava/lang/CharSequence;

    .line 105
    iput-object p1, p0, Landroid/app/MiuiNotification;->targetPkg:Ljava/lang/CharSequence;

    .line 106
    return-void
.end method

.method public setTo(Landroid/app/MiuiNotification;)V
    .locals 1
    .param p1, "extraNotification"    # Landroid/app/MiuiNotification;

    .line 211
    iget v0, p1, Landroid/app/MiuiNotification;->traceType:I

    iput v0, p0, Landroid/app/MiuiNotification;->traceType:I

    .line 212
    iget-object v0, p1, Landroid/app/MiuiNotification;->traceContent:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/app/MiuiNotification;->traceContent:Ljava/lang/CharSequence;

    .line 213
    iget-boolean v0, p1, Landroid/app/MiuiNotification;->customizedIcon:Z

    iput-boolean v0, p0, Landroid/app/MiuiNotification;->customizedIcon:Z

    .line 214
    iget-boolean v0, p1, Landroid/app/MiuiNotification;->enableFloat:Z

    iput-boolean v0, p0, Landroid/app/MiuiNotification;->enableFloat:Z

    .line 215
    iget v0, p1, Landroid/app/MiuiNotification;->floatTime:I

    iput v0, p0, Landroid/app/MiuiNotification;->floatTime:I

    .line 216
    iget-boolean v0, p1, Landroid/app/MiuiNotification;->enableKeyguard:Z

    iput-boolean v0, p0, Landroid/app/MiuiNotification;->enableKeyguard:Z

    .line 217
    iget-object v0, p1, Landroid/app/MiuiNotification;->targetPkg:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/app/MiuiNotification;->targetPkg:Ljava/lang/CharSequence;

    .line 218
    iget-object v0, p1, Landroid/app/MiuiNotification;->exitFloatingIntent:Landroid/app/PendingIntent;

    iput-object v0, p0, Landroid/app/MiuiNotification;->exitFloatingIntent:Landroid/app/PendingIntent;

    .line 219
    iget v0, p1, Landroid/app/MiuiNotification;->messageCount:I

    iput v0, p0, Landroid/app/MiuiNotification;->messageCount:I

    .line 220
    iget-object v0, p1, Landroid/app/MiuiNotification;->messageClassName:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/app/MiuiNotification;->messageClassName:Ljava/lang/CharSequence;

    .line 221
    return-void
.end method

.method public setTrace(ILjava/lang/CharSequence;)Landroid/app/MiuiNotification;
    .locals 0
    .param p1, "type"    # I
    .param p2, "content"    # Ljava/lang/CharSequence;

    .line 140
    iput p1, p0, Landroid/app/MiuiNotification;->traceType:I

    .line 141
    iput-object p2, p0, Landroid/app/MiuiNotification;->traceContent:Ljava/lang/CharSequence;

    .line 142
    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 167
    iget-boolean v0, p0, Landroid/app/MiuiNotification;->customizedIcon:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    iget v0, p0, Landroid/app/MiuiNotification;->traceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    iget-object v0, p0, Landroid/app/MiuiNotification;->traceContent:Ljava/lang/CharSequence;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    iget-object v0, p0, Landroid/app/MiuiNotification;->traceContent:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto :goto_0

    .line 173
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    :goto_0
    iget-boolean v0, p0, Landroid/app/MiuiNotification;->enableFloat:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    iget v0, p0, Landroid/app/MiuiNotification;->floatTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    iget-boolean v0, p0, Landroid/app/MiuiNotification;->enableKeyguard:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    iget-object v0, p0, Landroid/app/MiuiNotification;->targetPkg:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 179
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    iget-object v0, p0, Landroid/app/MiuiNotification;->targetPkg:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto :goto_1

    .line 182
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    :goto_1
    iget-object v0, p0, Landroid/app/MiuiNotification;->exitFloatingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_2

    .line 185
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 186
    iget-object v0, p0, Landroid/app/MiuiNotification;->exitFloatingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1, v2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 188
    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 190
    :goto_2
    iget v0, p0, Landroid/app/MiuiNotification;->messageCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    iget-object v0, p0, Landroid/app/MiuiNotification;->messageClassName:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    .line 192
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    iget-object v0, p0, Landroid/app/MiuiNotification;->messageClassName:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto :goto_3

    .line 195
    :cond_3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    :goto_3
    return-void
.end method
