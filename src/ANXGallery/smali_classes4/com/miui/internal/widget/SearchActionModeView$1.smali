.class Lcom/miui/internal/widget/SearchActionModeView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/widget/SearchActionModeView;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic wg:Lcom/miui/internal/widget/SearchActionModeView;


# direct methods
.method constructor <init>(Lcom/miui/internal/widget/SearchActionModeView;)V
    .locals 0

    .line 404
    iput-object p1, p0, Lcom/miui/internal/widget/SearchActionModeView$1;->wg:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 407
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$1;->wg:Lcom/miui/internal/widget/SearchActionModeView;

    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$1;->wg:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v1}, Lcom/miui/internal/widget/SearchActionModeView;->a(Lcom/miui/internal/widget/SearchActionModeView;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/SearchActionModeView;->setResultViewMargin(Z)V

    .line 408
    return-void
.end method
