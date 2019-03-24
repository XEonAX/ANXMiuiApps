.class Lcom/miui/internal/hybrid/HybridManager$JsInvocation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/hybrid/HybridManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JsInvocation"
.end annotation


# instance fields
.field final synthetic fg:Lcom/miui/internal/hybrid/HybridManager;

.field private fk:Ljava/lang/String;

.field private mResponse:Lmiui/hybrid/Response;


# direct methods
.method public constructor <init>(Lcom/miui/internal/hybrid/HybridManager;Lmiui/hybrid/Response;Ljava/lang/String;)V
    .locals 0

    .line 315
    iput-object p1, p0, Lcom/miui/internal/hybrid/HybridManager$JsInvocation;->fg:Lcom/miui/internal/hybrid/HybridManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    iput-object p2, p0, Lcom/miui/internal/hybrid/HybridManager$JsInvocation;->mResponse:Lmiui/hybrid/Response;

    .line 317
    iput-object p3, p0, Lcom/miui/internal/hybrid/HybridManager$JsInvocation;->fk:Ljava/lang/String;

    .line 318
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 322
    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridManager$JsInvocation;->fg:Lcom/miui/internal/hybrid/HybridManager;

    iget-object v1, p0, Lcom/miui/internal/hybrid/HybridManager$JsInvocation;->mResponse:Lmiui/hybrid/Response;

    iget-object v2, p0, Lcom/miui/internal/hybrid/HybridManager$JsInvocation;->fk:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/miui/internal/hybrid/HybridManager;->a(Lcom/miui/internal/hybrid/HybridManager;Lmiui/hybrid/Response;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 323
    iget-object v1, p0, Lcom/miui/internal/hybrid/HybridManager$JsInvocation;->fg:Lcom/miui/internal/hybrid/HybridManager;

    invoke-static {v1}, Lcom/miui/internal/hybrid/HybridManager;->b(Lcom/miui/internal/hybrid/HybridManager;)Lmiui/hybrid/HybridView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javascript:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmiui/hybrid/HybridView;->loadUrl(Ljava/lang/String;)V

    .line 325
    return-void
.end method
