.class public Lcn/kuaipan/android/exception/KscRuntimeException;
.super Ljava/lang/RuntimeException;
.source "KscRuntimeException.java"

# interfaces
.implements Lcn/kuaipan/android/exception/IKscError;


# static fields
.field private static final serialVersionUID:J = 0x4123ea01721fbf22L


# instance fields
.field private final detailMessage:Ljava/lang/String;

.field private final errCode:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "code"    # I

    .prologue
    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, p1, v0, v0}, Lcn/kuaipan/android/exception/KscRuntimeException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "details"    # Ljava/lang/String;

    .prologue
    .line 16
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcn/kuaipan/android/exception/KscRuntimeException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "code"    # I
    .param p2, "details"    # Ljava/lang/String;
    .param p3, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ErrCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p2, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-static {p3}, Lcn/kuaipan/android/exception/KscException;->getSerial(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    .line 24
    invoke-direct {p0, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 26
    iput p1, p0, Lcn/kuaipan/android/exception/KscRuntimeException;->errCode:I

    .line 27
    iput-object p2, p0, Lcn/kuaipan/android/exception/KscRuntimeException;->detailMessage:Ljava/lang/String;

    .line 28
    return-void

    .line 24
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " details:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public constructor <init>(ILjava/lang/Throwable;)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 20
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0, p2}, Lcn/kuaipan/android/exception/KscRuntimeException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 21
    return-void

    .line 20
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcn/kuaipan/android/exception/KscRuntimeException;->errCode:I

    return v0
.end method
