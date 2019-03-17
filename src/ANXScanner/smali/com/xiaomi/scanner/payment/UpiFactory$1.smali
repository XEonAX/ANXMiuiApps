.class synthetic Lcom/xiaomi/scanner/payment/UpiFactory$1;
.super Ljava/lang/Object;
.source "UpiFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/scanner/payment/UpiFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$xiaomi$scanner$payment$UpiFactory$UpiConstant:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 11
    invoke-static {}, Lcom/xiaomi/scanner/payment/UpiFactory$UpiConstant;->values()[Lcom/xiaomi/scanner/payment/UpiFactory$UpiConstant;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/xiaomi/scanner/payment/UpiFactory$1;->$SwitchMap$com$xiaomi$scanner$payment$UpiFactory$UpiConstant:[I

    :try_start_0
    sget-object v0, Lcom/xiaomi/scanner/payment/UpiFactory$1;->$SwitchMap$com$xiaomi$scanner$payment$UpiFactory$UpiConstant:[I

    sget-object v1, Lcom/xiaomi/scanner/payment/UpiFactory$UpiConstant;->PAYTM:Lcom/xiaomi/scanner/payment/UpiFactory$UpiConstant;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/payment/UpiFactory$UpiConstant;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
