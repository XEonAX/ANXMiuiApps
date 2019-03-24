.class public interface abstract Lcom/miui/internal/analytics/IAnalytics;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/analytics/IAnalytics$Stub;
    }
.end annotation


# virtual methods
.method public abstract track([Lcom/miui/internal/analytics/Event;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
