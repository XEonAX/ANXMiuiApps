.class Lcom/miui/gallery/movie/ui/adapter/BaseResourceAdapter$BaseResourceHolder$1;
.super Ljava/lang/Object;
.source "BaseResourceAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/movie/ui/adapter/BaseResourceAdapter$BaseResourceHolder;->bindView(ILjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/movie/ui/adapter/BaseResourceAdapter$BaseResourceHolder;

.field final synthetic val$info:Lcom/miui/gallery/movie/entity/MovieResource;


# direct methods
.method constructor <init>(Lcom/miui/gallery/movie/ui/adapter/BaseResourceAdapter$BaseResourceHolder;Lcom/miui/gallery/movie/entity/MovieResource;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/movie/ui/adapter/BaseResourceAdapter$BaseResourceHolder;

    .prologue
    .line 86
    .local p0, "this":Lcom/miui/gallery/movie/ui/adapter/BaseResourceAdapter$BaseResourceHolder$1;, "Lcom/miui/gallery/movie/ui/adapter/BaseResourceAdapter$BaseResourceHolder$1;"
    iput-object p1, p0, Lcom/miui/gallery/movie/ui/adapter/BaseResourceAdapter$BaseResourceHolder$1;->this$1:Lcom/miui/gallery/movie/ui/adapter/BaseResourceAdapter$BaseResourceHolder;

    iput-object p2, p0, Lcom/miui/gallery/movie/ui/adapter/BaseResourceAdapter$BaseResourceHolder$1;->val$info:Lcom/miui/gallery/movie/entity/MovieResource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 89
    .local p0, "this":Lcom/miui/gallery/movie/ui/adapter/BaseResourceAdapter$BaseResourceHolder$1;, "Lcom/miui/gallery/movie/ui/adapter/BaseResourceAdapter$BaseResourceHolder$1;"
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/adapter/BaseResourceAdapter$BaseResourceHolder$1;->val$info:Lcom/miui/gallery/movie/entity/MovieResource;

    const/16 v1, 0x11

    iput v1, v0, Lcom/miui/gallery/movie/entity/MovieResource;->downloadState:I

    .line 90
    return-void
.end method
