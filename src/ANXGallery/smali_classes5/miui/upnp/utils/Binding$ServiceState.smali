.class Lmiui/upnp/utils/Binding$ServiceState;
.super Ljava/lang/Object;
.source "Binding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/upnp/utils/Binding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceState"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/upnp/utils/Binding;

.field value:Lmiui/upnp/utils/Binding$State;

.field waiting:Z


# direct methods
.method private constructor <init>(Lmiui/upnp/utils/Binding;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lmiui/upnp/utils/Binding$ServiceState;->this$0:Lmiui/upnp/utils/Binding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 p1, 0x0

    iput-boolean p1, p0, Lmiui/upnp/utils/Binding$ServiceState;->waiting:Z

    .line 29
    sget-object p1, Lmiui/upnp/utils/Binding$State;->UNBIND:Lmiui/upnp/utils/Binding$State;

    iput-object p1, p0, Lmiui/upnp/utils/Binding$ServiceState;->value:Lmiui/upnp/utils/Binding$State;

    return-void
.end method

.method synthetic constructor <init>(Lmiui/upnp/utils/Binding;Lmiui/upnp/utils/Binding$1;)V
    .locals 0
    .param p1, "x0"    # Lmiui/upnp/utils/Binding;
    .param p2, "x1"    # Lmiui/upnp/utils/Binding$1;

    .line 27
    invoke-direct {p0, p1}, Lmiui/upnp/utils/Binding$ServiceState;-><init>(Lmiui/upnp/utils/Binding;)V

    return-void
.end method
