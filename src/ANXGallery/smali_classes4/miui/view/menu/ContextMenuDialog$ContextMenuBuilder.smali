.class Lmiui/view/menu/ContextMenuDialog$ContextMenuBuilder;
.super Lcom/miui/internal/view/menu/MenuBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/view/menu/ContextMenuDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContextMenuBuilder"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/miui/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 79
    return-void
.end method


# virtual methods
.method public a(Landroid/os/IBinder;)Lcom/miui/internal/view/menu/MenuDialogHelper;
    .locals 1

    .line 98
    invoke-virtual {p0}, Lmiui/view/menu/ContextMenuDialog$ContextMenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 99
    new-instance v0, Lcom/miui/internal/view/menu/MenuDialogHelper;

    invoke-direct {v0, p0}, Lcom/miui/internal/view/menu/MenuDialogHelper;-><init>(Lcom/miui/internal/view/menu/MenuBuilder;)V

    .line 100
    invoke-virtual {v0, p1}, Lcom/miui/internal/view/menu/MenuDialogHelper;->show(Landroid/os/IBinder;)V

    .line 101
    return-object v0

    .line 103
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public ag(I)Lcom/miui/internal/view/menu/MenuBuilder;
    .locals 0

    .line 86
    invoke-super {p0, p1}, Lcom/miui/internal/view/menu/MenuBuilder;->setHeaderTitleInt(I)Lcom/miui/internal/view/menu/MenuBuilder;

    move-result-object p1

    return-object p1
.end method

.method public ah(I)Lcom/miui/internal/view/menu/MenuBuilder;
    .locals 0

    .line 94
    invoke-super {p0, p1}, Lcom/miui/internal/view/menu/MenuBuilder;->setHeaderIconInt(I)Lcom/miui/internal/view/menu/MenuBuilder;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/CharSequence;)Lcom/miui/internal/view/menu/MenuBuilder;
    .locals 0

    .line 82
    invoke-super {p0, p1}, Lcom/miui/internal/view/menu/MenuBuilder;->setHeaderTitleInt(Ljava/lang/CharSequence;)Lcom/miui/internal/view/menu/MenuBuilder;

    move-result-object p1

    return-object p1
.end method

.method public f(Landroid/graphics/drawable/Drawable;)Lcom/miui/internal/view/menu/MenuBuilder;
    .locals 0

    .line 90
    invoke-super {p0, p1}, Lcom/miui/internal/view/menu/MenuBuilder;->setHeaderIconInt(Landroid/graphics/drawable/Drawable;)Lcom/miui/internal/view/menu/MenuBuilder;

    move-result-object p1

    return-object p1
.end method
