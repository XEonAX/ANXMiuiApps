.class Lmiui/yellowpage/YellowPageStatistic$1;
.super Ljava/lang/Object;
.source "YellowPageStatistic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/yellowpage/YellowPageStatistic;->viewYellowPageInPhoneCall(Landroid/content/Context;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$displayAdName:Ljava/lang/String;

.field final synthetic val$hit:Z

.field final synthetic val$number:Ljava/lang/String;

.field final synthetic val$show:Z

.field final synthetic val$type:I

.field final synthetic val$yid:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 120
    iput-object p1, p0, Lmiui/yellowpage/YellowPageStatistic$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lmiui/yellowpage/YellowPageStatistic$1;->val$number:Ljava/lang/String;

    iput p3, p0, Lmiui/yellowpage/YellowPageStatistic$1;->val$type:I

    iput-boolean p4, p0, Lmiui/yellowpage/YellowPageStatistic$1;->val$hit:Z

    iput-object p5, p0, Lmiui/yellowpage/YellowPageStatistic$1;->val$yid:Ljava/lang/String;

    iput-object p6, p0, Lmiui/yellowpage/YellowPageStatistic$1;->val$displayAdName:Ljava/lang/String;

    iput-boolean p7, p0, Lmiui/yellowpage/YellowPageStatistic$1;->val$show:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 123
    sget-object v0, Lmiui/yellowpage/YellowPageContract$Statistic;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "view_yp_in_phone_call"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 126
    .local v0, "uri":Landroid/net/Uri;
    iget-object v1, p0, Lmiui/yellowpage/YellowPageStatistic$1;->val$context:Landroid/content/Context;

    invoke-static {v1, v0}, Lmiui/yellowpage/YellowPageUtils;->isContentProviderInstalled(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 127
    return-void

    .line 130
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 131
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v2, "number"

    iget-object v3, p0, Lmiui/yellowpage/YellowPageStatistic$1;->val$number:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v2, "type"

    iget v3, p0, Lmiui/yellowpage/YellowPageStatistic$1;->val$type:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 133
    const-string v2, "hit"

    iget-boolean v3, p0, Lmiui/yellowpage/YellowPageStatistic$1;->val$hit:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 134
    const-string v2, "yid"

    iget-object v3, p0, Lmiui/yellowpage/YellowPageStatistic$1;->val$yid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v2, "displayAdName"

    iget-object v3, p0, Lmiui/yellowpage/YellowPageStatistic$1;->val$displayAdName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string v2, "show"

    iget-boolean v3, p0, Lmiui/yellowpage/YellowPageStatistic$1;->val$show:Z

    if-eqz v3, :cond_1

    const-string v3, "1"

    goto :goto_0

    :cond_1
    const-string v3, "0"

    :goto_0
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const/4 v2, 0x0

    .line 140
    .local v2, "client":Landroid/content/ContentProviderClient;
    :try_start_0
    iget-object v3, p0, Lmiui/yellowpage/YellowPageStatistic$1;->val$context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v3

    move-object v2, v3

    .line 141
    invoke-virtual {v2, v0, v1}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    if-eqz v2, :cond_2

    .line 146
    :goto_1
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_2

    .line 145
    :catchall_0
    move-exception v3

    goto :goto_3

    .line 142
    :catch_0
    move-exception v3

    .line 143
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v4, "YellowPageStatistic"

    const-string v5, ""

    invoke-static {v4, v5, v3}, Lmiui/yellowpage/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    .end local v3    # "e":Landroid/os/RemoteException;
    if-eqz v2, :cond_2

    goto :goto_1

    .line 149
    :cond_2
    :goto_2
    return-void

    .line 145
    :goto_3
    if-eqz v2, :cond_3

    .line 146
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    :cond_3
    throw v3
.end method
