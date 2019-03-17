.class public Lcom/ali/auth/third/login/RequestCode;
.super Ljava/lang/Object;


# static fields
.field public static OPEN_DOUBLE_CHECK:I

.field public static OPEN_H5_LOGIN:I

.field public static OPEN_H5_UNBIND:I

.field public static OPEN_QR_LOGIN:I

.field public static OPEN_QR_LOGIN_CONFIRM:I

.field public static OPEN_TAOBAO:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0xea5b

    sput v0, Lcom/ali/auth/third/login/RequestCode;->OPEN_TAOBAO:I

    const v0, 0xea5c

    sput v0, Lcom/ali/auth/third/login/RequestCode;->OPEN_H5_LOGIN:I

    const v0, 0xea5d

    sput v0, Lcom/ali/auth/third/login/RequestCode;->OPEN_H5_UNBIND:I

    const v0, 0xea65

    sput v0, Lcom/ali/auth/third/login/RequestCode;->OPEN_DOUBLE_CHECK:I

    const v0, 0xea61

    sput v0, Lcom/ali/auth/third/login/RequestCode;->OPEN_QR_LOGIN:I

    const v0, 0xea62

    sput v0, Lcom/ali/auth/third/login/RequestCode;->OPEN_QR_LOGIN_CONFIRM:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
