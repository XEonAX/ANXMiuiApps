.class Lcom/miui/gallery/cloud/syncstate/SyncStateInfo$4;
.super Ljava/lang/Object;
.source "SyncStateInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->startRefreshTime()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;


# direct methods
.method constructor <init>(Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;

    .prologue
    .line 508
    iput-object p1, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo$4;->this$0:Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo$4;->this$0:Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;

    invoke-static {v0}, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->access$1000(Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;)V

    .line 511
    return-void
.end method
