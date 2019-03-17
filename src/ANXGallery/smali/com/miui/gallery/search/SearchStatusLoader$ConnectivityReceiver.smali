.class Lcom/miui/gallery/search/SearchStatusLoader$ConnectivityReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SearchStatusLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/search/SearchStatusLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectivityReceiver"
.end annotation


# instance fields
.field private mLastConnected:Ljava/lang/Boolean;

.field final synthetic this$0:Lcom/miui/gallery/search/SearchStatusLoader;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/search/SearchStatusLoader;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/miui/gallery/search/SearchStatusLoader$ConnectivityReceiver;->this$0:Lcom/miui/gallery/search/SearchStatusLoader;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/search/SearchStatusLoader;Lcom/miui/gallery/search/SearchStatusLoader$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/search/SearchStatusLoader;
    .param p2, "x1"    # Lcom/miui/gallery/search/SearchStatusLoader$1;

    .prologue
    .line 175
    invoke-direct {p0, p1}, Lcom/miui/gallery/search/SearchStatusLoader$ConnectivityReceiver;-><init>(Lcom/miui/gallery/search/SearchStatusLoader;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 180
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    .line 181
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/search/SearchStatusLoader$ConnectivityReceiver;->this$0:Lcom/miui/gallery/search/SearchStatusLoader;

    .line 182
    invoke-virtual {v1}, Lcom/miui/gallery/search/SearchStatusLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 183
    invoke-static {}, Lcom/miui/gallery/cloud/NetworkUtils;->isNetworkConnected()Z

    move-result v0

    .line 184
    .local v0, "connected":Z
    const-string v1, "SearchStatusLoader"

    const-string v2, "mLastConnected: %b, noConn: %b"

    iget-object v3, p0, Lcom/miui/gallery/search/SearchStatusLoader$ConnectivityReceiver;->mLastConnected:Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/miui/gallery/search/utils/SearchLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 185
    iget-object v1, p0, Lcom/miui/gallery/search/SearchStatusLoader$ConnectivityReceiver;->mLastConnected:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/gallery/search/SearchStatusLoader$ConnectivityReceiver;->mLastConnected:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {}, Lcom/miui/gallery/cloud/NetworkUtils;->isNetworkConnected()Z

    move-result v2

    if-eq v1, v2, :cond_2

    .line 186
    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/search/SearchStatusLoader$ConnectivityReceiver;->mLastConnected:Ljava/lang/Boolean;

    .line 188
    iget-object v1, p0, Lcom/miui/gallery/search/SearchStatusLoader$ConnectivityReceiver;->this$0:Lcom/miui/gallery/search/SearchStatusLoader;

    invoke-virtual {v1}, Lcom/miui/gallery/search/SearchStatusLoader;->onContentChanged()V

    .line 191
    .end local v0    # "connected":Z
    :cond_2
    return-void
.end method
