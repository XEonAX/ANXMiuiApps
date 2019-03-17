.class public final enum Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;
.super Ljava/lang/Enum;
.source "ItemParameterType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;

.field public static final enum CHOICE:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;

.field public static final enum IMAGE:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;

.field public static final enum RANGE:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;

.field public static final enum RECT:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;

.field public static final enum RGB:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;

.field public static final enum RGBA:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;

.field public static final enum SWITCH:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;

.field public static final enum TEXT:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;

.field public static final enum XY:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;

.field public static final enum XYZ:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4
    new-instance v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;

    const-string v1, "TEXT"

    invoke-direct {v0, v1, v3}, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;->TEXT:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;

    .line 5
    new-instance v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;

    const-string v1, "RGB"

    invoke-direct {v0, v1, v4}, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;->RGB:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;

    .line 6
    new-instance v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;

    const-string v1, "RGBA"

    invoke-direct {v0, v1, v5}, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;->RGBA:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;

    .line 7
    new-instance v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;

    const-string v1, "XY"

    invoke-direct {v0, v1, v6}, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;->XY:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;

    .line 8
    new-instance v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;

    const-string v1, "XYZ"

    invoke-direct {v0, v1, v7}, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;->XYZ:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;

    .line 9
    new-instance v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;

    const-string v1, "RECT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;->RECT:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;

    .line 10
    new-instance v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;

    const-string v1, "RANGE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;->RANGE:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;

    .line 11
    new-instance v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;

    const-string v1, "CHOICE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;->CHOICE:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;

    .line 12
    new-instance v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;

    const-string v1, "IMAGE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;->IMAGE:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;

    .line 13
    new-instance v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;

    const-string v1, "SWITCH"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;->SWITCH:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;

    .line 3
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;

    sget-object v1, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;->TEXT:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;->RGB:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;->RGBA:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;->XY:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;->XYZ:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;->RECT:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;->RANGE:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;->CHOICE:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;->IMAGE:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;->SWITCH:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;->$VALUES:[Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;

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
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;

    return-object v0
.end method

.method public static values()[Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;->$VALUES:[Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;

    invoke-virtual {v0}, [Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;

    return-object v0
.end method
