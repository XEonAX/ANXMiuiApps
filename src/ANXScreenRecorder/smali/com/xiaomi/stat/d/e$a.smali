.class Lcom/xiaomi/stat/d/e$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/stat/d/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/stat/d/e$a$b;,
        Lcom/xiaomi/stat/d/e$a$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "GAIDClient"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 743
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 748
    invoke-static {p0}, Lcom/xiaomi/stat/d/e$a;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 749
    const-string v0, "GAIDClient"

    const-string v1, "Google play service is not available"

    invoke-static {v0, v1}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    const-string v0, ""

    .line 765
    :goto_0
    return-object v0

    .line 752
    :cond_0
    new-instance v1, Lcom/xiaomi/stat/d/e$a$a;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/xiaomi/stat/d/e$a$a;-><init>(Lcom/xiaomi/stat/d/f;)V

    .line 753
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.google.android.gms.ads.identifier.service.START"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 754
    const-string v2, "com.google.android.gms"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 755
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 757
    :try_start_0
    new-instance v0, Lcom/xiaomi/stat/d/e$a$b;

    invoke-virtual {v1}, Lcom/xiaomi/stat/d/e$a$a;->a()Landroid/os/IBinder;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/xiaomi/stat/d/e$a$b;-><init>(Landroid/os/IBinder;)V

    .line 758
    invoke-virtual {v0}, Lcom/xiaomi/stat/d/e$a$b;->a()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 762
    invoke-virtual {p0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_0

    .line 759
    :catch_0
    move-exception v0

    .line 760
    :try_start_1
    const-string v2, "GAIDClient"

    const-string v3, "Query Google ADID failed "

    invoke-static {v2, v3, v0}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 762
    invoke-virtual {p0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 765
    :cond_1
    const-string v0, ""

    goto :goto_0

    .line 762
    :catchall_0
    move-exception v0

    invoke-virtual {p0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v0
.end method

.method private static b(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 770
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 771
    const-string v2, "com.android.vending"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 772
    const/4 v0, 0x1

    .line 776
    :goto_0
    return v0

    .line 773
    :catch_0
    move-exception v1

    goto :goto_0
.end method
