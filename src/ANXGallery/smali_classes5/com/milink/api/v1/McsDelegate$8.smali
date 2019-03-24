.class Lcom/milink/api/v1/McsDelegate$8;
.super Ljava/lang/Object;
.source "McsDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/milink/api/v1/McsDelegate;->onVolume(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/milink/api/v1/McsDelegate;

.field final synthetic val$volume:I


# direct methods
.method constructor <init>(Lcom/milink/api/v1/McsDelegate;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/milink/api/v1/McsDelegate;

    .line 129
    iput-object p1, p0, Lcom/milink/api/v1/McsDelegate$8;->this$0:Lcom/milink/api/v1/McsDelegate;

    iput p2, p0, Lcom/milink/api/v1/McsDelegate$8;->val$volume:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/milink/api/v1/McsDelegate$8;->this$0:Lcom/milink/api/v1/McsDelegate;

    invoke-static {v0}, Lcom/milink/api/v1/McsDelegate;->access$000(Lcom/milink/api/v1/McsDelegate;)Lcom/milink/api/v1/MilinkClientManagerDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/milink/api/v1/McsDelegate$8;->this$0:Lcom/milink/api/v1/McsDelegate;

    invoke-static {v0}, Lcom/milink/api/v1/McsDelegate;->access$000(Lcom/milink/api/v1/McsDelegate;)Lcom/milink/api/v1/MilinkClientManagerDelegate;

    move-result-object v0

    iget v1, p0, Lcom/milink/api/v1/McsDelegate$8;->val$volume:I

    invoke-interface {v0, v1}, Lcom/milink/api/v1/MilinkClientManagerDelegate;->onVolume(I)V

    .line 135
    :cond_0
    return-void
.end method
