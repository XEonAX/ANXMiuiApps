.class public interface abstract Lcom/miui/extraphoto/sdk/IEchoListener;
.super Ljava/lang/Object;
.source "IEchoListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/extraphoto/sdk/IEchoListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onEchoEnd(Ljava/lang/String;Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onEchoStart()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
