.class public Lcom/alibaba/baichuan/android/trade/model/InitResult;
.super Ljava/lang/Object;


# instance fields
.field public errorCode:I

.field public errorMessage:Ljava/lang/String;

.field public success:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newFailureResult(ILjava/lang/String;)Lcom/alibaba/baichuan/android/trade/model/InitResult;
    .locals 1

    new-instance v0, Lcom/alibaba/baichuan/android/trade/model/InitResult;

    invoke-direct {v0}, Lcom/alibaba/baichuan/android/trade/model/InitResult;-><init>()V

    iput p0, v0, Lcom/alibaba/baichuan/android/trade/model/InitResult;->errorCode:I

    iput-object p1, v0, Lcom/alibaba/baichuan/android/trade/model/InitResult;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public static newSuccessResult()Lcom/alibaba/baichuan/android/trade/model/InitResult;
    .locals 2

    new-instance v0, Lcom/alibaba/baichuan/android/trade/model/InitResult;

    invoke-direct {v0}, Lcom/alibaba/baichuan/android/trade/model/InitResult;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alibaba/baichuan/android/trade/model/InitResult;->success:Z

    return-object v0
.end method


# virtual methods
.method public isSuccess()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alibaba/baichuan/android/trade/model/InitResult;->success:Z

    return v0
.end method
