.class public interface abstract Lcom/miui/gallery/projection/ConnectController$ConnectListener;
.super Ljava/lang/Object;
.source "ConnectController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/projection/ConnectController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ConnectListener"
.end annotation


# virtual methods
.method public abstract onDeviceRefresh(Ljava/util/ArrayList;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onDeviceRemoved(Ljava/lang/String;)V
.end method

.method public abstract onDevicesAdded(Ljava/lang/String;)V
.end method

.method public abstract onDevicesAvailable(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onPhotoConnectReleased()V
.end method

.method public abstract onPhotoConnectResponse(I)V
.end method
