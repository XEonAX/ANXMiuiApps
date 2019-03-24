.class Lcom/miui/internal/app/AlertControllerImpl$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/app/AlertControllerImpl;->w()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cP:Lcom/miui/internal/app/AlertControllerImpl;


# direct methods
.method constructor <init>(Lcom/miui/internal/app/AlertControllerImpl;)V
    .locals 0

    .line 714
    iput-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl$3;->cP:Lcom/miui/internal/app/AlertControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 717
    iget-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl$3;->cP:Lcom/miui/internal/app/AlertControllerImpl;

    invoke-static {p1}, Lcom/miui/internal/app/AlertControllerImpl;->g(Lcom/miui/internal/app/AlertControllerImpl;)Landroid/content/DialogInterface;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 718
    return-void
.end method
