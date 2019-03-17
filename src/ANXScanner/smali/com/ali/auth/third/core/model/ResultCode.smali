.class public Lcom/ali/auth/third/core/model/ResultCode;
.super Ljava/lang/Object;


# static fields
.field public static final CAPTCHA_RELOGIN:Lcom/ali/auth/third/core/model/ResultCode;

.field public static final CHECK:Lcom/ali/auth/third/core/model/ResultCode;

.field public static final CONTINUE_LOGIN:Lcom/ali/auth/third/core/model/ResultCode;

.field public static final IGNORE:Lcom/ali/auth/third/core/model/ResultCode;

.field public static final SUCCESS:Lcom/ali/auth/third/core/model/ResultCode;

.field public static final SYSTEM_EXCEPTION:Lcom/ali/auth/third/core/model/ResultCode;

.field public static final TRUST_LOGIN:Lcom/ali/auth/third/core/model/ResultCode;

.field public static final USER_CANCEL:Lcom/ali/auth/third/core/model/ResultCode;


# instance fields
.field public code:I

.field public message:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/ali/auth/third/core/model/ResultCode;

    const/16 v1, 0x64

    const-string v2, "SUCCESS"

    invoke-direct {v0, v1, v2}, Lcom/ali/auth/third/core/model/ResultCode;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/ali/auth/third/core/model/ResultCode;->SUCCESS:Lcom/ali/auth/third/core/model/ResultCode;

    new-instance v0, Lcom/ali/auth/third/core/model/ResultCode;

    const/16 v1, -0x64

    const-string v2, "IGNORE"

    invoke-direct {v0, v1, v2}, Lcom/ali/auth/third/core/model/ResultCode;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/ali/auth/third/core/model/ResultCode;->IGNORE:Lcom/ali/auth/third/core/model/ResultCode;

    new-instance v0, Lcom/ali/auth/third/core/model/ResultCode;

    const/16 v1, 0x67

    const-string v2, "CAPTCHA_RELOGIN"

    invoke-direct {v0, v1, v2}, Lcom/ali/auth/third/core/model/ResultCode;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/ali/auth/third/core/model/ResultCode;->CAPTCHA_RELOGIN:Lcom/ali/auth/third/core/model/ResultCode;

    new-instance v0, Lcom/ali/auth/third/core/model/ResultCode;

    const/16 v1, 0x68

    const-string v2, "TRUST_LOGIN"

    invoke-direct {v0, v1, v2}, Lcom/ali/auth/third/core/model/ResultCode;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/ali/auth/third/core/model/ResultCode;->TRUST_LOGIN:Lcom/ali/auth/third/core/model/ResultCode;

    new-instance v0, Lcom/ali/auth/third/core/model/ResultCode;

    const/16 v1, 0x69

    const-string v2, "continueLogin"

    invoke-direct {v0, v1, v2}, Lcom/ali/auth/third/core/model/ResultCode;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/ali/auth/third/core/model/ResultCode;->CONTINUE_LOGIN:Lcom/ali/auth/third/core/model/ResultCode;

    new-instance v0, Lcom/ali/auth/third/core/model/ResultCode;

    const/16 v1, 0x6c

    const-string v2, "CHECK"

    invoke-direct {v0, v1, v2}, Lcom/ali/auth/third/core/model/ResultCode;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/ali/auth/third/core/model/ResultCode;->CHECK:Lcom/ali/auth/third/core/model/ResultCode;

    new-instance v0, Lcom/ali/auth/third/core/model/ResultCode;

    const/16 v1, 0x2713

    const-string v2, "USER_CANCEL"

    invoke-direct {v0, v1, v2}, Lcom/ali/auth/third/core/model/ResultCode;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/ali/auth/third/core/model/ResultCode;->USER_CANCEL:Lcom/ali/auth/third/core/model/ResultCode;

    new-instance v0, Lcom/ali/auth/third/core/model/ResultCode;

    const/16 v1, 0x271a

    const-string v2, "SYSTEM_EXCEPTION"

    invoke-direct {v0, v1, v2}, Lcom/ali/auth/third/core/model/ResultCode;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/ali/auth/third/core/model/ResultCode;->SYSTEM_EXCEPTION:Lcom/ali/auth/third/core/model/ResultCode;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ali/auth/third/core/model/ResultCode;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/ali/auth/third/core/model/ResultCode;->code:I

    iput-object p2, p0, Lcom/ali/auth/third/core/model/ResultCode;->message:Ljava/lang/String;

    return-void
.end method

.method public static varargs create(I[Ljava/lang/Object;)Lcom/ali/auth/third/core/model/ResultCode;
    .locals 2

    invoke-static {p0, p1}, Lcom/ali/auth/third/core/message/MessageUtils;->getMessageContent(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/ali/auth/third/core/model/ResultCode;

    invoke-direct {v1, p0, v0}, Lcom/ali/auth/third/core/model/ResultCode;-><init>(ILjava/lang/String;)V

    return-object v1
.end method

.method public static create(Lcom/ali/auth/third/core/message/Message;)Lcom/ali/auth/third/core/model/ResultCode;
    .locals 3

    new-instance v0, Lcom/ali/auth/third/core/model/ResultCode;

    iget v1, p0, Lcom/ali/auth/third/core/message/Message;->code:I

    iget-object v2, p0, Lcom/ali/auth/third/core/message/Message;->message:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/ali/auth/third/core/model/ResultCode;-><init>(ILjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/ali/auth/third/core/model/ResultCode;

    iget v2, p0, Lcom/ali/auth/third/core/model/ResultCode;->code:I

    iget v3, p1, Lcom/ali/auth/third/core/model/ResultCode;->code:I

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/ali/auth/third/core/model/ResultCode;->code:I

    add-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public isSuccess()Z
    .locals 2

    iget v0, p0, Lcom/ali/auth/third/core/model/ResultCode;->code:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
