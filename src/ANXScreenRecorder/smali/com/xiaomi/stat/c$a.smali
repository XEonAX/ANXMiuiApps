.class Lcom/xiaomi/stat/c$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/stat/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/xiaomi/stat/c$a;->a:Ljava/lang/Runnable;

    .line 52
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 56
    invoke-static {}, Lcom/xiaomi/stat/c;->a()Z

    move-result v0

    .line 57
    if-nez v0, :cond_0

    .line 66
    :goto_0
    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/stat/c$a;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/xiaomi/stat/c$a;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 65
    :cond_1
    invoke-static {}, Lcom/xiaomi/stat/c;->b()V

    goto :goto_0
.end method
