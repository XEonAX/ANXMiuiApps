.class Lcom/milink/api/v1/McsDelegate$9;
.super Ljava/lang/Object;
.source "McsDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/milink/api/v1/McsDelegate;->onNextAudio(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/milink/api/v1/McsDelegate;

.field final synthetic val$isAuto:Z


# direct methods
.method constructor <init>(Lcom/milink/api/v1/McsDelegate;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/milink/api/v1/McsDelegate;

    .line 144
    iput-object p1, p0, Lcom/milink/api/v1/McsDelegate$9;->this$0:Lcom/milink/api/v1/McsDelegate;

    iput-boolean p2, p0, Lcom/milink/api/v1/McsDelegate$9;->val$isAuto:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/milink/api/v1/McsDelegate$9;->this$0:Lcom/milink/api/v1/McsDelegate;

    invoke-static {v0}, Lcom/milink/api/v1/McsDelegate;->access$000(Lcom/milink/api/v1/McsDelegate;)Lcom/milink/api/v1/MilinkClientManagerDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/milink/api/v1/McsDelegate$9;->this$0:Lcom/milink/api/v1/McsDelegate;

    invoke-static {v0}, Lcom/milink/api/v1/McsDelegate;->access$000(Lcom/milink/api/v1/McsDelegate;)Lcom/milink/api/v1/MilinkClientManagerDelegate;

    move-result-object v0

    iget-boolean v1, p0, Lcom/milink/api/v1/McsDelegate$9;->val$isAuto:Z

    invoke-interface {v0, v1}, Lcom/milink/api/v1/MilinkClientManagerDelegate;->onNextAudio(Z)V

    .line 150
    :cond_0
    return-void
.end method
