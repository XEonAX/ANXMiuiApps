.class public final enum Lmiui/upnp/typedef/device/urn/Urn$Type;
.super Ljava/lang/Enum;
.source "Urn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/upnp/typedef/device/urn/Urn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmiui/upnp/typedef/device/urn/Urn$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/upnp/typedef/device/urn/Urn$Type;

.field public static final enum DEVICE:Lmiui/upnp/typedef/device/urn/Urn$Type;

.field public static final enum SERVICE:Lmiui/upnp/typedef/device/urn/Urn$Type;

.field private static final STR_DEVICE:Ljava/lang/String; = "device"

.field private static final STR_SERVICE:Ljava/lang/String; = "service"

.field private static final STR_UNDEFINED:Ljava/lang/String; = "undefined"

.field public static final enum UNDEFINED:Lmiui/upnp/typedef/device/urn/Urn$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 22
    new-instance v0, Lmiui/upnp/typedef/device/urn/Urn$Type;

    const-string v1, "UNDEFINED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmiui/upnp/typedef/device/urn/Urn$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/upnp/typedef/device/urn/Urn$Type;->UNDEFINED:Lmiui/upnp/typedef/device/urn/Urn$Type;

    .line 23
    new-instance v0, Lmiui/upnp/typedef/device/urn/Urn$Type;

    const-string v1, "DEVICE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lmiui/upnp/typedef/device/urn/Urn$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/upnp/typedef/device/urn/Urn$Type;->DEVICE:Lmiui/upnp/typedef/device/urn/Urn$Type;

    .line 24
    new-instance v0, Lmiui/upnp/typedef/device/urn/Urn$Type;

    const-string v1, "SERVICE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lmiui/upnp/typedef/device/urn/Urn$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/upnp/typedef/device/urn/Urn$Type;->SERVICE:Lmiui/upnp/typedef/device/urn/Urn$Type;

    .line 21
    const/4 v0, 0x3

    new-array v0, v0, [Lmiui/upnp/typedef/device/urn/Urn$Type;

    sget-object v1, Lmiui/upnp/typedef/device/urn/Urn$Type;->UNDEFINED:Lmiui/upnp/typedef/device/urn/Urn$Type;

    aput-object v1, v0, v2

    sget-object v1, Lmiui/upnp/typedef/device/urn/Urn$Type;->DEVICE:Lmiui/upnp/typedef/device/urn/Urn$Type;

    aput-object v1, v0, v3

    sget-object v1, Lmiui/upnp/typedef/device/urn/Urn$Type;->SERVICE:Lmiui/upnp/typedef/device/urn/Urn$Type;

    aput-object v1, v0, v4

    sput-object v0, Lmiui/upnp/typedef/device/urn/Urn$Type;->$VALUES:[Lmiui/upnp/typedef/device/urn/Urn$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static retrieveType(Ljava/lang/String;)Lmiui/upnp/typedef/device/urn/Urn$Type;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .line 31
    const-string v0, "undefined"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    sget-object v0, Lmiui/upnp/typedef/device/urn/Urn$Type;->UNDEFINED:Lmiui/upnp/typedef/device/urn/Urn$Type;

    return-object v0

    .line 35
    :cond_0
    const-string v0, "device"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36
    sget-object v0, Lmiui/upnp/typedef/device/urn/Urn$Type;->DEVICE:Lmiui/upnp/typedef/device/urn/Urn$Type;

    return-object v0

    .line 39
    :cond_1
    const-string v0, "service"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 40
    sget-object v0, Lmiui/upnp/typedef/device/urn/Urn$Type;->SERVICE:Lmiui/upnp/typedef/device/urn/Urn$Type;

    return-object v0

    .line 43
    :cond_2
    sget-object v0, Lmiui/upnp/typedef/device/urn/Urn$Type;->UNDEFINED:Lmiui/upnp/typedef/device/urn/Urn$Type;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lmiui/upnp/typedef/device/urn/Urn$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 21
    const-class v0, Lmiui/upnp/typedef/device/urn/Urn$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmiui/upnp/typedef/device/urn/Urn$Type;

    return-object v0
.end method

.method public static values()[Lmiui/upnp/typedef/device/urn/Urn$Type;
    .locals 1

    .line 21
    sget-object v0, Lmiui/upnp/typedef/device/urn/Urn$Type;->$VALUES:[Lmiui/upnp/typedef/device/urn/Urn$Type;

    invoke-virtual {v0}, [Lmiui/upnp/typedef/device/urn/Urn$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/upnp/typedef/device/urn/Urn$Type;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 48
    const/4 v0, 0x0

    .line 49
    .local v0, "value":Ljava/lang/String;
    sget-object v1, Lmiui/upnp/typedef/device/urn/Urn$2;->$SwitchMap$miui$upnp$typedef$device$urn$Urn$Type:[I

    invoke-virtual {p0}, Lmiui/upnp/typedef/device/urn/Urn$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 59
    const-string v0, "undefined"

    goto :goto_0

    .line 55
    :pswitch_0
    const-string v0, "service"

    .line 56
    goto :goto_0

    .line 51
    :pswitch_1
    const-string v0, "device"

    .line 52
    nop

    .line 63
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
