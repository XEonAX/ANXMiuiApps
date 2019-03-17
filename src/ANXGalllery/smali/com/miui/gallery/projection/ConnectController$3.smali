.class Lcom/miui/gallery/projection/ConnectController$3;
.super Ljava/lang/Object;
.source "ConnectController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/projection/ConnectController;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/projection/ConnectController;


# direct methods
.method constructor <init>(Lcom/miui/gallery/projection/ConnectController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/projection/ConnectController;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/miui/gallery/projection/ConnectController$3;->this$0:Lcom/miui/gallery/projection/ConnectController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/miui/gallery/projection/ConnectController$3;->this$0:Lcom/miui/gallery/projection/ConnectController;

    invoke-virtual {v0}, Lcom/miui/gallery/projection/ConnectController;->refreshDevices()Z

    .line 139
    return-void
.end method
