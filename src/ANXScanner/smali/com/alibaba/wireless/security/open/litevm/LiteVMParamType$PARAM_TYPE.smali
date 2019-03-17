.class public final enum Lcom/alibaba/wireless/security/open/litevm/LiteVMParamType$PARAM_TYPE;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/wireless/security/open/litevm/LiteVMParamType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PARAM_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/wireless/security/open/litevm/LiteVMParamType$PARAM_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/wireless/security/open/litevm/LiteVMParamType$PARAM_TYPE;

.field public static final enum PARAM_TYPE_DATA:Lcom/alibaba/wireless/security/open/litevm/LiteVMParamType$PARAM_TYPE;

.field public static final enum PARAM_TYPE_INT:Lcom/alibaba/wireless/security/open/litevm/LiteVMParamType$PARAM_TYPE;

.field public static final enum PARAM_TYPE_LONG:Lcom/alibaba/wireless/security/open/litevm/LiteVMParamType$PARAM_TYPE;

.field public static final enum PARAM_TYPE_LONGLONG:Lcom/alibaba/wireless/security/open/litevm/LiteVMParamType$PARAM_TYPE;

.field public static final enum PARAM_TYPE_STRING:Lcom/alibaba/wireless/security/open/litevm/LiteVMParamType$PARAM_TYPE;

.field public static final enum PARAM_TYPE_UINT:Lcom/alibaba/wireless/security/open/litevm/LiteVMParamType$PARAM_TYPE;

.field public static final enum PARAM_TYPE_ULONG:Lcom/alibaba/wireless/security/open/litevm/LiteVMParamType$PARAM_TYPE;

.field public static final enum PARAM_TYPE_ULONGLONG:Lcom/alibaba/wireless/security/open/litevm/LiteVMParamType$PARAM_TYPE;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    new-instance v0, Lcom/alibaba/wireless/security/open/litevm/LiteVMParamType$PARAM_TYPE;

    const-string v1, "PARAM_TYPE_INT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v4}, Lcom/alibaba/wireless/security/open/litevm/LiteVMParamType$PARAM_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/wireless/security/open/litevm/LiteVMParamType$PARAM_TYPE;->PARAM_TYPE_INT:Lcom/alibaba/wireless/security/open/litevm/LiteVMParamType$PARAM_TYPE;

    new-instance v0, Lcom/alibaba/wireless/security/open/litevm/LiteVMParamType$PARAM_TYPE;

    const-string v1, "PARAM_TYPE_UINT"

    invoke-direct {v0, v1, v4, v5}, Lcom/alibaba/wireless/security/open/litevm/LiteVMParamType$PARAM_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/wireless/security/open/litevm/LiteVMParamType$PARAM_TYPE;->PARAM_TYPE_UINT:Lcom/alibaba/wireless/security/open/litevm/LiteVMParamType$PARAM_TYPE;

    new-instance v0, Lcom/alibaba/wireless/security/open/litevm/LiteVMParamType$PARAM_TYPE;

    const-string v1, "PARAM_TYPE_LONG"

    invoke-direct {v0, v1, v5, v6}, Lcom/alibaba/wireless/security/open/litevm/LiteVMParamType$PARAM_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/wireless/security/open/litevm/LiteVMParamType$PARAM_TYPE;->PARAM_TYPE_LONG:Lcom/alibaba/wireless/security/open/litevm/LiteVMParamType$PARAM_TYPE;

    new-instance v0, Lcom/alibaba/wireless/security/open/litevm/LiteVMParamType$PARAM_TYPE;

    const-string v1, "PARAM_TYPE_ULONG"

    invoke-direct {v0, v1, v6, v7}, Lcom/alibaba/wireless/security/open/litevm/LiteVMParamType$PARAM_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/wireless/security/open/litevm/LiteVMParamType$PARAM_TYPE;->PARAM_TYPE_ULONG:Lcom/alibaba/wireless/security/open/litevm/LiteVMParamType$PARAM_TYPE;

    new-instance v0, Lcom/alibaba/wireless/security/open/litevm/LiteVMParamType$PARAM_TYPE;

    const-string v1, "PARAM_TYPE_LONGLONG"

    invoke-direct {v0, v1, v7, v8}, Lcom/alibaba/wireless/security/open/litevm/LiteVMParamType$PARAM_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/wireless/security/open/litevm/LiteVMParamType$PARAM_TYPE;->PARAM_TYPE_LONGLONG:Lcom/alibaba/wireless/security/open/litevm/LiteVMParamType$PARAM_TYPE;

    new-instance v0, Lcom/alibaba/wireless/security/open/litevm/LiteVMParamType$PARAM_TYPE;

    const-string v1, "PARAM_TYPE_ULONGLONG"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v8, v2}, Lcom/alibaba/wireless/security/open/litevm/LiteVMParamType$PARAM_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/wireless/security/open/litevm/LiteVMParamType$PARAM_TYPE;->PARAM_TYPE_ULONGLONG:Lcom/alibaba/wireless/security/open/litevm/LiteVMParamType$PARAM_TYPE;

    new-instance v0, Lcom/alibaba/wireless/security/open/litevm/LiteVMParamType$PARAM_TYPE;

    const-string v1, "PARAM_TYPE_STRING"

    const/4 v2, 0x6

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/wireless/security/open/litevm/LiteVMParamType$PARAM_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/wireless/security/open/litevm/LiteVMParamType$PARAM_TYPE;->PARAM_TYPE_STRING:Lcom/alibaba/wireless/security/open/litevm/LiteVMParamType$PARAM_TYPE;

    new-instance v0, Lcom/alibaba/wireless/security/open/litevm/LiteVMParamType$PARAM_TYPE;

    const-string v1, "PARAM_TYPE_DATA"

    const/4 v2, 0x7

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/wireless/security/open/litevm/LiteVMParamType$PARAM_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/wireless/security/open/litevm/LiteVMParamType$PARAM_TYPE;->PARAM_TYPE_DATA:Lcom/alibaba/wireless/security/open/litevm/LiteVMParamType$PARAM_TYPE;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/alibaba/wireless/security/open/litevm/LiteVMParamType$PARAM_TYPE;

    const/4 v1, 0x0

    sget-object v2, Lcom/alibaba/wireless/security/open/litevm/LiteVMParamType$PARAM_TYPE;->PARAM_TYPE_INT:Lcom/alibaba/wireless/security/open/litevm/LiteVMParamType$PARAM_TYPE;

    aput-object v2, v0, v1

    sget-object v1, Lcom/alibaba/wireless/security/open/litevm/LiteVMParamType$PARAM_TYPE;->PARAM_TYPE_UINT:Lcom/alibaba/wireless/security/open/litevm/LiteVMParamType$PARAM_TYPE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/wireless/security/open/litevm/LiteVMParamType$PARAM_TYPE;->PARAM_TYPE_LONG:Lcom/alibaba/wireless/security/open/litevm/LiteVMParamType$PARAM_TYPE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/wireless/security/open/litevm/LiteVMParamType$PARAM_TYPE;->PARAM_TYPE_ULONG:Lcom/alibaba/wireless/security/open/litevm/LiteVMParamType$PARAM_TYPE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/wireless/security/open/litevm/LiteVMParamType$PARAM_TYPE;->PARAM_TYPE_LONGLONG:Lcom/alibaba/wireless/security/open/litevm/LiteVMParamType$PARAM_TYPE;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alibaba/wireless/security/open/litevm/LiteVMParamType$PARAM_TYPE;->PARAM_TYPE_ULONGLONG:Lcom/alibaba/wireless/security/open/litevm/LiteVMParamType$PARAM_TYPE;

    aput-object v1, v0, v8

    const/4 v1, 0x6

    sget-object v2, Lcom/alibaba/wireless/security/open/litevm/LiteVMParamType$PARAM_TYPE;->PARAM_TYPE_STRING:Lcom/alibaba/wireless/security/open/litevm/LiteVMParamType$PARAM_TYPE;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/alibaba/wireless/security/open/litevm/LiteVMParamType$PARAM_TYPE;->PARAM_TYPE_DATA:Lcom/alibaba/wireless/security/open/litevm/LiteVMParamType$PARAM_TYPE;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/wireless/security/open/litevm/LiteVMParamType$PARAM_TYPE;->$VALUES:[Lcom/alibaba/wireless/security/open/litevm/LiteVMParamType$PARAM_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/alibaba/wireless/security/open/litevm/LiteVMParamType$PARAM_TYPE;->mValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/wireless/security/open/litevm/LiteVMParamType$PARAM_TYPE;
    .locals 1

    const-class v0, Lcom/alibaba/wireless/security/open/litevm/LiteVMParamType$PARAM_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wireless/security/open/litevm/LiteVMParamType$PARAM_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/wireless/security/open/litevm/LiteVMParamType$PARAM_TYPE;
    .locals 1

    sget-object v0, Lcom/alibaba/wireless/security/open/litevm/LiteVMParamType$PARAM_TYPE;->$VALUES:[Lcom/alibaba/wireless/security/open/litevm/LiteVMParamType$PARAM_TYPE;

    invoke-virtual {v0}, [Lcom/alibaba/wireless/security/open/litevm/LiteVMParamType$PARAM_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/wireless/security/open/litevm/LiteVMParamType$PARAM_TYPE;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/alibaba/wireless/security/open/litevm/LiteVMParamType$PARAM_TYPE;->mValue:I

    return v0
.end method
