.class Lcom/miui/internal/app/ActionBarImpl$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/internal/view/ActionModeImpl$ActionModeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/app/ActionBarImpl;
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

    .line 167
    iput-object p1, p0, Lcom/miui/internal/app/ActionBarImpl$2;->bD:Lcom/miui/internal/app/ActionBarImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionModeFinish(Landroid/view/ActionMode;)V
    .locals 1

    .line 170
    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl$2;->bD:Lcom/miui/internal/app/ActionBarImpl;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/internal/app/ActionBarImpl;->b(Z)V

    .line 171
    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl$2;->bD:Lcom/miui/internal/app/ActionBarImpl;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/miui/internal/app/ActionBarImpl;->mActionMode:Landroid/view/ActionMode;

    .line 172
    return-void
.end method
