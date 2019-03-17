.class Lcom/alibaba/mtl/appmonitor/a/e$1;
.super Ljava/lang/Object;
.source "EventRepo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/mtl/appmonitor/a/e;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/alibaba/mtl/appmonitor/a/e;

.field final synthetic l:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/alibaba/mtl/appmonitor/a/e;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 380
    iput-object p1, p0, Lcom/alibaba/mtl/appmonitor/a/e$1;->b:Lcom/alibaba/mtl/appmonitor/a/e;

    iput-object p2, p0, Lcom/alibaba/mtl/appmonitor/a/e$1;->l:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/a/e$1;->l:Ljava/util/Map;

    invoke-static {v0}, Lcom/alibaba/mtl/appmonitor/f/c;->b(Ljava/util/Map;)V

    .line 385
    return-void
.end method
