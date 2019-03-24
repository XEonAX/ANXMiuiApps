.class Lmiui/widget/PopupMenu$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/internal/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic XS:Lmiui/widget/PopupMenu;


# direct methods
.method constructor <init>(Lmiui/widget/PopupMenu;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lmiui/widget/PopupMenu$1;->XS:Lmiui/widget/PopupMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemSelected(Lcom/miui/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 1

    .line 51
    iget-object v0, p0, Lmiui/widget/PopupMenu$1;->XS:Lmiui/widget/PopupMenu;

    invoke-virtual {v0, p1, p2}, Lmiui/widget/PopupMenu;->onMenuItemSelected(Lcom/miui/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onMenuModeChange(Lcom/miui/internal/view/menu/MenuBuilder;)V
    .locals 1

    .line 56
    iget-object v0, p0, Lmiui/widget/PopupMenu$1;->XS:Lmiui/widget/PopupMenu;

    invoke-virtual {v0, p1}, Lmiui/widget/PopupMenu;->onMenuModeChange(Lcom/miui/internal/view/menu/MenuBuilder;)V

    .line 57
    return-void
.end method
