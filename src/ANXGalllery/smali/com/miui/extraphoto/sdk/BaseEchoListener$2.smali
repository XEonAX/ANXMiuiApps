.class Lcom/miui/extraphoto/sdk/BaseEchoListener$2;
.super Ljava/lang/Object;
.source "BaseEchoListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/extraphoto/sdk/BaseEchoListener;->onEchoEnd(Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/extraphoto/sdk/BaseEchoListener;

.field final synthetic val$finalPath:Ljava/lang/String;

.field final synthetic val$finalSuccess:Z


# direct methods
.method constructor <init>(Lcom/miui/extraphoto/sdk/BaseEchoListener;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/extraphoto/sdk/BaseEchoListener;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/miui/extraphoto/sdk/BaseEchoListener$2;->this$0:Lcom/miui/extraphoto/sdk/BaseEchoListener;

    iput-object p2, p0, Lcom/miui/extraphoto/sdk/BaseEchoListener$2;->val$finalPath:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/miui/extraphoto/sdk/BaseEchoListener$2;->val$finalSuccess:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 65
    iget-object v0, p0, Lcom/miui/extraphoto/sdk/BaseEchoListener$2;->this$0:Lcom/miui/extraphoto/sdk/BaseEchoListener;

    iget-object v1, p0, Lcom/miui/extraphoto/sdk/BaseEchoListener$2;->val$finalPath:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/miui/extraphoto/sdk/BaseEchoListener$2;->val$finalSuccess:Z

    invoke-virtual {v0, v1, v2}, Lcom/miui/extraphoto/sdk/BaseEchoListener;->onEnd(Ljava/lang/String;Z)V

    .line 66
    return-void
.end method
