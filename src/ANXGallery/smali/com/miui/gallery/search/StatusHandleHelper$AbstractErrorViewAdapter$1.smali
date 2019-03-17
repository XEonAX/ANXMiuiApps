.class Lcom/miui/gallery/search/StatusHandleHelper$AbstractErrorViewAdapter$1;
.super Ljava/lang/Object;
.source "StatusHandleHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/search/StatusHandleHelper$AbstractErrorViewAdapter;->bindFixActionForStatus(ILandroid/view/View;Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/search/StatusHandleHelper$AbstractErrorViewAdapter;


# direct methods
.method constructor <init>(Lcom/miui/gallery/search/StatusHandleHelper$AbstractErrorViewAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/search/StatusHandleHelper$AbstractErrorViewAdapter;

    .prologue
    .line 378
    iput-object p1, p0, Lcom/miui/gallery/search/StatusHandleHelper$AbstractErrorViewAdapter$1;->this$0:Lcom/miui/gallery/search/StatusHandleHelper$AbstractErrorViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 381
    iget-object v0, p0, Lcom/miui/gallery/search/StatusHandleHelper$AbstractErrorViewAdapter$1;->this$0:Lcom/miui/gallery/search/StatusHandleHelper$AbstractErrorViewAdapter;

    iget-object v0, v0, Lcom/miui/gallery/search/StatusHandleHelper$AbstractErrorViewAdapter;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/gallery/ui/AIAlbumStatusHelper;->setLocalSearchStatus(Landroid/content/Context;Z)V

    .line 382
    iget-object v0, p0, Lcom/miui/gallery/search/StatusHandleHelper$AbstractErrorViewAdapter$1;->this$0:Lcom/miui/gallery/search/StatusHandleHelper$AbstractErrorViewAdapter;

    invoke-virtual {v0}, Lcom/miui/gallery/search/StatusHandleHelper$AbstractErrorViewAdapter;->requestRetry()V

    .line 383
    const-string v0, "search"

    const-string v1, "search_open_switch"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    return-void
.end method
