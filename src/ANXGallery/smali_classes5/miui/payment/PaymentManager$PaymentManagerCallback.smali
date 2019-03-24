.class interface abstract Lmiui/payment/PaymentManager$PaymentManagerCallback;
.super Ljava/lang/Object;
.source "PaymentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/payment/PaymentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "PaymentManagerCallback"
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
.method public abstract run(Lmiui/payment/PaymentManager$PaymentManagerFuture;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/payment/PaymentManager$PaymentManagerFuture<",
            "TV;>;)V"
        }
    .end annotation
.end method
