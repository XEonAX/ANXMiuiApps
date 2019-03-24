.class Lmiui/hybrid/HybridView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/hybrid/HybridView;->cq()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic yN:Lmiui/hybrid/HybridView;


# direct methods
.method constructor <init>(Lmiui/hybrid/HybridView;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lmiui/hybrid/HybridView$1;->yN:Lmiui/hybrid/HybridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 227
    iget-object p1, p0, Lmiui/hybrid/HybridView$1;->yN:Lmiui/hybrid/HybridView;

    invoke-virtual {p1}, Lmiui/hybrid/HybridView;->reload()V

    .line 228
    iget-object p1, p0, Lmiui/hybrid/HybridView$1;->yN:Lmiui/hybrid/HybridView;

    const/16 v0, 0x8

    invoke-static {p1, v0}, Lmiui/hybrid/HybridView;->a(Lmiui/hybrid/HybridView;I)V

    .line 229
    return-void
.end method
