.class Lmiui/upnp/manager/UpnpControlPoint$1;
.super Lmiui/upnp/service/handler/ICompletionHandler$Stub;
.source "UpnpControlPoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/upnp/manager/UpnpControlPoint;->startScan(Ljava/util/List;Lmiui/upnp/manager/handler/UpnpCompletionHandler;Lmiui/upnp/manager/handler/UpnpScanListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/upnp/manager/UpnpControlPoint;

.field final synthetic val$handler:Lmiui/upnp/manager/handler/UpnpCompletionHandler;


# direct methods
.method constructor <init>(Lmiui/upnp/manager/UpnpControlPoint;Lmiui/upnp/manager/handler/UpnpCompletionHandler;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/upnp/manager/UpnpControlPoint;

    .line 100
    iput-object p1, p0, Lmiui/upnp/manager/UpnpControlPoint$1;->this$0:Lmiui/upnp/manager/UpnpControlPoint;

    iput-object p2, p0, Lmiui/upnp/manager/UpnpControlPoint$1;->val$handler:Lmiui/upnp/manager/handler/UpnpCompletionHandler;

    invoke-direct {p0}, Lmiui/upnp/service/handler/ICompletionHandler$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lmiui/upnp/typedef/error/UpnpError;)V
    .locals 1
    .param p1, "error"    # Lmiui/upnp/typedef/error/UpnpError;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 114
    :try_start_0
    iget-object v0, p0, Lmiui/upnp/manager/UpnpControlPoint$1;->val$handler:Lmiui/upnp/manager/handler/UpnpCompletionHandler;

    invoke-interface {v0, p1}, Lmiui/upnp/manager/handler/UpnpCompletionHandler;->onFailed(Lmiui/upnp/typedef/error/UpnpError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 118
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public onSucceed()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 105
    :try_start_0
    iget-object v0, p0, Lmiui/upnp/manager/UpnpControlPoint$1;->val$handler:Lmiui/upnp/manager/handler/UpnpCompletionHandler;

    invoke-interface {v0}, Lmiui/upnp/manager/handler/UpnpCompletionHandler;->onSucceed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 109
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
