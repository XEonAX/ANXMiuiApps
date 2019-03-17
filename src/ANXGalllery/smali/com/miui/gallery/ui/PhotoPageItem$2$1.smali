.class Lcom/miui/gallery/ui/PhotoPageItem$2$1;
.super Ljava/lang/Object;
.source "PhotoPageItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/PhotoPageItem$2;->onImageLoadFinish(ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/ui/PhotoPageItem$2;

.field final synthetic val$cancelled:Z

.field final synthetic val$uri:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/PhotoPageItem$2;ZLjava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/ui/PhotoPageItem$2;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageItem$2$1;->this$1:Lcom/miui/gallery/ui/PhotoPageItem$2;

    iput-boolean p2, p0, Lcom/miui/gallery/ui/PhotoPageItem$2$1;->val$cancelled:Z

    iput-object p3, p0, Lcom/miui/gallery/ui/PhotoPageItem$2$1;->val$uri:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 240
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$2$1;->this$1:Lcom/miui/gallery/ui/PhotoPageItem$2;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageItem$2;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageItem;->access$200(Lcom/miui/gallery/ui/PhotoPageItem;)Lcom/miui/gallery/ui/PhotoPageItem$OnImageLoadFinishListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$2$1;->this$1:Lcom/miui/gallery/ui/PhotoPageItem$2;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageItem$2;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageItem;->access$200(Lcom/miui/gallery/ui/PhotoPageItem;)Lcom/miui/gallery/ui/PhotoPageItem$OnImageLoadFinishListener;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/gallery/ui/PhotoPageItem$2$1;->val$cancelled:Z

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageItem$2$1;->val$uri:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/miui/gallery/ui/PhotoPageItem$OnImageLoadFinishListener;->onImageLoadFinish(ZLjava/lang/String;)V

    .line 243
    :cond_0
    return-void
.end method
