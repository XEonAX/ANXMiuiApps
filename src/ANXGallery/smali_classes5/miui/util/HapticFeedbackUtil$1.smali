.class Lmiui/util/HapticFeedbackUtil$1;
.super Ljava/lang/Thread;
.source "HapticFeedbackUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(Ljava/lang/String;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/util/HapticFeedbackUtil;

.field final synthetic val$pattern:[J


# direct methods
.method constructor <init>(Lmiui/util/HapticFeedbackUtil;[J)V
    .locals 0
    .param p1, "this$0"    # Lmiui/util/HapticFeedbackUtil;

    .line 247
    iput-object p1, p0, Lmiui/util/HapticFeedbackUtil$1;->this$0:Lmiui/util/HapticFeedbackUtil;

    iput-object p2, p0, Lmiui/util/HapticFeedbackUtil$1;->val$pattern:[J

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 251
    :try_start_0
    invoke-static {}, Lmiui/util/HapticFeedbackUtil;->access$200()Lmiui/reflect/Method;

    move-result-object v0

    invoke-static {}, Lmiui/util/HapticFeedbackUtil;->access$100()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lmiui/util/HapticFeedbackUtil$1;->val$pattern:[J

    const/4 v6, 0x0

    aget-wide v7, v5, v6

    long-to-int v5, v7

    .line 252
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    .line 251
    invoke-virtual {v0, v1, v2, v4}, Lmiui/reflect/Method;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 253
    .local v0, "effect":Ljava/lang/Object;
    invoke-static {}, Lmiui/util/HapticFeedbackUtil;->access$400()Lmiui/reflect/Method;

    move-result-object v1

    const-class v2, Landroid/os/Vibrator;

    iget-object v4, p0, Lmiui/util/HapticFeedbackUtil$1;->this$0:Lmiui/util/HapticFeedbackUtil;

    invoke-static {v4}, Lmiui/util/HapticFeedbackUtil;->access$300(Lmiui/util/HapticFeedbackUtil;)Landroid/os/Vibrator;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-virtual {v1, v2, v4, v3}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    .end local v0    # "effect":Ljava/lang/Object;
    goto :goto_0

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "HapticFeedbackUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to use VibrationEffect, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
