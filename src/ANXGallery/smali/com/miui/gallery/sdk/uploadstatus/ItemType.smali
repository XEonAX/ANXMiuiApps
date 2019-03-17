.class public final enum Lcom/miui/gallery/sdk/uploadstatus/ItemType;
.super Ljava/lang/Enum;
.source "ItemType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/miui/gallery/sdk/uploadstatus/ItemType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/gallery/sdk/uploadstatus/ItemType;

.field public static final enum OWNER:Lcom/miui/gallery/sdk/uploadstatus/ItemType;

.field public static final enum OWNER_SUB_UBI:Lcom/miui/gallery/sdk/uploadstatus/ItemType;

.field public static final enum SHARER:Lcom/miui/gallery/sdk/uploadstatus/ItemType;

.field public static final enum SHARER_SUB_UBI:Lcom/miui/gallery/sdk/uploadstatus/ItemType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/miui/gallery/sdk/uploadstatus/ItemType;

    const-string v1, "OWNER"

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/sdk/uploadstatus/ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/sdk/uploadstatus/ItemType;->OWNER:Lcom/miui/gallery/sdk/uploadstatus/ItemType;

    new-instance v0, Lcom/miui/gallery/sdk/uploadstatus/ItemType;

    const-string v1, "OWNER_SUB_UBI"

    invoke-direct {v0, v1, v3}, Lcom/miui/gallery/sdk/uploadstatus/ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/sdk/uploadstatus/ItemType;->OWNER_SUB_UBI:Lcom/miui/gallery/sdk/uploadstatus/ItemType;

    new-instance v0, Lcom/miui/gallery/sdk/uploadstatus/ItemType;

    const-string v1, "SHARER"

    invoke-direct {v0, v1, v4}, Lcom/miui/gallery/sdk/uploadstatus/ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/sdk/uploadstatus/ItemType;->SHARER:Lcom/miui/gallery/sdk/uploadstatus/ItemType;

    new-instance v0, Lcom/miui/gallery/sdk/uploadstatus/ItemType;

    const-string v1, "SHARER_SUB_UBI"

    invoke-direct {v0, v1, v5}, Lcom/miui/gallery/sdk/uploadstatus/ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/sdk/uploadstatus/ItemType;->SHARER_SUB_UBI:Lcom/miui/gallery/sdk/uploadstatus/ItemType;

    .line 3
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/miui/gallery/sdk/uploadstatus/ItemType;

    sget-object v1, Lcom/miui/gallery/sdk/uploadstatus/ItemType;->OWNER:Lcom/miui/gallery/sdk/uploadstatus/ItemType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/gallery/sdk/uploadstatus/ItemType;->OWNER_SUB_UBI:Lcom/miui/gallery/sdk/uploadstatus/ItemType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/gallery/sdk/uploadstatus/ItemType;->SHARER:Lcom/miui/gallery/sdk/uploadstatus/ItemType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/gallery/sdk/uploadstatus/ItemType;->SHARER_SUB_UBI:Lcom/miui/gallery/sdk/uploadstatus/ItemType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/miui/gallery/sdk/uploadstatus/ItemType;->$VALUES:[Lcom/miui/gallery/sdk/uploadstatus/ItemType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/miui/gallery/sdk/uploadstatus/ItemType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/miui/gallery/sdk/uploadstatus/ItemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/sdk/uploadstatus/ItemType;

    return-object v0
.end method

.method public static values()[Lcom/miui/gallery/sdk/uploadstatus/ItemType;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/miui/gallery/sdk/uploadstatus/ItemType;->$VALUES:[Lcom/miui/gallery/sdk/uploadstatus/ItemType;

    invoke-virtual {v0}, [Lcom/miui/gallery/sdk/uploadstatus/ItemType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/gallery/sdk/uploadstatus/ItemType;

    return-object v0
.end method
