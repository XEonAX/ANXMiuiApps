.class Lcom/miui/gallery/assistant/manager/ImageFeatureManger$2;
.super Ljava/lang/Object;
.source "ImageFeatureManger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->createImagesDeleteRunnable()Ljava/lang/Runnable;
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
    .line 165
    iput-object p1, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$2;->this$0:Lcom/miui/gallery/assistant/manager/ImageFeatureManger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 168
    invoke-static {}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->isStoryFunctionEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$2;->this$0:Lcom/miui/gallery/assistant/manager/ImageFeatureManger;

    invoke-static {v0}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->access$300(Lcom/miui/gallery/assistant/manager/ImageFeatureManger;)V

    .line 171
    :cond_0
    return-void
.end method
