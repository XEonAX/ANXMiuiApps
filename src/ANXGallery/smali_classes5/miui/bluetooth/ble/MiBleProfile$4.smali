.class Lmiui/bluetooth/ble/MiBleProfile$4;
.super Ljava/lang/Object;
.source "MiBleProfile.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/bluetooth/ble/MiBleProfile;-><init>(Landroid/content/Context;Ljava/lang/String;Lmiui/bluetooth/ble/MiBleProfile$IProfileStateChangeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/bluetooth/ble/MiBleProfile;


# direct methods
.method constructor <init>(Lmiui/bluetooth/ble/MiBleProfile;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/bluetooth/ble/MiBleProfile;

    .line 309
    iput-object p1, p0, Lmiui/bluetooth/ble/MiBleProfile$4;->this$0:Lmiui/bluetooth/ble/MiBleProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 312
    iget v0, p1, Landroid/os/Message;->what:I

    .line 313
    .local v0, "what":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 314
    iget-object v2, p0, Lmiui/bluetooth/ble/MiBleProfile$4;->this$0:Lmiui/bluetooth/ble/MiBleProfile;

    iget-object v2, v2, Lmiui/bluetooth/ble/MiBleProfile;->mCallback:Lmiui/bluetooth/ble/MiBleProfile$IProfileStateChangeCallback;

    if-eqz v2, :cond_0

    .line 315
    iget-object v2, p0, Lmiui/bluetooth/ble/MiBleProfile$4;->this$0:Lmiui/bluetooth/ble/MiBleProfile;

    iget-object v2, v2, Lmiui/bluetooth/ble/MiBleProfile;->mCallback:Lmiui/bluetooth/ble/MiBleProfile$IProfileStateChangeCallback;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Lmiui/bluetooth/ble/MiBleProfile$IProfileStateChangeCallback;->onState(I)V

    .line 317
    :cond_0
    return v1

    .line 318
    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 319
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 320
    .local v2, "property":I
    iget-object v3, p0, Lmiui/bluetooth/ble/MiBleProfile$4;->this$0:Lmiui/bluetooth/ble/MiBleProfile;

    invoke-static {v3}, Lmiui/bluetooth/ble/MiBleProfile;->access$500(Lmiui/bluetooth/ble/MiBleProfile;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/bluetooth/ble/MiBleProfile$IPropertyNotifyCallback;

    .line 321
    .local v3, "cb":Lmiui/bluetooth/ble/MiBleProfile$IPropertyNotifyCallback;
    if-eqz v3, :cond_2

    .line 322
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [B

    invoke-interface {v3, v2, v4}, Lmiui/bluetooth/ble/MiBleProfile$IPropertyNotifyCallback;->notifyProperty(I[B)V

    .line 324
    :cond_2
    return v1

    .line 327
    .end local v2    # "property":I
    .end local v3    # "cb":Lmiui/bluetooth/ble/MiBleProfile$IPropertyNotifyCallback;
    :cond_3
    const/4 v1, 0x0

    return v1
.end method
