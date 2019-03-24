.class public final enum Lmiui/upnp/typedef/property/AllowedValueType;
.super Ljava/lang/Enum;
.source "AllowedValueType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmiui/upnp/typedef/property/AllowedValueType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/upnp/typedef/property/AllowedValueType;

.field public static final enum ANY:Lmiui/upnp/typedef/property/AllowedValueType;

.field public static final enum LIST:Lmiui/upnp/typedef/property/AllowedValueType;

.field public static final enum RANGE:Lmiui/upnp/typedef/property/AllowedValueType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 4
    new-instance v0, Lmiui/upnp/typedef/property/AllowedValueType;

    const-string v1, "ANY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmiui/upnp/typedef/property/AllowedValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/upnp/typedef/property/AllowedValueType;->ANY:Lmiui/upnp/typedef/property/AllowedValueType;

    .line 5
    new-instance v0, Lmiui/upnp/typedef/property/AllowedValueType;

    const-string v1, "LIST"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lmiui/upnp/typedef/property/AllowedValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/upnp/typedef/property/AllowedValueType;->LIST:Lmiui/upnp/typedef/property/AllowedValueType;

    .line 6
    new-instance v0, Lmiui/upnp/typedef/property/AllowedValueType;

    const-string v1, "RANGE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lmiui/upnp/typedef/property/AllowedValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/upnp/typedef/property/AllowedValueType;->RANGE:Lmiui/upnp/typedef/property/AllowedValueType;

    .line 3
    const/4 v0, 0x3

    new-array v0, v0, [Lmiui/upnp/typedef/property/AllowedValueType;

    sget-object v1, Lmiui/upnp/typedef/property/AllowedValueType;->ANY:Lmiui/upnp/typedef/property/AllowedValueType;

    aput-object v1, v0, v2

    sget-object v1, Lmiui/upnp/typedef/property/AllowedValueType;->LIST:Lmiui/upnp/typedef/property/AllowedValueType;

    aput-object v1, v0, v3

    sget-object v1, Lmiui/upnp/typedef/property/AllowedValueType;->RANGE:Lmiui/upnp/typedef/property/AllowedValueType;

    aput-object v1, v0, v4

    sput-object v0, Lmiui/upnp/typedef/property/AllowedValueType;->$VALUES:[Lmiui/upnp/typedef/property/AllowedValueType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static retrieveType(I)Lmiui/upnp/typedef/property/AllowedValueType;
    .locals 1
    .param p0, "value"    # I

    .line 9
    packed-switch p0, :pswitch_data_0

    .line 20
    sget-object v0, Lmiui/upnp/typedef/property/AllowedValueType;->ANY:Lmiui/upnp/typedef/property/AllowedValueType;

    return-object v0

    .line 17
    :pswitch_0
    sget-object v0, Lmiui/upnp/typedef/property/AllowedValueType;->RANGE:Lmiui/upnp/typedef/property/AllowedValueType;

    return-object v0

    .line 14
    :pswitch_1
    sget-object v0, Lmiui/upnp/typedef/property/AllowedValueType;->LIST:Lmiui/upnp/typedef/property/AllowedValueType;

    return-object v0

    .line 11
    :pswitch_2
    sget-object v0, Lmiui/upnp/typedef/property/AllowedValueType;->ANY:Lmiui/upnp/typedef/property/AllowedValueType;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lmiui/upnp/typedef/property/AllowedValueType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 3
    const-class v0, Lmiui/upnp/typedef/property/AllowedValueType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmiui/upnp/typedef/property/AllowedValueType;

    return-object v0
.end method

.method public static values()[Lmiui/upnp/typedef/property/AllowedValueType;
    .locals 1

    .line 3
    sget-object v0, Lmiui/upnp/typedef/property/AllowedValueType;->$VALUES:[Lmiui/upnp/typedef/property/AllowedValueType;

    invoke-virtual {v0}, [Lmiui/upnp/typedef/property/AllowedValueType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/upnp/typedef/property/AllowedValueType;

    return-object v0
.end method


# virtual methods
.method public toInt()I
    .locals 2

    .line 24
    sget-object v0, Lmiui/upnp/typedef/property/AllowedValueType$1;->$SwitchMap$miui$upnp$typedef$property$AllowedValueType:[I

    invoke-virtual {p0}, Lmiui/upnp/typedef/property/AllowedValueType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 35
    return v1

    .line 32
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 29
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 26
    :pswitch_2
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
