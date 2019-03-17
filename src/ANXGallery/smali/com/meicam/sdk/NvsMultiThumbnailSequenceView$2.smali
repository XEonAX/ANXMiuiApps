.class Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$2;
.super Ljava/lang/Object;
.source "NvsMultiThumbnailSequenceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->notifyIconArrived()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;


# direct methods
.method constructor <init>(Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;)V
    .locals 0

    .prologue
    .line 933
    iput-object p1, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$2;->this$0:Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 936
    iget-object v0, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$2;->this$0:Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;

    invoke-static {v0}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->access$100(Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;)V

    .line 937
    return-void
.end method
