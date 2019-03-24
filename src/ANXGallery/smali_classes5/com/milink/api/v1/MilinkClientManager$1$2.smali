.class Lcom/milink/api/v1/MilinkClientManager$1$2;
.super Ljava/lang/Object;
.source "MilinkClientManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/milink/api/v1/MilinkClientManager$1;->onServiceDisconnected(Landroid/content/ComponentName;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/milink/api/v1/MilinkClientManager$1;


# direct methods
.method constructor <init>(Lcom/milink/api/v1/MilinkClientManager$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/milink/api/v1/MilinkClientManager$1;

    .line 124
    iput-object p1, p0, Lcom/milink/api/v1/MilinkClientManager$1$2;->this$1:Lcom/milink/api/v1/MilinkClientManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/milink/api/v1/MilinkClientManager$1$2;->this$1:Lcom/milink/api/v1/MilinkClientManager$1;

    iget-object v0, v0, Lcom/milink/api/v1/MilinkClientManager$1;->this$0:Lcom/milink/api/v1/MilinkClientManager;

    invoke-static {v0}, Lcom/milink/api/v1/MilinkClientManager;->access$100(Lcom/milink/api/v1/MilinkClientManager;)Lcom/milink/api/v1/MilinkClientManagerDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/milink/api/v1/MilinkClientManager$1$2;->this$1:Lcom/milink/api/v1/MilinkClientManager$1;

    iget-object v0, v0, Lcom/milink/api/v1/MilinkClientManager$1;->this$0:Lcom/milink/api/v1/MilinkClientManager;

    invoke-static {v0}, Lcom/milink/api/v1/MilinkClientManager;->access$100(Lcom/milink/api/v1/MilinkClientManager;)Lcom/milink/api/v1/MilinkClientManagerDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/milink/api/v1/MilinkClientManagerDelegate;->onClose()V

    .line 130
    :cond_0
    return-void
.end method
