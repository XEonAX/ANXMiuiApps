.class public final enum Lcom/alimama/tunion/trade/convert/TUnionJumpType;
.super Ljava/lang/Enum;
.source "TUnionJumpType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alimama/tunion/trade/convert/TUnionJumpType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BROWSER:Lcom/alimama/tunion/trade/convert/TUnionJumpType;

.field public static final enum H5:Lcom/alimama/tunion/trade/convert/TUnionJumpType;

.field public static final enum NATIVE:Lcom/alimama/tunion/trade/convert/TUnionJumpType;

.field private static final synthetic b:[Lcom/alimama/tunion/trade/convert/TUnionJumpType;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12
    new-instance v0, Lcom/alimama/tunion/trade/convert/TUnionJumpType;

    const-string v1, "H5"

    invoke-direct {v0, v1, v2, v2}, Lcom/alimama/tunion/trade/convert/TUnionJumpType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alimama/tunion/trade/convert/TUnionJumpType;->H5:Lcom/alimama/tunion/trade/convert/TUnionJumpType;

    .line 16
    new-instance v0, Lcom/alimama/tunion/trade/convert/TUnionJumpType;

    const-string v1, "NATIVE"

    invoke-direct {v0, v1, v3, v3}, Lcom/alimama/tunion/trade/convert/TUnionJumpType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alimama/tunion/trade/convert/TUnionJumpType;->NATIVE:Lcom/alimama/tunion/trade/convert/TUnionJumpType;

    .line 20
    new-instance v0, Lcom/alimama/tunion/trade/convert/TUnionJumpType;

    const-string v1, "BROWSER"

    invoke-direct {v0, v1, v4, v5}, Lcom/alimama/tunion/trade/convert/TUnionJumpType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alimama/tunion/trade/convert/TUnionJumpType;->BROWSER:Lcom/alimama/tunion/trade/convert/TUnionJumpType;

    .line 7
    new-array v0, v5, [Lcom/alimama/tunion/trade/convert/TUnionJumpType;

    sget-object v1, Lcom/alimama/tunion/trade/convert/TUnionJumpType;->H5:Lcom/alimama/tunion/trade/convert/TUnionJumpType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alimama/tunion/trade/convert/TUnionJumpType;->NATIVE:Lcom/alimama/tunion/trade/convert/TUnionJumpType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alimama/tunion/trade/convert/TUnionJumpType;->BROWSER:Lcom/alimama/tunion/trade/convert/TUnionJumpType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alimama/tunion/trade/convert/TUnionJumpType;->b:[Lcom/alimama/tunion/trade/convert/TUnionJumpType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    iput p3, p0, Lcom/alimama/tunion/trade/convert/TUnionJumpType;->a:I

    .line 26
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alimama/tunion/trade/convert/TUnionJumpType;
    .locals 1

    .prologue
    .line 7
    const-class v0, Lcom/alimama/tunion/trade/convert/TUnionJumpType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alimama/tunion/trade/convert/TUnionJumpType;

    return-object v0
.end method

.method public static values()[Lcom/alimama/tunion/trade/convert/TUnionJumpType;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/alimama/tunion/trade/convert/TUnionJumpType;->b:[Lcom/alimama/tunion/trade/convert/TUnionJumpType;

    invoke-virtual {v0}, [Lcom/alimama/tunion/trade/convert/TUnionJumpType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alimama/tunion/trade/convert/TUnionJumpType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alimama/tunion/trade/convert/TUnionJumpType;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
