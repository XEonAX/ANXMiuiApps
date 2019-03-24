.class Lcom/miui/internal/hybrid/HybridManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/hybrid/HybridManager;->J()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic fg:Lcom/miui/internal/hybrid/HybridManager;


# direct methods
.method constructor <init>(Lcom/miui/internal/hybrid/HybridManager;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/miui/internal/hybrid/HybridManager$1;->fg:Lcom/miui/internal/hybrid/HybridManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    .line 141
    iget-object p1, p0, Lcom/miui/internal/hybrid/HybridManager$1;->fg:Lcom/miui/internal/hybrid/HybridManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/internal/hybrid/HybridManager;->a(Lcom/miui/internal/hybrid/HybridManager;Z)Z

    .line 142
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    .line 146
    iget-object p1, p0, Lcom/miui/internal/hybrid/HybridManager$1;->fg:Lcom/miui/internal/hybrid/HybridManager;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/internal/hybrid/HybridManager;->a(Lcom/miui/internal/hybrid/HybridManager;Z)Z

    .line 147
    return-void
.end method
