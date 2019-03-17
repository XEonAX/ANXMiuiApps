.class Lcom/miui/gallery/assistant/manager/ImageFeatureManger$3;
.super Ljava/lang/Object;
.source "ImageFeatureManger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->createNewImageCalculateRunnable()Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/assistant/manager/ImageFeatureManger;


# direct methods
.method constructor <init>(Lcom/miui/gallery/assistant/manager/ImageFeatureManger;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/assistant/manager/ImageFeatureManger;

    .prologue
    .line 257
    iput-object p1, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$3;->this$0:Lcom/miui/gallery/assistant/manager/ImageFeatureManger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$3;->this$0:Lcom/miui/gallery/assistant/manager/ImageFeatureManger;

    invoke-static {v0}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->access$400(Lcom/miui/gallery/assistant/manager/ImageFeatureManger;)V

    .line 261
    return-void
.end method
