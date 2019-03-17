.class public final enum Lcom/alimama/tunion/trade/abtest/TUnionABTestValue;
.super Ljava/lang/Enum;
.source "TUnionABTestValue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alimama/tunion/trade/abtest/TUnionABTestValue;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum INVALID:Lcom/alimama/tunion/trade/abtest/TUnionABTestValue;

.field public static final enum NO:Lcom/alimama/tunion/trade/abtest/TUnionABTestValue;

.field public static final enum YES:Lcom/alimama/tunion/trade/abtest/TUnionABTestValue;

.field private static final synthetic b:[Lcom/alimama/tunion/trade/abtest/TUnionABTestValue;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12
    new-instance v0, Lcom/alimama/tunion/trade/abtest/TUnionABTestValue;

    const-string v1, "NO"

    invoke-direct {v0, v1, v2, v2}, Lcom/alimama/tunion/trade/abtest/TUnionABTestValue;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alimama/tunion/trade/abtest/TUnionABTestValue;->NO:Lcom/alimama/tunion/trade/abtest/TUnionABTestValue;

    new-instance v0, Lcom/alimama/tunion/trade/abtest/TUnionABTestValue;

    const-string v1, "YES"

    invoke-direct {v0, v1, v3, v3}, Lcom/alimama/tunion/trade/abtest/TUnionABTestValue;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alimama/tunion/trade/abtest/TUnionABTestValue;->YES:Lcom/alimama/tunion/trade/abtest/TUnionABTestValue;

    new-instance v0, Lcom/alimama/tunion/trade/abtest/TUnionABTestValue;

    const-string v1, "INVALID"

    invoke-direct {v0, v1, v4, v4}, Lcom/alimama/tunion/trade/abtest/TUnionABTestValue;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alimama/tunion/trade/abtest/TUnionABTestValue;->INVALID:Lcom/alimama/tunion/trade/abtest/TUnionABTestValue;

    .line 10
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alimama/tunion/trade/abtest/TUnionABTestValue;

    sget-object v1, Lcom/alimama/tunion/trade/abtest/TUnionABTestValue;->NO:Lcom/alimama/tunion/trade/abtest/TUnionABTestValue;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alimama/tunion/trade/abtest/TUnionABTestValue;->YES:Lcom/alimama/tunion/trade/abtest/TUnionABTestValue;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alimama/tunion/trade/abtest/TUnionABTestValue;->INVALID:Lcom/alimama/tunion/trade/abtest/TUnionABTestValue;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alimama/tunion/trade/abtest/TUnionABTestValue;->b:[Lcom/alimama/tunion/trade/abtest/TUnionABTestValue;

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
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput p3, p0, Lcom/alimama/tunion/trade/abtest/TUnionABTestValue;->a:I

    .line 18
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alimama/tunion/trade/abtest/TUnionABTestValue;
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/alimama/tunion/trade/abtest/TUnionABTestValue;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alimama/tunion/trade/abtest/TUnionABTestValue;

    return-object v0
.end method

.method public static values()[Lcom/alimama/tunion/trade/abtest/TUnionABTestValue;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/alimama/tunion/trade/abtest/TUnionABTestValue;->b:[Lcom/alimama/tunion/trade/abtest/TUnionABTestValue;

    invoke-virtual {v0}, [Lcom/alimama/tunion/trade/abtest/TUnionABTestValue;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alimama/tunion/trade/abtest/TUnionABTestValue;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alimama/tunion/trade/abtest/TUnionABTestValue;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
