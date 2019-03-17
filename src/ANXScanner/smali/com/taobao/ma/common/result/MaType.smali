.class public final enum Lcom/taobao/ma/common/result/MaType;
.super Ljava/lang/Enum;
.source "MaType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/taobao/ma/common/result/MaType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/ma/common/result/MaType;

.field public static final enum DM:Lcom/taobao/ma/common/result/MaType;

.field public static final enum EXPRESS:Lcom/taobao/ma/common/result/MaType;

.field public static final enum GEN3:Lcom/taobao/ma/common/result/MaType;

.field public static final enum MEDICINE:Lcom/taobao/ma/common/result/MaType;

.field public static final enum PRODUCT:Lcom/taobao/ma/common/result/MaType;

.field public static final enum QR:Lcom/taobao/ma/common/result/MaType;

.field public static final enum TB_4G:Lcom/taobao/ma/common/result/MaType;

.field public static final enum TB_ANTI_FAKE:Lcom/taobao/ma/common/result/MaType;


# instance fields
.field private discernType:I

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/16 v2, 0xff

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 15
    new-instance v0, Lcom/taobao/ma/common/result/MaType;

    const-string v1, "PRODUCT"

    invoke-direct {v0, v1, v6, v6, v2}, Lcom/taobao/ma/common/result/MaType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/taobao/ma/common/result/MaType;->PRODUCT:Lcom/taobao/ma/common/result/MaType;

    .line 20
    new-instance v0, Lcom/taobao/ma/common/result/MaType;

    const-string v1, "MEDICINE"

    invoke-direct {v0, v1, v4, v5, v2}, Lcom/taobao/ma/common/result/MaType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/taobao/ma/common/result/MaType;->MEDICINE:Lcom/taobao/ma/common/result/MaType;

    .line 25
    new-instance v0, Lcom/taobao/ma/common/result/MaType;

    const-string v1, "EXPRESS"

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/taobao/ma/common/result/MaType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/taobao/ma/common/result/MaType;->EXPRESS:Lcom/taobao/ma/common/result/MaType;

    .line 30
    new-instance v0, Lcom/taobao/ma/common/result/MaType;

    const-string v1, "QR"

    const/16 v2, 0x200

    invoke-direct {v0, v1, v7, v4, v2}, Lcom/taobao/ma/common/result/MaType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/taobao/ma/common/result/MaType;->QR:Lcom/taobao/ma/common/result/MaType;

    .line 35
    new-instance v0, Lcom/taobao/ma/common/result/MaType;

    const-string v1, "TB_ANTI_FAKE"

    const/4 v2, 0x4

    const/16 v3, 0x200

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/taobao/ma/common/result/MaType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/taobao/ma/common/result/MaType;->TB_ANTI_FAKE:Lcom/taobao/ma/common/result/MaType;

    .line 40
    new-instance v0, Lcom/taobao/ma/common/result/MaType;

    const-string v1, "TB_4G"

    const/4 v2, 0x5

    const/16 v3, 0x800

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/taobao/ma/common/result/MaType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/taobao/ma/common/result/MaType;->TB_4G:Lcom/taobao/ma/common/result/MaType;

    .line 45
    new-instance v0, Lcom/taobao/ma/common/result/MaType;

    const-string v1, "DM"

    const/4 v2, 0x6

    const/16 v3, 0x400

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/taobao/ma/common/result/MaType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/taobao/ma/common/result/MaType;->DM:Lcom/taobao/ma/common/result/MaType;

    .line 50
    new-instance v0, Lcom/taobao/ma/common/result/MaType;

    const-string v1, "GEN3"

    const/4 v2, 0x7

    const v3, 0x8000

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/taobao/ma/common/result/MaType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/taobao/ma/common/result/MaType;->GEN3:Lcom/taobao/ma/common/result/MaType;

    .line 10
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/taobao/ma/common/result/MaType;

    sget-object v1, Lcom/taobao/ma/common/result/MaType;->PRODUCT:Lcom/taobao/ma/common/result/MaType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/taobao/ma/common/result/MaType;->MEDICINE:Lcom/taobao/ma/common/result/MaType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/taobao/ma/common/result/MaType;->EXPRESS:Lcom/taobao/ma/common/result/MaType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/taobao/ma/common/result/MaType;->QR:Lcom/taobao/ma/common/result/MaType;

    aput-object v1, v0, v7

    const/4 v1, 0x4

    sget-object v2, Lcom/taobao/ma/common/result/MaType;->TB_ANTI_FAKE:Lcom/taobao/ma/common/result/MaType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/taobao/ma/common/result/MaType;->TB_4G:Lcom/taobao/ma/common/result/MaType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/taobao/ma/common/result/MaType;->DM:Lcom/taobao/ma/common/result/MaType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/taobao/ma/common/result/MaType;->GEN3:Lcom/taobao/ma/common/result/MaType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/taobao/ma/common/result/MaType;->$VALUES:[Lcom/taobao/ma/common/result/MaType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .param p3, "type"    # I
    .param p4, "discernType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 62
    iput p3, p0, Lcom/taobao/ma/common/result/MaType;->type:I

    .line 63
    iput p4, p0, Lcom/taobao/ma/common/result/MaType;->discernType:I

    .line 64
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/ma/common/result/MaType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 10
    const-class v0, Lcom/taobao/ma/common/result/MaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/taobao/ma/common/result/MaType;

    return-object v0
.end method

.method public static values()[Lcom/taobao/ma/common/result/MaType;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/taobao/ma/common/result/MaType;->$VALUES:[Lcom/taobao/ma/common/result/MaType;

    invoke-virtual {v0}, [Lcom/taobao/ma/common/result/MaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/ma/common/result/MaType;

    return-object v0
.end method


# virtual methods
.method public getDiscernType()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/taobao/ma/common/result/MaType;->discernType:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/taobao/ma/common/result/MaType;->type:I

    return v0
.end method

.method public setDiscernType(I)V
    .locals 0
    .param p1, "discernType"    # I

    .prologue
    .line 79
    iput p1, p0, Lcom/taobao/ma/common/result/MaType;->discernType:I

    .line 80
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/taobao/ma/common/result/MaType;->type:I

    .line 72
    return-void
.end method
