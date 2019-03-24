.class public Lcom/miui/internal/vip/VipResponse;
.super Ljava/lang/Object;
.source "VipResponse.java"


# static fields
.field public static final FailRes:Lcom/miui/internal/vip/VipResponse;

.field public static final INIT_STATE:I = -0x1

.field public static final SuccWithoutValueRes:Lcom/miui/internal/vip/VipResponse;

.field public static final WaitRes:Lcom/miui/internal/vip/VipResponse;


# instance fields
.field public errMsg:Ljava/lang/String;

.field public state:I

.field public value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 11
    new-instance v0, Lcom/miui/internal/vip/VipResponse;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/internal/vip/VipResponse;-><init>(I)V

    sput-object v0, Lcom/miui/internal/vip/VipResponse;->SuccWithoutValueRes:Lcom/miui/internal/vip/VipResponse;

    .line 12
    new-instance v0, Lcom/miui/internal/vip/VipResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/miui/internal/vip/VipResponse;-><init>(I)V

    sput-object v0, Lcom/miui/internal/vip/VipResponse;->WaitRes:Lcom/miui/internal/vip/VipResponse;

    .line 13
    new-instance v0, Lcom/miui/internal/vip/VipResponse;

    const v1, 0x15f90

    invoke-direct {v0, v1}, Lcom/miui/internal/vip/VipResponse;-><init>(I)V

    sput-object v0, Lcom/miui/internal/vip/VipResponse;->FailRes:Lcom/miui/internal/vip/VipResponse;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 20
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/miui/internal/vip/VipResponse;-><init>(I)V

    .line 21
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "state"    # I

    .line 28
    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/internal/vip/VipResponse;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .line 29
    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 24
    const-string v0, ""

    invoke-direct {p0, p1, v0, p2}, Lcom/miui/internal/vip/VipResponse;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .line 25
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/internal/vip/VipResponse;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .line 33
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "s"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "v"    # Ljava/lang/Object;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Lcom/miui/internal/vip/VipResponse;->state:I

    .line 37
    iput-object p2, p0, Lcom/miui/internal/vip/VipResponse;->errMsg:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lcom/miui/internal/vip/VipResponse;->value:Ljava/lang/Object;

    .line 39
    return-void
.end method


# virtual methods
.method public clone()Lcom/miui/internal/vip/VipResponse;
    .locals 4

    .line 54
    new-instance v0, Lcom/miui/internal/vip/VipResponse;

    iget v1, p0, Lcom/miui/internal/vip/VipResponse;->state:I

    iget-object v2, p0, Lcom/miui/internal/vip/VipResponse;->errMsg:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/internal/vip/VipResponse;->value:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/internal/vip/VipResponse;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 7
    invoke-virtual {p0}, Lcom/miui/internal/vip/VipResponse;->clone()Lcom/miui/internal/vip/VipResponse;

    move-result-object v0

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .line 46
    iget v0, p0, Lcom/miui/internal/vip/VipResponse;->state:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isValid()Z
    .locals 2

    .line 42
    iget v0, p0, Lcom/miui/internal/vip/VipResponse;->state:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isWaiting()Z
    .locals 2

    .line 50
    iget v0, p0, Lcom/miui/internal/vip/VipResponse;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 59
    const-string v0, "{state = %d, errMsg = %s, value = %s}"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/miui/internal/vip/VipResponse;->state:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/miui/internal/vip/VipResponse;->errMsg:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/miui/internal/vip/VipResponse;->value:Ljava/lang/Object;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
