.class Lcom/miui/gallery/util/BindImageHelper$2$1;
.super Ljava/lang/Object;
.source "BindImageHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/util/BindImageHelper$2;->onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lcom/nostra13/universalimageloader/core/assist/FailReason;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/util/BindImageHelper$2;


# direct methods
.method constructor <init>(Lcom/miui/gallery/util/BindImageHelper$2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/util/BindImageHelper$2;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/miui/gallery/util/BindImageHelper$2$1;->this$0:Lcom/miui/gallery/util/BindImageHelper$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/miui/gallery/util/BindImageHelper$2$1;->this$0:Lcom/miui/gallery/util/BindImageHelper$2;

    iget-object v0, v0, Lcom/miui/gallery/util/BindImageHelper$2;->val$aware:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    invoke-static {v0}, Lcom/miui/gallery/util/BindImageHelper;->access$100(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;)V

    .line 173
    return-void
.end method
