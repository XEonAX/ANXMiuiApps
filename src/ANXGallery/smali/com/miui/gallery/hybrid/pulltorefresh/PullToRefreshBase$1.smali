.class Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$1;
.super Ljava/lang/Object;
.source "PullToRefreshBase.java"

# interfaces
.implements Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->onRefreshing(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;


# direct methods
.method constructor <init>(Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;

    .prologue
    .line 724
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$1;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$1;"
    iput-object p1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$1;->this$0:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSmoothScrollFinished()V
    .locals 1

    .prologue
    .line 727
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$1;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$1;"
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$1;->this$0:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;

    invoke-static {v0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->access$000(Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;)V

    .line 728
    return-void
.end method
