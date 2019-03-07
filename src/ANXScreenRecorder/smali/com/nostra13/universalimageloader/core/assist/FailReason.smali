.class public Lcom/nostra13/universalimageloader/core/assist/FailReason;
.super Ljava/lang/Object;
.source "FailReason.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;
    }
.end annotation


# instance fields
.field private final cause:Ljava/lang/Throwable;

.field private final type:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;


# direct methods
.method public constructor <init>(Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "type"    # Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/assist/FailReason;->type:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    .line 32
    iput-object p2, p0, Lcom/nostra13/universalimageloader/core/assist/FailReason;->cause:Ljava/lang/Throwable;

    .line 33
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/FailReason;->cause:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getType()Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/FailReason;->type:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    return-object v0
.end method
