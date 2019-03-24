.class Lcom/miui/internal/app/ActivityDelegate$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/app/ActivityDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ck:Lcom/miui/internal/app/ActivityDelegate;


# direct methods
.method constructor <init>(Lcom/miui/internal/app/ActivityDelegate;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/miui/internal/app/ActivityDelegate$1;->ck:Lcom/miui/internal/app/ActivityDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 67
    iget-object v0, p0, Lcom/miui/internal/app/ActivityDelegate$1;->ck:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {v0}, Lcom/miui/internal/app/ActivityDelegate;->createMenu()Lcom/miui/internal/view/menu/MenuBuilder;

    move-result-object v0

    .line 68
    iget-object v1, p0, Lcom/miui/internal/app/ActivityDelegate$1;->ck:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {v1}, Lcom/miui/internal/app/ActivityDelegate;->isImmersionMenuEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/internal/app/ActivityDelegate$1;->ck:Lcom/miui/internal/app/ActivityDelegate;

    .line 69
    const/4 v3, 0x0

    invoke-static {v1, v3, v0}, Lcom/miui/internal/app/ActivityDelegate;->a(Lcom/miui/internal/app/ActivityDelegate;ILandroid/view/Menu;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/internal/app/ActivityDelegate$1;->ck:Lcom/miui/internal/app/ActivityDelegate;

    .line 70
    invoke-static {v1, v3, v2, v0}, Lcom/miui/internal/app/ActivityDelegate;->a(Lcom/miui/internal/app/ActivityDelegate;ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/miui/internal/app/ActivityDelegate$1;->ck:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {v1, v0}, Lcom/miui/internal/app/ActivityDelegate;->setMenu(Lcom/miui/internal/view/menu/MenuBuilder;)V

    goto :goto_0

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/app/ActivityDelegate$1;->ck:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {v0, v2}, Lcom/miui/internal/app/ActivityDelegate;->setMenu(Lcom/miui/internal/view/menu/MenuBuilder;)V

    .line 75
    :goto_0
    return-void
.end method
