.class public final enum Lcom/xiaomi/mipush/sdk/AssemblePush;
.super Ljava/lang/Enum;
.source "AssemblePush.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/mipush/sdk/AssemblePush;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/mipush/sdk/AssemblePush;

.field public static final enum ASSEMBLE_PUSH_COS:Lcom/xiaomi/mipush/sdk/AssemblePush;

.field public static final enum ASSEMBLE_PUSH_FCM:Lcom/xiaomi/mipush/sdk/AssemblePush;

.field public static final enum ASSEMBLE_PUSH_HUAWEI:Lcom/xiaomi/mipush/sdk/AssemblePush;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 10
    new-instance v0, Lcom/xiaomi/mipush/sdk/AssemblePush;

    const-string v1, "ASSEMBLE_PUSH_HUAWEI"

    invoke-direct {v0, v1, v4, v2}, Lcom/xiaomi/mipush/sdk/AssemblePush;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/mipush/sdk/AssemblePush;->ASSEMBLE_PUSH_HUAWEI:Lcom/xiaomi/mipush/sdk/AssemblePush;

    .line 11
    new-instance v0, Lcom/xiaomi/mipush/sdk/AssemblePush;

    const-string v1, "ASSEMBLE_PUSH_FCM"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/mipush/sdk/AssemblePush;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/mipush/sdk/AssemblePush;->ASSEMBLE_PUSH_FCM:Lcom/xiaomi/mipush/sdk/AssemblePush;

    .line 12
    new-instance v0, Lcom/xiaomi/mipush/sdk/AssemblePush;

    const-string v1, "ASSEMBLE_PUSH_COS"

    invoke-direct {v0, v1, v3, v5}, Lcom/xiaomi/mipush/sdk/AssemblePush;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/mipush/sdk/AssemblePush;->ASSEMBLE_PUSH_COS:Lcom/xiaomi/mipush/sdk/AssemblePush;

    .line 9
    new-array v0, v5, [Lcom/xiaomi/mipush/sdk/AssemblePush;

    sget-object v1, Lcom/xiaomi/mipush/sdk/AssemblePush;->ASSEMBLE_PUSH_HUAWEI:Lcom/xiaomi/mipush/sdk/AssemblePush;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/mipush/sdk/AssemblePush;->ASSEMBLE_PUSH_FCM:Lcom/xiaomi/mipush/sdk/AssemblePush;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/mipush/sdk/AssemblePush;->ASSEMBLE_PUSH_COS:Lcom/xiaomi/mipush/sdk/AssemblePush;

    aput-object v1, v0, v3

    sput-object v0, Lcom/xiaomi/mipush/sdk/AssemblePush;->$VALUES:[Lcom/xiaomi/mipush/sdk/AssemblePush;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "code"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput p3, p0, Lcom/xiaomi/mipush/sdk/AssemblePush;->mValue:I

    .line 16
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/mipush/sdk/AssemblePush;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 9
    const-class v0, Lcom/xiaomi/mipush/sdk/AssemblePush;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/mipush/sdk/AssemblePush;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/mipush/sdk/AssemblePush;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/xiaomi/mipush/sdk/AssemblePush;->$VALUES:[Lcom/xiaomi/mipush/sdk/AssemblePush;

    invoke-virtual {v0}, [Lcom/xiaomi/mipush/sdk/AssemblePush;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/mipush/sdk/AssemblePush;

    return-object v0
.end method
