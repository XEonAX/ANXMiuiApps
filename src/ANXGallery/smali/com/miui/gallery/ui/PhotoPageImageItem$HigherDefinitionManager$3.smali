.class Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager$3;
.super Ljava/lang/Object;
.source "PhotoPageImageItem.java"

# interfaces
.implements Luk/co/senab/photoview/PhotoViewAttacher$OnScaleStageChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;

    .prologue
    .line 924
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager$3;->this$1:Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMaxScaleStage(Z)V
    .locals 1
    .param p1, "isEnter"    # Z

    .prologue
    .line 936
    if-eqz p1, :cond_0

    .line 937
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager$3;->this$1:Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageImageItem;->access$1100(Lcom/miui/gallery/ui/PhotoPageImageItem;)Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;->access$2800(Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;)V

    .line 941
    :goto_0
    return-void

    .line 939
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager$3;->this$1:Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageImageItem;->access$1100(Lcom/miui/gallery/ui/PhotoPageImageItem;)Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;->access$2700(Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;)V

    goto :goto_0
.end method

.method public onMidScaleStage(Z)V
    .locals 1
    .param p1, "isEnter"    # Z

    .prologue
    .line 927
    if-eqz p1, :cond_0

    .line 928
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager$3;->this$1:Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageImageItem;->access$1100(Lcom/miui/gallery/ui/PhotoPageImageItem;)Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;->access$2600(Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;)V

    .line 932
    :goto_0
    return-void

    .line 930
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager$3;->this$1:Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageImageItem;->access$1100(Lcom/miui/gallery/ui/PhotoPageImageItem;)Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;->access$2700(Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;)V

    goto :goto_0
.end method
