.class Lcom/miui/gallery/movie/ui/activity/MovieActivity$8;
.super Ljava/lang/Object;
.source "MovieActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/movie/ui/activity/MovieActivity;->changeEditor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/movie/ui/activity/MovieActivity;


# direct methods
.method constructor <init>(Lcom/miui/gallery/movie/ui/activity/MovieActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/movie/ui/activity/MovieActivity;

    .prologue
    .line 491
    iput-object p1, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity$8;->this$0:Lcom/miui/gallery/movie/ui/activity/MovieActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 494
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity$8;->this$0:Lcom/miui/gallery/movie/ui/activity/MovieActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->access$1000(Lcom/miui/gallery/movie/ui/activity/MovieActivity;Z)V

    .line 495
    return-void
.end method
