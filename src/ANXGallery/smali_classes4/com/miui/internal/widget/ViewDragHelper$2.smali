.class Lcom/miui/internal/widget/ViewDragHelper$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/widget/ViewDragHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic wF:Lcom/miui/internal/widget/ViewDragHelper;


# direct methods
.method constructor <init>(Lcom/miui/internal/widget/ViewDragHelper;)V
    .locals 0

    .line 332
    iput-object p1, p0, Lcom/miui/internal/widget/ViewDragHelper$2;->wF:Lcom/miui/internal/widget/ViewDragHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 334
    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper$2;->wF:Lcom/miui/internal/widget/ViewDragHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ViewDragHelper;->B(I)V

    .line 335
    return-void
.end method
