.class Lcom/xiaomi/stat/c/i$a;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/stat/c/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/stat/c/i;


# direct methods
.method public constructor <init>(Lcom/xiaomi/stat/c/i;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/xiaomi/stat/c/i$a;->a:Lcom/xiaomi/stat/c/i;

    .line 187
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 188
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 192
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 193
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 194
    iget-object v0, p0, Lcom/xiaomi/stat/c/i$a;->a:Lcom/xiaomi/stat/c/i;

    invoke-static {v0}, Lcom/xiaomi/stat/c/i;->a(Lcom/xiaomi/stat/c/i;)V

    .line 196
    :cond_0
    return-void
.end method
