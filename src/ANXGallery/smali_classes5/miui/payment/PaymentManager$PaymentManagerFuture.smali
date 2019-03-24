.class interface abstract Lmiui/payment/PaymentManager$PaymentManagerFuture;
.super Ljava/lang/Object;
.source "PaymentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/payment/PaymentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "PaymentManagerFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract cancel(Z)Z
.end method

.method public abstract getResult()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmiui/cloud/exception/OperationCancelledException;,
            Lmiui/cloud/exception/AuthenticationFailureException;,
            Lmiui/payment/exception/PaymentServiceFailureException;
        }
    .end annotation
.end method

.method public abstract getResult(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmiui/cloud/exception/OperationCancelledException;,
            Lmiui/cloud/exception/AuthenticationFailureException;,
            Lmiui/payment/exception/PaymentServiceFailureException;
        }
    .end annotation
.end method

.method public abstract isCancelled()Z
.end method

.method public abstract isDone()Z
.end method
