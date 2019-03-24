.class Lcom/miui/internal/app/FragmentDelegate$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/app/FragmentDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic dk:Lcom/miui/internal/app/FragmentDelegate;


# direct methods
.method constructor <init>(Lcom/miui/internal/app/FragmentDelegate;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/miui/internal/app/FragmentDelegate$1;->dk:Lcom/miui/internal/app/FragmentDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 57
    nop

    .line 58
    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate$1;->dk:Lcom/miui/internal/app/FragmentDelegate;

    invoke-static {v0}, Lcom/miui/internal/app/FragmentDelegate;->a(Lcom/miui/internal/app/FragmentDelegate;)B

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 59
    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate$1;->dk:Lcom/miui/internal/app/FragmentDelegate;

    invoke-static {v0, v2}, Lcom/miui/internal/app/FragmentDelegate;->a(Lcom/miui/internal/app/FragmentDelegate;Lcom/miui/internal/view/menu/MenuBuilder;)Lcom/miui/internal/view/menu/MenuBuilder;

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate$1;->dk:Lcom/miui/internal/app/FragmentDelegate;

    invoke-static {v0}, Lcom/miui/internal/app/FragmentDelegate;->b(Lcom/miui/internal/app/FragmentDelegate;)Lcom/miui/internal/view/menu/MenuBuilder;

    move-result-object v0

    const/4 v3, 0x0

    if-nez v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate$1;->dk:Lcom/miui/internal/app/FragmentDelegate;

    iget-object v1, p0, Lcom/miui/internal/app/FragmentDelegate$1;->dk:Lcom/miui/internal/app/FragmentDelegate;

    invoke-virtual {v1}, Lcom/miui/internal/app/FragmentDelegate;->createMenu()Lcom/miui/internal/view/menu/MenuBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/internal/app/FragmentDelegate;->a(Lcom/miui/internal/app/FragmentDelegate;Lcom/miui/internal/view/menu/MenuBuilder;)Lcom/miui/internal/view/menu/MenuBuilder;

    .line 64
    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate$1;->dk:Lcom/miui/internal/app/FragmentDelegate;

    iget-object v1, p0, Lcom/miui/internal/app/FragmentDelegate$1;->dk:Lcom/miui/internal/app/FragmentDelegate;

    invoke-static {v1}, Lcom/miui/internal/app/FragmentDelegate;->b(Lcom/miui/internal/app/FragmentDelegate;)Lcom/miui/internal/view/menu/MenuBuilder;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/miui/internal/app/FragmentDelegate;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v1

    .line 67
    :cond_1
    if-eqz v1, :cond_2

    .line 68
    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate$1;->dk:Lcom/miui/internal/app/FragmentDelegate;

    iget-object v1, p0, Lcom/miui/internal/app/FragmentDelegate$1;->dk:Lcom/miui/internal/app/FragmentDelegate;

    invoke-static {v1}, Lcom/miui/internal/app/FragmentDelegate;->b(Lcom/miui/internal/app/FragmentDelegate;)Lcom/miui/internal/view/menu/MenuBuilder;

    move-result-object v1

    invoke-virtual {v0, v3, v2, v1}, Lcom/miui/internal/app/FragmentDelegate;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v1

    .line 71
    :cond_2
    if-eqz v1, :cond_3

    .line 72
    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate$1;->dk:Lcom/miui/internal/app/FragmentDelegate;

    iget-object v1, p0, Lcom/miui/internal/app/FragmentDelegate$1;->dk:Lcom/miui/internal/app/FragmentDelegate;

    invoke-static {v1}, Lcom/miui/internal/app/FragmentDelegate;->b(Lcom/miui/internal/app/FragmentDelegate;)Lcom/miui/internal/view/menu/MenuBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/internal/app/FragmentDelegate;->setMenu(Lcom/miui/internal/view/menu/MenuBuilder;)V

    goto :goto_0

    .line 74
    :cond_3
    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate$1;->dk:Lcom/miui/internal/app/FragmentDelegate;

    invoke-virtual {v0, v2}, Lcom/miui/internal/app/FragmentDelegate;->setMenu(Lcom/miui/internal/view/menu/MenuBuilder;)V

    .line 75
    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate$1;->dk:Lcom/miui/internal/app/FragmentDelegate;

    invoke-static {v0, v2}, Lcom/miui/internal/app/FragmentDelegate;->a(Lcom/miui/internal/app/FragmentDelegate;Lcom/miui/internal/view/menu/MenuBuilder;)Lcom/miui/internal/view/menu/MenuBuilder;

    .line 78
    :goto_0
    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate$1;->dk:Lcom/miui/internal/app/FragmentDelegate;

    const/16 v1, -0x12

    invoke-static {v0, v1}, Lcom/miui/internal/app/FragmentDelegate;->a(Lcom/miui/internal/app/FragmentDelegate;I)B

    .line 79
    return-void
.end method
