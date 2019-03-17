.class Lcom/miui/extraphoto/sdk/BaseEchoListener$1;
.super Ljava/lang/Object;
.source "BaseEchoListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/extraphoto/sdk/BaseEchoListener;->onEchoStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/extraphoto/sdk/BaseEchoListener;


# direct methods
.method constructor <init>(Lcom/miui/extraphoto/sdk/BaseEchoListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/extraphoto/sdk/BaseEchoListener;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/miui/extraphoto/sdk/BaseEchoListener$1;->this$0:Lcom/miui/extraphoto/sdk/BaseEchoListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/miui/extraphoto/sdk/BaseEchoListener$1;->this$0:Lcom/miui/extraphoto/sdk/BaseEchoListener;

    invoke-virtual {v0}, Lcom/miui/extraphoto/sdk/BaseEchoListener;->onStart()V

    .line 34
    return-void
.end method
