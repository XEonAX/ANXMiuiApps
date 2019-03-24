.class public interface abstract Lmiui/bluetooth/ble/IBleEventCallback;
.super Ljava/lang/Object;
.source "IBleEventCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/bluetooth/ble/IBleEventCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onEvent(Ljava/lang/String;I[B)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
