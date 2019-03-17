.class public final enum Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$AnimDirection;
.super Ljava/lang/Enum;
.source "OverlaySpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AnimDirection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$AnimDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$AnimDirection;

.field public static final enum ALTERNATE:Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$AnimDirection;

.field public static final enum ALTERNATE_REVERSE:Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$AnimDirection;

.field public static final enum NORMAL:Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$AnimDirection;

.field public static final enum REVERSE:Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$AnimDirection;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    new-instance v0, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$AnimDirection;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$AnimDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$AnimDirection;->NORMAL:Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$AnimDirection;

    new-instance v0, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$AnimDirection;

    const-string v1, "REVERSE"

    invoke-direct {v0, v1, v3}, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$AnimDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$AnimDirection;->REVERSE:Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$AnimDirection;

    new-instance v0, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$AnimDirection;

    const-string v1, "ALTERNATE"

    invoke-direct {v0, v1, v4}, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$AnimDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$AnimDirection;->ALTERNATE:Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$AnimDirection;

    new-instance v0, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$AnimDirection;

    const-string v1, "ALTERNATE_REVERSE"

    invoke-direct {v0, v1, v5}, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$AnimDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$AnimDirection;->ALTERNATE_REVERSE:Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$AnimDirection;

    .line 24
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$AnimDirection;

    sget-object v1, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$AnimDirection;->NORMAL:Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$AnimDirection;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$AnimDirection;->REVERSE:Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$AnimDirection;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$AnimDirection;->ALTERNATE:Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$AnimDirection;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$AnimDirection;->ALTERNATE_REVERSE:Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$AnimDirection;

    aput-object v1, v0, v5

    sput-object v0, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$AnimDirection;->$VALUES:[Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$AnimDirection;

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
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$AnimDirection;
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$AnimDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$AnimDirection;

    return-object v0
.end method

.method public static values()[Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$AnimDirection;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$AnimDirection;->$VALUES:[Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$AnimDirection;

    invoke-virtual {v0}, [Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$AnimDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$AnimDirection;

    return-object v0
.end method
