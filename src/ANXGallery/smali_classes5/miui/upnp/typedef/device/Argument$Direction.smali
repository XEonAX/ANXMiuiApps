.class public final enum Lmiui/upnp/typedef/device/Argument$Direction;
.super Ljava/lang/Enum;
.source "Argument.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/upnp/typedef/device/Argument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Direction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmiui/upnp/typedef/device/Argument$Direction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/upnp/typedef/device/Argument$Direction;

.field public static final enum IN:Lmiui/upnp/typedef/device/Argument$Direction;

.field public static final enum OUT:Lmiui/upnp/typedef/device/Argument$Direction;

.field private static final STR_in:Ljava/lang/String; = "in"

.field private static final STR_out:Ljava/lang/String; = "out"

.field private static final STR_undefined:Ljava/lang/String; = "undefined"

.field public static final enum UNDEFINED:Lmiui/upnp/typedef/device/Argument$Direction;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 14
    new-instance v0, Lmiui/upnp/typedef/device/Argument$Direction;

    const-string v1, "UNDEFINED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmiui/upnp/typedef/device/Argument$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/upnp/typedef/device/Argument$Direction;->UNDEFINED:Lmiui/upnp/typedef/device/Argument$Direction;

    .line 15
    new-instance v0, Lmiui/upnp/typedef/device/Argument$Direction;

    const-string v1, "IN"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lmiui/upnp/typedef/device/Argument$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/upnp/typedef/device/Argument$Direction;->IN:Lmiui/upnp/typedef/device/Argument$Direction;

    .line 16
    new-instance v0, Lmiui/upnp/typedef/device/Argument$Direction;

    const-string v1, "OUT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lmiui/upnp/typedef/device/Argument$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/upnp/typedef/device/Argument$Direction;->OUT:Lmiui/upnp/typedef/device/Argument$Direction;

    .line 12
    const/4 v0, 0x3

    new-array v0, v0, [Lmiui/upnp/typedef/device/Argument$Direction;

    sget-object v1, Lmiui/upnp/typedef/device/Argument$Direction;->UNDEFINED:Lmiui/upnp/typedef/device/Argument$Direction;

    aput-object v1, v0, v2

    sget-object v1, Lmiui/upnp/typedef/device/Argument$Direction;->IN:Lmiui/upnp/typedef/device/Argument$Direction;

    aput-object v1, v0, v3

    sget-object v1, Lmiui/upnp/typedef/device/Argument$Direction;->OUT:Lmiui/upnp/typedef/device/Argument$Direction;

    aput-object v1, v0, v4

    sput-object v0, Lmiui/upnp/typedef/device/Argument$Direction;->$VALUES:[Lmiui/upnp/typedef/device/Argument$Direction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static retrieveType(Ljava/lang/String;)Lmiui/upnp/typedef/device/Argument$Direction;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .line 23
    const-string v0, "undefined"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    sget-object v0, Lmiui/upnp/typedef/device/Argument$Direction;->UNDEFINED:Lmiui/upnp/typedef/device/Argument$Direction;

    return-object v0

    .line 27
    :cond_0
    const-string v0, "in"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28
    sget-object v0, Lmiui/upnp/typedef/device/Argument$Direction;->IN:Lmiui/upnp/typedef/device/Argument$Direction;

    return-object v0

    .line 31
    :cond_1
    const-string v0, "out"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 32
    sget-object v0, Lmiui/upnp/typedef/device/Argument$Direction;->OUT:Lmiui/upnp/typedef/device/Argument$Direction;

    return-object v0

    .line 35
    :cond_2
    sget-object v0, Lmiui/upnp/typedef/device/Argument$Direction;->UNDEFINED:Lmiui/upnp/typedef/device/Argument$Direction;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lmiui/upnp/typedef/device/Argument$Direction;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 12
    const-class v0, Lmiui/upnp/typedef/device/Argument$Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmiui/upnp/typedef/device/Argument$Direction;

    return-object v0
.end method

.method public static values()[Lmiui/upnp/typedef/device/Argument$Direction;
    .locals 1

    .line 12
    sget-object v0, Lmiui/upnp/typedef/device/Argument$Direction;->$VALUES:[Lmiui/upnp/typedef/device/Argument$Direction;

    invoke-virtual {v0}, [Lmiui/upnp/typedef/device/Argument$Direction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/upnp/typedef/device/Argument$Direction;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 42
    sget-object v0, Lmiui/upnp/typedef/device/Argument$2;->$SwitchMap$miui$upnp$typedef$device$Argument$Direction:[I

    invoke-virtual {p0}, Lmiui/upnp/typedef/device/Argument$Direction;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 52
    const-string v0, "undefined"

    goto :goto_0

    .line 48
    :pswitch_0
    const-string v0, "out"

    .line 49
    .local v0, "value":Ljava/lang/String;
    goto :goto_0

    .line 44
    .end local v0    # "value":Ljava/lang/String;
    :pswitch_1
    const-string v0, "in"

    .line 45
    .restart local v0    # "value":Ljava/lang/String;
    nop

    .line 52
    :goto_0
    nop

    .line 56
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
