.class Lmiui/view/menu/ContextMenuDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/internal/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/view/menu/ContextMenuDialog;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Oj:Lmiui/view/menu/ContextMenuDialog;


# direct methods
.method constructor <init>(Lmiui/view/menu/ContextMenuDialog;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lmiui/view/menu/ContextMenuDialog$1;->Oj:Lmiui/view/menu/ContextMenuDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemSelected(Lcom/miui/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 0

    .line 35
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    .line 36
    iget-object p2, p0, Lmiui/view/menu/ContextMenuDialog$1;->Oj:Lmiui/view/menu/ContextMenuDialog;

    invoke-static {p2}, Lmiui/view/menu/ContextMenuDialog;->a(Lmiui/view/menu/ContextMenuDialog;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 37
    const/4 p1, 0x1

    return p1
.end method

.method public onMenuModeChange(Lcom/miui/internal/view/menu/MenuBuilder;)V
    .locals 0

    .line 42
    return-void
.end method
