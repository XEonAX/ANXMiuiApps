.class Lcom/miui/internal/widget/ActionBarView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/widget/ActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic sE:Lcom/miui/internal/widget/ActionBarView;


# direct methods
.method constructor <init>(Lcom/miui/internal/widget/ActionBarView;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarView$3;->sE:Lcom/miui/internal/widget/ActionBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 163
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$3;->sE:Lcom/miui/internal/widget/ActionBarView;

    iget-object p1, p1, Lcom/miui/internal/widget/ActionBarView;->cO:Landroid/view/Window$Callback;

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView$3;->sE:Lcom/miui/internal/widget/ActionBarView;

    invoke-static {v0}, Lcom/miui/internal/widget/ActionBarView;->c(Lcom/miui/internal/widget/ActionBarView;)Lcom/miui/internal/view/menu/ActionMenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    .line 164
    return-void
.end method
