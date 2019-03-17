.class Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager$1;
.super Ljava/lang/Object;
.source "PhotoPageImageItem.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 855
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager$1;->this$1:Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 858
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager$1;->this$1:Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;->access$2300(Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;)V

    .line 859
    return-void
.end method
