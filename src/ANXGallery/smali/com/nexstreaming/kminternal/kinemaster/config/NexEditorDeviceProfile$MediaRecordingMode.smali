.class public final enum Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile$MediaRecordingMode;
.super Ljava/lang/Enum;
.source "NexEditorDeviceProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MediaRecordingMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile$MediaRecordingMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile$MediaRecordingMode;

.field public static final enum Disable:Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile$MediaRecordingMode;

.field public static final enum UseKineMaster:Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile$MediaRecordingMode;

.field public static final enum UseNative:Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile$MediaRecordingMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 40
    new-instance v0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile$MediaRecordingMode;

    const-string v1, "Disable"

    invoke-direct {v0, v1, v2}, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile$MediaRecordingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile$MediaRecordingMode;->Disable:Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile$MediaRecordingMode;

    new-instance v0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile$MediaRecordingMode;

    const-string v1, "UseNative"

    invoke-direct {v0, v1, v3}, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile$MediaRecordingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile$MediaRecordingMode;->UseNative:Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile$MediaRecordingMode;

    new-instance v0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile$MediaRecordingMode;

    const-string v1, "UseKineMaster"

    invoke-direct {v0, v1, v4}, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile$MediaRecordingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile$MediaRecordingMode;->UseKineMaster:Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile$MediaRecordingMode;

    .line 39
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile$MediaRecordingMode;

    sget-object v1, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile$MediaRecordingMode;->Disable:Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile$MediaRecordingMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile$MediaRecordingMode;->UseNative:Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile$MediaRecordingMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile$MediaRecordingMode;->UseKineMaster:Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile$MediaRecordingMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile$MediaRecordingMode;->$VALUES:[Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile$MediaRecordingMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromValue(I)Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile$MediaRecordingMode;
    .locals 1

    .prologue
    .line 42
    packed-switch p0, :pswitch_data_0

    .line 46
    sget-object v0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile$MediaRecordingMode;->Disable:Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile$MediaRecordingMode;

    :goto_0
    return-object v0

    .line 43
    :pswitch_0
    sget-object v0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile$MediaRecordingMode;->Disable:Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile$MediaRecordingMode;

    goto :goto_0

    .line 44
    :pswitch_1
    sget-object v0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile$MediaRecordingMode;->UseNative:Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile$MediaRecordingMode;

    goto :goto_0

    .line 45
    :pswitch_2
    sget-object v0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile$MediaRecordingMode;->UseKineMaster:Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile$MediaRecordingMode;

    goto :goto_0

    .line 42
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile$MediaRecordingMode;
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile$MediaRecordingMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile$MediaRecordingMode;

    return-object v0
.end method

.method public static values()[Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile$MediaRecordingMode;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile$MediaRecordingMode;->$VALUES:[Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile$MediaRecordingMode;

    invoke-virtual {v0}, [Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile$MediaRecordingMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile$MediaRecordingMode;

    return-object v0
.end method
