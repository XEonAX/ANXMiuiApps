.class Lcom/miui/gallery/discovery/DiscoveryMessageManager$Holder;
.super Ljava/lang/Object;
.source "DiscoveryMessageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/discovery/DiscoveryMessageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field static final INSTANCE:Lcom/miui/gallery/discovery/DiscoveryMessageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 85
    new-instance v0, Lcom/miui/gallery/discovery/DiscoveryMessageManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/gallery/discovery/DiscoveryMessageManager;-><init>(Lcom/miui/gallery/discovery/DiscoveryMessageManager$1;)V

    sput-object v0, Lcom/miui/gallery/discovery/DiscoveryMessageManager$Holder;->INSTANCE:Lcom/miui/gallery/discovery/DiscoveryMessageManager;

    return-void
.end method
