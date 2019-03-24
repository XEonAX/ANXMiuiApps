.class Lmiui/phrase/PhraseEditActivity$3;
.super Ljava/lang/Object;
.source "PhraseEditActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/phrase/PhraseEditActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/phrase/PhraseEditActivity;


# direct methods
.method constructor <init>(Lmiui/phrase/PhraseEditActivity;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/phrase/PhraseEditActivity;

    .line 146
    iput-object p1, p0, Lmiui/phrase/PhraseEditActivity$3;->this$0:Lmiui/phrase/PhraseEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 151
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    new-instance v0, Lmiui/view/menu/ContextMenuDialog;

    iget-object v1, p0, Lmiui/phrase/PhraseEditActivity$3;->this$0:Lmiui/phrase/PhraseEditActivity;

    invoke-direct {v0, v1}, Lmiui/view/menu/ContextMenuDialog;-><init>(Landroid/content/Context;)V

    .line 152
    .local v0, "dialog":Lmiui/view/menu/ContextMenuDialog;
    sget v1, Lcom/miui/system/internal/R$string;->menu_edit:I

    new-instance v2, Lmiui/phrase/PhraseEditActivity$3$1;

    invoke-direct {v2, p0, p4, p5}, Lmiui/phrase/PhraseEditActivity$3$1;-><init>(Lmiui/phrase/PhraseEditActivity$3;J)V

    invoke-virtual {v0, v1, v2}, Lmiui/view/menu/ContextMenuDialog;->addMenuItem(ILjava/lang/Runnable;)V

    .line 164
    sget v1, Lcom/miui/system/internal/R$string;->menu_delete:I

    new-instance v2, Lmiui/phrase/PhraseEditActivity$3$2;

    invoke-direct {v2, p0, p4, p5}, Lmiui/phrase/PhraseEditActivity$3$2;-><init>(Lmiui/phrase/PhraseEditActivity$3;J)V

    invoke-virtual {v0, v1, v2}, Lmiui/view/menu/ContextMenuDialog;->addMenuItem(ILjava/lang/Runnable;)V

    .line 184
    invoke-virtual {v0}, Lmiui/view/menu/ContextMenuDialog;->show()V

    .line 185
    return-void
.end method
