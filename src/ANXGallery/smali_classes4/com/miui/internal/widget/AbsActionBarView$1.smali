.class Lcom/miui/internal/widget/AbsActionBarView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/widget/a;->postShowOverflowMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic pP:Lcom/miui/internal/widget/a;


# direct methods
.method constructor <init>(Lcom/miui/internal/widget/a;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/miui/internal/widget/AbsActionBarView$1;->pP:Lcom/miui/internal/widget/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/miui/internal/widget/AbsActionBarView$1;->pP:Lcom/miui/internal/widget/a;

    invoke-virtual {v0}, Lcom/miui/internal/widget/a;->showOverflowMenu()Z

    .line 153
    return-void
.end method
