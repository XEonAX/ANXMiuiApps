.class Lmiui/content/res/ThemeRuntimeManager$ThemeServiceThread;
.super Ljava/lang/Thread;
.source "ThemeRuntimeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/content/res/ThemeRuntimeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThemeServiceThread"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/content/res/ThemeRuntimeManager;


# direct methods
.method private constructor <init>(Lmiui/content/res/ThemeRuntimeManager;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lmiui/content/res/ThemeRuntimeManager$ThemeServiceThread;->this$0:Lmiui/content/res/ThemeRuntimeManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/content/res/ThemeRuntimeManager;Lmiui/content/res/ThemeRuntimeManager$1;)V
    .locals 0
    .param p1, "x0"    # Lmiui/content/res/ThemeRuntimeManager;
    .param p2, "x1"    # Lmiui/content/res/ThemeRuntimeManager$1;

    .line 147
    invoke-direct {p0, p1}, Lmiui/content/res/ThemeRuntimeManager$ThemeServiceThread;-><init>(Lmiui/content/res/ThemeRuntimeManager;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 151
    :goto_0
    iget-object v0, p0, Lmiui/content/res/ThemeRuntimeManager$ThemeServiceThread;->this$0:Lmiui/content/res/ThemeRuntimeManager;

    invoke-static {v0}, Lmiui/content/res/ThemeRuntimeManager;->access$000(Lmiui/content/res/ThemeRuntimeManager;)V

    .line 152
    iget-object v0, p0, Lmiui/content/res/ThemeRuntimeManager$ThemeServiceThread;->this$0:Lmiui/content/res/ThemeRuntimeManager;

    invoke-static {v0}, Lmiui/content/res/ThemeRuntimeManager;->access$100(Lmiui/content/res/ThemeRuntimeManager;)[B

    move-result-object v0

    monitor-enter v0

    .line 153
    :goto_1
    :try_start_0
    iget-object v1, p0, Lmiui/content/res/ThemeRuntimeManager$ThemeServiceThread;->this$0:Lmiui/content/res/ThemeRuntimeManager;

    invoke-static {v1}, Lmiui/content/res/ThemeRuntimeManager;->access$200(Lmiui/content/res/ThemeRuntimeManager;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 154
    iget-object v1, p0, Lmiui/content/res/ThemeRuntimeManager$ThemeServiceThread;->this$0:Lmiui/content/res/ThemeRuntimeManager;

    invoke-static {v1}, Lmiui/content/res/ThemeRuntimeManager;->access$300(Lmiui/content/res/ThemeRuntimeManager;)[B

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 155
    :try_start_1
    iget-object v2, p0, Lmiui/content/res/ThemeRuntimeManager$ThemeServiceThread;->this$0:Lmiui/content/res/ThemeRuntimeManager;

    invoke-static {v2}, Lmiui/content/res/ThemeRuntimeManager;->access$400(Lmiui/content/res/ThemeRuntimeManager;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    monitor-exit v1

    goto :goto_2

    .line 156
    :cond_0
    iget-object v2, p0, Lmiui/content/res/ThemeRuntimeManager$ThemeServiceThread;->this$0:Lmiui/content/res/ThemeRuntimeManager;

    invoke-static {v2}, Lmiui/content/res/ThemeRuntimeManager;->access$200(Lmiui/content/res/ThemeRuntimeManager;)Ljava/util/Stack;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 157
    .local v2, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    iget-object v3, p0, Lmiui/content/res/ThemeRuntimeManager$ThemeServiceThread;->this$0:Lmiui/content/res/ThemeRuntimeManager;

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/graphics/Bitmap;

    invoke-static {v3, v4, v5}, Lmiui/content/res/ThemeRuntimeManager;->access$500(Lmiui/content/res/ThemeRuntimeManager;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 158
    .end local v2    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 162
    :cond_1
    :goto_2
    :try_start_3
    iget-object v1, p0, Lmiui/content/res/ThemeRuntimeManager$ThemeServiceThread;->this$0:Lmiui/content/res/ThemeRuntimeManager;

    invoke-static {v1}, Lmiui/content/res/ThemeRuntimeManager;->access$100(Lmiui/content/res/ThemeRuntimeManager;)[B

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 165
    goto :goto_3

    .line 163
    :catch_0
    move-exception v1

    .line 164
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 167
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_3
    iget-object v1, p0, Lmiui/content/res/ThemeRuntimeManager$ThemeServiceThread;->this$0:Lmiui/content/res/ThemeRuntimeManager;

    invoke-static {v1}, Lmiui/content/res/ThemeRuntimeManager;->access$200(Lmiui/content/res/ThemeRuntimeManager;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 168
    iget-object v1, p0, Lmiui/content/res/ThemeRuntimeManager$ThemeServiceThread;->this$0:Lmiui/content/res/ThemeRuntimeManager;

    invoke-static {v1}, Lmiui/content/res/ThemeRuntimeManager;->access$600(Lmiui/content/res/ThemeRuntimeManager;)V

    .line 169
    iget-object v1, p0, Lmiui/content/res/ThemeRuntimeManager$ThemeServiceThread;->this$0:Lmiui/content/res/ThemeRuntimeManager;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lmiui/content/res/ThemeRuntimeManager;->access$702(Lmiui/content/res/ThemeRuntimeManager;Z)Z

    .line 170
    monitor-exit v0

    .line 174
    return-void

    .line 172
    :cond_2
    monitor-exit v0

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method
