.class Lcom/miui/internal/app/ActionBarImpl$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/app/ActionBarImpl;->init(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bD:Lcom/miui/internal/app/ActionBarImpl;


# direct methods
.method constructor <init>(Lcom/miui/internal/app/ActionBarImpl;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/miui/internal/app/ActionBarImpl$3;->bD:Lcom/miui/internal/app/ActionBarImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 246
    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl$3;->bD:Lcom/miui/internal/app/ActionBarImpl;

    invoke-static {p1}, Lcom/miui/internal/app/ActionBarImpl;->a(Lcom/miui/internal/app/ActionBarImpl;)Lcom/miui/internal/view/menu/PhoneActionMenuView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl$3;->bD:Lcom/miui/internal/app/ActionBarImpl;

    invoke-static {p1}, Lcom/miui/internal/app/ActionBarImpl;->a(Lcom/miui/internal/app/ActionBarImpl;)Lcom/miui/internal/view/menu/PhoneActionMenuView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->isOverflowMenuShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 247
    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl$3;->bD:Lcom/miui/internal/app/ActionBarImpl;

    invoke-static {p1}, Lcom/miui/internal/app/ActionBarImpl;->a(Lcom/miui/internal/app/ActionBarImpl;)Lcom/miui/internal/view/menu/PhoneActionMenuView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->getPresenter()Lcom/miui/internal/view/menu/ActionMenuPresenter;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->hideOverflowMenu(Z)Z

    .line 249
    :cond_0
    return-void
.end method
