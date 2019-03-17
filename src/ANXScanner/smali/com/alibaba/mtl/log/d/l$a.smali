.class Lcom/alibaba/mtl/log/d/l$a;
.super Ljava/lang/Object;
.source "NetworkUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/mtl/log/d/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/mtl/log/d/l$1;)V
    .locals 0

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/alibaba/mtl/log/d/l$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/alibaba/mtl/log/d/l$a;
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/alibaba/mtl/log/d/l$a;->a:Landroid/content/Context;

    .line 155
    return-object p0
.end method

.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 160
    iget-object v0, p0, Lcom/alibaba/mtl/log/d/l$a;->a:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/mtl/log/d/l$a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 165
    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    iget-object v2, p0, Lcom/alibaba/mtl/log/d/l$a;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 166
    invoke-static {}, Lcom/alibaba/mtl/log/d/l;->a()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "Unknown"

    aput-object v2, v0, v1

    goto :goto_0

    .line 183
    :catch_0
    move-exception v0

    goto :goto_0

    .line 169
    :cond_2
    iget-object v0, p0, Lcom/alibaba/mtl/log/d/l$a;->a:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 170
    if-nez v0, :cond_3

    .line 171
    invoke-static {}, Lcom/alibaba/mtl/log/d/l;->a()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "Unknown"

    aput-object v2, v0, v1

    goto :goto_0

    .line 174
    :cond_3
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 175
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-ne v3, v1, :cond_4

    .line 177
    invoke-static {}, Lcom/alibaba/mtl/log/d/l;->a()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "Wi-Fi"

    aput-object v2, v0, v1

    goto :goto_0

    .line 178
    :cond_4
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_0

    .line 179
    invoke-static {}, Lcom/alibaba/mtl/log/d/l;->a()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "2G/3G"

    aput-object v3, v1, v2

    .line 180
    invoke-static {}, Lcom/alibaba/mtl/log/d/l;->a()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method
