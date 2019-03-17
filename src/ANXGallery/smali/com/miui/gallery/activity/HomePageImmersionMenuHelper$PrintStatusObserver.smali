.class Lcom/miui/gallery/activity/HomePageImmersionMenuHelper$PrintStatusObserver;
.super Ljava/lang/Object;
.source "HomePageImmersionMenuHelper.java"

# interfaces
.implements Lcom/miui/gallery/cloudcontrol/FeatureStatusObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrintStatusObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;)V
    .locals 0

    .prologue
    .line 315
    iput-object p1, p0, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper$PrintStatusObserver;->this$0:Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;Lcom/miui/gallery/activity/HomePageImmersionMenuHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;
    .param p2, "x1"    # Lcom/miui/gallery/activity/HomePageImmersionMenuHelper$1;

    .prologue
    .line 315
    invoke-direct {p0, p1}, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper$PrintStatusObserver;-><init>(Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;)V

    return-void
.end method


# virtual methods
.method public onStatusChange(Ljava/lang/String;Lcom/miui/gallery/cloudcontrol/FeatureProfile$Status;Lcom/miui/gallery/cloudcontrol/FeatureProfile$Status;)V
    .locals 1
    .param p1, "featureName"    # Ljava/lang/String;
    .param p2, "oldStatus"    # Lcom/miui/gallery/cloudcontrol/FeatureProfile$Status;
    .param p3, "newStatus"    # Lcom/miui/gallery/cloudcontrol/FeatureProfile$Status;

    .prologue
    .line 319
    const-string v0, "photo-print"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper$PrintStatusObserver;->this$0:Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;

    invoke-static {v0, p3}, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;->access$200(Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;Lcom/miui/gallery/cloudcontrol/FeatureProfile$Status;)V

    .line 322
    :cond_0
    return-void
.end method
