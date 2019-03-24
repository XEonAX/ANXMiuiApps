.class final enum Lmiui/upnp/utils/Binding$State;
.super Ljava/lang/Enum;
.source "Binding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/upnp/utils/Binding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmiui/upnp/utils/Binding$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/upnp/utils/Binding$State;

.field public static final enum BINDING:Lmiui/upnp/utils/Binding$State;

.field public static final enum BOUND:Lmiui/upnp/utils/Binding$State;

.field public static final enum UNBIND:Lmiui/upnp/utils/Binding$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 33
    new-instance v0, Lmiui/upnp/utils/Binding$State;

    const-string v1, "UNBIND"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmiui/upnp/utils/Binding$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/upnp/utils/Binding$State;->UNBIND:Lmiui/upnp/utils/Binding$State;

    .line 34
    new-instance v0, Lmiui/upnp/utils/Binding$State;

    const-string v1, "BINDING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lmiui/upnp/utils/Binding$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/upnp/utils/Binding$State;->BINDING:Lmiui/upnp/utils/Binding$State;

    .line 35
    new-instance v0, Lmiui/upnp/utils/Binding$State;

    const-string v1, "BOUND"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lmiui/upnp/utils/Binding$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/upnp/utils/Binding$State;->BOUND:Lmiui/upnp/utils/Binding$State;

    .line 32
    const/4 v0, 0x3

    new-array v0, v0, [Lmiui/upnp/utils/Binding$State;

    sget-object v1, Lmiui/upnp/utils/Binding$State;->UNBIND:Lmiui/upnp/utils/Binding$State;

    aput-object v1, v0, v2

    sget-object v1, Lmiui/upnp/utils/Binding$State;->BINDING:Lmiui/upnp/utils/Binding$State;

    aput-object v1, v0, v3

    sget-object v1, Lmiui/upnp/utils/Binding$State;->BOUND:Lmiui/upnp/utils/Binding$State;

    aput-object v1, v0, v4

    sput-object v0, Lmiui/upnp/utils/Binding$State;->$VALUES:[Lmiui/upnp/utils/Binding$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmiui/upnp/utils/Binding$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 32
    const-class v0, Lmiui/upnp/utils/Binding$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmiui/upnp/utils/Binding$State;

    return-object v0
.end method

.method public static values()[Lmiui/upnp/utils/Binding$State;
    .locals 1

    .line 32
    sget-object v0, Lmiui/upnp/utils/Binding$State;->$VALUES:[Lmiui/upnp/utils/Binding$State;

    invoke-virtual {v0}, [Lmiui/upnp/utils/Binding$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/upnp/utils/Binding$State;

    return-object v0
.end method
