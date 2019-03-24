.class Lmiui/upnp/manager/UpnpControlPoint$6;
.super Lmiui/upnp/service/handler/IEventListener$Stub;
.source "UpnpControlPoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/upnp/manager/UpnpControlPoint;->subscribe(Lmiui/upnp/typedef/device/Service;Lmiui/upnp/manager/handler/UpnpCompletionHandler;Lmiui/upnp/manager/handler/UpnpEventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/upnp/manager/UpnpControlPoint;

.field final synthetic val$listener:Lmiui/upnp/manager/handler/UpnpEventListener;

.field final synthetic val$service:Lmiui/upnp/typedef/device/Service;


# direct methods
.method constructor <init>(Lmiui/upnp/manager/UpnpControlPoint;Lmiui/upnp/typedef/device/Service;Lmiui/upnp/manager/handler/UpnpEventListener;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/upnp/manager/UpnpControlPoint;

    .line 284
    iput-object p1, p0, Lmiui/upnp/manager/UpnpControlPoint$6;->this$0:Lmiui/upnp/manager/UpnpControlPoint;

    iput-object p2, p0, Lmiui/upnp/manager/UpnpControlPoint$6;->val$service:Lmiui/upnp/typedef/device/Service;

    iput-object p3, p0, Lmiui/upnp/manager/UpnpControlPoint$6;->val$listener:Lmiui/upnp/manager/handler/UpnpEventListener;

    invoke-direct {p0}, Lmiui/upnp/service/handler/IEventListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "serviceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lmiui/upnp/typedef/device/PropertyChanged;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 300
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lmiui/upnp/typedef/device/PropertyChanged;>;"
    :try_start_0
    iget-object v0, p0, Lmiui/upnp/manager/UpnpControlPoint$6;->val$listener:Lmiui/upnp/manager/handler/UpnpEventListener;

    invoke-interface {v0, p1, p2}, Lmiui/upnp/manager/handler/UpnpEventListener;->onEvent(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    goto :goto_0

    .line 301
    :catch_0
    move-exception v0

    .line 302
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 304
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public onSubscriptionExpired(Ljava/lang/String;)V
    .locals 2
    .param p1, "serviceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 288
    iget-object v0, p0, Lmiui/upnp/manager/UpnpControlPoint$6;->val$service:Lmiui/upnp/typedef/device/Service;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/upnp/typedef/device/Service;->setSubscribed(Z)Z

    .line 291
    :try_start_0
    iget-object v0, p0, Lmiui/upnp/manager/UpnpControlPoint$6;->val$listener:Lmiui/upnp/manager/handler/UpnpEventListener;

    invoke-interface {v0, p1}, Lmiui/upnp/manager/handler/UpnpEventListener;->onSubscriptionExpired(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    goto :goto_0

    .line 292
    :catch_0
    move-exception v0

    .line 293
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 295
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
