.class public interface abstract Lmiui/upnp/manager/handler/UpnpEventListener;
.super Ljava/lang/Object;
.source "UpnpEventListener.java"


# virtual methods
.method public abstract onEvent(Ljava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lmiui/upnp/typedef/device/PropertyChanged;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onSubscriptionExpired(Ljava/lang/String;)V
.end method
