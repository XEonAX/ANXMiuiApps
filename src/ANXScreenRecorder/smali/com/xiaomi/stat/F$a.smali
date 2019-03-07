.class Lcom/xiaomi/stat/F$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/stat/F;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/stat/F;

.field private b:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Lcom/xiaomi/stat/F;)V
    .locals 1

    .prologue
    .line 81
    iput-object p1, p0, Lcom/xiaomi/stat/F$a;->a:Lcom/xiaomi/stat/F;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/stat/F$a;->b:Landroid/os/Handler;

    .line 82
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/stat/F;Lcom/xiaomi/stat/G;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/xiaomi/stat/F$a;-><init>(Lcom/xiaomi/stat/F;)V

    return-void
.end method

.method private a(Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/xiaomi/stat/F$a;->b:Landroid/os/Handler;

    .line 86
    return-void
.end method

.method static synthetic a(Lcom/xiaomi/stat/F$a;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/xiaomi/stat/F$a;->a(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    .line 90
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 105
    :cond_0
    :goto_0
    return v4

    .line 92
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 93
    iget-object v1, p0, Lcom/xiaomi/stat/F$a;->a:Lcom/xiaomi/stat/F;

    invoke-static {v1}, Lcom/xiaomi/stat/F;->a(Lcom/xiaomi/stat/F;)I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 94
    iget-object v1, p0, Lcom/xiaomi/stat/F$a;->a:Lcom/xiaomi/stat/F;

    invoke-static {v1}, Lcom/xiaomi/stat/F;->b(Lcom/xiaomi/stat/F;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 95
    iget-object v1, p0, Lcom/xiaomi/stat/F$a;->a:Lcom/xiaomi/stat/F;

    invoke-static {v1}, Lcom/xiaomi/stat/F;->c(Lcom/xiaomi/stat/F;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/xiaomi/stat/F$a;->b:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 97
    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 98
    iget-object v0, p0, Lcom/xiaomi/stat/F$a;->b:Landroid/os/Handler;

    iget-object v2, p0, Lcom/xiaomi/stat/F$a;->a:Lcom/xiaomi/stat/F;

    invoke-static {v2}, Lcom/xiaomi/stat/F;->d(Lcom/xiaomi/stat/F;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/stat/F$a;->a:Lcom/xiaomi/stat/F;

    invoke-virtual {v0}, Lcom/xiaomi/stat/F;->b()V

    goto :goto_0

    .line 90
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
