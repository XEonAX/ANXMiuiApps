.class public Lcom/alibaba/baichuan/android/trade/model/InitState;
.super Ljava/lang/Object;


# static fields
.field public static final FAILURE:I = 0x3

.field public static final INITIALIZED:I = 0x2

.field public static final INITIALIZING:I = 0x1

.field public static final NOT_INITIALIZED:I


# instance fields
.field public state:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/baichuan/android/trade/model/InitState;->state:I

    return-void
.end method


# virtual methods
.method public isInitialized()Z
    .locals 2

    iget v0, p0, Lcom/alibaba/baichuan/android/trade/model/InitState;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInitializing()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/alibaba/baichuan/android/trade/model/InitState;->state:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setState(I)V
    .locals 0

    iput p1, p0, Lcom/alibaba/baichuan/android/trade/model/InitState;->state:I

    return-void
.end method
