.class public interface abstract Lmiui/payment/IPaymentManagerResponse;
.super Ljava/lang/Object;
.source "IPaymentManagerResponse.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/payment/IPaymentManagerResponse$Stub;
    }
.end annotation


# virtual methods
.method public abstract onError(ILjava/lang/String;Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onResult(Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
