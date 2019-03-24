.class Lmiui/bluetooth/ble/MiBleUnlockProfile$1;
.super Ljava/lang/Object;
.source "MiBleUnlockProfile.java"

# interfaces
.implements Lmiui/bluetooth/ble/MiBleProfile$IPropertyNotifyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/bluetooth/ble/MiBleUnlockProfile;->registerUnlockListener(Lmiui/bluetooth/ble/MiBleUnlockProfile$OnUnlockStateChangeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/bluetooth/ble/MiBleUnlockProfile;

.field final synthetic val$listener:Lmiui/bluetooth/ble/MiBleUnlockProfile$OnUnlockStateChangeListener;


# direct methods
.method constructor <init>(Lmiui/bluetooth/ble/MiBleUnlockProfile;Lmiui/bluetooth/ble/MiBleUnlockProfile$OnUnlockStateChangeListener;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/bluetooth/ble/MiBleUnlockProfile;

    .line 70
    iput-object p1, p0, Lmiui/bluetooth/ble/MiBleUnlockProfile$1;->this$0:Lmiui/bluetooth/ble/MiBleUnlockProfile;

    iput-object p2, p0, Lmiui/bluetooth/ble/MiBleUnlockProfile$1;->val$listener:Lmiui/bluetooth/ble/MiBleUnlockProfile$OnUnlockStateChangeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyProperty(I[B)V
    .locals 2
    .param p1, "property"    # I
    .param p2, "data"    # [B

    .line 74
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 75
    iget-object v0, p0, Lmiui/bluetooth/ble/MiBleUnlockProfile$1;->val$listener:Lmiui/bluetooth/ble/MiBleUnlockProfile$OnUnlockStateChangeListener;

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    aget-byte v1, p2, v1

    nop

    :cond_0
    invoke-interface {v0, v1}, Lmiui/bluetooth/ble/MiBleUnlockProfile$OnUnlockStateChangeListener;->onUnlocked(B)V

    .line 77
    :cond_1
    return-void
.end method
