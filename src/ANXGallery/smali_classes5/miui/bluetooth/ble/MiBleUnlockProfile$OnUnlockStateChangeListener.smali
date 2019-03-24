.class public interface abstract Lmiui/bluetooth/ble/MiBleUnlockProfile$OnUnlockStateChangeListener;
.super Ljava/lang/Object;
.source "MiBleUnlockProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/bluetooth/ble/MiBleUnlockProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnUnlockStateChangeListener"
.end annotation


# static fields
.field public static final STATE_AUTHORISED:B = 0x1t

.field public static final STATE_LOCKED:B = 0x0t

.field public static final STATE_UNLOCKED:B = 0x2t


# virtual methods
.method public abstract onUnlocked(B)V
.end method
