.class abstract Lcom/miui/gallery/sdk/uploadstatus/SyncItem;
.super Ljava/lang/Object;
.source "SyncItem.java"


# instance fields
.field public final mStatus:Lcom/miui/gallery/sdk/SyncStatus;


# direct methods
.method constructor <init>(Lcom/miui/gallery/sdk/SyncStatus;)V
    .locals 0
    .param p1, "status"    # Lcom/miui/gallery/sdk/SyncStatus;

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/miui/gallery/sdk/uploadstatus/SyncItem;->mStatus:Lcom/miui/gallery/sdk/SyncStatus;

    .line 10
    return-void
.end method
