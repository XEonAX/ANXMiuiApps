.class public final enum Lcom/taobao/applink/exception/a;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/taobao/applink/exception/a;

.field public static final enum b:Lcom/taobao/applink/exception/a;

.field public static final enum c:Lcom/taobao/applink/exception/a;

.field public static final enum d:Lcom/taobao/applink/exception/a;

.field public static final enum e:Lcom/taobao/applink/exception/a;

.field private static final synthetic g:[Lcom/taobao/applink/exception/a;


# instance fields
.field public f:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/taobao/applink/exception/a;

    const-string v1, "NULL_POINT"

    invoke-direct {v0, v1, v2, v2}, Lcom/taobao/applink/exception/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/taobao/applink/exception/a;->a:Lcom/taobao/applink/exception/a;

    new-instance v0, Lcom/taobao/applink/exception/a;

    const-string v1, "ITEMID_ILLEGAL"

    invoke-direct {v0, v1, v3, v3}, Lcom/taobao/applink/exception/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/taobao/applink/exception/a;->b:Lcom/taobao/applink/exception/a;

    new-instance v0, Lcom/taobao/applink/exception/a;

    const-string v1, "SHOPID_ILLEGAL"

    invoke-direct {v0, v1, v4, v4}, Lcom/taobao/applink/exception/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/taobao/applink/exception/a;->c:Lcom/taobao/applink/exception/a;

    new-instance v0, Lcom/taobao/applink/exception/a;

    const-string v1, "H5URL_ILLEGAL"

    invoke-direct {v0, v1, v5, v5}, Lcom/taobao/applink/exception/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/taobao/applink/exception/a;->d:Lcom/taobao/applink/exception/a;

    new-instance v0, Lcom/taobao/applink/exception/a;

    const-string v1, "SIGN_MISSING"

    invoke-direct {v0, v1, v6, v6}, Lcom/taobao/applink/exception/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/taobao/applink/exception/a;->e:Lcom/taobao/applink/exception/a;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/taobao/applink/exception/a;

    sget-object v1, Lcom/taobao/applink/exception/a;->a:Lcom/taobao/applink/exception/a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/applink/exception/a;->b:Lcom/taobao/applink/exception/a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/taobao/applink/exception/a;->c:Lcom/taobao/applink/exception/a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/taobao/applink/exception/a;->d:Lcom/taobao/applink/exception/a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/taobao/applink/exception/a;->e:Lcom/taobao/applink/exception/a;

    aput-object v1, v0, v6

    sput-object v0, Lcom/taobao/applink/exception/a;->g:[Lcom/taobao/applink/exception/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/taobao/applink/exception/a;->f:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/applink/exception/a;
    .locals 1

    const-class v0, Lcom/taobao/applink/exception/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/taobao/applink/exception/a;

    return-object v0
.end method

.method public static values()[Lcom/taobao/applink/exception/a;
    .locals 1

    sget-object v0, Lcom/taobao/applink/exception/a;->g:[Lcom/taobao/applink/exception/a;

    invoke-virtual {v0}, [Lcom/taobao/applink/exception/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/applink/exception/a;

    return-object v0
.end method
