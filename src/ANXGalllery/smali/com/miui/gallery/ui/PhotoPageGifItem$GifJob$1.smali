.class Lcom/miui/gallery/ui/PhotoPageGifItem$GifJob$1;
.super Ljava/lang/Object;
.source "PhotoPageGifItem.java"

# interfaces
.implements Lcom/miui/gallery/threadpool/ThreadPool$CancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/PhotoPageGifItem$GifJob;->run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/ui/PhotoPageGifItem$GifJob;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/PhotoPageGifItem$GifJob;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/ui/PhotoPageGifItem$GifJob;

    .prologue
    .line 308
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageGifItem$GifJob$1;->this$1:Lcom/miui/gallery/ui/PhotoPageGifItem$GifJob;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageGifItem$GifJob$1;->this$1:Lcom/miui/gallery/ui/PhotoPageGifItem$GifJob;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageGifItem$GifJob;->access$400(Lcom/miui/gallery/ui/PhotoPageGifItem$GifJob;)V

    .line 312
    return-void
.end method
