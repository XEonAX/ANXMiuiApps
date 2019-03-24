.class public Lmiui/view/menu/ContextMenuDialog;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/view/menu/ContextMenuDialog$ContextMenuBuilder;
    }
.end annotation


# instance fields
.field private final Oh:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private Oi:Lmiui/view/menu/ContextMenuDialog$ContextMenuBuilder;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/view/menu/ContextMenuDialog;->Oh:Ljava/util/List;

    .line 29
    iput-object p1, p0, Lmiui/view/menu/ContextMenuDialog;->mContext:Landroid/content/Context;

    .line 30
    new-instance p1, Lmiui/view/menu/ContextMenuDialog$ContextMenuBuilder;

    iget-object v0, p0, Lmiui/view/menu/ContextMenuDialog;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lmiui/view/menu/ContextMenuDialog$ContextMenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lmiui/view/menu/ContextMenuDialog;->Oi:Lmiui/view/menu/ContextMenuDialog$ContextMenuBuilder;

    .line 31
    iget-object p1, p0, Lmiui/view/menu/ContextMenuDialog;->Oi:Lmiui/view/menu/ContextMenuDialog$ContextMenuBuilder;

    new-instance v0, Lmiui/view/menu/ContextMenuDialog$1;

    invoke-direct {v0, p0}, Lmiui/view/menu/ContextMenuDialog$1;-><init>(Lmiui/view/menu/ContextMenuDialog;)V

    invoke-virtual {p1, v0}, Lmiui/view/menu/ContextMenuDialog$ContextMenuBuilder;->setCallback(Lcom/miui/internal/view/menu/MenuBuilder$Callback;)V

    .line 45
    return-void
.end method

.method static synthetic a(Lmiui/view/menu/ContextMenuDialog;)Ljava/util/List;
    .locals 0

    .line 22
    iget-object p0, p0, Lmiui/view/menu/ContextMenuDialog;->Oh:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public addMenuItem(ILjava/lang/Runnable;)V
    .locals 1

    .line 69
    iget-object v0, p0, Lmiui/view/menu/ContextMenuDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lmiui/view/menu/ContextMenuDialog;->addMenuItem(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 70
    return-void
.end method

.method public addMenuItem(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 3

    .line 64
    iget-object v0, p0, Lmiui/view/menu/ContextMenuDialog;->Oi:Lmiui/view/menu/ContextMenuDialog$ContextMenuBuilder;

    iget-object v1, p0, Lmiui/view/menu/ContextMenuDialog;->Oh:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2, p1}, Lmiui/view/menu/ContextMenuDialog$ContextMenuBuilder;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 65
    iget-object p1, p0, Lmiui/view/menu/ContextMenuDialog;->Oh:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    return-void
.end method

.method public setIcon(I)V
    .locals 1

    .line 60
    iget-object v0, p0, Lmiui/view/menu/ContextMenuDialog;->Oi:Lmiui/view/menu/ContextMenuDialog$ContextMenuBuilder;

    invoke-virtual {v0, p1}, Lmiui/view/menu/ContextMenuDialog$ContextMenuBuilder;->ah(I)Lcom/miui/internal/view/menu/MenuBuilder;

    .line 61
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 56
    iget-object v0, p0, Lmiui/view/menu/ContextMenuDialog;->Oi:Lmiui/view/menu/ContextMenuDialog$ContextMenuBuilder;

    invoke-virtual {v0, p1}, Lmiui/view/menu/ContextMenuDialog$ContextMenuBuilder;->f(Landroid/graphics/drawable/Drawable;)Lcom/miui/internal/view/menu/MenuBuilder;

    .line 57
    return-void
.end method

.method public setTitle(I)V
    .locals 1

    .line 52
    iget-object v0, p0, Lmiui/view/menu/ContextMenuDialog;->Oi:Lmiui/view/menu/ContextMenuDialog$ContextMenuBuilder;

    invoke-virtual {v0, p1}, Lmiui/view/menu/ContextMenuDialog$ContextMenuBuilder;->ag(I)Lcom/miui/internal/view/menu/MenuBuilder;

    .line 53
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .line 48
    iget-object v0, p0, Lmiui/view/menu/ContextMenuDialog;->Oi:Lmiui/view/menu/ContextMenuDialog$ContextMenuBuilder;

    invoke-virtual {v0, p1}, Lmiui/view/menu/ContextMenuDialog$ContextMenuBuilder;->b(Ljava/lang/CharSequence;)Lcom/miui/internal/view/menu/MenuBuilder;

    .line 49
    return-void
.end method

.method public show()V
    .locals 2

    .line 73
    iget-object v0, p0, Lmiui/view/menu/ContextMenuDialog;->Oi:Lmiui/view/menu/ContextMenuDialog$ContextMenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/view/menu/ContextMenuDialog$ContextMenuBuilder;->a(Landroid/os/IBinder;)Lcom/miui/internal/view/menu/MenuDialogHelper;

    .line 74
    return-void
.end method
