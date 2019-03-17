.class final Lcom/xiaomi/mistatistic/sdk/controller/m$1;
.super Ljava/lang/Object;
.source "PrefsHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mistatistic/sdk/controller/m;->a(Landroid/content/SharedPreferences$Editor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/SharedPreferences$Editor;


# direct methods
.method constructor <init>(Landroid/content/SharedPreferences$Editor;)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/m$1;->a:Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/m$1;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 270
    const-string v0, "PPU"

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "The commit of SharePref failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_0
    return-void
.end method
