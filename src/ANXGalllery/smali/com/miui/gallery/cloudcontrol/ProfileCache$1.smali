.class Lcom/miui/gallery/cloudcontrol/ProfileCache$1;
.super Ljava/lang/Object;
.source "ProfileCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/cloudcontrol/ProfileCache;->notifyObserversByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/cloudcontrol/ProfileCache;

.field final synthetic val$featureName:Ljava/lang/String;

.field final synthetic val$newStatus:Ljava/lang/String;

.field final synthetic val$observer:Lcom/miui/gallery/cloudcontrol/FeatureStatusObserver;

.field final synthetic val$oldStatus:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/gallery/cloudcontrol/ProfileCache;Lcom/miui/gallery/cloudcontrol/FeatureStatusObserver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/cloudcontrol/ProfileCache;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/miui/gallery/cloudcontrol/ProfileCache$1;->this$0:Lcom/miui/gallery/cloudcontrol/ProfileCache;

    iput-object p2, p0, Lcom/miui/gallery/cloudcontrol/ProfileCache$1;->val$observer:Lcom/miui/gallery/cloudcontrol/FeatureStatusObserver;

    iput-object p3, p0, Lcom/miui/gallery/cloudcontrol/ProfileCache$1;->val$featureName:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/gallery/cloudcontrol/ProfileCache$1;->val$oldStatus:Ljava/lang/String;

    iput-object p5, p0, Lcom/miui/gallery/cloudcontrol/ProfileCache$1;->val$newStatus:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 105
    iget-object v0, p0, Lcom/miui/gallery/cloudcontrol/ProfileCache$1;->val$observer:Lcom/miui/gallery/cloudcontrol/FeatureStatusObserver;

    iget-object v1, p0, Lcom/miui/gallery/cloudcontrol/ProfileCache$1;->val$featureName:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/gallery/cloudcontrol/ProfileCache$1;->val$oldStatus:Ljava/lang/String;

    invoke-static {v2}, Lcom/miui/gallery/cloudcontrol/FeatureProfile$Status;->fromValue(Ljava/lang/String;)Lcom/miui/gallery/cloudcontrol/FeatureProfile$Status;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/cloudcontrol/ProfileCache$1;->val$newStatus:Ljava/lang/String;

    invoke-static {v3}, Lcom/miui/gallery/cloudcontrol/FeatureProfile$Status;->fromValue(Ljava/lang/String;)Lcom/miui/gallery/cloudcontrol/FeatureProfile$Status;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/miui/gallery/cloudcontrol/FeatureStatusObserver;->onStatusChange(Ljava/lang/String;Lcom/miui/gallery/cloudcontrol/FeatureProfile$Status;Lcom/miui/gallery/cloudcontrol/FeatureProfile$Status;)V

    .line 106
    return-void
.end method
