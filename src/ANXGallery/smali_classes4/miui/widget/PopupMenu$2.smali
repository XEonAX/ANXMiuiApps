.class Lmiui/widget/PopupMenu$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/internal/view/menu/MenuPresenter$Callback;


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

    .line 61
    iput-object p1, p0, Lmiui/widget/PopupMenu$2;->XS:Lmiui/widget/PopupMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCloseMenu(Lcom/miui/internal/view/menu/MenuBuilder;Z)V
    .locals 1

    .line 64
    iget-object v0, p0, Lmiui/widget/PopupMenu$2;->XS:Lmiui/widget/PopupMenu;

    invoke-virtual {v0, p1, p2}, Lmiui/widget/PopupMenu;->onCloseMenu(Lcom/miui/internal/view/menu/MenuBuilder;Z)V

    .line 65
    return-void
.end method

.method public onOpenSubMenu(Lcom/miui/internal/view/menu/MenuBuilder;)Z
    .locals 1

    .line 69
    iget-object v0, p0, Lmiui/widget/PopupMenu$2;->XS:Lmiui/widget/PopupMenu;

    invoke-virtual {v0, p1}, Lmiui/widget/PopupMenu;->onOpenSubMenu(Lcom/miui/internal/view/menu/MenuBuilder;)Z

    move-result p1

    return p1
.end method
