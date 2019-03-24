.class public Lmiui/cloud/exception/CloudServiceFailureException;
.super Ljava/lang/Exception;
.source "CloudServiceFailureException.java"


# instance fields
.field private errorCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 11
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 14
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 18
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;I)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;
    .param p2, "errorCode"    # I

    .line 22
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 23
    iput p2, p0, Lmiui/cloud/exception/CloudServiceFailureException;->errorCode:I

    .line 24
    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .line 27
    iget v0, p0, Lmiui/cloud/exception/CloudServiceFailureException;->errorCode:I

    return v0
.end method
