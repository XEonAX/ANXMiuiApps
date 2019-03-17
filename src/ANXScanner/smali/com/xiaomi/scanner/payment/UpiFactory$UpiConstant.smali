.class public final enum Lcom/xiaomi/scanner/payment/UpiFactory$UpiConstant;
.super Ljava/lang/Enum;
.source "UpiFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/scanner/payment/UpiFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UpiConstant"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/scanner/payment/UpiFactory$UpiConstant;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/scanner/payment/UpiFactory$UpiConstant;

.field public static final enum NOTHING:Lcom/xiaomi/scanner/payment/UpiFactory$UpiConstant;

.field public static final enum PAYTM:Lcom/xiaomi/scanner/payment/UpiFactory$UpiConstant;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    new-instance v0, Lcom/xiaomi/scanner/payment/UpiFactory$UpiConstant;

    const-string v1, "PAYTM"

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/scanner/payment/UpiFactory$UpiConstant;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/scanner/payment/UpiFactory$UpiConstant;->PAYTM:Lcom/xiaomi/scanner/payment/UpiFactory$UpiConstant;

    .line 20
    new-instance v0, Lcom/xiaomi/scanner/payment/UpiFactory$UpiConstant;

    const-string v1, "NOTHING"

    invoke-direct {v0, v1, v3}, Lcom/xiaomi/scanner/payment/UpiFactory$UpiConstant;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/scanner/payment/UpiFactory$UpiConstant;->NOTHING:Lcom/xiaomi/scanner/payment/UpiFactory$UpiConstant;

    .line 18
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/xiaomi/scanner/payment/UpiFactory$UpiConstant;

    sget-object v1, Lcom/xiaomi/scanner/payment/UpiFactory$UpiConstant;->PAYTM:Lcom/xiaomi/scanner/payment/UpiFactory$UpiConstant;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/scanner/payment/UpiFactory$UpiConstant;->NOTHING:Lcom/xiaomi/scanner/payment/UpiFactory$UpiConstant;

    aput-object v1, v0, v3

    sput-object v0, Lcom/xiaomi/scanner/payment/UpiFactory$UpiConstant;->$VALUES:[Lcom/xiaomi/scanner/payment/UpiFactory$UpiConstant;

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
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/scanner/payment/UpiFactory$UpiConstant;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 18
    const-class v0, Lcom/xiaomi/scanner/payment/UpiFactory$UpiConstant;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/scanner/payment/UpiFactory$UpiConstant;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/scanner/payment/UpiFactory$UpiConstant;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/xiaomi/scanner/payment/UpiFactory$UpiConstant;->$VALUES:[Lcom/xiaomi/scanner/payment/UpiFactory$UpiConstant;

    invoke-virtual {v0}, [Lcom/xiaomi/scanner/payment/UpiFactory$UpiConstant;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/scanner/payment/UpiFactory$UpiConstant;

    return-object v0
.end method
