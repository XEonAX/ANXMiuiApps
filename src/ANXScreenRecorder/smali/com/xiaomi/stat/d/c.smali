.class public Lcom/xiaomi/stat/d/c;
.super Ljava/lang/Object;


# static fields
.field private static a:Z

.field private static b:I

.field private static c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()I
    .locals 1

    .prologue
    .line 17
    sget-boolean v0, Lcom/xiaomi/stat/d/c;->a:Z

    if-nez v0, :cond_0

    .line 18
    invoke-static {}, Lcom/xiaomi/stat/d/c;->c()V

    .line 20
    :cond_0
    sget v0, Lcom/xiaomi/stat/d/c;->b:I

    return v0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sget-boolean v0, Lcom/xiaomi/stat/d/c;->a:Z

    if-nez v0, :cond_0

    .line 25
    invoke-static {}, Lcom/xiaomi/stat/d/c;->c()V

    .line 28
    :cond_0
    sget-object v0, Lcom/xiaomi/stat/d/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method private static c()V
    .locals 3

    .prologue
    .line 32
    sget-boolean v0, Lcom/xiaomi/stat/d/c;->a:Z

    if-eqz v0, :cond_0

    .line 46
    :goto_0
    return-void

    .line 35
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/xiaomi/stat/d/c;->a:Z

    .line 37
    invoke-static {}, Lcom/xiaomi/stat/I;->a()Landroid/content/Context;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 41
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    .line 40
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 42
    iget v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    sput v1, Lcom/xiaomi/stat/d/c;->b:I

    .line 43
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v0, Lcom/xiaomi/stat/d/c;->c:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 44
    :catch_0
    move-exception v0

    goto :goto_0
.end method
