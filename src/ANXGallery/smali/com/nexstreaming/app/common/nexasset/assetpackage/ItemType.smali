.class public final enum Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;
.super Ljava/lang/Enum;
.source "ItemType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;

.field public static final enum audio:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;

.field public static final enum beat:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;

.field public static final enum collage:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;

.field public static final enum dynamiccollage:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;

.field public static final enum font:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;

.field public static final enum kedl:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;

.field public static final enum lut:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;

.field public static final enum media:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;

.field public static final enum overlay:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;

.field public static final enum renderitem:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;

.field public static final enum staticcollage:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;

.field public static final enum template:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;


# instance fields
.field private final typeId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 15
    new-instance v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;

    const-string v1, "overlay"

    const-string v2, "nex.overlay"

    invoke-direct {v0, v1, v4, v2}, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;->overlay:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;

    .line 16
    new-instance v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;

    const-string v1, "renderitem"

    const-string v2, "nex.renderitem"

    invoke-direct {v0, v1, v5, v2}, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;->renderitem:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;

    .line 17
    new-instance v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;

    const-string v1, "kedl"

    const-string v2, "nex.kedl"

    invoke-direct {v0, v1, v6, v2}, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;->kedl:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;

    .line 18
    new-instance v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;

    const-string v1, "audio"

    const-string v2, "nex.audio"

    invoke-direct {v0, v1, v7, v2}, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;->audio:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;

    .line 19
    new-instance v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;

    const-string v1, "font"

    const-string v2, "nex.font"

    invoke-direct {v0, v1, v8, v2}, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;->font:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;

    .line 20
    new-instance v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;

    const-string/jumbo v1, "template"

    const/4 v2, 0x5

    const-string v3, "nex.template"

    invoke-direct {v0, v1, v2, v3}, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;->template:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;

    .line 21
    new-instance v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;

    const-string v1, "lut"

    const/4 v2, 0x6

    const-string v3, "nex.lut"

    invoke-direct {v0, v1, v2, v3}, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;->lut:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;

    .line 22
    new-instance v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;

    const-string v1, "media"

    const/4 v2, 0x7

    const-string v3, "nex.media"

    invoke-direct {v0, v1, v2, v3}, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;->media:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;

    .line 23
    new-instance v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;

    const-string v1, "collage"

    const/16 v2, 0x8

    const-string v3, "nex.collage"

    invoke-direct {v0, v1, v2, v3}, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;->collage:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;

    .line 24
    new-instance v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;

    const-string/jumbo v1, "staticcollage"

    const/16 v2, 0x9

    const-string v3, "nex.staticcollage"

    invoke-direct {v0, v1, v2, v3}, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;->staticcollage:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;

    .line 25
    new-instance v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;

    const-string v1, "dynamiccollage"

    const/16 v2, 0xa

    const-string v3, "nex.dynamiccollage"

    invoke-direct {v0, v1, v2, v3}, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;->dynamiccollage:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;

    .line 26
    new-instance v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;

    const-string v1, "beat"

    const/16 v2, 0xb

    const-string v3, "nex.beat"

    invoke-direct {v0, v1, v2, v3}, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;->beat:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;

    .line 14
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;

    sget-object v1, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;->overlay:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;->renderitem:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;->kedl:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;->audio:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;->font:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;->template:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;->lut:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;->media:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;->collage:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;->staticcollage:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;->dynamiccollage:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;->beat:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;->$VALUES:[Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    iput-object p3, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;->typeId:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public static fromId(Ljava/lang/String;)Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;
    .locals 5

    .prologue
    .line 34
    invoke-static {}, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;->values()[Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 35
    iget-object v4, v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;->typeId:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 38
    :goto_1
    return-object v0

    .line 34
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 38
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;

    return-object v0
.end method

.method public static values()[Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;->$VALUES:[Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;

    invoke-virtual {v0}, [Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;

    return-object v0
.end method


# virtual methods
.method public getTypeId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;->typeId:Ljava/lang/String;

    return-object v0
.end method
