.class Lmiui/upnp/manager/UpnpHost$2;
.super Lmiui/upnp/service/handler/IActionListener$Stub;
.source "UpnpHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/upnp/manager/UpnpHost;->register(Lmiui/upnp/typedef/device/Device;Lmiui/upnp/manager/handler/UpnpCompletionHandler;Lmiui/upnp/manager/handler/UpnpActionHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/upnp/manager/UpnpHost;

.field final synthetic val$actionHandler:Lmiui/upnp/manager/handler/UpnpActionHandler;


# direct methods
.method constructor <init>(Lmiui/upnp/manager/UpnpHost;Lmiui/upnp/manager/handler/UpnpActionHandler;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/upnp/manager/UpnpHost;

    .line 108
    iput-object p1, p0, Lmiui/upnp/manager/UpnpHost$2;->this$0:Lmiui/upnp/manager/UpnpHost;

    iput-object p2, p0, Lmiui/upnp/manager/UpnpHost$2;->val$actionHandler:Lmiui/upnp/manager/handler/UpnpActionHandler;

    invoke-direct {p0}, Lmiui/upnp/service/handler/IActionListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAction(Lmiui/upnp/typedef/device/invocation/ActionInfo;)Lmiui/upnp/typedef/error/UpnpError;
    .locals 2
    .param p1, "action"    # Lmiui/upnp/typedef/device/invocation/ActionInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 112
    :try_start_0
    iget-object v0, p0, Lmiui/upnp/manager/UpnpHost$2;->val$actionHandler:Lmiui/upnp/manager/handler/UpnpActionHandler;

    invoke-interface {v0, p1}, Lmiui/upnp/manager/handler/UpnpActionHandler;->onAction(Lmiui/upnp/typedef/device/invocation/ActionInfo;)Lmiui/upnp/typedef/error/UpnpError;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 115
    sget-object v1, Lmiui/upnp/typedef/error/UpnpError;->INTERNAL:Lmiui/upnp/typedef/error/UpnpError;

    return-object v1
.end method
